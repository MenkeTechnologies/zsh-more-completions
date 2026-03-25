#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Validate plugin.zsh fpath setup and structure
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    pluginFile="$pluginDir/zsh-more-completions.plugin.zsh"
}

# ─── plugin file existence ────────────────────────────────────────────────────

@test 'plugin.zsh exists' {
    assert "$pluginFile" is_file
}

@test 'plugin.zsh is not empty' {
    assert "$pluginFile" is_file
    run wc -c "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh passes syntax check' {
    run zsh -n "$pluginFile"
    assert $state equals 0
}

# ─── fpath configuration ─────────────────────────────────────────────────────

@test 'plugin.zsh adds override_src to fpath' {
    run grep -c 'override_src' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh adds src to fpath' {
    run grep -cF '/src"' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh adds man_src to fpath' {
    run grep -cF '/man_src"' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh adds architecture_src to fpath' {
    run grep -cF '/architecture_src"' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh prepends override_src to fpath' {
    local count
    count=$(grep -cF '__zsh_more_comp_dir $fpath)' "$pluginFile")
    assert $count is_greater_than 0
}

@test 'plugin.zsh appends src man_src architecture_src to fpath' {
    local count
    count=$(grep -cF '$fpath $__zsh_more_comp_dir)' "$pluginFile")
    assert $count is_greater_than 0
}

@test 'plugin.zsh uses local variables to avoid polluting global scope' {
    run grep -c 'local __zsh_more_comp_dirs' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh uses anonymous function' {
    run grep -cF '(){' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh checks if dir already in fpath before adding' {
    run grep -cF 'fpath[(r)' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh override_src is in first-priority dirs array' {
    run grep -c '__zsh_more_comp_dirs_first' "$pluginFile"
    assert $state equals 0
}

@test 'plugin.zsh src and man_src are in last-priority dirs array' {
    run grep -c '__zsh_more_comp_dirs_last' "$pluginFile"
    assert $state equals 0
}

# ─── directory structure ──────────────────────────────────────────────────────

@test 'override_src directory exists' {
    assert "$pluginDir/override_src" is_dir
}

@test 'src directory exists' {
    assert "$pluginDir/src" is_dir
}

@test 'man_src directory exists' {
    assert "$pluginDir/man_src" is_dir
}

@test 'architecture_src directory exists' {
    assert "$pluginDir/architecture_src" is_dir
}

@test 'tests directory exists' {
    assert "$pluginDir/tests" is_dir
}

@test 'README.md exists' {
    assert "$pluginDir/README.md" is_file
}

# ─── fpath priority ordering ──────────────────────────────────────────────────

@test 'override_src comes before src in plugin fpath setup' {
    local override_line src_line
    override_line=$(grep -n 'override_src' "$pluginFile" | head -1 | cut -d: -f1)
    src_line=$(grep -nF '/src"' "$pluginFile" | head -1 | cut -d: -f1)
    assert $override_line is_less_than $src_line
}

@test 'plugin.zsh has exactly one anonymous function call closing' {
    local count
    count=$(grep -cF '} ${0:h}' "$pluginFile")
    assert $count equals 1
}

# ─── architecture_src contents ───────────────────────────────────────────────

@test 'architecture_src has completions for cross-compiler tools' {
    local count
    count=$(ls "$pluginDir/architecture_src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 50
}

@test 'architecture_src has x86_64 prefixed completions' {
    run ls "$pluginDir/architecture_src/"
    assert $output contains 'x86_64'
}

# ─── .gitignore ──────────────────────────────────────────────────────────────

@test '.gitignore exists' {
    assert "$pluginDir/.gitignore" is_file
}

@test '.gitignore excludes zwc compiled files' {
    run grep -c '\.zwc' "$pluginDir/.gitignore"
    assert $state equals 0
}
