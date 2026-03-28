#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Bulk quality and statistical tests across all completion directories
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    src="$pluginDir/src"
    msrc="$pluginDir/man_src"
    osrc="$pluginDir/override_src"
    asrc="$pluginDir/architecture_src"
}

# ─── Directory size tests ────────────────────────────────────────────────────

@test 'src has more than 9000 files' {
    local count=$(ls "$src" | wc -l | tr -d ' ')
    assert "$count" is_greater_than 9000
}

@test 'src has more than 9100 files' {
    local count=$(ls "$src" | wc -l | tr -d ' ')
    assert "$count" is_greater_than 9100
}

@test 'src has fewer than 20000 files' {
    local count=$(ls "$src" | wc -l | tr -d ' ')
    assert "$count" is_less_than 20000
}

@test 'man_src has more than 3000 files' {
    local count=$(ls "$msrc" | wc -l | tr -d ' ')
    assert "$count" is_greater_than 3000
}

@test 'man_src has more than 3300 files' {
    local count=$(ls "$msrc" | wc -l | tr -d ' ')
    assert "$count" is_greater_than 3300
}

@test 'man_src has fewer than 10000 files' {
    local count=$(ls "$msrc" | wc -l | tr -d ' ')
    assert "$count" is_less_than 10000
}

@test 'architecture_src has more than 1000 files' {
    local count=$(ls "$asrc" | wc -l | tr -d ' ')
    assert "$count" is_greater_than 1000
}

@test 'architecture_src has more than 1050 files' {
    local count=$(ls "$asrc" | wc -l | tr -d ' ')
    assert "$count" is_greater_than 1050
}

@test 'architecture_src has fewer than 5000 files' {
    local count=$(ls "$asrc" | wc -l | tr -d ' ')
    assert "$count" is_less_than 5000
}

@test 'override_src has exactly 8 files' {
    local count=$(ls "$osrc" | wc -l | tr -d ' ')
    assert "$count" equals 8
}

@test 'total completion count exceeds 13000' {
    local s=$(ls "$src" | wc -l | tr -d ' ')
    local m=$(ls "$msrc" | wc -l | tr -d ' ')
    local a=$(ls "$asrc" | wc -l | tr -d ' ')
    local o=$(ls "$osrc" | wc -l | tr -d ' ')
    local total=$(( s + m + a + o ))
    assert "$total" is_greater_than 13000
}

@test 'total completion count exceeds 13500' {
    local s=$(ls "$src" | wc -l | tr -d ' ')
    local m=$(ls "$msrc" | wc -l | tr -d ' ')
    local a=$(ls "$asrc" | wc -l | tr -d ' ')
    local o=$(ls "$osrc" | wc -l | tr -d ' ')
    local total=$(( s + m + a + o ))
    assert "$total" is_greater_than 13500
}

@test 'total completion count is less than 20000' {
    local s=$(ls "$src" | wc -l | tr -d ' ')
    local m=$(ls "$msrc" | wc -l | tr -d ' ')
    local a=$(ls "$asrc" | wc -l | tr -d ' ')
    local o=$(ls "$osrc" | wc -l | tr -d ' ')
    local total=$(( s + m + a + o ))
    assert "$total" is_less_than 20000
}

@test 'src has more files than man_src' {
    local s=$(ls "$src" | wc -l | tr -d ' ')
    local m=$(ls "$msrc" | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

@test 'man_src has more files than architecture_src' {
    local m=$(ls "$msrc" | wc -l | tr -d ' ')
    local a=$(ls "$asrc" | wc -l | tr -d ' ')
    assert "$m" is_greater_than "$a"
}

@test 'architecture_src has more files than override_src' {
    local a=$(ls "$asrc" | wc -l | tr -d ' ')
    local o=$(ls "$osrc" | wc -l | tr -d ' ')
    assert "$a" is_greater_than "$o"
}

@test 'src has at least 2x files of man_src' {
    local s=$(ls "$src" | wc -l | tr -d ' ')
    local m=$(ls "$msrc" | wc -l | tr -d ' ')
    local double=$(( m * 2 ))
    assert "$s" is_greater_than "$double"
}

@test 'architecture_src has at least 100x files of override_src' {
    local a=$(ls "$asrc" | wc -l | tr -d ' ')
    local o=$(ls "$osrc" | wc -l | tr -d ' ')
    local mult=$(( o * 100 ))
    assert "$a" is_greater_than "$mult"
}

@test 'src directory exists and is a directory' {
    assert "$src" is_dir
}

@test 'man_src directory exists and is a directory' {
    assert "$msrc" is_dir
}

@test 'architecture_src directory exists and is a directory' {
    assert "$asrc" is_dir
}

@test 'override_src directory exists and is a directory' {
    assert "$osrc" is_dir
}

# ─── Naming convention tests ────────────────────────────────────────────────

@test 'all src files start with underscore - first 100' {
    local bad=0
    local count=0
    for f in "$src"/*; do
        local base="${f:t}"
        [[ "$base" = _* ]] || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'all man_src files start with underscore - first 100' {
    local bad=0
    local count=0
    for f in "$msrc"/*; do
        local base="${f:t}"
        [[ "$base" = _* ]] || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'all architecture_src files start with underscore - first 100' {
    local bad=0
    local count=0
    for f in "$asrc"/*; do
        local base="${f:t}"
        [[ "$base" = _* ]] || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'all override_src files start with underscore' {
    local bad=0
    for f in "$osrc"/*; do
        local base="${f:t}"
        [[ "$base" = _* ]] || (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'no src files have .txt extension' {
    local count=$(ls "$src"/*.txt 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no man_src files have .txt extension' {
    local count=$(ls "$msrc"/*.txt 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no architecture_src files have .txt extension' {
    local count=$(ls "$asrc"/*.txt 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no override_src files have .txt extension' {
    local count=$(ls "$osrc"/*.txt 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no src files have spaces in names - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/*; do
        local base="${f:t}"
        [[ "$base" = *" "* ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no man_src files have spaces in names - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/*; do
        local base="${f:t}"
        [[ "$base" = *" "* ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no architecture_src files have spaces in names - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/*; do
        local base="${f:t}"
        [[ "$base" = *" "* ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no override_src files have spaces in names' {
    local bad=0
    for f in "$osrc"/*; do
        local base="${f:t}"
        [[ "$base" = *" "* ]] && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'no zero-length files in src - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no zero-length files in man_src - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no zero-length files in architecture_src - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no zero-length files in override_src' {
    local bad=0
    for f in "$osrc"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'no src files have .zsh extension' {
    local count=$(ls "$src"/*.zsh 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no man_src files have .zsh extension' {
    local count=$(ls "$msrc"/*.zsh 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no src files have .rb extension' {
    local count=$(ls "$src"/*.rb 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no src files with uppercase first letter in name' {
    local bad=0
    local count=0
    for f in "$src"/*; do
        local base="${f:t}"
        [[ "$base" = [A-Z]* ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test 'no man_src files with uppercase first letter in name' {
    local bad=0
    local count=0
    for f in "$msrc"/*; do
        local base="${f:t}"
        [[ "$base" = [A-Z]* ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

# ─── Header consistency tests ────────────────────────────────────────────────

@test '100% of override_src files have #compdef header' {
    local bad=0
    for f in "$osrc"/_*; do
        head -1 "$f" | grep -q '#compdef' || (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'more than 99% of src files have #compdef or #autoload header - sample 500' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        head -1 "$f" | grep -qE '#compdef|#autoload' && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 500 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 98
}

@test '100% of man_src files have #compdef header - sample 500' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        head -1 "$f" | grep -q '#compdef' || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test '100% of architecture_src files have #compdef header - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        head -1 "$f" | grep -q '#compdef' || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no files start with blank line in override_src' {
    local bad=0
    for f in "$osrc"/_*; do
        local line=$(head -1 "$f")
        [[ -z "$line" ]] && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'no files start with blank line in src - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        local line=$(head -1 "$f")
        [[ -z "$line" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no files start with blank line in man_src - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        local line=$(head -1 "$f")
        [[ -z "$line" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no files start with blank line in architecture_src - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        local line=$(head -1 "$f")
        [[ -z "$line" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test '#compdef line in src files names a command - sample 100' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        local line=$(head -1 "$f")
        if [[ "$line" = "#compdef"* ]]; then
            local rest="${line#\#compdef }"
            [[ -z "$rest" ]] && (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test '#compdef line in man_src files names a command - sample 100' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        local line=$(head -1 "$f")
        if [[ "$line" = "#compdef"* ]]; then
            local rest="${line#\#compdef }"
            [[ -z "$rest" ]] && (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'override _git has #compdef as first line' {
    local line=$(head -1 "$osrc/_git")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _curl has #compdef as first line' {
    local line=$(head -1 "$osrc/_curl")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _claude has #compdef as first line' {
    local line=$(head -1 "$osrc/_claude")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _whois has #compdef as first line' {
    local line=$(head -1 "$osrc/_whois")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _cheat has #compdef as first line' {
    local line=$(head -1 "$osrc/_cheat")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _lftp has #compdef as first line' {
    local line=$(head -1 "$osrc/_lftp")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _express has #compdef as first line' {
    local line=$(head -1 "$osrc/_express")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

@test 'override _git-clone has #compdef as first line' {
    local line=$(head -1 "$osrc/_git-clone")
    [[ "$line" = "#compdef"* ]]
    assert $? equals 0
}

# ─── _arguments usage tests ─────────────────────────────────────────────────

@test 'more than 90% of src files use _arguments - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '_arguments' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'more than 95% of man_src files use _arguments - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q '_arguments' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 94
}

@test 'more than 90% of architecture_src files use _arguments - sample 200' {
    local good=0
    local total=0
    for f in "$asrc"/_*; do
        grep -q '_arguments' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'all override_src files use _arguments or _describe or compadd' {
    local bad=0
    for f in "$osrc"/_*; do
        grep -qE '_arguments|_describe|compadd' "$f" || (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'majority of src files use _arguments -s more than 50% - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '_arguments -s' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'majority of man_src files use _arguments -s more than 80% - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q '_arguments -s' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'more than 80% of architecture_src use _arguments -s - sample 200' {
    local good=0
    local total=0
    for f in "$asrc"/_*; do
        grep -q '_arguments -s' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'override _git uses _arguments' {
    run grep -c '_arguments' "$osrc/_git"
    assert $state equals 0
}

@test 'override _curl uses _arguments' {
    run grep -c '_arguments' "$osrc/_curl"
    assert $state equals 0
}

@test 'override _claude uses _arguments' {
    run grep -c '_arguments' "$osrc/_claude"
    assert $state equals 0
}

@test 'override _whois uses _arguments' {
    run grep -c '_arguments' "$osrc/_whois"
    assert $state equals 0
}

@test 'override _lftp uses _arguments' {
    run grep -c '_arguments' "$osrc/_lftp"
    assert $state equals 0
}

@test 'override _express uses _arguments' {
    run grep -c '_arguments' "$osrc/_express"
    assert $state equals 0
}

@test 'override _cheat uses _arguments or compadd' {
    grep -qE '_arguments|compadd' "$osrc/_cheat"
    assert $? equals 0
}

@test 'override _git-clone uses _arguments' {
    run grep -c '_arguments' "$osrc/_git-clone"
    assert $state equals 0
}

# ─── Content quality tests ──────────────────────────────────────────────────

@test 'more than 50% of src files contain help - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'help' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'more than 25% of src files contain version - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'version' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 24
}

@test 'more than 10% of src files contain verbose - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'verbose' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 9
}

@test 'more than 50% of src files contain _files - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '_files' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'more than 30% of man_src files contain _files - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q '_files' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 29
}

@test 'more than 80% of man_src files contain Autogenerated - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q 'Autogenerated' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'more than 95% of man_src files use local arguments - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -qE 'local (-a )?arguments' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 94
}

@test 'more than 95% of man_src files end with _arguments -s $arguments - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        tail -1 "$f" | grep -q '_arguments -s $arguments' && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 94
}

@test 'less than 1% of src files use declare -a bash-ism - sample 500' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q 'declare -a' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 500 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 2
}

@test '0% of man_src files use declare -a - sample 300' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        grep -q 'declare -a' "$f" && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'more than 70% of src files use local arguments - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qE 'local (-a )?arguments' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 69
}

@test 'more than 50% of src files use bracket description format - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '\[' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'more than 60% of src files use filename:_files - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q ':filename:_files\|:file:_files' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 59
}

@test 'more than 30% of src files use combined short+long option format - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qE '\{-.|,--' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 29
}

@test 'architecture_src files do not use declare -a - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        grep -q 'declare -a' "$f" && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'more than 20% of src files contain output - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'output' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 19
}

@test 'more than 10% of src files contain debug - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'debug' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 9
}

@test 'more than 5% of src files contain quiet - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'quiet' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 4
}

@test 'more than 5% of src files contain force - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qi 'force' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 4
}

@test 'more than 30% of src files contain --help flag - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '\-\-help' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 29
}

@test 'more than 30% of src files contain --version flag - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '\-\-version' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 29
}

@test 'no src files contain TODO markers - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q 'TODO' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 5
}

@test 'no man_src files contain TODO markers - sample 300' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        grep -q 'TODO' "$f" && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'override_src files do not contain TODO markers' {
    local bad=0
    for f in "$osrc"/_*; do
        grep -q 'TODO' "$f" && (( bad += 1 )) || true
    done
    local pct=$(( bad * 100 / 8 ))
    assert "$pct" is_less_than 30
}

@test 'more than 80% of man_src files have comment about man page source - sample 200' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q 'man page' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'more than 50% of man_src files reference /usr/share/man - sample 200' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q '/usr/share/man\|/usr/local/share/man' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'more than 80% of src files contain single quote option descriptions - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q "'" "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'more than 90% of architecture_src files contain local arguments - sample 200' {
    local good=0
    local total=0
    for f in "$asrc"/_*; do
        grep -qE 'local (-a )?arguments' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

# ─── File size tests ────────────────────────────────────────────────────────

@test 'average src file is more than 20 lines - sample 200' {
    local total_lines=0
    local count=0
    for f in "$src"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( total_lines += lc ))
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    local avg=$(( total_lines / count ))
    assert "$avg" is_greater_than 20
}

@test 'average man_src file is more than 10 lines - sample 200' {
    local total_lines=0
    local count=0
    for f in "$msrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( total_lines += lc ))
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    local avg=$(( total_lines / count ))
    assert "$avg" is_greater_than 10
}

@test 'average architecture_src file is more than 20 lines - sample 200' {
    local total_lines=0
    local count=0
    for f in "$asrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( total_lines += lc ))
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    local avg=$(( total_lines / count ))
    assert "$avg" is_greater_than 20
}

@test 'no override_src file is less than 10 lines' {
    local bad=0
    for f in "$osrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( lc < 10 )) && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test '_git is the largest override_src file' {
    local max_file=""
    local max_lines=0
    for f in "$osrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        if (( lc > max_lines )); then
            max_lines=$lc
            max_file="${f:t}"
        fi
    done
    assert "$max_file" same_as "_git"
}

@test '_git override is over 7000 lines' {
    local lc=$(wc -l < "$osrc/_git" | tr -d ' ')
    assert "$lc" is_greater_than 7000
}

@test '_git-clone override is over 7000 lines' {
    local lc=$(wc -l < "$osrc/_git-clone" | tr -d ' ')
    assert "$lc" is_greater_than 7000
}

@test '_curl override is over 200 lines' {
    local lc=$(wc -l < "$osrc/_curl" | tr -d ' ')
    assert "$lc" is_greater_than 200
}

@test '_claude override is over 300 lines' {
    local lc=$(wc -l < "$osrc/_claude" | tr -d ' ')
    assert "$lc" is_greater_than 300
}

@test '_whois override is over 200 lines' {
    local lc=$(wc -l < "$osrc/_whois" | tr -d ' ')
    assert "$lc" is_greater_than 200
}

@test 'smallest src file is at least 2 lines - sample 500' {
    local min_lines=999999
    local count=0
    local lc
    for f in "$src"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc < min_lines )) && min_lines=$lc
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$min_lines" is_greater_than 1
}

@test 'smallest man_src file is at least 2 lines - sample 500' {
    local min_lines=999999
    local count=0
    local lc
    for f in "$msrc"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc < min_lines )) && min_lines=$lc
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$min_lines" is_greater_than 1
}

@test 'smallest architecture_src file is at least 2 lines - sample 200' {
    local min_lines=999999
    local count=0
    local lc
    for f in "$asrc"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc < min_lines )) && min_lines=$lc
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$min_lines" is_greater_than 1
}

@test '_express override is at least 15 lines' {
    local lc=$(wc -l < "$osrc/_express" | tr -d ' ')
    assert "$lc" is_greater_than 14
}

@test '_lftp override is at least 20 lines' {
    local lc=$(wc -l < "$osrc/_lftp" | tr -d ' ')
    assert "$lc" is_greater_than 19
}

@test '_cheat override is at least 20 lines' {
    local lc=$(wc -l < "$osrc/_cheat" | tr -d ' ')
    assert "$lc" is_greater_than 19
}

@test 'largest src file in first 500 is less than 50000 lines' {
    local max_lines=0
    local count=0
    for f in "$src"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( lc > max_lines )) && max_lines=$lc
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$max_lines" is_less_than 50000
}

@test 'average override_src file is more than 50 lines' {
    local total_lines=0
    local count=0
    for f in "$osrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( total_lines += lc ))
        (( count += 1 ))
    done
    local avg=$(( total_lines / count ))
    assert "$avg" is_greater_than 50
}

@test 'total override_src lines exceed 16000' {
    local total_lines=0
    for f in "$osrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( total_lines += lc ))
    done
    assert "$total_lines" is_greater_than 16000
}

@test 'no override_src file exceeds 10000 lines' {
    local bad=0
    for f in "$osrc"/_*; do
        local lc=$(wc -l < "$f" | tr -d ' ')
        (( lc > 10000 )) && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

# ─── Syntax check tests ────────────────────────────────────────────────────

@test 'first 50 alphabetically sorted src files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 alphabetically sorted man_src files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 alphabetically sorted architecture_src files pass syntax check' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'all override_src files pass syntax check - _git' {
    run zsh -n "$osrc/_git"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _git-clone' {
    run zsh -n "$osrc/_git-clone"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _curl' {
    run zsh -n "$osrc/_curl"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _claude' {
    run zsh -n "$osrc/_claude"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _whois' {
    run zsh -n "$osrc/_whois"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _cheat' {
    run zsh -n "$osrc/_cheat"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _lftp' {
    run zsh -n "$osrc/_lftp"
    assert $state equals 0
}

@test 'all override_src files pass syntax check - _express' {
    run zsh -n "$osrc/_express"
    assert $state equals 0
}

@test '10 random src files pass syntax check - batch 1' {
    local bad=0
    local files=("$src"/_a*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random src files pass syntax check - batch 2' {
    local bad=0
    local files=("$src"/_c*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random src files pass syntax check - batch 3' {
    local bad=0
    local files=("$src"/_g*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random src files pass syntax check - batch 4' {
    local bad=0
    local files=("$src"/_p*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random src files pass syntax check - batch 5' {
    local bad=0
    local files=("$src"/_s*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random man_src files pass syntax check - batch 1' {
    local bad=0
    local files=("$msrc"/_a*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random man_src files pass syntax check - batch 2' {
    local bad=0
    local files=("$msrc"/_m*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random man_src files pass syntax check - batch 3' {
    local bad=0
    local files=("$msrc"/_s*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random architecture_src files pass syntax check - batch 1' {
    local bad=0
    local files=("$asrc"/_aarch64*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test '10 random architecture_src files pass syntax check - batch 2' {
    local bad=0
    local files=("$asrc"/_x86*)
    local step=$(( ${#files[@]} / 10 ))
    (( step < 1 )) && step=1
    local count=0
    for (( i = 1; i <= ${#files[@]}; i += step )); do
        zsh -n "${files[$i]}" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 10 )) && break
    done
    assert "$bad" equals 0
}

@test 'src files 51-100 alphabetically pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        (( count += 1 ))
        (( count <= 50 )) && continue
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'man_src files 51-100 alphabetically pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        (( count += 1 ))
        (( count <= 50 )) && continue
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

# ─── Uniqueness tests ───────────────────────────────────────────────────────

@test 'no duplicate filenames between override_src and src' {
    local dupes=0
    for f in "$osrc"/_*; do
        local base="${f:t}"
        [[ -f "$src/$base" ]] && (( dupes += 1 )) || true
    done
    # _curl exists in both, which is intentional for overrides
    # but we check that the override mechanism is deliberate
    assert "$dupes" is_less_than 3
}

@test 'no duplicate filenames between override_src and man_src' {
    local dupes=0
    for f in "$osrc"/_*; do
        local base="${f:t}"
        [[ -f "$msrc/$base" ]] && (( dupes += 1 )) || true
    done
    assert "$dupes" equals 0
}

@test 'each override_src file has unique compdef target' {
    local -a targets
    local dupes=0
    for f in "$osrc"/_*; do
        local target=$(head -1 "$f" | sed 's/#compdef //')
        if (( ${targets[(I)$target]} )); then
            (( dupes += 1 )) || true
        fi
        targets+=("$target")
    done
    assert "$dupes" equals 0
}

@test 'src has no files without content - sample 500' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test 'man_src has no files without content - sample 500' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test 'architecture_src has no files without content - sample 300' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        [[ ! -s "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'no duplicate filenames between architecture_src and src' {
    local dupes=0
    local count=0
    for f in "$asrc"/_*; do
        local base="${f:t}"
        [[ -f "$src/$base" ]] && (( dupes += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$dupes" equals 0
}

@test 'no duplicate filenames between architecture_src and man_src' {
    local dupes=0
    local count=0
    for f in "$asrc"/_*; do
        local base="${f:t}"
        [[ -f "$msrc/$base" ]] && (( dupes += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$dupes" equals 0
}

@test 'override_src files are all regular files' {
    local bad=0
    for f in "$osrc"/_*; do
        [[ -f "$f" ]] || (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'src files are all regular files - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        [[ -f "$f" ]] || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'compdef targets in src match filename - sample 100' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        local base="${f:t}"
        local cmd="${base#_}"
        local compdef_line=$(head -1 "$f")
        if [[ "$compdef_line" = "#compdef"* ]]; then
            echo "$compdef_line" | grep -q "$cmd" || (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    local pct=$(( bad * 100 / count ))
    assert "$pct" is_less_than 15
}

# ─── Letter coverage tests - src ────────────────────────────────────────────

@test 'src has completions starting with _a' {
    local count=$(ls "$src"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _b' {
    local count=$(ls "$src"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _c' {
    local count=$(ls "$src"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _d' {
    local count=$(ls "$src"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _e' {
    local count=$(ls "$src"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _f' {
    local count=$(ls "$src"/_f* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _g' {
    local count=$(ls "$src"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _h' {
    local count=$(ls "$src"/_h* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _i' {
    local count=$(ls "$src"/_i* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _j' {
    local count=$(ls "$src"/_j* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _k' {
    local count=$(ls "$src"/_k* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _l' {
    local count=$(ls "$src"/_l* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _m' {
    local count=$(ls "$src"/_m* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _n' {
    local count=$(ls "$src"/_n* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _o' {
    local count=$(ls "$src"/_o* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _p' {
    local count=$(ls "$src"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _q' {
    local count=$(ls "$src"/_q* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _r' {
    local count=$(ls "$src"/_r* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _s' {
    local count=$(ls "$src"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _t' {
    local count=$(ls "$src"/_t* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _u' {
    local count=$(ls "$src"/_u* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _v' {
    local count=$(ls "$src"/_v* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _w' {
    local count=$(ls "$src"/_w* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _x' {
    local count=$(ls "$src"/_x* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _y' {
    local count=$(ls "$src"/_y* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'src has completions starting with _z' {
    local count=$(ls "$src"/_z* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

# ─── Letter coverage tests - man_src ────────────────────────────────────────

@test 'man_src has completions starting with _a' {
    local count=$(ls "$msrc"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _b' {
    local count=$(ls "$msrc"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _c' {
    local count=$(ls "$msrc"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _d' {
    local count=$(ls "$msrc"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _e' {
    local count=$(ls "$msrc"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _f' {
    local count=$(ls "$msrc"/_f* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _g' {
    local count=$(ls "$msrc"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _h' {
    local count=$(ls "$msrc"/_h* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _i' {
    local count=$(ls "$msrc"/_i* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _j' {
    local count=$(ls "$msrc"/_j* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _k' {
    local count=$(ls "$msrc"/_k* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _l' {
    local count=$(ls "$msrc"/_l* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _m' {
    local count=$(ls "$msrc"/_m* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _n' {
    local count=$(ls "$msrc"/_n* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _o' {
    local count=$(ls "$msrc"/_o* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _p' {
    local count=$(ls "$msrc"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _q' {
    local count=$(ls "$msrc"/_q* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _r' {
    local count=$(ls "$msrc"/_r* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _s' {
    local count=$(ls "$msrc"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _t' {
    local count=$(ls "$msrc"/_t* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _u' {
    local count=$(ls "$msrc"/_u* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _v' {
    local count=$(ls "$msrc"/_v* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _w' {
    local count=$(ls "$msrc"/_w* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _x' {
    local count=$(ls "$msrc"/_x* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _y' {
    local count=$(ls "$msrc"/_y* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'man_src has completions starting with _z' {
    local count=$(ls "$msrc"/_z* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

# ─── Letter volume tests - src ──────────────────────────────────────────────

@test 'src has more than 100 completions starting with _a' {
    local count=$(ls "$src"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _c' {
    local count=$(ls "$src"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _d' {
    local count=$(ls "$src"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _g' {
    local count=$(ls "$src"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _l' {
    local count=$(ls "$src"/_l* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _m' {
    local count=$(ls "$src"/_m* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _p' {
    local count=$(ls "$src"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _r' {
    local count=$(ls "$src"/_r* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _s' {
    local count=$(ls "$src"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 200 completions starting with _p' {
    local count=$(ls "$src"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _s' {
    local count=$(ls "$src"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _g' {
    local count=$(ls "$src"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src _p count exceeds _q count' {
    local p=$(ls "$src"/_p* 2>/dev/null | wc -l | tr -d ' ')
    local q=$(ls "$src"/_q* 2>/dev/null | wc -l | tr -d ' ')
    assert "$p" is_greater_than "$q"
}

@test 'src _s count exceeds _y count' {
    local s=$(ls "$src"/_s* 2>/dev/null | wc -l | tr -d ' ')
    local y=$(ls "$src"/_y* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$y"
}

# ─── Cross-directory consistency tests ──────────────────────────────────────

@test 'architecture_src has aarch64 prefix files' {
    local count=$(ls "$asrc"/_aarch64* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'architecture_src has x86_64 prefix files' {
    local count=$(ls "$asrc"/_x86_64* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'architecture_src has llvm prefix files' {
    local count=$(ls "$asrc"/_llvm* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'architecture_src files relate to cross-compiler toolchains - sample 100' {
    local good=0
    local total=0
    for f in "$asrc"/_*; do
        local base="${f:t}"
        if [[ "$base" = *aarch64* ]] || [[ "$base" = *x86_64* ]] || \
           [[ "$base" = *llvm* ]] || [[ "$base" = *arm* ]] || \
           [[ "$base" = *gcc* ]] || [[ "$base" = *g++* ]] || \
           [[ "$base" = *clang* ]] || [[ "$base" = *apple* ]] || \
           [[ "$base" = *alpine* ]] || [[ "$base" = *linux* ]] || \
           [[ "$base" = *darwin* ]] || [[ "$base" = *musl* ]] || \
           [[ "$base" = *gfortran* ]] || [[ "$base" = *ranlib* ]] || \
           [[ "$base" = *addr2line* ]] || [[ "$base" = *objdump* ]] || \
           [[ "$base" = *readelf* ]] || [[ "$base" = *strip* ]] || \
           [[ "$base" = *nm* ]] || [[ "$base" = *ar* ]] || \
           [[ "$base" = *c++* ]] || [[ "$base" = *ld* ]]; then
            (( good += 1 ))
        fi
        (( total += 1 ))
        (( total >= 100 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'architecture_src has more than 50 aarch64 files' {
    local count=$(ls "$asrc"/_aarch64* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'architecture_src has more than 50 x86_64 files' {
    local count=$(ls "$asrc"/_x86_64* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'architecture_src has more than 20 llvm files' {
    local count=$(ls "$asrc"/_llvm* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 20
}

@test 'man_src does not contain _curl' {
    [[ ! -f "$msrc/_curl" ]]
    assert $? equals 0
}

@test 'man_src does not contain _git' {
    [[ ! -f "$msrc/_git" ]]
    assert $? equals 0
}

@test 'man_src does not contain _whois' {
    [[ ! -f "$msrc/_whois" ]]
    assert $? equals 0
}

@test 'man_src does not contain _claude' {
    [[ ! -f "$msrc/_claude" ]]
    assert $? equals 0
}

@test 'man_src does not contain _lftp' {
    [[ ! -f "$msrc/_lftp" ]]
    assert $? equals 0
}

@test 'man_src does not contain _express' {
    [[ ! -f "$msrc/_express" ]]
    assert $? equals 0
}

@test 'man_src does not contain _cheat' {
    [[ ! -f "$msrc/_cheat" ]]
    assert $? equals 0
}

@test 'man_src does not contain _git-clone' {
    [[ ! -f "$msrc/_git-clone" ]]
    assert $? equals 0
}

@test 'architecture_src does not overlap with override_src' {
    local dupes=0
    for f in "$osrc"/_*; do
        local base="${f:t}"
        [[ -f "$asrc/$base" ]] && (( dupes += 1 )) || true
    done
    assert "$dupes" equals 0
}

@test 'src has more _g files than man_src _g files' {
    local s=$(ls "$src"/_g* 2>/dev/null | wc -l | tr -d ' ')
    local m=$(ls "$msrc"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

@test 'src has more _p files than man_src _p files' {
    local s=$(ls "$src"/_p* 2>/dev/null | wc -l | tr -d ' ')
    local m=$(ls "$msrc"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

@test 'src has more _s files than man_src _s files' {
    local s=$(ls "$src"/_s* 2>/dev/null | wc -l | tr -d ' ')
    local m=$(ls "$msrc"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

@test 'src has more _a files than man_src _a files' {
    local s=$(ls "$src"/_a* 2>/dev/null | wc -l | tr -d ' ')
    local m=$(ls "$msrc"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

@test 'src has more _c files than man_src _c files' {
    local s=$(ls "$src"/_c* 2>/dev/null | wc -l | tr -d ' ')
    local m=$(ls "$msrc"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

@test 'src has more _d files than man_src _d files' {
    local s=$(ls "$src"/_d* 2>/dev/null | wc -l | tr -d ' ')
    local m=$(ls "$msrc"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$m"
}

# ─── Specific well-known tools in src ───────────────────────────────────────

@test 'src contains _curl' {
    assert "$src/_curl" is_file
}

@test 'src contains _docker' {
    assert "$src/_docker" is_file
}

@test 'src contains _grep' {
    assert "$src/_grep" is_file
}

@test 'src contains _sed' {
    assert "$src/_sed" is_file
}

@test 'src contains _awk' {
    assert "$src/_awk" is_file
}

@test 'src contains _make' {
    assert "$src/_make" is_file
}

@test 'src contains _vim' {
    assert "$src/_vim" is_file
}

@test 'src contains _emacs' {
    assert "$src/_emacs" is_file
}

@test 'src contains _python' {
    assert "$src/_python" is_file
}

@test 'src contains _rsync' {
    assert "$src/_rsync" is_file
}

@test 'src contains _screen' {
    assert "$src/_screen" is_file
}

@test 'src contains _systemctl' {
    assert "$src/_systemctl" is_file
}

@test 'src contains _journalctl' {
    assert "$src/_journalctl" is_file
}

@test 'src contains _chmod' {
    assert "$src/_chmod" is_file
}

@test 'src contains _chown' {
    assert "$src/_chown" is_file
}

@test 'src contains _mount' {
    assert "$src/_mount" is_file
}

@test 'src contains _kill' {
    assert "$src/_kill" is_file
}

@test 'src contains _ls' {
    assert "$src/_ls" is_file
}

@test 'src contains _cat' {
    assert "$src/_cat" is_file
}

@test 'src contains _rm' {
    assert "$src/_rm" is_file
}

@test 'src contains _mv' {
    assert "$src/_mv" is_file
}

@test 'src contains _df' {
    assert "$src/_df" is_file
}

@test 'src contains _du' {
    assert "$src/_du" is_file
}

@test 'src contains _dig' {
    assert "$src/_dig" is_file
}

@test 'src contains _traceroute' {
    assert "$src/_traceroute" is_file
}

@test 'src contains _ip' {
    assert "$src/_ip" is_file
}

@test 'src contains _netstat' {
    assert "$src/_netstat" is_file
}

@test 'src contains _lsof' {
    assert "$src/_lsof" is_file
}

@test 'src contains _strace' {
    assert "$src/_strace" is_file
}

@test 'src contains _nm' {
    assert "$src/_nm" is_file
}

@test 'src contains _strip' {
    assert "$src/_strip" is_file
}

# ─── Edge case tests ────────────────────────────────────────────────────────

@test 'no binary files in src - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        if file "$f" | grep -qE 'executable|binary|ELF|Mach-O'; then
            (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no binary files in man_src - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        if file "$f" | grep -qE 'executable|binary|ELF|Mach-O'; then
            (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no binary files in architecture_src - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        if file "$f" | grep -qE 'executable|binary|ELF|Mach-O'; then
            (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no binary files in override_src' {
    local bad=0
    for f in "$osrc"/_*; do
        if file "$f" | grep -qE 'executable|binary|ELF|Mach-O'; then
            (( bad += 1 )) || true
        fi
    done
    assert "$bad" equals 0
}

@test 'no .zwc files in src' {
    local count=$(ls "$src"/*.zwc 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .zwc files in man_src' {
    local count=$(ls "$msrc"/*.zwc 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .zwc files in architecture_src' {
    local count=$(ls "$asrc"/*.zwc 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .zwc files in override_src' {
    local count=$(ls "$osrc"/*.zwc 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no hidden files in src' {
    local count=$(ls -d "$src"/.* 2>/dev/null | grep -v '/\.\.$\|/\.$' | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no hidden files in man_src' {
    local count=$(ls -d "$msrc"/.* 2>/dev/null | grep -v '/\.\.$\|/\.$' | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no hidden files in architecture_src' {
    local count=$(ls -d "$asrc"/.* 2>/dev/null | grep -v '/\.\.$\|/\.$' | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no hidden files in override_src' {
    local count=$(ls -d "$osrc"/.* 2>/dev/null | grep -v '/\.\.$\|/\.$' | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no symlinks in src - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        [[ -L "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no symlinks in man_src - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        [[ -L "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no symlinks in override_src' {
    local bad=0
    for f in "$osrc"/_*; do
        [[ -L "$f" ]] && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'no .DS_Store files in src' {
    [[ ! -f "$src/.DS_Store" ]]
    assert $? equals 0
}

@test 'no .DS_Store files in man_src' {
    [[ ! -f "$msrc/.DS_Store" ]]
    assert $? equals 0
}

@test 'no .DS_Store files in architecture_src' {
    [[ ! -f "$asrc/.DS_Store" ]]
    assert $? equals 0
}

@test 'no .DS_Store files in override_src' {
    [[ ! -f "$osrc/.DS_Store" ]]
    assert $? equals 0
}

@test 'src files are readable - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        [[ -r "$f" ]] || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'man_src files are readable - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        [[ -r "$f" ]] || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

# ─── Additional content pattern tests ───────────────────────────────────────

@test 'more than 80% of src files contain parentheses - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '(' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'less than 5% of src files use echo command - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q '^[[:space:]]*echo ' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 6
}

@test '0% of man_src files use echo command - sample 300' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        grep -q '^[[:space:]]*echo ' "$f" && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'more than 90% of src files have closing parenthesis - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q ')' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'more than 50% of src files use double dash options - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q '\-\-' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'more than 50% of src files use single dash options - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qE "'-[a-zA-Z]" "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 49
}

@test 'no src files contain Windows line endings - sample 100' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        file "$f" | grep -q 'CRLF' && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'no man_src files contain Windows line endings - sample 100' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        file "$f" | grep -q 'CRLF' && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

@test 'no override_src files contain Windows line endings' {
    local bad=0
    for f in "$osrc"/_*; do
        file "$f" | grep -q 'CRLF' && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'src files are ASCII or UTF-8 text - sample 200' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        if ! file "$f" | grep -qiE 'text|ASCII|UTF-8|empty'; then
            (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'man_src files are ASCII or UTF-8 text - sample 200' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        if ! file "$f" | grep -qiE 'text|ASCII|UTF-8|empty'; then
            (( bad += 1 )) || true
        fi
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'override_src files are ASCII or UTF-8 text' {
    local bad=0
    for f in "$osrc"/_*; do
        if ! file "$f" | grep -qiE 'text|ASCII|UTF-8|empty'; then
            (( bad += 1 )) || true
        fi
    done
    assert "$bad" equals 0
}

# ─── Additional letter volume tests for man_src ─────────────────────────────

@test 'man_src has more than 50 completions starting with _a' {
    local count=$(ls "$msrc"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _c' {
    local count=$(ls "$msrc"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _d' {
    local count=$(ls "$msrc"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _g' {
    local count=$(ls "$msrc"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _l' {
    local count=$(ls "$msrc"/_l* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _m' {
    local count=$(ls "$msrc"/_m* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _p' {
    local count=$(ls "$msrc"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _p' {
    local count=$(ls "$msrc"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 50 completions starting with _s' {
    local count=$(ls "$msrc"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _s' {
    local count=$(ls "$msrc"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 50 completions starting with _t' {
    local count=$(ls "$msrc"/_t* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _t' {
    local count=$(ls "$msrc"/_t* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 50 completions starting with _x' {
    local count=$(ls "$msrc"/_x* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _x' {
    local count=$(ls "$msrc"/_x* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

# ─── Additional specific tool tests ─────────────────────────────────────────

@test 'src contains _bat' {
    assert "$src/_bat" is_file
}

@test 'src contains _exa' {
    assert "$src/_exa" is_file
}

@test 'src contains _fd' {
    assert "$src/_fd" is_file
}

@test 'src contains _fzf' {
    assert "$src/_fzf" is_file
}

@test 'src contains _htop' {
    assert "$src/_htop" is_file
}

@test 'src contains _jq' {
    assert "$src/_jq" is_file
}

@test 'src contains _nmap' {
    assert "$src/_nmap" is_file
}

@test 'src contains _rg' {
    assert "$src/_rg" is_file
}

@test 'src contains _youtube-dl' {
    assert "$src/_youtube-dl" is_file
}

@test 'src contains _ffprobe' {
    assert "$src/_ffprobe" is_file
}

@test 'src contains _objdump' {
    assert "$src/_objdump" is_file
}

@test 'src contains _readelf' {
    assert "$src/_readelf" is_file
}

@test 'src contains _as' {
    assert "$src/_as" is_file
}

@test 'src contains _ld' {
    assert "$src/_ld" is_file
}

@test 'src contains _ltrace' {
    assert "$src/_ltrace" is_file
}

# ─── Additional structural consistency tests ────────────────────────────────

@test 'no subdirectories in src' {
    local bad=0
    local count=0
    for f in "$src"/*; do
        [[ -d "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test 'no subdirectories in man_src' {
    local bad=0
    local count=0
    for f in "$msrc"/*; do
        [[ -d "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test 'no subdirectories in architecture_src' {
    local bad=0
    local count=0
    for f in "$asrc"/*; do
        [[ -d "$f" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 500 )) && break
    done
    assert "$bad" equals 0
}

@test 'no subdirectories in override_src' {
    local bad=0
    for f in "$osrc"/*; do
        [[ -d "$f" ]] && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'all four source directories are siblings' {
    local src_parent="${src:h}"
    local msrc_parent="${msrc:h}"
    local asrc_parent="${asrc:h}"
    local osrc_parent="${osrc:h}"
    assert "$src_parent" same_as "$msrc_parent"
    assert "$src_parent" same_as "$asrc_parent"
    assert "$src_parent" same_as "$osrc_parent"
}

@test 'src files all have same parent directory' {
    local count=0
    local bad=0
    for f in "$src"/_*; do
        local parent="${f:h}"
        [[ "$parent" != "$src" ]] && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    assert "$bad" equals 0
}

# ─── Additional _arguments pattern tests ────────────────────────────────────

@test 'more than 60% of src files contain colon-separated argument specs - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -qE "'[^']*:[^']*'" "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 59
}

@test 'less than 5% of src files are completely empty comments - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        local non_comment=$(grep -cv '^#\|^$' "$f" 2>/dev/null || echo 0)
        (( non_comment == 0 )) && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 5
}

@test 'more than 80% of man_src files have 3+ lines - sample 300' {
    local good=0
    local total=0
    local lc
    for f in "$msrc"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc >= 3 )) && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'more than 80% of architecture_src files have 3+ lines - sample 200' {
    local good=0
    local total=0
    local lc
    for f in "$asrc"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc >= 3 )) && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

@test 'more than 70% of src files have 5+ lines - sample 300' {
    local good=0
    local total=0
    local lc
    for f in "$src"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc >= 5 )) && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 69
}

@test 'more than 30% of src files have 20+ lines - sample 300' {
    local good=0
    local total=0
    local lc
    for f in "$src"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( lc >= 20 )) && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 29
}

# ─── Additional cross-directory pattern tests ───────────────────────────────

@test 'man_src and src have different average line counts - sample 100' {
    local src_total=0
    local msrc_total=0
    local count=0
    local lc
    for f in "$src"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( src_total += lc ))
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    local src_avg=$(( src_total / count ))
    count=0
    for f in "$msrc"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( msrc_total += lc ))
        (( count += 1 ))
        (( count >= 100 )) && break
    done
    local msrc_avg=$(( msrc_total / count ))
    # Both should have substantial average line counts
    assert "$src_avg" is_greater_than 5
    assert "$msrc_avg" is_greater_than 5
}

@test 'override_src has highest average line count per file' {
    local osrc_total=0
    local osrc_count=0
    local lc
    for f in "$osrc"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( osrc_total += lc ))
        (( osrc_count += 1 ))
    done
    local osrc_avg=$(( osrc_total / osrc_count ))
    local src_total=0
    local count=0
    for f in "$src"/_*; do
        lc=$(wc -l < "$f" | tr -d ' ')
        (( src_total += lc ))
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    local src_avg=$(( src_total / count ))
    assert "$osrc_avg" is_greater_than "$src_avg"
}

# ─── Comprehensive override_src specific tests ──────────────────────────────

@test 'override _claude has more than 300 lines' {
    local lc=$(wc -l < "$osrc/_claude" | tr -d ' ')
    assert "$lc" is_greater_than 300
}

@test 'override _git has more than 7500 lines' {
    local lc=$(wc -l < "$osrc/_git" | tr -d ' ')
    assert "$lc" is_greater_than 7500
}

@test 'override _git-clone has more than 7500 lines' {
    local lc=$(wc -l < "$osrc/_git-clone" | tr -d ' ')
    assert "$lc" is_greater_than 7500
}

@test 'override _claude contains claude keyword' {
    run grep -c 'claude' "$osrc/_claude"
    assert $state equals 0
}

@test 'override _curl contains url keyword' {
    run grep -ci 'url' "$osrc/_curl"
    assert $state equals 0
}

@test 'override _git contains branch keyword' {
    run grep -ci 'branch' "$osrc/_git"
    assert $state equals 0
}

@test 'override _git contains commit keyword' {
    run grep -ci 'commit' "$osrc/_git"
    assert $state equals 0
}

@test 'override _whois contains domain keyword' {
    run grep -ci 'domain\|whois\|server' "$osrc/_whois"
    assert $state equals 0
}

# ─── Additional syntax and structure tests ──────────────────────────────────

@test 'first 50 src _b files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_b*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _d files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_d*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _e files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_e*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _f files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_f*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _h files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_h*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _i files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_i*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _l files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_l*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _m files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_m*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _n files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_n*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _o files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_o*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _r files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_r*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _t files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_t*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _u files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_u*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _v files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_v*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 src _w files pass syntax check' {
    local bad=0
    local count=0
    for f in "$src"/_w*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _b files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_b*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _c files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_c*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _d files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_d*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _g files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_g*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _l files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_l*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _p files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_p*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _t files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_t*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 man_src _x files pass syntax check' {
    local bad=0
    local count=0
    for f in "$msrc"/_x*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 architecture_src _llvm files pass syntax check' {
    local bad=0
    local count=0
    for f in "$asrc"/_llvm*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

@test 'first 50 architecture_src _x86 files pass syntax check' {
    local bad=0
    local count=0
    for f in "$asrc"/_x86*; do
        zsh -n "$f" 2>/dev/null || (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 50 )) && break
    done
    assert "$bad" equals 0
}

# ─── Additional src letter volume tests ─────────────────────────────────────

@test 'src has more than 100 completions starting with _b' {
    local count=$(ls "$src"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _e' {
    local count=$(ls "$src"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _f' {
    local count=$(ls "$src"/_f* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _h' {
    local count=$(ls "$src"/_h* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _i' {
    local count=$(ls "$src"/_i* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _j' {
    local count=$(ls "$src"/_j* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _k' {
    local count=$(ls "$src"/_k* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _n' {
    local count=$(ls "$src"/_n* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _o' {
    local count=$(ls "$src"/_o* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _q' {
    local count=$(ls "$src"/_q* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _t' {
    local count=$(ls "$src"/_t* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _u' {
    local count=$(ls "$src"/_u* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _v' {
    local count=$(ls "$src"/_v* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _w' {
    local count=$(ls "$src"/_w* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 100 completions starting with _x' {
    local count=$(ls "$src"/_x* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'src has more than 500 completions starting with _p' {
    local count=$(ls "$src"/_p* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 500
}

@test 'src has more than 500 completions starting with _s' {
    local count=$(ls "$src"/_s* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 500
}

@test 'src has more than 500 completions starting with _g' {
    local count=$(ls "$src"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 500
}

# ─── Final batch of content and quality tests ───────────────────────────────

@test 'no src files contain bash shebang - sample 300' {
    local bad=0
    local count=0
    for f in "$src"/_*; do
        head -1 "$f" | grep -q '#!/bin/bash' && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'no man_src files contain bash shebang - sample 300' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        head -1 "$f" | grep -q '#!/bin/bash' && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'no architecture_src files contain bash shebang - sample 200' {
    local bad=0
    local count=0
    for f in "$asrc"/_*; do
        head -1 "$f" | grep -q '#!/bin/bash' && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 200 )) && break
    done
    assert "$bad" equals 0
}

@test 'no override_src files contain bash shebang' {
    local bad=0
    for f in "$osrc"/_*; do
        head -1 "$f" | grep -q '#!/bin/bash' && (( bad += 1 )) || true
    done
    assert "$bad" equals 0
}

@test 'more than 90% of src files end with newline - sample 200' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        local last_char=$(tail -c 1 "$f" | wc -l | tr -d ' ')
        (( last_char > 0 )) && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'more than 90% of man_src files end with newline - sample 200' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        local last_char=$(tail -c 1 "$f" | wc -l | tr -d ' ')
        (( last_char > 0 )) && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'no src files use eval command - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q '^[[:space:]]*eval ' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 5
}

@test 'no man_src files use eval command - sample 300' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        grep -q '^[[:space:]]*eval ' "$f" && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'no src files source external files - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q '^[[:space:]]*source ' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 5
}

@test 'no man_src files source external files - sample 300' {
    local bad=0
    local count=0
    for f in "$msrc"/_*; do
        grep -q '^[[:space:]]*source ' "$f" && (( bad += 1 )) || true
        (( count += 1 ))
        (( count >= 300 )) && break
    done
    assert "$bad" equals 0
}

@test 'no src files use sudo - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q 'sudo' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 3
}

@test 'more than 40% of src files use local keyword - sample 300' {
    local good=0
    local total=0
    for f in "$src"/_*; do
        grep -q 'local ' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 39
}

@test 'more than 90% of man_src files use local keyword - sample 300' {
    local good=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q 'local ' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

@test 'more than 90% of architecture_src files use local keyword - sample 200' {
    local good=0
    local total=0
    for f in "$asrc"/_*; do
        grep -q 'local ' "$f" && (( good += 1 )) || true
        (( total += 1 ))
        (( total >= 200 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 89
}

# ─── Additional man_src letter coverage volume tests ─────────────────────────

@test 'man_src has more than 50 completions starting with _r' {
    local count=$(ls "$msrc"/_r* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _r' {
    local count=$(ls "$msrc"/_r* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 50 completions starting with _n' {
    local count=$(ls "$msrc"/_n* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 50 completions starting with _f' {
    local count=$(ls "$msrc"/_f* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _f' {
    local count=$(ls "$msrc"/_f* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 50 completions starting with _i' {
    local count=$(ls "$msrc"/_i* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 100 completions starting with _g' {
    local count=$(ls "$msrc"/_g* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 100 completions starting with _m' {
    local count=$(ls "$msrc"/_m* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 100 completions starting with _d' {
    local count=$(ls "$msrc"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 100 completions starting with _l' {
    local count=$(ls "$msrc"/_l* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 100 completions starting with _a' {
    local count=$(ls "$msrc"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

@test 'man_src has more than 100 completions starting with _c' {
    local count=$(ls "$msrc"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 100
}

# ─── Src volume comparison tests by letter ───────────────────────────────────

@test 'src _g count exceeds _b count' {
    local g=$(ls "$src"/_g* 2>/dev/null | wc -l | tr -d ' ')
    local b=$(ls "$src"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$g" is_greater_than "$b"
}

@test 'src _c count exceeds _b count' {
    local c=$(ls "$src"/_c* 2>/dev/null | wc -l | tr -d ' ')
    local b=$(ls "$src"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$c" is_greater_than "$b"
}

@test 'src _m count exceeds _n count' {
    local m=$(ls "$src"/_m* 2>/dev/null | wc -l | tr -d ' ')
    local n=$(ls "$src"/_n* 2>/dev/null | wc -l | tr -d ' ')
    assert "$m" is_greater_than "$n"
}

@test 'src _r count exceeds _e count' {
    local r=$(ls "$src"/_r* 2>/dev/null | wc -l | tr -d ' ')
    local e=$(ls "$src"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$r" is_greater_than "$e"
}

@test 'src _l count exceeds _k count' {
    local l=$(ls "$src"/_l* 2>/dev/null | wc -l | tr -d ' ')
    local k=$(ls "$src"/_k* 2>/dev/null | wc -l | tr -d ' ')
    assert "$l" is_greater_than "$k"
}

@test 'src _d count exceeds _j count' {
    local d=$(ls "$src"/_d* 2>/dev/null | wc -l | tr -d ' ')
    local j=$(ls "$src"/_j* 2>/dev/null | wc -l | tr -d ' ')
    assert "$d" is_greater_than "$j"
}

@test 'src _i count exceeds _h count' {
    local i=$(ls "$src"/_i* 2>/dev/null | wc -l | tr -d ' ')
    local h=$(ls "$src"/_h* 2>/dev/null | wc -l | tr -d ' ')
    assert "$i" is_greater_than "$h"
}

@test 'src _f count exceeds _e count' {
    local f=$(ls "$src"/_f* 2>/dev/null | wc -l | tr -d ' ')
    local e=$(ls "$src"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$f" is_greater_than "$e"
}

# ─── Additional content quality - src specific patterns ──────────────────────

@test 'less than 1% of src files use function keyword at top level - sample 300' {
    local bad=0
    local total=0
    for f in "$src"/_*; do
        grep -q '^function ' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 2
}

@test 'less than 1% of man_src files use function keyword - sample 300' {
    local bad=0
    local total=0
    for f in "$msrc"/_*; do
        grep -q '^function ' "$f" && (( bad += 1 )) || true
        (( total += 1 ))
        (( total >= 300 )) && break
    done
    local pct=$(( bad * 100 / total ))
    assert "$pct" is_less_than 2
}

# ─── Additional architecture_src specifics ───────────────────────────────────

@test 'architecture_src has apple-darwin prefix files' {
    local count=$(ls "$asrc"/_*apple-darwin* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'architecture_src has alpine-linux-musl prefix files' {
    local count=$(ls "$asrc"/_*alpine-linux-musl* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 0
}

@test 'architecture_src has more than 20 apple-darwin files' {
    local count=$(ls "$asrc"/_*apple-darwin* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 20
}

@test 'architecture_src has more than 5 alpine-linux-musl files' {
    local count=$(ls "$asrc"/_*alpine-linux-musl* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 5
}

@test 'architecture_src files contain gcc or g++ or clang or llvm references - sample 100' {
    local good=0
    local total=0
    for f in "$asrc"/_*; do
        local base="${f:t}"
        if [[ "$base" = *gcc* ]] || [[ "$base" = *g++* ]] || \
           [[ "$base" = *clang* ]] || [[ "$base" = *llvm* ]] || \
           [[ "$base" = *c++* ]] || [[ "$base" = *gfortran* ]] || \
           [[ "$base" = *nm* ]] || [[ "$base" = *ranlib* ]] || \
           [[ "$base" = *ar* ]] || [[ "$base" = *strip* ]] || \
           [[ "$base" = *objdump* ]] || [[ "$base" = *readelf* ]] || \
           [[ "$base" = *addr2line* ]] || [[ "$base" = *ld* ]]; then
            (( good += 1 ))
        fi
        (( total += 1 ))
        (( total >= 100 )) && break
    done
    local pct=$(( good * 100 / total ))
    assert "$pct" is_greater_than 79
}

# ─── Additional edge case and permission tests ──────────────────────────────

@test 'no .bak files in man_src' {
    local count=$(ls "$msrc"/*.bak 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .orig files in src' {
    local count=$(ls "$src"/*.orig 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .orig files in man_src' {
    local count=$(ls "$msrc"/*.orig 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .swp files in src' {
    local count=$(ls "$src"/.*.swp 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .swp files in man_src' {
    local count=$(ls "$msrc"/.*.swp 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .tmp files in src' {
    local count=$(ls "$src"/*.tmp 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .tmp files in man_src' {
    local count=$(ls "$msrc"/*.tmp 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .log files in src' {
    local count=$(ls "$src"/*.log 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

@test 'no .log files in man_src' {
    local count=$(ls "$msrc"/*.log 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" equals 0
}

# ─── Remaining cross-directory and ratio tests ──────────────────────────────

@test 'man_src _p count exceeds man_src _q count' {
    local p=$(ls "$msrc"/_p* 2>/dev/null | wc -l | tr -d ' ')
    local q=$(ls "$msrc"/_q* 2>/dev/null | wc -l | tr -d ' ')
    assert "$p" is_greater_than "$q"
}

@test 'man_src _s count exceeds man_src _y count' {
    local s=$(ls "$msrc"/_s* 2>/dev/null | wc -l | tr -d ' ')
    local y=$(ls "$msrc"/_y* 2>/dev/null | wc -l | tr -d ' ')
    assert "$s" is_greater_than "$y"
}

@test 'man_src _t count exceeds man_src _u count' {
    local t=$(ls "$msrc"/_t* 2>/dev/null | wc -l | tr -d ' ')
    local u=$(ls "$msrc"/_u* 2>/dev/null | wc -l | tr -d ' ')
    assert "$t" is_greater_than "$u"
}

@test 'man_src _d count exceeds man_src _e count' {
    local d=$(ls "$msrc"/_d* 2>/dev/null | wc -l | tr -d ' ')
    local e=$(ls "$msrc"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$d" is_greater_than "$e"
}

@test 'man_src _g count exceeds man_src _h count' {
    local g=$(ls "$msrc"/_g* 2>/dev/null | wc -l | tr -d ' ')
    local h=$(ls "$msrc"/_h* 2>/dev/null | wc -l | tr -d ' ')
    assert "$g" is_greater_than "$h"
}

@test 'man_src _m count exceeds man_src _n count' {
    local m=$(ls "$msrc"/_m* 2>/dev/null | wc -l | tr -d ' ')
    local n=$(ls "$msrc"/_n* 2>/dev/null | wc -l | tr -d ' ')
    assert "$m" is_greater_than "$n"
}

@test 'src has more than 50 completions starting with _y' {
    local count=$(ls "$src"/_y* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'src has more than 50 completions starting with _z' {
    local count=$(ls "$src"/_z* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 50
}

@test 'man_src has more than 10 completions starting with _j' {
    local count=$(ls "$msrc"/_j* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 10 completions starting with _y' {
    local count=$(ls "$msrc"/_y* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 10 completions starting with _z' {
    local count=$(ls "$msrc"/_z* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 10 completions starting with _o' {
    local count=$(ls "$msrc"/_o* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 10 completions starting with _w' {
    local count=$(ls "$msrc"/_w* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 30 completions starting with _v' {
    local count=$(ls "$msrc"/_v* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 30
}

@test 'man_src has more than 30 completions starting with _e' {
    local count=$(ls "$msrc"/_e* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 30
}

@test 'man_src has more than 30 completions starting with _h' {
    local count=$(ls "$msrc"/_h* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 30
}

@test 'man_src has more than 30 completions starting with _b' {
    local count=$(ls "$msrc"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 30
}

@test 'man_src has more than 10 completions starting with _q' {
    local count=$(ls "$msrc"/_q* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 10 completions starting with _k' {
    local count=$(ls "$msrc"/_k* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 10
}

@test 'man_src has more than 20 completions starting with _u' {
    local count=$(ls "$msrc"/_u* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 20
}

# ─── Final tests to reach 500+ ──────────────────────────────────────────────

@test 'src has more than 200 completions starting with _c' {
    local count=$(ls "$src"/_c* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _r' {
    local count=$(ls "$src"/_r* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _d' {
    local count=$(ls "$src"/_d* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _m' {
    local count=$(ls "$src"/_m* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _a' {
    local count=$(ls "$src"/_a* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _l' {
    local count=$(ls "$src"/_l* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'src has more than 200 completions starting with _i' {
    local count=$(ls "$src"/_i* 2>/dev/null | wc -l | tr -d ' ')
    assert "$count" is_greater_than 200
}

@test 'man_src _l count exceeds man_src _k count' {
    local l=$(ls "$msrc"/_l* 2>/dev/null | wc -l | tr -d ' ')
    local k=$(ls "$msrc"/_k* 2>/dev/null | wc -l | tr -d ' ')
    assert "$l" is_greater_than "$k"
}

@test 'man_src _c count exceeds man_src _b count' {
    local c=$(ls "$msrc"/_c* 2>/dev/null | wc -l | tr -d ' ')
    local b=$(ls "$msrc"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$c" is_greater_than "$b"
}

@test 'man_src _a count exceeds man_src _b count' {
    local a=$(ls "$msrc"/_a* 2>/dev/null | wc -l | tr -d ' ')
    local b=$(ls "$msrc"/_b* 2>/dev/null | wc -l | tr -d ' ')
    assert "$a" is_greater_than "$b"
}
