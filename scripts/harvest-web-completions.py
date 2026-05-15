#!/usr/bin/env python3
"""Harvest zsh completions from GitHub into more_src/; merge blacklist and existence tests."""
from __future__ import annotations

import json
import os
import pathlib
import random
import re
import shlex
import shutil
import subprocess
import sys
import tempfile
import time
import urllib.error
import urllib.parse
import urllib.request
from concurrent.futures import ThreadPoolExecutor, as_completed

REPO = pathlib.Path(os.environ.get("REPO", pathlib.Path(__file__).resolve().parents[1]))
MORE = REPO / "more_src"
BLPATH = REPO / "blacklist.txt"
LOCAL_CANDIDATES = pathlib.Path(os.environ.get("LOCAL_CANDIDATES", "/tmp/candidates.tsv"))
UA = "MenkeTechnologies-zsh-more-completions-harvest/1.0"

BLOB_RE = re.compile(
    r"^https://github\.com/([^/]+)/([^/]+)/blob/([0-9a-f]{7,40})/(.+)$"
)


def load_blacklist() -> set[str]:
    return {ln for ln in BLPATH.read_text().splitlines() if ln}


def more_basenames() -> set[str]:
    return {p.name for p in MORE.iterdir() if p.is_file() and p.name.startswith("_")}


def stems_from_compdef_line(line: str) -> list[str]:
    line = line.strip()
    if not line.startswith("#compdef"):
        return []
    frag = line[len("#compdef") :].strip()
    if not frag:
        return []
    try:
        toks = shlex.split(frag)
    except ValueError:
        return []
    out: list[str] = []
    for t in toks:
        if t.startswith("-"):
            continue
        if "=" in t:
            lhs, rhs = t.split("=", 1)
            if lhs:
                out.append(lhs)
            if rhs and rhs != lhs:
                out.append(rhs)
        else:
            out.append(t)
    return out


def stems_from_body(body: str) -> list[str]:
    m = re.search(r"^#compdef\b.*$", body, re.M)
    if not m:
        return []
    return stems_from_compdef_line(m.group(0))


_ZSH_COMP_EXTS = (".zsh-completion", ".zsh_completion", ".zsh")


def dest_name(path: str, stems: list[str]) -> str | None:
    if not stems:
        return None
    bn = pathlib.PurePosixPath(path).name
    for ext in _ZSH_COMP_EXTS:
        if bn.endswith(ext):
            bn = bn[: -len(ext)]
            break
    if bn.startswith("_"):
        return bn
    s0 = stems[0].replace("/", "-")
    if not s0 or not re.fullmatch(r"[A-Za-z0-9_.-]+", s0):
        return None
    return f"_{s0}"


def html_url_to_raw(html_url: str) -> str | None:
    m = BLOB_RE.match(html_url.strip())
    if not m:
        return None
    org, repo, sha, rpath = m.groups()
    rpath = urllib.parse.quote(rpath, safe="/@+()~._-")
    return f"https://raw.githubusercontent.com/{org}/{repo}/{sha}/{rpath}"


def zsh_nf(path: pathlib.Path) -> bool:
    r = subprocess.run(["zsh", "-nf", str(path)], capture_output=True, text=True)
    return r.returncode == 0


def _render_with_headers(body: str, source_url: str, repo_display: str) -> str | None:
    """Build the final file text: `#compdef` line first, then provenance headers,
    then the rest of body. Returns None if body lacks a `#compdef` line.
    Also strips redundant cobra-emitted `compdef _func cmd` runtime calls."""
    body = re.sub(r"^compdef _\S+\s.*\n?", "", body, flags=re.M)
    lines = body.lstrip("\ufeff").lstrip().splitlines(keepends=True)
    compdef_idx = next(
        (i for i, l in enumerate(lines) if l.lstrip().startswith("#compdef")),
        None,
    )
    if compdef_idx is None:
        return None
    headers = [f"# Source: {source_url}\n", f"# Repository: {repo_display}\n"]
    rest = [l for i, l in enumerate(lines) if i != compdef_idx]
    return lines[compdef_idx] + "".join(headers) + "".join(rest)


def trial_zsh_completion_syntax(dest: str, body: str, source_url: str, repo_display: str) -> bool:
    """Run zsh -nf the same way as install (header + body) without touching more_src/."""
    rendered = _render_with_headers(body, source_url, repo_display)
    if rendered is None:
        return False
    with tempfile.TemporaryDirectory(prefix="zsh-nf-trial-") as d:
        p = pathlib.Path(d) / dest
        p.write_text(rendered, encoding="utf-8")
        return zsh_nf(p)


def write_file(dest: str, body: str, source_url: str, repo_display: str) -> None:
    out = MORE / dest
    rendered = _render_with_headers(body, source_url, repo_display)
    if rendered is None:
        # Fallback: write as-is so the caller's zsh_nf check can reject it.
        rendered = body.lstrip("\ufeff")
    out.write_text(rendered, encoding="utf-8")


def skip_path(path: str) -> bool:
    low = path.lower()
    parts = (
        "/oh-my-zsh/",
        "/ohmyzsh/",
        "/test/out/",
        "/tests/out/",
        "/examples/zsh/",
        "/tests/",
        "/test/",
        "/spec/",
        "/.github/",
        "/testdata/",
        "/fixtures/",
        "/vendor/",
        "/node_modules/",
        "dot_zshrc",
        "/.zshrc",
        "zshenv",
        "zprofile",
        "/tests_helpers/",
        "tests_helpers/",
        "how-to-write-shell-completions",
        "301_myservice",
    )
    if any(p in low for p in parts):
        return True
    if "warg" in low and "completion_script.zsh" in low:
        return True
    return False


# Stems that are almost always fixtures / ambiguous (not real CLI names).
JUNK_COMPDEF_STEMS = frozenset(
    {
        "foo",
        "bar",
        "baz",
        "qux",
        "HEAD",
        "myapp",
        "mysimpleapp",
        "nometa",
        "agat_convert_sp_gxf2gxf.pl",
        "conf",
        "hellos",
        "rep",
        "sysc",
        "usepkg",
    }
)


def install_precheck(
    body: str,
    path: str,
    bl: set[str],
    existing: set[str],
    written_dests: set[str],
) -> tuple[str, list[str]] | None:
    """Return (dest, stems) if the candidate passes all checks except write and zsh -nf."""
    stems = stems_from_body(body)
    if not stems:
        return None
    if stems == ["WARG_COMPLETION_APPNAME"]:
        return None
    for s in stems:
        if len(s) < 2:
            return None
    for s in stems:
        if s in JUNK_COMPDEF_STEMS:
            return None
    for s in stems:
        if s in bl:
            return None
    dest = dest_name(path, stems)
    if not dest or not re.fullmatch(r"_[A-Za-z0-9_.-]+", dest):
        return None
    if dest.startswith("__"):
        return None
    if dest.endswith(".zsh.src"):
        return None
    if dest in existing or dest in written_dests:
        return None
    if skip_path(path):
        return None
    if len(body) > 400_000:
        return None
    return dest, stems


def try_install(
    body: str,
    path: str,
    source_url: str,
    repo_display: str,
    bl: set[str],
    existing: set[str],
    written_dests: set[str],
) -> tuple[str, list[str]] | None:
    hit = install_precheck(body, path, bl, existing, written_dests)
    if not hit:
        return None
    dest, stems = hit
    write_file(dest, body, source_url, repo_display)
    if not zsh_nf(MORE / dest):
        (MORE / dest).unlink(missing_ok=True)
        return None
    written_dests.add(dest)
    existing.add(dest)
    for s in stems:
        bl.add(s)
    return dest, stems


def gh_code_search_pages(
    queries: list[str],
    max_pages: int = 10,
    calls_left: list[int] | None = None,
) -> list[dict]:
    """Fetch GitHub /search/code results. Each page request counts toward code_search quota (~10/min).

    ``calls_left`` is a one-element list treated as a mutable remaining API call budget; when
    exhausted, return immediately. On rate-limit responses, return rows collected so far.
    """

    def budget_exhausted() -> bool:
        return calls_left is not None and calls_left[0] <= 0

    def take_budget() -> bool:
        if calls_left is None:
            return True
        if calls_left[0] <= 0:
            return False
        calls_left[0] -= 1
        return True

    rows: list[dict] = []
    seen: set[str] = set()
    use_gh = shutil.which("gh") is not None
    for q in queries:
        if budget_exhausted():
            return rows
        for page in range(1, max_pages + 1):
            if budget_exhausted():
                return rows
            path_q = "/search/code?" + urllib.parse.urlencode(
                {"q": q, "per_page": "100", "page": str(page)}
            )
            data: dict | None = None
            err_text = ""
            if use_gh:
                if not take_budget():
                    return rows
                proc = subprocess.run(
                    ["gh", "api", path_q],
                    capture_output=True,
                    text=True,
                    timeout=90,
                )
                err_text = (proc.stderr or "") + (proc.stdout or "")
                if proc.returncode != 0:
                    low = err_text.lower()
                    if "rate limit" in low or proc.returncode == 403:
                        return rows
                    break
                try:
                    data = json.loads(proc.stdout)
                except json.JSONDecodeError:
                    break
            else:
                if not take_budget():
                    return rows
                token = os.environ.get("GITHUB_TOKEN") or os.environ.get("GH_TOKEN")
                url = "https://api.github.com" + path_q
                req = urllib.request.Request(
                    url,
                    headers={"Accept": "application/vnd.github+json", "User-Agent": UA},
                )
                if token:
                    req.add_header("Authorization", f"Bearer {token}")
                try:
                    with urllib.request.urlopen(req, timeout=60) as resp:
                        data = json.loads(resp.read().decode())
                except urllib.error.HTTPError as e:
                    try:
                        err_body = e.read().decode("utf-8", errors="replace")
                    except Exception:
                        err_body = ""
                    err_text = err_body
                    if e.code == 403 and "rate limit" in err_body.lower():
                        return rows
                    break
                except (urllib.error.URLError, TimeoutError, json.JSONDecodeError):
                    break
            if not data:
                break
            items = data.get("items") or []
            if not items:
                break
            for it in items:
                u = it.get("html_url") or ""
                if u in seen:
                    continue
                seen.add(u)
                rows.append(
                    {
                        "html_url": u,
                        "path": it.get("path") or "",
                        "repo": (it.get("repository") or {}).get("full_name") or "",
                    }
                )
            if len(items) < 100:
                break
            time.sleep(0.12)
            pace = float(os.environ.get("HARVEST_CODE_SEARCH_SLEEP", "0") or "0")
            if pace > 0:
                time.sleep(pace)
        time.sleep(0.08)
    return rows


def fetch_raw(raw_url: str, timeout: float = 45.0) -> str | None:
    headers = {"User-Agent": UA}
    token = os.environ.get("GITHUB_TOKEN") or os.environ.get("GH_TOKEN")
    if token and "raw.githubusercontent.com" not in raw_url:
        headers["Authorization"] = f"Bearer {token}"
    req = urllib.request.Request(raw_url, headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=timeout) as r:
            return r.read().decode("utf-8", errors="replace")
    except Exception:
        return None


SLUG_RE = re.compile(r"^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$")


def tree_path_maybe_zsh_completion(rel: str) -> bool:
    if skip_path(rel):
        return False
    base = pathlib.PurePosixPath(rel).name
    low = rel.lower()
    base_low = base.lower()
    bad_suffixes = (
        ".ps1",
        ".fish",
        ".bash",
        ".md",
        ".txt",
        ".patch",
        ".png",
        ".jpg",
        ".json",
        ".yaml",
        ".yml",
        ".py",
        ".go",
        ".rs",
        ".sql",
        ".tpl",
        ".zwc",
    )
    if any(base_low.endswith(s) for s in bad_suffixes):
        return False
    completion_path_markers = (
        "/zsh",
        "zsh/",
        "completion",
        "completions",
        "contrib",
        "site-functions",
        "shell-completion",
        "/cobra/",
    )
    in_completion_path = any(s in low for s in completion_path_markers)
    if base.startswith("_") and not base.startswith("__") and re.fullmatch(r"_[A-Za-z0-9_.-]+", base):
        if in_completion_path:
            return True
        depth = rel.count("/")
        return depth <= 2
    for ext in _ZSH_COMP_EXTS:
        if base_low.endswith(ext) and not base.startswith("__"):
            stem = base[: -len(ext)]
            if re.fullmatch(r"_?[A-Za-z0-9_.-]+", stem):
                return in_completion_path
    return False


def gh_repo_commit_sha(slug: str) -> str | None:
    proc = subprocess.run(
        ["gh", "api", f"repos/{slug}/commits/HEAD", "--jq", ".sha"],
        capture_output=True,
        text=True,
        timeout=90,
    )
    if proc.returncode != 0:
        return None
    sha = proc.stdout.strip()
    if not re.fullmatch(r"[0-9a-f]{40}", sha):
        return None
    return sha


def github_raw_and_blob_urls(slug: str, commit_sha: str, relpath: str) -> tuple[str, str]:
    org, repo = slug.split("/", 1)
    quoted = urllib.parse.quote(relpath, safe="/@+()~._-")
    raw_u = f"https://raw.githubusercontent.com/{org}/{repo}/{commit_sha}/{quoted}"
    blob_u = f"https://github.com/{org}/{repo}/blob/{commit_sha}/{quoted}"
    return raw_u, blob_u


SKIP_TREE_SLUGS = frozenset(
    {
        "menketechnologies/zsh-more-completions",
        "zsh-users/zsh-completions",
        "nevesnunes/sh-manpage-completions",
    }
)


def gh_repo_search_seed_slugs(max_total: int) -> list[str]:
    """Use /search/repositories (distinct from /search/code) to find repos likely to ship zsh completions."""
    queries = (
        "zsh completion NOT mirror NOT archived",
        "topic:zsh-completion",
        "topic:zsh-completions",
        "zsh site-functions NOT mirror",
        "compdef zsh NOT mirror",
        "zsh-completions NOT template",
        "zsh compdef in:readme NOT mirror",
        "cobra zsh completion NOT mirror",
        "shell-completion zsh NOT mirror",
        "cli zsh _arguments NOT mirror",
        "fpath zsh completion NOT mirror",
        "homebrew zsh completion NOT mirror",
        "nix zsh completion NOT mirror",
    )
    seen: set[str] = set()
    out: list[str] = []
    per_page = 30
    for q in queries:
        if len(out) >= max_total:
            break
        for page in range(1, 7):
            if len(out) >= max_total:
                break
            path_q = "/search/repositories?" + urllib.parse.urlencode(
                {"q": q, "per_page": str(per_page), "page": str(page)}
            )
            proc = subprocess.run(
                ["gh", "api", path_q],
                capture_output=True,
                text=True,
                timeout=90,
            )
            if proc.returncode != 0:
                break
            try:
                data = json.loads(proc.stdout)
            except json.JSONDecodeError:
                break
            items = data.get("items") or []
            for it in items:
                fn = (it.get("full_name") or "").strip()
                if not fn or fn in seen:
                    continue
                if not SLUG_RE.fullmatch(fn):
                    continue
                if fn.lower() in SKIP_TREE_SLUGS:
                    continue
                seen.add(fn)
                out.append(fn)
                if len(out) >= max_total:
                    return out
            if len(items) < per_page:
                break
    return out


def harvest_github_trees_from_file(
    slug_file: pathlib.Path,
    target: int,
    bl: set[str],
    existing: set[str],
    written_dests: set[str],
) -> int:
    """Walk GitHub git/trees for each org/repo slug; fetch raw completion candidates (REST core API, not code search)."""
    before = len(written_dests)
    max_repos = max(1, int(os.environ.get("HARVEST_TREE_MAX_REPOS", "500")))
    max_fetch = max(1, int(os.environ.get("HARVEST_TREE_MAX_FETCH_PER_REPO", "40")))
    max_seed = int(os.environ.get("HARVEST_TREE_REPO_SEARCH_MAX", "220"))
    file_slugs = [
        ln.strip()
        for ln in slug_file.read_text(encoding="utf-8", errors="replace").splitlines()
        if ln.strip() and not ln.strip().startswith("#")
    ]
    seed_slugs: list[str] = []
    if (
        os.environ.get("HARVEST_TREE_REPO_SEARCH", "1") != "0"
        and shutil.which("gh")
        and max_seed > 0
    ):
        seed_slugs = gh_repo_search_seed_slugs(max_seed)
        random.shuffle(seed_slugs)
    random.shuffle(file_slugs)
    slugs = list(dict.fromkeys(seed_slugs + file_slugs))
    for slug in slugs[:max_repos]:
        if len(written_dests) >= target:
            break
        if not SLUG_RE.fullmatch(slug):
            continue
        if slug.lower() in SKIP_TREE_SLUGS:
            continue
        commit_sha = gh_repo_commit_sha(slug)
        if not commit_sha:
            continue
        info_proc = subprocess.run(
            ["gh", "api", f"repos/{slug}"],
            capture_output=True,
            text=True,
            timeout=45,
        )
        if info_proc.returncode != 0:
            continue
        try:
            info = json.loads(info_proc.stdout)
        except json.JSONDecodeError:
            continue
        max_repo_kb = int(os.environ.get("HARVEST_TREE_MAX_REPO_KB", "250000"))
        if int(info.get("size") or 0) > max_repo_kb:
            continue
        proc = subprocess.run(
            ["gh", "api", f"repos/{slug}/git/trees/{commit_sha}?recursive=1"],
            capture_output=True,
            text=True,
            timeout=120,
        )
        if proc.returncode != 0:
            continue
        try:
            data = json.loads(proc.stdout)
        except json.JSONDecodeError:
            continue
        tree = data.get("tree") or []
        max_tree_entries = int(os.environ.get("HARVEST_TREE_MAX_ENTRIES", "40000"))
        if len(tree) > max_tree_entries:
            continue
        paths: list[str] = []
        for ent in tree:
            if ent.get("type") != "blob":
                continue
            p = ent.get("path") or ""
            if not isinstance(p, str) or not p:
                continue
            if tree_path_maybe_zsh_completion(p):
                paths.append(p)
        paths.sort(
            key=lambda p: (
                0 if ("zsh" in p.lower() or "completion" in p.lower()) else 1,
                p,
            )
        )
        cap_paths = max(1, int(os.environ.get("HARVEST_TREE_MAX_CANDIDATE_PATHS", "55")))
        paths = paths[:cap_paths]
        fetches = 0
        for rel in paths:
            if len(written_dests) >= target:
                break
            if fetches >= max_fetch:
                break
            raw_u, blob_u = github_raw_and_blob_urls(slug, commit_sha, rel)
            body = fetch_raw(
                raw_u,
                timeout=float(os.environ.get("HARVEST_TREE_RAW_TIMEOUT", "12")),
            )
            fetches += 1
            if not body or "#compdef" not in body:
                continue
            disp = f"{slug} ({rel})"
            if try_install(body, pathlib.PurePosixPath(rel).name, blob_u, disp, bl, existing, written_dests):
                pass
    return len(written_dests) - before


def apply_local_tsv(
    bl: set[str],
    existing: set[str],
    written_dests: set[str],
) -> int:
    if not LOCAL_CANDIDATES.is_file():
        return 0
    n = 0
    for line in LOCAL_CANDIDATES.read_text().splitlines():
        parts = line.split("\t")
        if len(parts) < 5:
            continue
        src_p, blob, repo_paren = parts[0], parts[1], parts[2]
        p = pathlib.Path(src_p)
        if not p.is_file():
            continue
        body = p.read_text(encoding="utf-8", errors="replace")
        if try_install(body, p.name, blob, repo_paren, bl, existing, written_dests):
            n += 1
    return n


def merge_blacklist(bl: set[str]) -> None:
    BLPATH.write_text("\n".join(sorted(bl)) + "\n", encoding="utf-8")


def parse_existence_tests(text: str) -> tuple[str, list[str]]:
    marker = "\n@test 'more_src has _"
    idx = text.find(marker)
    if idx == -1:
        raise RuntimeError("t-more-src-existence.zsh: missing more_src tests marker")
    prefix = text[: idx + 1]
    body = text[idx + 1 :]
    lines = body.splitlines(True)
    blocks: list[str] = []
    buf: list[str] = []
    i = 0
    while i < len(lines):
        line = lines[i]
        if line.startswith("@test 'more_src has _"):
            if buf:
                blocks.append("".join(buf))
                buf = []
            buf.append(line)
            i += 1
            while i < len(lines):
                buf.append(lines[i])
                if lines[i].strip() == "}":
                    i += 1
                    break
                i += 1
            blocks.append("".join(buf))
            buf = []
            continue
        i += 1
    if buf:
        blocks.append("".join(buf))
    return prefix, blocks


def stem_from_test_block(block: str) -> str:
    m = re.match(r"@test 'more_src has _([^']+)'", block)
    if not m:
        return ""
    return m.group(1)


def merge_existence_tests(repo: pathlib.Path, new_dests: list[str]) -> None:
    testp = repo / "tests/t-more-src-existence.zsh"
    text = testp.read_text(encoding="utf-8")
    prefix, blocks = parse_existence_tests(text)
    have = {stem_from_test_block(b) for b in blocks if stem_from_test_block(b)}
    for dest in new_dests:
        stem = dest[1:] if dest.startswith("_") else dest
        if stem in have:
            continue
        blocks.append(
            f"@test 'more_src has _{stem}' {{\n"
            f'    assert "$xsrc/_{stem}" is_file\n'
            "}\n\n"
        )
        have.add(stem)
    indexed = list(enumerate(blocks))
    indexed.sort(key=lambda it: (stem_from_test_block(it[1]), it[0]))
    sorted_blocks = [b for _, b in indexed]
    testp.write_text(prefix + "".join(sorted_blocks), encoding="utf-8")


def parse_github_remote(url: str) -> str | None:
    u = url.strip().rstrip("/")
    u = re.sub(r"\.git$", "", u, flags=re.I)
    u = u.replace("git@", "https://")
    m = re.search(r"github\.com[:/]([^/]+)/([^/]+)$", u)
    if m:
        return f"{m.group(1)}/{m.group(2)}"
    return None


def harvest_git_checkouts(
    roots: list[str],
    target: int,
    bl: set[str],
    existing: set[str],
    written_dests: set[str],
) -> int:
    n = 0
    for root in roots:
        root_p = pathlib.Path(root).expanduser()
        if not (root_p / ".git").is_dir():
            continue
        try:
            head = subprocess.check_output(
                ["git", "-C", str(root_p), "rev-parse", "HEAD"],
                text=True,
            ).strip()
            remote = subprocess.check_output(
                ["git", "-C", str(root_p), "remote", "get-url", "origin"],
                text=True,
            ).strip()
        except (subprocess.CalledProcessError, FileNotFoundError):
            continue
        slug = parse_github_remote(remote)
        if not slug:
            continue
        scan_candidates: list[pathlib.Path] = []
        for sub in (
            "completions/zsh",
            "contrib/completion/zsh",
            "contrib/completions/zsh",
            "completion/zsh",
            "zsh/completions",
            "zsh/completion",
        ):
            sp = root_p / sub
            if sp.is_dir():
                scan_candidates.append(sp)
        if (root_p / "src").is_dir() and any((root_p / "src").glob("_*")):
            scan_candidates.append(root_p / "src")
        for mf in root_p.glob("modules/*/functions"):
            if mf.is_dir():
                scan_candidates.append(mf)
        for gd in ("usr_share_grml/zsh/completion", "usr_share_grml/zsh/completions"):
            gp = root_p / gd
            if gp.is_dir():
                scan_candidates.append(gp)
        if not scan_candidates:
            scan_candidates = [root_p]
        for scan_root in scan_candidates:
            for path in sorted(scan_root.rglob("_*")):
                if len(written_dests) >= target:
                    return n
                if not path.is_file():
                    continue
                if path.name.startswith("__"):
                    continue
                if path.suffix.lower() in (
                    ".py",
                    ".md",
                    ".tpl",
                    ".yaml",
                    ".yml",
                    ".png",
                    ".jpg",
                    ".zwc",
                ):
                    continue
                if not re.match(r"^_[A-Za-z0-9_.-]+$", path.name):
                    continue
                rel = path.relative_to(root_p).as_posix()
                if skip_path(rel):
                    continue
                try:
                    body = path.read_text(encoding="utf-8", errors="replace")
                except OSError:
                    continue
                if "#compdef" not in body:
                    continue
                blob = f"https://github.com/{slug}/blob/{head}/{rel}"
                disp = f"{slug} ({rel})"
                if try_install(body, path.name, blob, disp, bl, existing, written_dests):
                    n += 1
    return n


def main() -> int:
    target = int(os.environ.get("HARVEST_TARGET", "50"))
    random.seed((int(time.time()) ^ os.getpid()) & 0xFFFF_FFFF)
    bl = load_blacklist()
    existing = more_basenames()
    written_dests: set[str] = set()

    n_loc = apply_local_tsv(bl, existing, written_dests)

    roots = [p for p in os.environ.get("HARVEST_GIT_ROOTS", "").split(":") if p.strip()]
    n_git = harvest_git_checkouts(roots, target, bl, existing, written_dests)

    tree_file = pathlib.Path(
        os.environ.get("HARVEST_TREE_REPO_FILE", str(REPO / "scripts/harvest-tree-repos.txt"))
    )
    n_tree = 0
    if (
        os.environ.get("HARVEST_SKIP_TREE") != "1"
        and shutil.which("gh")
        and len(written_dests) < target
        and tree_file.is_file()
    ):
        n_tree = harvest_github_trees_from_file(tree_file, target, bl, existing, written_dests)

    topic_words = (
        "pulumi terraform nomad consul vault waypoint packer buf earthly tilt skaffold "
        "act duf dust gdu hyperfine just moon procs rage taplo usage vivid zellij "
        "ansible molecule vagrant terragrunt opentofu age sops cosign crane "
        "ko buildah podman nerdctl lima colima k9s stern flux argo cilium linkerd "
        "telepresence devspace garden okteto wasmtime wasmer deno bun wrangler flyctl"
    ).split()

    query_batches: list[list[str]] = [
        [f"compdef language:Shell {w}" for w in topic_words[:18]],
        [f"compdef language:Shell {w}" for w in topic_words[18:36]],
        [f"compdef language:Shell {w}" for w in topic_words[36:]],
        [
            "compdef path:cmd language:Shell filename:_",
            "compdef path:cli language:Shell filename:_",
            "compdef path:bin language:Shell filename:_",
            "compdef path:pkg language:Shell filename:_",
            "compdef path:share language:Shell filename:_",
            "compdef path:autocomplete language:Shell filename:_",
        ],
        [
            "compdef language:Shell cmake ninja meson bazel buck gn",
            "compdef language:Shell ffmpeg yt-dlp streamlink gallery-dl spotdl",
            "compdef language:Shell sqlite3 psql mysql redis-cli mongosh",
        ],
        [
            "compdef filename:_ language:Shell",
            "#compdef filename:_ language:Shell",
            "compdef path:zsh-completion language:Shell",
            "compdef path:completions language:Shell extension:zsh",
            "compdef path:contrib language:Shell filename:_",
            "compdef path:extra language:Shell filename:_",
            "compdef path:completion language:Shell filename:_",
            "compdef language:Shell filename:_",
        ],
        [f"compdef language:Shell {c}" for c in "abcdefghijklmnopqrstuvwxyz0123456789"],
        [
            "compdef language:Zsh filename:_",
            "#compdef language:Zsh filename:_",
            "compdef extension:zsh language:Shell",
            "compdef path:completions language:Zsh",
        ],
        [
            "compdef path:fish language:Shell filename:_",
            "compdef path:bash language:Shell filename:_",
            "compdef path:powershell language:Shell filename:_",
        ],
        [
            "compdef language:Shell wrangler flyctl vercel railway render",
            "compdef language:Shell wasm-pack trunk leptosfmt",
            "compdef language:Shell k6 oapi plantuml asciidoctor",
        ],
        [
            "compdef language:Shell ast-grep biome oxlint ruff ty",
            "compdef language:Shell alacritty wezterm kitty foot ghostty",
            "compdef language:Shell wasm-bindgen wasm-split wit-bindgen",
        ],
    ]

    novel_words = sorted(
        {
            *(
                "airtable aichat amp meilisearch litestream sqlc goose tbls pinact uvx hatch "
                "rye pixi copier cruft lefthook trufflehog gitleaks osv-scanner slsa-verifier "
                "step-cli sqlfmt sqruff harlequin litecli usql xq yq dasel gron jp fq"
            ).split(),
            *(
                "changie release-please semantic-release git-cliff cocogitto gitu onefetch "
                "git-sizer git-filter-repo git-absorb git-branchless jj jujutsu sapling lazyjj"
            ).split(),
            *(
                "clusterctl kubeadm kubebuilder operator-sdk kustomize telepresence devpod "
                "lima limactl ctr"
            ).split(),
            *(
                "opa conftest kubeconform kube-score pluto polaris kubent kubescape "
                "terrascan checkov tfsec tflint infracost driftctl terramate atmos pulumi esc"
            ).split(),
        }
    )
    for i in range(0, len(novel_words), 5):
        query_batches.append([f"compdef language:Shell {w}" for w in novel_words[i : i + 5]])

    extra_words = (
        "walkmod zentao zrok zkapi trivy grype syft chainctl oras skopeo crictl "
        "nerdctl dockle dive hadolint regctl crane fulcio rekor apko melange ko-build"
    ).split()
    for i in range(0, len(extra_words), 6):
        query_batches.append([f"compdef language:Shell {w}" for w in extra_words[i : i + 6]])

    dict_path = pathlib.Path("/usr/share/dict/words")
    if dict_path.is_file():
        dict_words: list[str] = []
        for ln in dict_path.read_text(errors="ignore").splitlines():
            s = ln.strip().lower()
            if 5 <= len(s) <= 8 and s.isalpha():
                dict_words.append(s)
        for _ in range(2):
            random.shuffle(dict_words)
            for i in range(0, min(40, len(dict_words)), 5):
                query_batches.append(
                    [f"compdef language:Shell {w}" for w in dict_words[i : i + 5]]
                )

    n_web = 0
    seen_u: set[str] = set()
    workers = int(os.environ.get("HARVEST_FETCH_WORKERS", "24"))
    pages = int(os.environ.get("HARVEST_PAGES", "2"))
    queries_per_batch = max(1, int(os.environ.get("HARVEST_QUERIES_PER_BATCH", "2")))
    search_budget = max(0, int(os.environ.get("HARVEST_MAX_CODE_SEARCH_CALLS", "24")))

    def fetch_item(it: dict) -> tuple[dict, str | None]:
        raw_u = html_url_to_raw(it["html_url"])
        if not raw_u:
            return it, None
        return it, fetch_raw(raw_u)

    if (
        os.environ.get("HARVEST_GIT_ONLY") != "1"
        and os.environ.get("HARVEST_SKIP_WEB") != "1"
    ):
        calls_left = [search_budget]
        random.shuffle(query_batches)
        for queries in query_batches:
            if len(written_dests) >= target:
                break
            if calls_left[0] <= 0:
                break
            qs = list(queries)
            random.shuffle(qs)
            qs = qs[:queries_per_batch]
            round_items: list[dict] = []
            for it in gh_code_search_pages(qs, max_pages=pages, calls_left=calls_left):
                u = it.get("html_url") or ""
                if not u or u in seen_u:
                    continue
                seen_u.add(u)
                round_items.append(it)
            if not round_items:
                continue
            random.shuffle(round_items)
            bodies: dict[str, tuple[dict, str | None]] = {}
            with ThreadPoolExecutor(max_workers=workers) as pool:
                fut_map = {pool.submit(fetch_item, it): it["html_url"] for it in round_items}
                for fut in as_completed(fut_map):
                    url_key = fut_map[fut]
                    bodies[url_key] = fut.result()
            for it in round_items:
                if len(written_dests) >= target:
                    break
                tup = bodies.get(it["html_url"])
                if not tup:
                    continue
                _, body = tup
                if not body or "#compdef" not in body:
                    continue
                repo_slug = it.get("repo") or "unknown/unknown"
                path = it.get("path") or ""
                disp = f"{repo_slug} ({path})"
                if try_install(body, path, it["html_url"], disp, bl, existing, written_dests):
                    n_web += 1

    new_list = sorted(written_dests)
    merge_blacklist(bl)
    if new_list:
        merge_existence_tests(REPO, new_list)

    print(
        json.dumps(
            {
                "local_ok": n_loc,
                "git_ok": n_git,
                "tree_ok": n_tree,
                "web_ok": n_web,
                "total_files": len(written_dests),
                "target": target,
                "dests": new_list,
            },
            indent=2,
        )
    )
    if len(written_dests) < target:
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
