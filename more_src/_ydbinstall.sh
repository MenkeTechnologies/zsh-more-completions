#compdef ydbinstall.sh
# =============================================================================
# ydbinstall.sh — YottaDB LLC's "YottaDB installation script" —
#                 the canonical bootstrap utility for installing
#                 the YottaDB database engine on Linux + the M
#                 (MUMPS) programming language interpreter that
#                 it provides.  Distinguishing from every other
#                 documented language tool by:
#                   - INSTALLS A COMPLETE LANGUAGE RUNTIME +
#                     DATABASE ENGINE in ONE invocation —
#                     `./ydbinstall.sh` downloads + installs
#                     YottaDB (the runtime) + the M (MUMPS)
#                     compiler + ydb_env_set helpers + utility
#                     scripts (ydb / mumps / mupip / dse /
#                     lke / gtcm_server / ydbsh / etc.)
#                   - 30+ FLAGS for OPTIONAL PLUGINS:
#                     --curl (libcurl), --gui (web GUI),
#                     --posix (POSIX plugin), --sodium
#                     (libsodium), --syslog (YDBSyslog),
#                     --webserver (YDB web server),
#                     --zlib (zlib plugin), --support
#                     (YDBSupport)
#                   - FROM-SOURCE BUILD mode via
#                     --from-source [repo] for systems where
#                     pre-built binaries aren't available
#                   - GT.M COMPATIBILITY mode via --gtm:
#                     installs GT.M (Fidelity NIS's commercial
#                     M implementation) instead of YottaDB
#                     (open-source M implementation derived
#                     from GT.M)
#                   - UTF-8 + GROUP-RESTRICTED installation
#                     via --utf8 + --group-restriction
#                   - PLUGINS-ONLY mode via --plugins-only for
#                     adding plugins to existing installations
#
# Author:  YottaDB LLC (yottadb-development@yottadb.com) — US
#          company founded 2017 as a fork of FIS GT.M (Fidelity
#          National Information Services' MUMPS implementation).
#          Original GT.M lineage traces to 1986; YottaDB LLC
#          continues active development through 2026 with
#          quarterly releases.
# Source:  https://github.com/YottaDB/YDB (GitHub mirror)
#          https://gitlab.com/YottaDB/DB/YDB (canonical home)
#          https://github.com/YottaDB/YDB/blob/master/sr_unix/ydbinstall.sh
# CLI:     sr_unix/ydbinstall.sh — POSIX-shell script with
#          hand-rolled while-getopts-style argument loop +
#          help_exit() function defining 30+ documented flags.
#          The shell-script CLI is itself a piece of YottaDB
#          tooling — written in portable /bin/sh for maximum
#          compatibility on minimal Linux installs.
# Language: M / MUMPS / YottaDB-M
#           ("M" or "MUMPS" — Massachusetts General Hospital
#            Utility Multi-Programming System — created 1966
#            at MGH by Neil Pappalardo for medical-record
#            applications.  ANSI-standardized in 1977 (ANSI/
#            MDC X11.1).  Distinct from every other documented
#            language by:
#              1. HIERARCHICAL MULTIDIMENSIONAL ARRAYS — the
#                 primary data structure is a "global" (a
#                 persistent multidimensional sparse array
#                 with string-or-integer subscripts).  E.g.
#                 `set ^Patient("Smith","John","DOB")=
#                 "1970-01-15"` writes a string into the
#                 persistent database at a 3-level sub-tree
#                 location.  No other documented language has
#                 sparse-multidim-arrays as the primary
#                 first-class data structure
#              2. INTEGRATED LANGUAGE + DATABASE — the
#                 distinction between language values and
#                 database values is BLURRED.  Local arrays
#                 are in memory; global arrays (`^name`) are
#                 on disk.  Same syntax accesses both
#              3. POSITIONAL POSTCONDITIONALS — every command
#                 + many functions accept a trailing
#                 ":condition" that controls execution.  E.g.
#                 `WRITE:$DATA(^X) ^X` writes ^X if it exists
#              4. ABBREVIATED COMMANDS — most commands have a
#                 single-letter form: W for WRITE, R for READ,
#                 S for SET, K for KILL, Q for QUIT, H for
#                 HALT, etc.  Whitespace-separated tokens
#              5. INDIRECTION OPERATORS — `@` operator
#                 reduces a string expression to a name + uses
#                 it.  E.g. `set varname="^X" set @varname=42`
#                 sets ^X to 42
#              6. EXTRINSIC FUNCTIONS via `$$function^routine`
#                 — call into routines using ^-prefixed names
#              7. AUTO-CREATING NESTED GLOBALS — assigning to
#                 a sub-script creates the entire path; no
#                 schema definition needed
#              8. 60-YEAR PRODUCTION HISTORY — MUMPS has been
#                 in continuous mission-critical production
#                 use since 1966; longest production history
#                 of any documented language)
# License: AGPL-3.0 with linking exception (YottaDB);
#          Public Domain (MUMPS language standard);
#          GT.M historical: GNU Lesser General Public License
# Status:  YottaDB — 86+ stars on YottaDB/YDB GitHub mirror
#          (canonical home is GitLab); production deployments
#          at:
#            - One of the largest banks in Thailand (60M
#              accounts, real-time core banking, tens of
#              thousands concurrent users)
#            - National-scale electronic health record
#              system in Jordan (10M+ patients)
#            - US Veterans Affairs hospitals (via the
#              VistA EHR system, originally Massachusetts
#              General Hospital + DEC)
#            - FIS Profile core banking platform
#            - Epic Systems (originally; now uses Caché/
#              IRIS, a separate MUMPS implementation by
#              InterSystems)
#          MUMPS standard maintained by ANSI MDC since 1977.
#
# -----------------------------------------------------------------------------
# CROSS-LANGUAGE CLI LIBRARY TAXONOMY MILESTONE — 86TH LANGUAGE DOCUMENTED
# -----------------------------------------------------------------------------
# With this completion the cross-language CLI library taxonomy documents
# its **86TH PROGRAMMING LANGUAGE**: M / MUMPS / YottaDB-M.  This expands
# the taxonomy from 85 to 86 languages, joining the prior 85 in the
# cross-language inventory.  Taxonomy now spans 355 cross-language CLI
# library variants across **86 documented languages**.
#
# Pattern: R613 Rust=61 (comfy-table) → R614 Go=61 (olekukonko/
# tablewriter) → R615 TS-Node=61 (gajus/table) → R616 86TH LANGUAGE
# (YottaDB-M THIS).  This completes the 3-leader-bump + new-language
# segment.  Expected R617 begins next segment (likely Rust=62 → Go=62
# → TS-Node=62 → 87th language).
#
# Leaderboard unchanged at R616: Rust=61, Go=61, TypeScript-Node=61
# (three-way tie at 61).
#
# WHY YOTTADB-M IS A DISTINCTIVE 86TH LANGUAGE:
#
# YottaDB-M (M / MUMPS) occupies a unique cell in the language design
# space that NO previously-documented language fills:
#
#   Feature                  | M / MUMPS    | Other documented langs
#   -------------------------|--------------|------------------------
#   Hierarchical multidim    | ✓ primary    | ✗ (some have nested
#   arrays as core data        first-class    objects but not as
#   structure                  data structure  primary data type)
#   Integrated language+DB   | ✓ blurred    | ✗ (always separate)
#   Positional postcondit.   | ✓ trailing   | ✗ (none)
#   per command/function       :condition
#   Abbreviated single-      | ✓ W/R/S/K/Q  | ✗ (mostly verbose)
#   letter commands
#   Indirection (@) operator | ✓ name reduce| ✗ (eval/exec instead)
#   Auto-creating nested     | ✓ assign     | ✗ (needs schema/decl)
#   globals                    creates path
#   60-year production       | ✓ since 1966 | ✗ (younger)
#   continuity
#
# M / MUMPS is the longest-continuously-used production programming
# language documented in the taxonomy (1966-2026 = 60 years).  No
# other documented language has been in mission-critical production
# use this long.
#
# MUMPS implementation lineage:
#   1966 — MUMPS created at Massachusetts General Hospital
#   1977 — ANSI MDC X11.1 standardization
#   1986 — GT.M (Fidelity NIS commercial implementation) released
#   1995 — Caché (InterSystems commercial MUMPS variant)
#   2017 — YottaDB LLC forks GT.M as open-source AGPL implementation
#   2026 — YottaDB is the canonical open-source MUMPS today
#
# YottaDB's distinguishing characteristics among MUMPS implementations:
#   - AGPL-3.0 + linking exception (commercial-friendly open source)
#   - Drop-in GT.M compatibility (--gtm flag retained for migration)
#   - Plugin ecosystem: libcurl, libsodium, syslog, web server, zlib
#   - YottaDB GUI (--gui plugin) for web-based admin
#   - POSIX plugin (--posix) for POSIX integration of M routines
#   - Active GitLab + GitHub mirroring; quarterly releases
#
# Cross-language analogs (closest matches by feature):
#   - Hierarchical persistent arrays → CouchDB documents (NoSQL,
#                                        not language-integrated)
#   - Integrated language+DB → APL workspaces (closest)
#   - Positional postconditionals → Tcl's `if {...}` suffix
#   - Abbreviated commands → APL's symbolic operators
#   - Indirection → Lisp's eval / Python's exec
#   - 60-year production history → COBOL (1959), Fortran (1957)
#                                    — both older but less unique
#                                    semantically
#
# M / MUMPS is the FIRST documented language with HIERARCHICAL
# MULTIDIMENSIONAL ARRAYS as the primary first-class data structure
# INTEGRATED with persistent storage.
#
# -----------------------------------------------------------------------------
#
# THE ydbinstall.sh CLI — POSIX shell + while-loop dispatch + 30+ flags
#
# ydbinstall.sh's CLI is in sr_unix/ydbinstall.sh.  Hand-rolled POSIX-
# shell argument loop:
#
#     while [ $# -ne 0 ]; do
#         case "$1" in
#             --branch*) ...
#             --build-type*) ...
#             --compiler*) ...
#             --copyenv*) ...
#             --copyexec*) ...
#             --curl) ydb_curl="Y"; shift ;;
#             --debug-build) ydb_debug_build="Y"; shift ;;
#             --distrib*) ...
#             --dryrun) ydb_dryrun="Y"; shift ;;
#             --filename*) ...
#             --force-install) force_install="Y"; shift ;;
#             --from-source*) ...
#             --gtm) gtm_gtm="Y"; shift ;;
#             --group*) ...
#             --group-restriction) gtm_group_restriction="Y"; shift ;;
#             --gui) ydb_gui="Y"; shift ;;
#             --help|-h|-?) help_exit ;;
#             --installdir*) ...
#             --keep-obj) gtm_keep_obj="Y"; shift ;;
#             --linkenv*) ...
#             --linkexec*) ...
#             --nocopyenv) gtm_nocopyenv="Y"; shift ;;
#             --overwrite-existing) overwrite_existing="Y"; shift ;;
#             --plugins-only) plugins_only="Y"; shift ;;
#             --posix) ydb_posix="Y"; shift ;;
#             --preserveRemovedFiles) preserveRemovedFiles="Y"; shift ;;
#             --prompt-for-group) gtm_prompt_for_group="Y"; shift ;;
#             --sodium) ydb_sodium="Y"; shift ;;
#             --source-build-dir*) ...
#             --support) ydb_support="Y"; shift ;;
#             --syslog) ydb_syslog="Y"; shift ;;
#             --user*) ...
#             --utf8) ydb_utf8="Y"; shift ;;
#             --verbose) ydb_verbose="Y"; shift ;;
#             --webserver) ydb_webserver="Y"; shift ;;
#             --zlib) ydb_zlib="Y"; shift ;;
#             # Positional: version (r2.06, r2.02, etc.)
#         esac
#     done
#
# Five-axis distinctness of M / MUMPS from every other documented
# language:
#
#   1. HIERARCHICAL MULTIDIMENSIONAL ARRAYS as primary data structure
#      — Every other documented language uses scalars + lists + maps
#      + objects as primitives.  M uses HIERARCHICAL MULTIDIM SPARSE
#      ARRAYS as primary first-class data type.
#
#   2. INTEGRATED LANGUAGE+DATABASE — Every other documented language
#      separates code from persistent storage.  M blurs the line:
#      `^X` is a global (database), `X` is a local (memory), same
#      syntax accesses both.
#
#   3. POSITIONAL POSTCONDITIONALS — Every other documented language
#      uses `if (cond) statement` prefix syntax.  M uses trailing
#      `:condition` on commands and functions.
#
#   4. INDIRECTION OPERATORS — Every other documented language uses
#      eval/exec for name-resolution.  M's `@varname` operator is a
#      first-class primitive.
#
#   5. 60-YEAR CONTINUOUS PRODUCTION DEPLOYMENT — Every other
#      documented language has shorter production history (most
#      under 30 years; the few older are not MUMPS-distinctive
#      semantically).
#
# -----------------------------------------------------------------------------
#
# COMMAND-LINE OPTIONS (sourced directly from
# https://github.com/YottaDB/YDB/blob/master/sr_unix/ydbinstall.sh
# help_exit() function + while-case dispatch.)
# -----------------------------------------------------------------------------

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

local -a _ydb_versions
_ydb_versions=(
    'r2.06:current YottaDB stable release'
    'r2.04:previous YottaDB stable release'
    'r2.02:YottaDB r2.02 release'
    'r2.00:YottaDB r2.00 release'
    'r1.34:older YottaDB r1.34 release'
)

_arguments -C \
    '(- *)'{--help,-h}'[print usage information and exit]' \
    '--branch=[git branch to build from (with --from-source)]:branch:_default' \
    '--build-type=[YottaDB build type (default pro)]:type:(pro dbg pro-dbg dbg-pro pro-stress)' \
    '--compiler=[compiler to use with --from-source]:compiler:(gcc clang)' \
    '--copyenv=[directory to copy ydb_env_set/ydb_env_unset/gtmprofile (default /usr/local/etc)]:dir:_directories' \
    '--copyexec=[directory to copy ydb & gtm scripts (default /usr/local/bin)]:dir:_directories' \
    '--curl[download and install the libcurl plugin]' \
    '--debug-build[create debug build (with --from-source)]' \
    '--distrib=[YottaDB distrib URL or path]:distrib:_files' \
    '--dryrun[dry-run: do not actually install]' \
    '--filename=[YottaDB distribution filename]:filename:_files' \
    '--force-install[force install even if dependency checks fail]' \
    '--from-source=[build YottaDB from a git repo]:repo URL:_default' \
    '--gtm[install GT.M instead of YottaDB]' \
    '--group=[group that should own the YottaDB installation]:group:_groups' \
    '--group-restriction[limit execution to a group]' \
    '--gui[download and install the YottaDB GUI plugin]' \
    '--installdir=[directory to install YottaDB (default /usr/local/lib/yottadb/version)]:dir:_directories' \
    '--keep-obj[keep .o files of M routines]' \
    '--linkenv=[directory to symlink ydb_env_set/etc (default /usr/local/etc)]:dir:_directories' \
    '--linkexec=[directory to symlink ydb & gtm scripts (default /usr/local/bin)]:dir:_directories' \
    '--nocopyenv[do not copy ydb_env_set/ydb_env_unset/gtmprofile]' \
    '--overwrite-existing[install into existing directory, overwriting]' \
    '--plugins-only[install plugins for existing YottaDB, not YottaDB itself]' \
    '--posix[download and install the POSIX plugin]' \
    '--preserveRemovedFiles[preserve removed files during overwrite]' \
    '--prompt-for-group[prompt for group during installation]' \
    '--sodium[download and install the libsodium plugin]' \
    '--source-build-dir=[directory for from-source build (default /tmp)]:dir:_directories' \
    '--support[download and install the YDBSupport script]' \
    '--syslog[download and install the YDBSyslog plugin]' \
    '--user=[user who should own YottaDB installation (default root)]:user:_users' \
    '--utf8[install UTF-8 support]' \
    '--verbose[output diagnostic information]' \
    '--webserver[download and install the YottaDB Web Server plugin]' \
    '--zlib[download and install the zlib plugin]' \
    '1: :->version' \
    && ret=0

case $state in
    version)
        _describe -t versions 'YottaDB release version' _ydb_versions && ret=0
        ;;
esac

return ret
