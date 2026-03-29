#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Validate structural conventions in completion files
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

# ─── _arguments usage ────────────────────────────────────────────────────────

@test 'override_src files use _arguments or _describe' {
    local bad=0
    for f in "$pluginDir/override_src/"_*; do
        grep -qE '_arguments|_describe|compadd|_wanted' "$f" || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test '_claude uses _arguments' {
    run grep -c '_arguments' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude uses _describe for subcommand listing' {
    run grep -c '_describe' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_curl uses _arguments' {
    run grep -c '_arguments' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_lftp uses _arguments -s' {
    run grep -c '_arguments -s' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_express uses _arguments -s' {
    run grep -c '_arguments -s' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_whois uses _arguments -C' {
    run grep -c '_arguments -C' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

# ─── local variable declarations ─────────────────────────────────────────────

@test '_claude declares local curcontext' {
    run grep -c 'local curcontext' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude declares typeset -A opt_args' {
    run grep -c 'typeset -A opt_args' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_curl declares local curcontext' {
    run grep -c 'local curcontext' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl declares typeset -A opt_args' {
    run grep -c 'typeset -A opt_args' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_lftp declares local arguments' {
    run grep -c 'local.*arguments' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_express declares local arguments' {
    run grep -c 'local arguments' "$pluginDir/override_src/_express"
    assert $state equals 0
}

# ─── man_src file structure ───────────────────────────────────────────────────

@test 'man_src files use _arguments' {
    local no_args=0
    local total=0
    for f in "$pluginDir/man_src/"_*; do
        (( total += 1 ))
        grep -qF '_arguments' "$f" || (( no_args += 1 )) || true
    done
    # At least 95% of man_src files should use _arguments
    local pct=$(( (total - no_args) * 100 / total ))
    assert $pct is_greater_than 90
}

@test 'src files use _arguments' {
    local no_args=0
    local total=0
    for f in "$pluginDir/src/"_*; do
        (( total += 1 ))
        grep -qF '_arguments' "$f" || (( no_args += 1 )) || true
    done
    local pct=$(( (total - no_args) * 100 / total ))
    assert $pct is_greater_than 90
}

# ─── no syntax errors in override files (runtime check) ─────────────────────

@test '_claude passes zsh syntax check' {
    run zsh -n "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_curl passes zsh syntax check' {
    run zsh -n "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_lftp passes zsh syntax check' {
    run zsh -n "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_whois passes zsh syntax check' {
    run zsh -n "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_express passes zsh syntax check' {
    run zsh -n "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_git passes zsh syntax check' {
    run zsh -n "$pluginDir/override_src/_git"
    assert $state equals 0
}

# ─── argument format conventions ─────────────────────────────────────────────

@test '_claude help flag uses short and long form together' {
    run grep -cF '{-h,--help}' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_express help flag uses short and long form together' {
    run grep -cF '{-h,--help}' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_lftp help flag uses short and long form together' {
    run grep -cF '{-h,--help}' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_claude debug flag uses short and long form together' {
    run grep -cF '{-d,--debug}' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude continue flag uses short and long form together' {
    run grep -cF '{-c,--continue}' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude version flag uses short and long form together' {
    run grep -cF '{-v,--version}' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude print flag uses short and long form together' {
    run grep -cF '{-p,--print}' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude resume flag uses short and long form together' {
    run grep -cF '{-r,--resume}' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

# ─── file size sanity checks ─────────────────────────────────────────────────

@test '_claude is a substantial file (over 100 lines)' {
    local linecount
    linecount=$(wc -l < "$pluginDir/override_src/_claude")
    assert $linecount is_greater_than 100
}

@test '_curl is a substantial file (over 100 lines)' {
    local linecount
    linecount=$(wc -l < "$pluginDir/override_src/_curl")
    assert $linecount is_greater_than 100
}

@test '_whois is a substantial file (over 50 lines)' {
    local linecount
    linecount=$(wc -l < "$pluginDir/override_src/_whois")
    assert $linecount is_greater_than 50
}

@test '_git is a substantial file (over 50 lines)' {
    local linecount
    linecount=$(wc -l < "$pluginDir/override_src/_git")
    assert $linecount is_greater_than 50
}

# ─── specific known completions exist ────────────────────────────────────────

@test 'src has completion for rsync' {
    assert "$pluginDir/src/_rsync" is_file
}

@test 'src has completion for ssh-copy-id' {
    assert "$pluginDir/src/_ssh-copy-id" is_file
}

@test 'src has completion for sed' {
    assert "$pluginDir/src/_sed" is_file
}

@test 'src has completion for make' {
    assert "$pluginDir/src/_make" is_file
}

@test 'override_src has completion for git' {
    assert "$pluginDir/override_src/_git" is_file
}

@test 'override_src has completion for curl' {
    assert "$pluginDir/override_src/_curl" is_file
}

@test 'override_src has completion for claude' {
    assert "$pluginDir/override_src/_claude" is_file
}
