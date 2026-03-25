#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Validate #compdef headers in all completion files
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

@test 'all override_src files have compdef header' {
    for f in "$pluginDir/override_src/"_*; do
        run head -1 "$f"
        assert $output matches '^#compdef'
    done
}

@test 'all src files have compdef header' {
    local count=0
    local bad=0
    for f in "$pluginDir/src/"_*; do
        (( count += 1 ))
        local firstline
        firstline=$(head -1 "$f")
        [[ "$firstline" = '#compdef'* || "$firstline" = '#autoload'* ]] || (( bad += 1 )) || true
    done
    # Allow a tiny fraction of non-standard files (helpers, etc.)
    assert $bad is_less_than 5
}

@test 'all man_src files have compdef header' {
    local bad=0
    for f in "$pluginDir/man_src/"_*; do
        local firstline
        firstline=$(head -1 "$f")
        [[ "$firstline" = '#compdef'* ]] || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test 'all architecture_src files have compdef header' {
    local bad=0
    for f in "$pluginDir/architecture_src/"_*; do
        local firstline
        firstline=$(head -1 "$f")
        [[ "$firstline" = '#compdef'* ]] || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test '_claude compdef header names claude' {
    run head -1 "$pluginDir/override_src/_claude"
    assert $output same_as '#compdef claude'
}

@test '_curl compdef header names curl' {
    run head -1 "$pluginDir/override_src/_curl"
    assert $output same_as '#compdef curl'
}

@test '_git compdef header names git' {
    run head -1 "$pluginDir/override_src/_git"
    assert $output matches '^#compdef git'
}

@test '_lftp compdef header names lftp' {
    run head -1 "$pluginDir/override_src/_lftp"
    assert $output same_as '#compdef lftp'
}

@test '_whois compdef header names whois' {
    run head -1 "$pluginDir/override_src/_whois"
    assert $output matches '^#compdef whois'
}

@test '_express compdef header names express' {
    run head -1 "$pluginDir/override_src/_express"
    assert $output same_as '#compdef express'
}

@test 'no completion file is empty' {
    local bad=0
    for f in "$pluginDir/override_src/"_*; do
        [[ -s "$f" ]] || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test 'src directory has many completion files' {
    local count
    count=$(ls "$pluginDir/src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

@test 'man_src directory has many completion files' {
    local count
    count=$(ls "$pluginDir/man_src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

@test 'override_src has at least 8 files' {
    local count
    count=$(ls "$pluginDir/override_src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 7
}

@test 'all completion filenames start with underscore' {
    local bad=0
    for f in "$pluginDir/override_src/"*; do
        local base
        base="${f:t}"
        [[ "$base" = _* ]] || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test '_whois compdef covers fwhois too' {
    run head -1 "$pluginDir/override_src/_whois"
    assert $output contains 'fwhois'
}
