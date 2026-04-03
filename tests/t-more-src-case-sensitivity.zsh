#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Regression — more_src existence tests must use Linux case-sensitive paths
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

@test 't-more-src-existence.zsh paths match more_src/ on disk (case-sensitive)' {
    run python3 "$pluginDir/tests/verify_more_src_case.py"
    assert $state equals 0
}

@test 'more_src _linguist file exists (Linux CI case-sensitive)' {
    assert "$pluginDir/more_src/_linguist" is_file
}
