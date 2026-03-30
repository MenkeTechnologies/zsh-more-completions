#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Additional existence tests for architecture_src/ completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*"
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    asrc="$pluginDir/architecture_src"
}

# ─── File existence tests ───────────────────────────────────────────────────

@test 'architecture_src has _aarch64-linux-gnu-gi-inspect-typelib' {
    assert "$asrc/_aarch64-linux-gnu-gi-inspect-typelib" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gold' {
    assert "$asrc/_aarch64-linux-gnu-gold" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gp-archive' {
    assert "$asrc/_aarch64-linux-gnu-gp-archive" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gp-collect-app' {
    assert "$asrc/_aarch64-linux-gnu-gp-collect-app" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gp-display-html' {
    assert "$asrc/_aarch64-linux-gnu-gp-display-html" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gp-display-text' {
    assert "$asrc/_aarch64-linux-gnu-gp-display-text" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-ld' {
    assert "$asrc/_aarch64-linux-gnu-ld" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-ld.bfd' {
    assert "$asrc/_aarch64-linux-gnu-ld.bfd" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-ld.gold' {
    assert "$asrc/_aarch64-linux-gnu-ld.gold" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-lto-dump-10' {
    assert "$asrc/_aarch64-linux-gnu-lto-dump-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-lto-dump-11' {
    assert "$asrc/_aarch64-linux-gnu-lto-dump-11" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-lto-dump-12' {
    assert "$asrc/_aarch64-linux-gnu-lto-dump-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-nm' {
    assert "$asrc/_aarch64-linux-gnu-nm" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-objcopy' {
    assert "$asrc/_aarch64-linux-gnu-objcopy" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-objdump' {
    assert "$asrc/_aarch64-linux-gnu-objdump" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-pkg-config' {
    assert "$asrc/_aarch64-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python-config' {
    assert "$asrc/_aarch64-linux-gnu-python-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python2-config' {
    assert "$asrc/_aarch64-linux-gnu-python2-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python2.7-config' {
    assert "$asrc/_aarch64-linux-gnu-python2.7-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3-config' {
    assert "$asrc/_aarch64-linux-gnu-python3-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.10-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.10-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.6-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.6-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.6m-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.6m-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.7-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.7-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.8-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.8-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.9-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.9-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3m-config' {
    assert "$asrc/_aarch64-linux-gnu-python3m-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-ranlib' {
    assert "$asrc/_aarch64-linux-gnu-ranlib" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-readelf' {
    assert "$asrc/_aarch64-linux-gnu-readelf" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-run' {
    assert "$asrc/_aarch64-linux-gnu-run" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-strip' {
    assert "$asrc/_aarch64-linux-gnu-strip" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-c++10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-c++10" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-g++10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-g++10" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-gcc-nm10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-gcc-nm10" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-gcc-ranlib10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-gcc-ranlib10" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-gcc10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-gcc10" is_file
}

@test 'architecture_src has _aarch64-redhat-linux-c++' {
    assert "$asrc/_aarch64-redhat-linux-c++" is_file
}

@test 'architecture_src has _aarch64-redhat-linux-g++' {
    assert "$asrc/_aarch64-redhat-linux-g++" is_file
}

@test 'architecture_src has _aarch64-redhat-linux-gcc' {
    assert "$asrc/_aarch64-redhat-linux-gcc" is_file
}

@test 'architecture_src has _aarch64-redhat-linux-gcc-11' {
    assert "$asrc/_aarch64-redhat-linux-gcc-11" is_file
}

@test 'architecture_src has _aarch64-redhat-linux-gnu-pkg-config' {
    assert "$asrc/_aarch64-redhat-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-c++' {
    assert "$asrc/_aarch64-unknown-linux-gnu-c++" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-g++' {
    assert "$asrc/_aarch64-unknown-linux-gnu-g++" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-gcc-9.2.0' {
    assert "$asrc/_aarch64-unknown-linux-gnu-gcc-9.2.0" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-gcc-ar' {
    assert "$asrc/_aarch64-unknown-linux-gnu-gcc-ar" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-gcc-nm' {
    assert "$asrc/_aarch64-unknown-linux-gnu-gcc-nm" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-gcc-ranlib' {
    assert "$asrc/_aarch64-unknown-linux-gnu-gcc-ranlib" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-pkg-config' {
    assert "$asrc/_aarch64-unknown-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _llvm-addr2line' {
    assert "$asrc/_llvm-addr2line" is_file
}

@test 'architecture_src has _llvm-addr2line-10' {
    assert "$asrc/_llvm-addr2line-10" is_file
}

@test 'architecture_src has _llvm-addr2line-11' {
    assert "$asrc/_llvm-addr2line-11" is_file
}

@test 'architecture_src has _llvm-addr2line-14' {
    assert "$asrc/_llvm-addr2line-14" is_file
}

@test 'architecture_src has _llvm-addr2line-9' {
    assert "$asrc/_llvm-addr2line-9" is_file
}

@test 'architecture_src has _llvm-addr2line12' {
    assert "$asrc/_llvm-addr2line12" is_file
}

@test 'architecture_src has _llvm-ar' {
    assert "$asrc/_llvm-ar" is_file
}

@test 'architecture_src has _llvm-ar-10' {
    assert "$asrc/_llvm-ar-10" is_file
}

@test 'architecture_src has _llvm-ar-11' {
    assert "$asrc/_llvm-ar-11" is_file
}

@test 'architecture_src has _llvm-ar-14' {
    assert "$asrc/_llvm-ar-14" is_file
}

@test 'architecture_src has _llvm-ar-16' {
    assert "$asrc/_llvm-ar-16" is_file
}

@test 'architecture_src has _llvm-ar-17' {
    assert "$asrc/_llvm-ar-17" is_file
}

@test 'architecture_src has _llvm-ar-19' {
    assert "$asrc/_llvm-ar-19" is_file
}

@test 'architecture_src has _llvm-ar-4.0' {
    assert "$asrc/_llvm-ar-4.0" is_file
}

@test 'architecture_src has _llvm-ar-6.0' {
    assert "$asrc/_llvm-ar-6.0" is_file
}

@test 'architecture_src has _llvm-ar-7' {
    assert "$asrc/_llvm-ar-7" is_file
}

@test 'architecture_src has _llvm-ar-8' {
    assert "$asrc/_llvm-ar-8" is_file
}

@test 'architecture_src has _llvm-ar-9' {
    assert "$asrc/_llvm-ar-9" is_file
}

@test 'architecture_src has _llvm-ar12' {
    assert "$asrc/_llvm-ar12" is_file
}

@test 'architecture_src has _llvm-ar60' {
    assert "$asrc/_llvm-ar60" is_file
}

@test 'architecture_src has _llvm-as-10' {
    assert "$asrc/_llvm-as-10" is_file
}

@test 'architecture_src has _llvm-as-11' {
    assert "$asrc/_llvm-as-11" is_file
}

@test 'architecture_src has _llvm-as-14' {
    assert "$asrc/_llvm-as-14" is_file
}

@test 'architecture_src has _llvm-as-16' {
    assert "$asrc/_llvm-as-16" is_file
}

@test 'architecture_src has _llvm-as-19' {
    assert "$asrc/_llvm-as-19" is_file
}

@test 'architecture_src has _llvm-as-3.5' {
    assert "$asrc/_llvm-as-3.5" is_file
}

@test 'architecture_src has _llvm-as-4.0' {
    assert "$asrc/_llvm-as-4.0" is_file
}

@test 'architecture_src has _llvm-as-6.0' {
    assert "$asrc/_llvm-as-6.0" is_file
}

@test 'architecture_src has _llvm-as-8' {
    assert "$asrc/_llvm-as-8" is_file
}

@test 'architecture_src has _llvm-as-9' {
    assert "$asrc/_llvm-as-9" is_file
}

@test 'architecture_src has _llvm-as12' {
    assert "$asrc/_llvm-as12" is_file
}

@test 'architecture_src has _llvm-as60' {
    assert "$asrc/_llvm-as60" is_file
}

@test 'architecture_src has _llvm-bcanalyzer' {
    assert "$asrc/_llvm-bcanalyzer" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-10' {
    assert "$asrc/_llvm-bcanalyzer-10" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-11' {
    assert "$asrc/_llvm-bcanalyzer-11" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-13' {
    assert "$asrc/_llvm-bcanalyzer-13" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-14' {
    assert "$asrc/_llvm-bcanalyzer-14" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-16' {
    assert "$asrc/_llvm-bcanalyzer-16" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-17' {
    assert "$asrc/_llvm-bcanalyzer-17" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-19' {
    assert "$asrc/_llvm-bcanalyzer-19" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-3.5' {
    assert "$asrc/_llvm-bcanalyzer-3.5" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-4.0' {
    assert "$asrc/_llvm-bcanalyzer-4.0" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-6.0' {
    assert "$asrc/_llvm-bcanalyzer-6.0" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-7' {
    assert "$asrc/_llvm-bcanalyzer-7" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-8' {
    assert "$asrc/_llvm-bcanalyzer-8" is_file
}

@test 'architecture_src has _llvm-bcanalyzer-9' {
    assert "$asrc/_llvm-bcanalyzer-9" is_file
}

@test 'architecture_src has _llvm-bcanalyzer12' {
    assert "$asrc/_llvm-bcanalyzer12" is_file
}

@test 'architecture_src has _llvm-bcanalyzer60' {
    assert "$asrc/_llvm-bcanalyzer60" is_file
}

@test 'architecture_src has _llvm-bitcode-strip' {
    assert "$asrc/_llvm-bitcode-strip" is_file
}

@test 'architecture_src has _llvm-bitcode-strip-14' {
    assert "$asrc/_llvm-bitcode-strip-14" is_file
}

@test 'architecture_src has _llvm-cat-10' {
    assert "$asrc/_llvm-cat-10" is_file
}

@test 'architecture_src has _llvm-cat-11' {
    assert "$asrc/_llvm-cat-11" is_file
}

@test 'architecture_src has _llvm-cat-14' {
    assert "$asrc/_llvm-cat-14" is_file
}

@test 'architecture_src has _llvm-cat-4.0' {
    assert "$asrc/_llvm-cat-4.0" is_file
}

@test 'architecture_src has _llvm-cat-6.0' {
    assert "$asrc/_llvm-cat-6.0" is_file
}

@test 'architecture_src has _llvm-cat-7' {
    assert "$asrc/_llvm-cat-7" is_file
}

@test 'architecture_src has _llvm-cat-8' {
    assert "$asrc/_llvm-cat-8" is_file
}

@test 'architecture_src has _llvm-cat-9' {
    assert "$asrc/_llvm-cat-9" is_file
}

@test 'architecture_src has _llvm-cat12' {
    assert "$asrc/_llvm-cat12" is_file
}

@test 'architecture_src has _llvm-cat60' {
    assert "$asrc/_llvm-cat60" is_file
}

@test 'architecture_src has _llvm-cfi-verify' {
    assert "$asrc/_llvm-cfi-verify" is_file
}

@test 'architecture_src has _llvm-cfi-verify-10' {
    assert "$asrc/_llvm-cfi-verify-10" is_file
}

@test 'architecture_src has _llvm-cfi-verify-11' {
    assert "$asrc/_llvm-cfi-verify-11" is_file
}

@test 'architecture_src has _llvm-cfi-verify-14' {
    assert "$asrc/_llvm-cfi-verify-14" is_file
}

@test 'architecture_src has _llvm-cfi-verify-9' {
    assert "$asrc/_llvm-cfi-verify-9" is_file
}

@test 'architecture_src has _llvm-cfi-verify12' {
    assert "$asrc/_llvm-cfi-verify12" is_file
}

@test 'architecture_src has _llvm-config-10' {
    assert "$asrc/_llvm-config-10" is_file
}

@test 'architecture_src has _llvm-config-11' {
    assert "$asrc/_llvm-config-11" is_file
}

@test 'architecture_src has _llvm-config-13' {
    assert "$asrc/_llvm-config-13" is_file
}

@test 'architecture_src has _llvm-config-14' {
    assert "$asrc/_llvm-config-14" is_file
}

@test 'architecture_src has _llvm-config-18' {
    assert "$asrc/_llvm-config-18" is_file
}

@test 'architecture_src has _llvm-config-19' {
    assert "$asrc/_llvm-config-19" is_file
}

@test 'architecture_src has _llvm-config-3.5' {
    assert "$asrc/_llvm-config-3.5" is_file
}

@test 'architecture_src has _llvm-config-4.0' {
    assert "$asrc/_llvm-config-4.0" is_file
}

@test 'architecture_src has _llvm-config-6.0' {
    assert "$asrc/_llvm-config-6.0" is_file
}

@test 'architecture_src has _llvm-config-7' {
    assert "$asrc/_llvm-config-7" is_file
}

@test 'architecture_src has _llvm-config-8' {
    assert "$asrc/_llvm-config-8" is_file
}

@test 'architecture_src has _llvm-config-9' {
    assert "$asrc/_llvm-config-9" is_file
}

@test 'architecture_src has _llvm-config60' {
    assert "$asrc/_llvm-config60" is_file
}

@test 'architecture_src has _llvm-cov-13' {
    assert "$asrc/_llvm-cov-13" is_file
}

@test 'architecture_src has _llvm-cov-16' {
    assert "$asrc/_llvm-cov-16" is_file
}

@test 'architecture_src has _llvm-cov-17' {
    assert "$asrc/_llvm-cov-17" is_file
}

@test 'architecture_src has _llvm-cov-19' {
    assert "$asrc/_llvm-cov-19" is_file
}

@test 'architecture_src has _llvm-cov-4.0' {
    assert "$asrc/_llvm-cov-4.0" is_file
}

@test 'architecture_src has _llvm-cov-7' {
    assert "$asrc/_llvm-cov-7" is_file
}

@test 'architecture_src has _llvm-cov-8' {
    assert "$asrc/_llvm-cov-8" is_file
}

@test 'architecture_src has _llvm-cov60' {
    assert "$asrc/_llvm-cov60" is_file
}

@test 'architecture_src has _llvm-cvtres60' {
    assert "$asrc/_llvm-cvtres60" is_file
}

@test 'architecture_src has _llvm-cxxdump' {
    assert "$asrc/_llvm-cxxdump" is_file
}

@test 'architecture_src has _llvm-cxxdump-10' {
    assert "$asrc/_llvm-cxxdump-10" is_file
}

@test 'architecture_src has _llvm-cxxdump-11' {
    assert "$asrc/_llvm-cxxdump-11" is_file
}

@test 'architecture_src has _llvm-cxxdump-13' {
    assert "$asrc/_llvm-cxxdump-13" is_file
}

@test 'architecture_src has _llvm-cxxdump-14' {
    assert "$asrc/_llvm-cxxdump-14" is_file
}

@test 'architecture_src has _llvm-cxxdump-4.0' {
    assert "$asrc/_llvm-cxxdump-4.0" is_file
}

@test 'architecture_src has _llvm-cxxdump-6.0' {
    assert "$asrc/_llvm-cxxdump-6.0" is_file
}

@test 'architecture_src has _llvm-cxxdump-7' {
    assert "$asrc/_llvm-cxxdump-7" is_file
}

@test 'architecture_src has _llvm-cxxdump-8' {
    assert "$asrc/_llvm-cxxdump-8" is_file
}

@test 'architecture_src has _llvm-cxxdump-9' {
    assert "$asrc/_llvm-cxxdump-9" is_file
}

@test 'architecture_src has _llvm-cxxfilt-10' {
    assert "$asrc/_llvm-cxxfilt-10" is_file
}

@test 'architecture_src has _llvm-cxxfilt-13' {
    assert "$asrc/_llvm-cxxfilt-13" is_file
}

@test 'architecture_src has _llvm-cxxfilt-16' {
    assert "$asrc/_llvm-cxxfilt-16" is_file
}

@test 'architecture_src has _llvm-cxxfilt-17' {
    assert "$asrc/_llvm-cxxfilt-17" is_file
}

@test 'architecture_src has _llvm-cxxfilt-19' {
    assert "$asrc/_llvm-cxxfilt-19" is_file
}

@test 'architecture_src has _llvm-cxxfilt-6.0' {
    assert "$asrc/_llvm-cxxfilt-6.0" is_file
}

@test 'architecture_src has _llvm-cxxfilt-8' {
    assert "$asrc/_llvm-cxxfilt-8" is_file
}

@test 'architecture_src has _llvm-cxxfilt-9' {
    assert "$asrc/_llvm-cxxfilt-9" is_file
}

@test 'architecture_src has _llvm-cxxmap-10' {
    assert "$asrc/_llvm-cxxmap-10" is_file
}

@test 'architecture_src has _llvm-cxxmap-11' {
    assert "$asrc/_llvm-cxxmap-11" is_file
}

@test 'architecture_src has _llvm-cxxmap-13' {
    assert "$asrc/_llvm-cxxmap-13" is_file
}

@test 'architecture_src has _llvm-cxxmap-16' {
    assert "$asrc/_llvm-cxxmap-16" is_file
}

@test 'architecture_src has _llvm-cxxmap-17' {
    assert "$asrc/_llvm-cxxmap-17" is_file
}

@test 'architecture_src has _llvm-cxxmap-19' {
    assert "$asrc/_llvm-cxxmap-19" is_file
}

@test 'architecture_src has _llvm-cxxmap-8' {
    assert "$asrc/_llvm-cxxmap-8" is_file
}

@test 'architecture_src has _llvm-cxxmap-9' {
    assert "$asrc/_llvm-cxxmap-9" is_file
}

@test 'architecture_src has _llvm-cxxmap12' {
    assert "$asrc/_llvm-cxxmap12" is_file
}

@test 'architecture_src has _llvm-debuginfo-analyzer' {
    assert "$asrc/_llvm-debuginfo-analyzer" is_file
}

@test 'architecture_src has _llvm-debuginfo-analyzer-16' {
    assert "$asrc/_llvm-debuginfo-analyzer-16" is_file
}

@test 'architecture_src has _llvm-debuginfo-analyzer-17' {
    assert "$asrc/_llvm-debuginfo-analyzer-17" is_file
}

@test 'architecture_src has _llvm-debuginfo-analyzer-19' {
    assert "$asrc/_llvm-debuginfo-analyzer-19" is_file
}

@test 'architecture_src has _llvm-debuginfod' {
    assert "$asrc/_llvm-debuginfod" is_file
}

@test 'architecture_src has _llvm-debuginfod-find' {
    assert "$asrc/_llvm-debuginfod-find" is_file
}

@test 'architecture_src has _llvm-debuginfod-find-14' {
    assert "$asrc/_llvm-debuginfod-find-14" is_file
}

@test 'architecture_src has _llvm-diff' {
    assert "$asrc/_llvm-diff" is_file
}

@test 'architecture_src has _llvm-diff-10' {
    assert "$asrc/_llvm-diff-10" is_file
}

@test 'architecture_src has _llvm-diff-11' {
    assert "$asrc/_llvm-diff-11" is_file
}

@test 'architecture_src has _llvm-diff-14' {
    assert "$asrc/_llvm-diff-14" is_file
}

@test 'architecture_src has _llvm-diff-4.0' {
    assert "$asrc/_llvm-diff-4.0" is_file
}

@test 'architecture_src has _llvm-diff-6.0' {
    assert "$asrc/_llvm-diff-6.0" is_file
}

@test 'architecture_src has _llvm-diff-7' {
    assert "$asrc/_llvm-diff-7" is_file
}

@test 'architecture_src has _llvm-diff-8' {
    assert "$asrc/_llvm-diff-8" is_file
}

@test 'architecture_src has _llvm-diff-9' {
    assert "$asrc/_llvm-diff-9" is_file
}

@test 'architecture_src has _llvm-diff60' {
    assert "$asrc/_llvm-diff60" is_file
}

@test 'architecture_src has _llvm-dis' {
    assert "$asrc/_llvm-dis" is_file
}

@test 'architecture_src has _llvm-dis-10' {
    assert "$asrc/_llvm-dis-10" is_file
}

@test 'architecture_src has _llvm-dis-11' {
    assert "$asrc/_llvm-dis-11" is_file
}

@test 'architecture_src has _llvm-dis-13' {
    assert "$asrc/_llvm-dis-13" is_file
}

@test 'architecture_src has _llvm-dis-16' {
    assert "$asrc/_llvm-dis-16" is_file
}

@test 'architecture_src has _llvm-dis-17' {
    assert "$asrc/_llvm-dis-17" is_file
}

@test 'architecture_src has _llvm-dis-19' {
    assert "$asrc/_llvm-dis-19" is_file
}

@test 'architecture_src has _llvm-dis-4.0' {
    assert "$asrc/_llvm-dis-4.0" is_file
}

@test 'architecture_src has _llvm-dis-6.0' {
    assert "$asrc/_llvm-dis-6.0" is_file
}

@test 'architecture_src has _llvm-dis-7' {
    assert "$asrc/_llvm-dis-7" is_file
}

@test 'architecture_src has _llvm-dis-8' {
    assert "$asrc/_llvm-dis-8" is_file
}

@test 'architecture_src has _llvm-dis-9' {
    assert "$asrc/_llvm-dis-9" is_file
}

@test 'architecture_src has _llvm-dis12' {
    assert "$asrc/_llvm-dis12" is_file
}

@test 'architecture_src has _llvm-dis60' {
    assert "$asrc/_llvm-dis60" is_file
}

@test 'architecture_src has _llvm-dlltool' {
    assert "$asrc/_llvm-dlltool" is_file
}

@test 'architecture_src has _llvm-dlltool-10' {
    assert "$asrc/_llvm-dlltool-10" is_file
}

@test 'architecture_src has _llvm-dlltool-11' {
    assert "$asrc/_llvm-dlltool-11" is_file
}

@test 'architecture_src has _llvm-dlltool-14' {
    assert "$asrc/_llvm-dlltool-14" is_file
}

@test 'architecture_src has _llvm-dlltool-7' {
    assert "$asrc/_llvm-dlltool-7" is_file
}

@test 'architecture_src has _llvm-dlltool-8' {
    assert "$asrc/_llvm-dlltool-8" is_file
}

@test 'architecture_src has _llvm-dlltool-9' {
    assert "$asrc/_llvm-dlltool-9" is_file
}

@test 'architecture_src has _llvm-dlltool12' {
    assert "$asrc/_llvm-dlltool12" is_file
}

@test 'architecture_src has _llvm-dlltool60' {
    assert "$asrc/_llvm-dlltool60" is_file
}

@test 'architecture_src has _llvm-dsymutil' {
    assert "$asrc/_llvm-dsymutil" is_file
}

@test 'architecture_src has _llvm-dsymutil-4.0' {
    assert "$asrc/_llvm-dsymutil-4.0" is_file
}

@test 'architecture_src has _llvm-dsymutil-6.0' {
    assert "$asrc/_llvm-dsymutil-6.0" is_file
}

@test 'architecture_src has _llvm-dwarfdump' {
    assert "$asrc/_llvm-dwarfdump" is_file
}

@test 'architecture_src has _llvm-dwarfdump-10' {
    assert "$asrc/_llvm-dwarfdump-10" is_file
}

@test 'architecture_src has _llvm-dwarfdump-13' {
    assert "$asrc/_llvm-dwarfdump-13" is_file
}

@test 'architecture_src has _llvm-dwarfdump-14' {
    assert "$asrc/_llvm-dwarfdump-14" is_file
}

@test 'architecture_src has _llvm-dwarfdump-16' {
    assert "$asrc/_llvm-dwarfdump-16" is_file
}

@test 'architecture_src has _llvm-dwarfdump-19' {
    assert "$asrc/_llvm-dwarfdump-19" is_file
}

@test 'architecture_src has _llvm-dwarfdump-4.0' {
    assert "$asrc/_llvm-dwarfdump-4.0" is_file
}

@test 'architecture_src has _llvm-dwarfdump-7' {
    assert "$asrc/_llvm-dwarfdump-7" is_file
}

@test 'architecture_src has _llvm-dwarfdump-9' {
    assert "$asrc/_llvm-dwarfdump-9" is_file
}

@test 'architecture_src has _llvm-dwarfdump12' {
    assert "$asrc/_llvm-dwarfdump12" is_file
}

@test 'architecture_src has _llvm-dwarfdump60' {
    assert "$asrc/_llvm-dwarfdump60" is_file
}

@test 'architecture_src has _llvm-dwarfutil-17' {
    assert "$asrc/_llvm-dwarfutil-17" is_file
}

@test 'architecture_src has _llvm-dwarfutil-19' {
    assert "$asrc/_llvm-dwarfutil-19" is_file
}

@test 'architecture_src has _llvm-dwp' {
    assert "$asrc/_llvm-dwp" is_file
}

@test 'architecture_src has _llvm-dwp-11' {
    assert "$asrc/_llvm-dwp-11" is_file
}

@test 'architecture_src has _llvm-dwp-14' {
    assert "$asrc/_llvm-dwp-14" is_file
}

@test 'architecture_src has _llvm-dwp-4.0' {
    assert "$asrc/_llvm-dwp-4.0" is_file
}

@test 'architecture_src has _llvm-dwp-6.0' {
    assert "$asrc/_llvm-dwp-6.0" is_file
}

@test 'architecture_src has _llvm-dwp-8' {
    assert "$asrc/_llvm-dwp-8" is_file
}

@test 'architecture_src has _llvm-dwp-9' {
    assert "$asrc/_llvm-dwp-9" is_file
}

@test 'architecture_src has _llvm-dwp12' {
    assert "$asrc/_llvm-dwp12" is_file
}

@test 'architecture_src has _llvm-dwp60' {
    assert "$asrc/_llvm-dwp60" is_file
}

@test 'architecture_src has _llvm-elfabi-11' {
    assert "$asrc/_llvm-elfabi-11" is_file
}

@test 'architecture_src has _llvm-elfabi-8' {
    assert "$asrc/_llvm-elfabi-8" is_file
}

@test 'architecture_src has _llvm-elfabi-9' {
    assert "$asrc/_llvm-elfabi-9" is_file
}

@test 'architecture_src has _llvm-exegesis-11' {
    assert "$asrc/_llvm-exegesis-11" is_file
}

@test 'architecture_src has _llvm-exegesis-13' {
    assert "$asrc/_llvm-exegesis-13" is_file
}

@test 'architecture_src has _llvm-exegesis-14' {
    assert "$asrc/_llvm-exegesis-14" is_file
}

@test 'architecture_src has _llvm-exegesis-16' {
    assert "$asrc/_llvm-exegesis-16" is_file
}

@test 'architecture_src has _llvm-exegesis-17' {
    assert "$asrc/_llvm-exegesis-17" is_file
}

@test 'architecture_src has _llvm-exegesis-19' {
    assert "$asrc/_llvm-exegesis-19" is_file
}

@test 'architecture_src has _llvm-exegesis-7' {
    assert "$asrc/_llvm-exegesis-7" is_file
}

@test 'architecture_src has _llvm-exegesis-8' {
    assert "$asrc/_llvm-exegesis-8" is_file
}

@test 'architecture_src has _llvm-exegesis12' {
    assert "$asrc/_llvm-exegesis12" is_file
}

@test 'architecture_src has _llvm-extract' {
    assert "$asrc/_llvm-extract" is_file
}

@test 'architecture_src has _llvm-extract-10' {
    assert "$asrc/_llvm-extract-10" is_file
}

@test 'architecture_src has _llvm-extract-11' {
    assert "$asrc/_llvm-extract-11" is_file
}

@test 'architecture_src has _llvm-extract-13' {
    assert "$asrc/_llvm-extract-13" is_file
}

@test 'architecture_src has _llvm-extract-14' {
    assert "$asrc/_llvm-extract-14" is_file
}

@test 'architecture_src has _llvm-extract-16' {
    assert "$asrc/_llvm-extract-16" is_file
}

@test 'architecture_src has _llvm-extract-17' {
    assert "$asrc/_llvm-extract-17" is_file
}

@test 'architecture_src has _llvm-extract-19' {
    assert "$asrc/_llvm-extract-19" is_file
}

@test 'architecture_src has _llvm-extract-3.5' {
    assert "$asrc/_llvm-extract-3.5" is_file
}

@test 'architecture_src has _llvm-extract-4.0' {
    assert "$asrc/_llvm-extract-4.0" is_file
}

@test 'architecture_src has _llvm-extract-6.0' {
    assert "$asrc/_llvm-extract-6.0" is_file
}

@test 'architecture_src has _llvm-extract-7' {
    assert "$asrc/_llvm-extract-7" is_file
}

@test 'architecture_src has _llvm-extract-8' {
    assert "$asrc/_llvm-extract-8" is_file
}

@test 'architecture_src has _llvm-extract-9' {
    assert "$asrc/_llvm-extract-9" is_file
}

@test 'architecture_src has _llvm-extract12' {
    assert "$asrc/_llvm-extract12" is_file
}

@test 'architecture_src has _llvm-extract60' {
    assert "$asrc/_llvm-extract60" is_file
}

@test 'architecture_src has _llvm-gsymutil-11' {
    assert "$asrc/_llvm-gsymutil-11" is_file
}

@test 'architecture_src has _llvm-gsymutil-16' {
    assert "$asrc/_llvm-gsymutil-16" is_file
}

@test 'architecture_src has _llvm-gsymutil-17' {
    assert "$asrc/_llvm-gsymutil-17" is_file
}

@test 'architecture_src has _llvm-gsymutil-19' {
    assert "$asrc/_llvm-gsymutil-19" is_file
}

@test 'architecture_src has _llvm-gsymutil12' {
    assert "$asrc/_llvm-gsymutil12" is_file
}

@test 'architecture_src has _llvm-ifs-10' {
    assert "$asrc/_llvm-ifs-10" is_file
}

@test 'architecture_src has _llvm-ifs-11' {
    assert "$asrc/_llvm-ifs-11" is_file
}

@test 'architecture_src has _llvm-ifs-13' {
    assert "$asrc/_llvm-ifs-13" is_file
}

@test 'architecture_src has _llvm-ifs-14' {
    assert "$asrc/_llvm-ifs-14" is_file
}

@test 'architecture_src has _llvm-ifs-17' {
    assert "$asrc/_llvm-ifs-17" is_file
}

@test 'architecture_src has _llvm-ifs12' {
    assert "$asrc/_llvm-ifs12" is_file
}

@test 'architecture_src has _llvm-install-name-tool' {
    assert "$asrc/_llvm-install-name-tool" is_file
}

@test 'architecture_src has _llvm-install-name-tool-13' {
    assert "$asrc/_llvm-install-name-tool-13" is_file
}

@test 'architecture_src has _llvm-install-name-tool-14' {
    assert "$asrc/_llvm-install-name-tool-14" is_file
}

@test 'architecture_src has _llvm-install-name-tool-16' {
    assert "$asrc/_llvm-install-name-tool-16" is_file
}

@test 'architecture_src has _llvm-install-name-tool-17' {
    assert "$asrc/_llvm-install-name-tool-17" is_file
}

@test 'architecture_src has _llvm-install-name-tool-19' {
    assert "$asrc/_llvm-install-name-tool-19" is_file
}

@test 'architecture_src has _llvm-install-name-tool12' {
    assert "$asrc/_llvm-install-name-tool12" is_file
}

@test 'architecture_src has _llvm-jitlink' {
    assert "$asrc/_llvm-jitlink" is_file
}

@test 'architecture_src has _llvm-jitlink-10' {
    assert "$asrc/_llvm-jitlink-10" is_file
}

@test 'architecture_src has _llvm-jitlink-13' {
    assert "$asrc/_llvm-jitlink-13" is_file
}

@test 'architecture_src has _llvm-jitlink-14' {
    assert "$asrc/_llvm-jitlink-14" is_file
}

@test 'architecture_src has _llvm-jitlink-9' {
    assert "$asrc/_llvm-jitlink-9" is_file
}

@test 'architecture_src has _llvm-jitlink12' {
    assert "$asrc/_llvm-jitlink12" is_file
}

@test 'architecture_src has _llvm-libtool-darwin' {
    assert "$asrc/_llvm-libtool-darwin" is_file
}

@test 'architecture_src has _llvm-libtool-darwin-13' {
    assert "$asrc/_llvm-libtool-darwin-13" is_file
}

@test 'architecture_src has _llvm-libtool-darwin-14' {
    assert "$asrc/_llvm-libtool-darwin-14" is_file
}

@test 'architecture_src has _llvm-libtool-darwin-16' {
    assert "$asrc/_llvm-libtool-darwin-16" is_file
}

@test 'architecture_src has _llvm-libtool-darwin-17' {
    assert "$asrc/_llvm-libtool-darwin-17" is_file
}

@test 'architecture_src has _llvm-libtool-darwin-19' {
    assert "$asrc/_llvm-libtool-darwin-19" is_file
}

@test 'architecture_src has _llvm-libtool-darwin12' {
    assert "$asrc/_llvm-libtool-darwin12" is_file
}

@test 'architecture_src has _llvm-link' {
    assert "$asrc/_llvm-link" is_file
}

@test 'architecture_src has _llvm-link-10' {
    assert "$asrc/_llvm-link-10" is_file
}

@test 'architecture_src has _llvm-link-11' {
    assert "$asrc/_llvm-link-11" is_file
}

@test 'architecture_src has _llvm-link-13' {
    assert "$asrc/_llvm-link-13" is_file
}

@test 'architecture_src has _llvm-link-14' {
    assert "$asrc/_llvm-link-14" is_file
}

@test 'architecture_src has _llvm-link-17' {
    assert "$asrc/_llvm-link-17" is_file
}

@test 'architecture_src has _llvm-link-19' {
    assert "$asrc/_llvm-link-19" is_file
}

@test 'architecture_src has _llvm-link-3.5' {
    assert "$asrc/_llvm-link-3.5" is_file
}

@test 'architecture_src has _llvm-link-4.0' {
    assert "$asrc/_llvm-link-4.0" is_file
}

@test 'architecture_src has _llvm-link-6.0' {
    assert "$asrc/_llvm-link-6.0" is_file
}

@test 'architecture_src has _llvm-link-7' {
    assert "$asrc/_llvm-link-7" is_file
}

@test 'architecture_src has _llvm-link-9' {
    assert "$asrc/_llvm-link-9" is_file
}

@test 'architecture_src has _llvm-link12' {
    assert "$asrc/_llvm-link12" is_file
}

@test 'architecture_src has _llvm-link60' {
    assert "$asrc/_llvm-link60" is_file
}

@test 'architecture_src has _llvm-lipo' {
    assert "$asrc/_llvm-lipo" is_file
}

@test 'architecture_src has _llvm-lipo-10' {
    assert "$asrc/_llvm-lipo-10" is_file
}

@test 'architecture_src has _llvm-lipo-13' {
    assert "$asrc/_llvm-lipo-13" is_file
}

@test 'architecture_src has _llvm-lipo-14' {
    assert "$asrc/_llvm-lipo-14" is_file
}

@test 'architecture_src has _llvm-lipo-16' {
    assert "$asrc/_llvm-lipo-16" is_file
}

@test 'architecture_src has _llvm-lipo-17' {
    assert "$asrc/_llvm-lipo-17" is_file
}

@test 'architecture_src has _llvm-lipo-9' {
    assert "$asrc/_llvm-lipo-9" is_file
}

@test 'architecture_src has _llvm-lipo12' {
    assert "$asrc/_llvm-lipo12" is_file
}

@test 'architecture_src has _llvm-lit12' {
    assert "$asrc/_llvm-lit12" is_file
}

@test 'architecture_src has _llvm-lit60' {
    assert "$asrc/_llvm-lit60" is_file
}

@test 'architecture_src has _llvm-lto-13' {
    assert "$asrc/_llvm-lto-13" is_file
}

@test 'architecture_src has _llvm-lto-14' {
    assert "$asrc/_llvm-lto-14" is_file
}

@test 'architecture_src has _llvm-lto-16' {
    assert "$asrc/_llvm-lto-16" is_file
}

@test 'architecture_src has _llvm-lto-17' {
    assert "$asrc/_llvm-lto-17" is_file
}

@test 'architecture_src has _llvm-lto-19' {
    assert "$asrc/_llvm-lto-19" is_file
}

@test 'architecture_src has _llvm-lto-4.0' {
    assert "$asrc/_llvm-lto-4.0" is_file
}

@test 'architecture_src has _llvm-lto-7' {
    assert "$asrc/_llvm-lto-7" is_file
}

@test 'architecture_src has _llvm-lto-8' {
    assert "$asrc/_llvm-lto-8" is_file
}

@test 'architecture_src has _llvm-lto-9' {
    assert "$asrc/_llvm-lto-9" is_file
}

@test 'architecture_src has _llvm-lto2-4.0' {
    assert "$asrc/_llvm-lto2-4.0" is_file
}

@test 'architecture_src has _llvm-mc' {
    assert "$asrc/_llvm-mc" is_file
}

@test 'architecture_src has _llvm-mc-10' {
    assert "$asrc/_llvm-mc-10" is_file
}

@test 'architecture_src has _llvm-mc-11' {
    assert "$asrc/_llvm-mc-11" is_file
}

@test 'architecture_src has _llvm-mc-13' {
    assert "$asrc/_llvm-mc-13" is_file
}

@test 'architecture_src has _llvm-mc-14' {
    assert "$asrc/_llvm-mc-14" is_file
}

@test 'architecture_src has _llvm-mc-16' {
    assert "$asrc/_llvm-mc-16" is_file
}

@test 'architecture_src has _llvm-mc-17' {
    assert "$asrc/_llvm-mc-17" is_file
}

@test 'architecture_src has _llvm-mc-19' {
    assert "$asrc/_llvm-mc-19" is_file
}

@test 'architecture_src has _llvm-mc-3.5' {
    assert "$asrc/_llvm-mc-3.5" is_file
}

@test 'architecture_src has _llvm-mc-4.0' {
    assert "$asrc/_llvm-mc-4.0" is_file
}

@test 'architecture_src has _llvm-mc-6.0' {
    assert "$asrc/_llvm-mc-6.0" is_file
}

@test 'architecture_src has _llvm-mc-7' {
    assert "$asrc/_llvm-mc-7" is_file
}

@test 'architecture_src has _llvm-mc-9' {
    assert "$asrc/_llvm-mc-9" is_file
}

@test 'architecture_src has _llvm-mc12' {
    assert "$asrc/_llvm-mc12" is_file
}

@test 'architecture_src has _llvm-mc60' {
    assert "$asrc/_llvm-mc60" is_file
}

@test 'architecture_src has _llvm-mca-10' {
    assert "$asrc/_llvm-mca-10" is_file
}

@test 'architecture_src has _llvm-mca-11' {
    assert "$asrc/_llvm-mca-11" is_file
}

@test 'architecture_src has _llvm-mca-13' {
    assert "$asrc/_llvm-mca-13" is_file
}

@test 'architecture_src has _llvm-mca-14' {
    assert "$asrc/_llvm-mca-14" is_file
}

@test 'architecture_src has _llvm-mca-16' {
    assert "$asrc/_llvm-mca-16" is_file
}

@test 'architecture_src has _llvm-mca-19' {
    assert "$asrc/_llvm-mca-19" is_file
}

@test 'architecture_src has _llvm-mca-7' {
    assert "$asrc/_llvm-mca-7" is_file
}

@test 'architecture_src has _llvm-mca-8' {
    assert "$asrc/_llvm-mca-8" is_file
}

@test 'architecture_src has _llvm-mca-9' {
    assert "$asrc/_llvm-mca-9" is_file
}

@test 'architecture_src has _llvm-mcmarkup' {
    assert "$asrc/_llvm-mcmarkup" is_file
}

@test 'architecture_src has _llvm-mcmarkup-3.5' {
    assert "$asrc/_llvm-mcmarkup-3.5" is_file
}

@test 'architecture_src has _llvm-mcmarkup-4.0' {
    assert "$asrc/_llvm-mcmarkup-4.0" is_file
}

@test 'architecture_src has _llvm-mcmarkup-6.0' {
    assert "$asrc/_llvm-mcmarkup-6.0" is_file
}

@test 'architecture_src has _llvm-modextract' {
    assert "$asrc/_llvm-modextract" is_file
}

@test 'architecture_src has _llvm-modextract-10' {
    assert "$asrc/_llvm-modextract-10" is_file
}

@test 'architecture_src has _llvm-modextract-11' {
    assert "$asrc/_llvm-modextract-11" is_file
}

@test 'architecture_src has _llvm-modextract-13' {
    assert "$asrc/_llvm-modextract-13" is_file
}

@test 'architecture_src has _llvm-modextract-14' {
    assert "$asrc/_llvm-modextract-14" is_file
}

@test 'architecture_src has _llvm-modextract-16' {
    assert "$asrc/_llvm-modextract-16" is_file
}

@test 'architecture_src has _llvm-modextract-6.0' {
    assert "$asrc/_llvm-modextract-6.0" is_file
}

@test 'architecture_src has _llvm-modextract-7' {
    assert "$asrc/_llvm-modextract-7" is_file
}

@test 'architecture_src has _llvm-modextract-8' {
    assert "$asrc/_llvm-modextract-8" is_file
}

@test 'architecture_src has _llvm-modextract-9' {
    assert "$asrc/_llvm-modextract-9" is_file
}

@test 'architecture_src has _llvm-modextract12' {
    assert "$asrc/_llvm-modextract12" is_file
}

@test 'architecture_src has _llvm-nm-10' {
    assert "$asrc/_llvm-nm-10" is_file
}

@test 'architecture_src has _llvm-nm-11' {
    assert "$asrc/_llvm-nm-11" is_file
}

@test 'architecture_src has _llvm-nm-13' {
    assert "$asrc/_llvm-nm-13" is_file
}

@test 'architecture_src has _llvm-nm-14' {
    assert "$asrc/_llvm-nm-14" is_file
}

@test 'architecture_src has _llvm-nm-16' {
    assert "$asrc/_llvm-nm-16" is_file
}

@test 'architecture_src has _llvm-nm-17' {
    assert "$asrc/_llvm-nm-17" is_file
}

@test 'architecture_src has _llvm-nm-19' {
    assert "$asrc/_llvm-nm-19" is_file
}

@test 'architecture_src has _llvm-nm-4.0' {
    assert "$asrc/_llvm-nm-4.0" is_file
}

@test 'architecture_src has _llvm-nm-6.0' {
    assert "$asrc/_llvm-nm-6.0" is_file
}

@test 'architecture_src has _llvm-nm-7' {
    assert "$asrc/_llvm-nm-7" is_file
}

@test 'architecture_src has _llvm-nm-8' {
    assert "$asrc/_llvm-nm-8" is_file
}

@test 'architecture_src has _llvm-nm-9' {
    assert "$asrc/_llvm-nm-9" is_file
}

@test 'architecture_src has _llvm-nm12' {
    assert "$asrc/_llvm-nm12" is_file
}

@test 'architecture_src has _llvm-nm60' {
    assert "$asrc/_llvm-nm60" is_file
}

@test 'architecture_src has _llvm-objcopy' {
    assert "$asrc/_llvm-objcopy" is_file
}

@test 'architecture_src has _llvm-objcopy-10' {
    assert "$asrc/_llvm-objcopy-10" is_file
}

@test 'architecture_src has _llvm-objcopy-11' {
    assert "$asrc/_llvm-objcopy-11" is_file
}

@test 'architecture_src has _llvm-objcopy-13' {
    assert "$asrc/_llvm-objcopy-13" is_file
}

@test 'architecture_src has _llvm-objcopy-14' {
    assert "$asrc/_llvm-objcopy-14" is_file
}

@test 'architecture_src has _llvm-objcopy-17' {
    assert "$asrc/_llvm-objcopy-17" is_file
}

@test 'architecture_src has _llvm-objcopy-19' {
    assert "$asrc/_llvm-objcopy-19" is_file
}

@test 'architecture_src has _llvm-objcopy-6.0' {
    assert "$asrc/_llvm-objcopy-6.0" is_file
}

@test 'architecture_src has _llvm-objcopy-7' {
    assert "$asrc/_llvm-objcopy-7" is_file
}

@test 'architecture_src has _llvm-objcopy-8' {
    assert "$asrc/_llvm-objcopy-8" is_file
}

@test 'architecture_src has _llvm-objcopy-9' {
    assert "$asrc/_llvm-objcopy-9" is_file
}

@test 'architecture_src has _llvm-objcopy60' {
    assert "$asrc/_llvm-objcopy60" is_file
}

@test 'architecture_src has _llvm-objdump' {
    assert "$asrc/_llvm-objdump" is_file
}

@test 'architecture_src has _llvm-objdump-10' {
    assert "$asrc/_llvm-objdump-10" is_file
}

@test 'architecture_src has _llvm-objdump-11' {
    assert "$asrc/_llvm-objdump-11" is_file
}

@test 'architecture_src has _llvm-objdump-13' {
    assert "$asrc/_llvm-objdump-13" is_file
}

@test 'architecture_src has _llvm-objdump-14' {
    assert "$asrc/_llvm-objdump-14" is_file
}

@test 'architecture_src has _llvm-objdump-16' {
    assert "$asrc/_llvm-objdump-16" is_file
}

@test 'architecture_src has _llvm-objdump-17' {
    assert "$asrc/_llvm-objdump-17" is_file
}

@test 'architecture_src has _llvm-objdump-19' {
    assert "$asrc/_llvm-objdump-19" is_file
}

@test 'architecture_src has _llvm-objdump-3.5' {
    assert "$asrc/_llvm-objdump-3.5" is_file
}

@test 'architecture_src has _llvm-objdump-4.0' {
    assert "$asrc/_llvm-objdump-4.0" is_file
}

@test 'architecture_src has _llvm-objdump-6.0' {
    assert "$asrc/_llvm-objdump-6.0" is_file
}

@test 'architecture_src has _llvm-objdump12' {
    assert "$asrc/_llvm-objdump12" is_file
}

@test 'architecture_src has _llvm-objdump60' {
    assert "$asrc/_llvm-objdump60" is_file
}

@test 'architecture_src has _llvm-opt-report' {
    assert "$asrc/_llvm-opt-report" is_file
}

@test 'architecture_src has _llvm-opt-report-10' {
    assert "$asrc/_llvm-opt-report-10" is_file
}

@test 'architecture_src has _llvm-opt-report-13' {
    assert "$asrc/_llvm-opt-report-13" is_file
}

@test 'architecture_src has _llvm-opt-report-14' {
    assert "$asrc/_llvm-opt-report-14" is_file
}

@test 'architecture_src has _llvm-opt-report-17' {
    assert "$asrc/_llvm-opt-report-17" is_file
}

@test 'architecture_src has _llvm-opt-report-19' {
    assert "$asrc/_llvm-opt-report-19" is_file
}

@test 'architecture_src has _llvm-opt-report-4.0' {
    assert "$asrc/_llvm-opt-report-4.0" is_file
}

@test 'architecture_src has _llvm-opt-report-6.0' {
    assert "$asrc/_llvm-opt-report-6.0" is_file
}

@test 'architecture_src has _llvm-opt-report-7' {
    assert "$asrc/_llvm-opt-report-7" is_file
}

@test 'architecture_src has _llvm-opt-report-8' {
    assert "$asrc/_llvm-opt-report-8" is_file
}

@test 'architecture_src has _llvm-opt-report-9' {
    assert "$asrc/_llvm-opt-report-9" is_file
}

@test 'architecture_src has _llvm-opt-report12' {
    assert "$asrc/_llvm-opt-report12" is_file
}

@test 'architecture_src has _llvm-opt-report60' {
    assert "$asrc/_llvm-opt-report60" is_file
}

@test 'architecture_src has _llvm-otool-13' {
    assert "$asrc/_llvm-otool-13" is_file
}

@test 'architecture_src has _llvm-otool-14' {
    assert "$asrc/_llvm-otool-14" is_file
}

@test 'architecture_src has _llvm-otool-16' {
    assert "$asrc/_llvm-otool-16" is_file
}

@test 'architecture_src has _llvm-otool-17' {
    assert "$asrc/_llvm-otool-17" is_file
}

@test 'architecture_src has _llvm-otool-19' {
    assert "$asrc/_llvm-otool-19" is_file
}

@test 'architecture_src has _llvm-pdbutil' {
    assert "$asrc/_llvm-pdbutil" is_file
}

@test 'architecture_src has _llvm-pdbutil-10' {
    assert "$asrc/_llvm-pdbutil-10" is_file
}

@test 'architecture_src has _llvm-pdbutil-11' {
    assert "$asrc/_llvm-pdbutil-11" is_file
}

@test 'architecture_src has _llvm-pdbutil-14' {
    assert "$asrc/_llvm-pdbutil-14" is_file
}

@test 'architecture_src has _llvm-pdbutil-17' {
    assert "$asrc/_llvm-pdbutil-17" is_file
}

@test 'architecture_src has _llvm-pdbutil-19' {
    assert "$asrc/_llvm-pdbutil-19" is_file
}

@test 'architecture_src has _llvm-pdbutil-6.0' {
    assert "$asrc/_llvm-pdbutil-6.0" is_file
}

@test 'architecture_src has _llvm-pdbutil-7' {
    assert "$asrc/_llvm-pdbutil-7" is_file
}

@test 'architecture_src has _llvm-pdbutil-9' {
    assert "$asrc/_llvm-pdbutil-9" is_file
}

@test 'architecture_src has _llvm-pdbutil12' {
    assert "$asrc/_llvm-pdbutil12" is_file
}

@test 'architecture_src has _llvm-pdbutil60' {
    assert "$asrc/_llvm-pdbutil60" is_file
}

@test 'architecture_src has _llvm-profdata' {
    assert "$asrc/_llvm-profdata" is_file
}

@test 'architecture_src has _llvm-profdata-13' {
    assert "$asrc/_llvm-profdata-13" is_file
}

@test 'architecture_src has _llvm-profdata-14' {
    assert "$asrc/_llvm-profdata-14" is_file
}

@test 'architecture_src has _llvm-profdata-16' {
    assert "$asrc/_llvm-profdata-16" is_file
}

@test 'architecture_src has _llvm-profdata-17' {
    assert "$asrc/_llvm-profdata-17" is_file
}

@test 'architecture_src has _llvm-profdata-19' {
    assert "$asrc/_llvm-profdata-19" is_file
}

@test 'architecture_src has _llvm-profdata-3.5' {
    assert "$asrc/_llvm-profdata-3.5" is_file
}

@test 'architecture_src has _llvm-profdata-4.0' {
    assert "$asrc/_llvm-profdata-4.0" is_file
}

@test 'architecture_src has _llvm-profdata-6.0' {
    assert "$asrc/_llvm-profdata-6.0" is_file
}

@test 'architecture_src has _llvm-profdata-7' {
    assert "$asrc/_llvm-profdata-7" is_file
}

@test 'architecture_src has _llvm-profdata-8' {
    assert "$asrc/_llvm-profdata-8" is_file
}

@test 'architecture_src has _llvm-profdata60' {
    assert "$asrc/_llvm-profdata60" is_file
}

@test 'architecture_src has _llvm-profgen' {
    assert "$asrc/_llvm-profgen" is_file
}

@test 'architecture_src has _llvm-profgen-13' {
    assert "$asrc/_llvm-profgen-13" is_file
}

@test 'architecture_src has _llvm-profgen-16' {
    assert "$asrc/_llvm-profgen-16" is_file
}

@test 'architecture_src has _llvm-profgen-19' {
    assert "$asrc/_llvm-profgen-19" is_file
}

@test 'architecture_src has _llvm-profgen12' {
    assert "$asrc/_llvm-profgen12" is_file
}

@test 'architecture_src has _llvm-ranlib' {
    assert "$asrc/_llvm-ranlib" is_file
}

@test 'architecture_src has _llvm-ranlib-10' {
    assert "$asrc/_llvm-ranlib-10" is_file
}

@test 'architecture_src has _llvm-ranlib-13' {
    assert "$asrc/_llvm-ranlib-13" is_file
}

@test 'architecture_src has _llvm-ranlib-14' {
    assert "$asrc/_llvm-ranlib-14" is_file
}

@test 'architecture_src has _llvm-ranlib-16' {
    assert "$asrc/_llvm-ranlib-16" is_file
}

@test 'architecture_src has _llvm-ranlib-19' {
    assert "$asrc/_llvm-ranlib-19" is_file
}

@test 'architecture_src has _llvm-ranlib-3.5' {
    assert "$asrc/_llvm-ranlib-3.5" is_file
}

@test 'architecture_src has _llvm-ranlib-4.0' {
    assert "$asrc/_llvm-ranlib-4.0" is_file
}

@test 'architecture_src has _llvm-ranlib-6.0' {
    assert "$asrc/_llvm-ranlib-6.0" is_file
}

@test 'architecture_src has _llvm-ranlib-7' {
    assert "$asrc/_llvm-ranlib-7" is_file
}

@test 'architecture_src has _llvm-ranlib-8' {
    assert "$asrc/_llvm-ranlib-8" is_file
}

@test 'architecture_src has _llvm-ranlib-9' {
    assert "$asrc/_llvm-ranlib-9" is_file
}

@test 'architecture_src has _llvm-ranlib12' {
    assert "$asrc/_llvm-ranlib12" is_file
}

@test 'architecture_src has _llvm-ranlib60' {
    assert "$asrc/_llvm-ranlib60" is_file
}

@test 'architecture_src has _llvm-readelf-10' {
    assert "$asrc/_llvm-readelf-10" is_file
}

@test 'architecture_src has _llvm-readelf-11' {
    assert "$asrc/_llvm-readelf-11" is_file
}

@test 'architecture_src has _llvm-readelf-13' {
    assert "$asrc/_llvm-readelf-13" is_file
}

@test 'architecture_src has _llvm-readelf-14' {
    assert "$asrc/_llvm-readelf-14" is_file
}

@test 'architecture_src has _llvm-readelf-17' {
    assert "$asrc/_llvm-readelf-17" is_file
}

@test 'architecture_src has _llvm-readelf-19' {
    assert "$asrc/_llvm-readelf-19" is_file
}

@test 'architecture_src has _llvm-readelf-6.0' {
    assert "$asrc/_llvm-readelf-6.0" is_file
}

@test 'architecture_src has _llvm-readelf-7' {
    assert "$asrc/_llvm-readelf-7" is_file
}

@test 'architecture_src has _llvm-readelf-8' {
    assert "$asrc/_llvm-readelf-8" is_file
}

@test 'architecture_src has _llvm-readelf-9' {
    assert "$asrc/_llvm-readelf-9" is_file
}

@test 'architecture_src has _llvm-readelf12' {
    assert "$asrc/_llvm-readelf12" is_file
}

@test 'architecture_src has _llvm-readobj' {
    assert "$asrc/_llvm-readobj" is_file
}

@test 'architecture_src has _llvm-readobj-10' {
    assert "$asrc/_llvm-readobj-10" is_file
}

@test 'architecture_src has _llvm-readobj-13' {
    assert "$asrc/_llvm-readobj-13" is_file
}

@test 'architecture_src has _llvm-readobj-14' {
    assert "$asrc/_llvm-readobj-14" is_file
}

@test 'architecture_src has _llvm-readobj-16' {
    assert "$asrc/_llvm-readobj-16" is_file
}

@test 'architecture_src has _llvm-readobj-4.0' {
    assert "$asrc/_llvm-readobj-4.0" is_file
}

@test 'architecture_src has _llvm-readobj-6.0' {
    assert "$asrc/_llvm-readobj-6.0" is_file
}

@test 'architecture_src has _llvm-readobj-7' {
    assert "$asrc/_llvm-readobj-7" is_file
}

@test 'architecture_src has _llvm-readobj-8' {
    assert "$asrc/_llvm-readobj-8" is_file
}

@test 'architecture_src has _llvm-readobj12' {
    assert "$asrc/_llvm-readobj12" is_file
}

@test 'architecture_src has _llvm-readobj60' {
    assert "$asrc/_llvm-readobj60" is_file
}

@test 'architecture_src has _llvm-readtapi' {
    assert "$asrc/_llvm-readtapi" is_file
}

@test 'architecture_src has _llvm-reduce' {
    assert "$asrc/_llvm-reduce" is_file
}

@test 'architecture_src has _llvm-reduce-10' {
    assert "$asrc/_llvm-reduce-10" is_file
}

@test 'architecture_src has _llvm-reduce-11' {
    assert "$asrc/_llvm-reduce-11" is_file
}

@test 'architecture_src has _llvm-reduce-14' {
    assert "$asrc/_llvm-reduce-14" is_file
}

@test 'architecture_src has _llvm-reduce-17' {
    assert "$asrc/_llvm-reduce-17" is_file
}

@test 'architecture_src has _llvm-reduce-19' {
    assert "$asrc/_llvm-reduce-19" is_file
}

@test 'architecture_src has _llvm-reduce12' {
    assert "$asrc/_llvm-reduce12" is_file
}

@test 'architecture_src has _llvm-remark-size-diff-17' {
    assert "$asrc/_llvm-remark-size-diff-17" is_file
}

@test 'architecture_src has _llvm-rtdyld' {
    assert "$asrc/_llvm-rtdyld" is_file
}

@test 'architecture_src has _llvm-rtdyld-10' {
    assert "$asrc/_llvm-rtdyld-10" is_file
}

@test 'architecture_src has _llvm-rtdyld-11' {
    assert "$asrc/_llvm-rtdyld-11" is_file
}

@test 'architecture_src has _llvm-rtdyld-13' {
    assert "$asrc/_llvm-rtdyld-13" is_file
}

@test 'architecture_src has _llvm-rtdyld-14' {
    assert "$asrc/_llvm-rtdyld-14" is_file
}

@test 'architecture_src has _llvm-rtdyld-17' {
    assert "$asrc/_llvm-rtdyld-17" is_file
}

@test 'architecture_src has _llvm-rtdyld-19' {
    assert "$asrc/_llvm-rtdyld-19" is_file
}

@test 'architecture_src has _llvm-rtdyld-3.5' {
    assert "$asrc/_llvm-rtdyld-3.5" is_file
}

@test 'architecture_src has _llvm-rtdyld-4.0' {
    assert "$asrc/_llvm-rtdyld-4.0" is_file
}

@test 'architecture_src has _llvm-rtdyld-6.0' {
    assert "$asrc/_llvm-rtdyld-6.0" is_file
}

@test 'architecture_src has _llvm-rtdyld-7' {
    assert "$asrc/_llvm-rtdyld-7" is_file
}

@test 'architecture_src has _llvm-rtdyld-8' {
    assert "$asrc/_llvm-rtdyld-8" is_file
}

@test 'architecture_src has _llvm-rtdyld-9' {
    assert "$asrc/_llvm-rtdyld-9" is_file
}

@test 'architecture_src has _llvm-rtdyld12' {
    assert "$asrc/_llvm-rtdyld12" is_file
}

@test 'architecture_src has _llvm-rtdyld60' {
    assert "$asrc/_llvm-rtdyld60" is_file
}

@test 'architecture_src has _llvm-sim' {
    assert "$asrc/_llvm-sim" is_file
}

@test 'architecture_src has _llvm-sim-13' {
    assert "$asrc/_llvm-sim-13" is_file
}

@test 'architecture_src has _llvm-size' {
    assert "$asrc/_llvm-size" is_file
}

@test 'architecture_src has _llvm-size-10' {
    assert "$asrc/_llvm-size-10" is_file
}

@test 'architecture_src has _llvm-size-11' {
    assert "$asrc/_llvm-size-11" is_file
}

@test 'architecture_src has _llvm-size-13' {
    assert "$asrc/_llvm-size-13" is_file
}

@test 'architecture_src has _llvm-size-14' {
    assert "$asrc/_llvm-size-14" is_file
}

@test 'architecture_src has _llvm-size-16' {
    assert "$asrc/_llvm-size-16" is_file
}

@test 'architecture_src has _llvm-size-17' {
    assert "$asrc/_llvm-size-17" is_file
}

@test 'architecture_src has _llvm-size-19' {
    assert "$asrc/_llvm-size-19" is_file
}

@test 'architecture_src has _llvm-size-4.0' {
    assert "$asrc/_llvm-size-4.0" is_file
}

@test 'architecture_src has _llvm-size-6.0' {
    assert "$asrc/_llvm-size-6.0" is_file
}

@test 'architecture_src has _llvm-size-7' {
    assert "$asrc/_llvm-size-7" is_file
}

@test 'architecture_src has _llvm-size-8' {
    assert "$asrc/_llvm-size-8" is_file
}

@test 'architecture_src has _llvm-size-9' {
    assert "$asrc/_llvm-size-9" is_file
}

@test 'architecture_src has _llvm-size12' {
    assert "$asrc/_llvm-size12" is_file
}

@test 'architecture_src has _llvm-size60' {
    assert "$asrc/_llvm-size60" is_file
}

@test 'architecture_src has _llvm-split' {
    assert "$asrc/_llvm-split" is_file
}

@test 'architecture_src has _llvm-split-11' {
    assert "$asrc/_llvm-split-11" is_file
}

@test 'architecture_src has _llvm-split-14' {
    assert "$asrc/_llvm-split-14" is_file
}

@test 'architecture_src has _llvm-split-4.0' {
    assert "$asrc/_llvm-split-4.0" is_file
}

@test 'architecture_src has _llvm-split-6.0' {
    assert "$asrc/_llvm-split-6.0" is_file
}

@test 'architecture_src has _llvm-split-7' {
    assert "$asrc/_llvm-split-7" is_file
}

@test 'architecture_src has _llvm-split-8' {
    assert "$asrc/_llvm-split-8" is_file
}

@test 'architecture_src has _llvm-split-9' {
    assert "$asrc/_llvm-split-9" is_file
}

@test 'architecture_src has _llvm-split12' {
    assert "$asrc/_llvm-split12" is_file
}

@test 'architecture_src has _llvm-split60' {
    assert "$asrc/_llvm-split60" is_file
}

@test 'architecture_src has _llvm-stress-10' {
    assert "$asrc/_llvm-stress-10" is_file
}

@test 'architecture_src has _llvm-stress-11' {
    assert "$asrc/_llvm-stress-11" is_file
}

@test 'architecture_src has _llvm-stress-14' {
    assert "$asrc/_llvm-stress-14" is_file
}

@test 'architecture_src has _llvm-stress-16' {
    assert "$asrc/_llvm-stress-16" is_file
}

@test 'architecture_src has _llvm-stress-17' {
    assert "$asrc/_llvm-stress-17" is_file
}

@test 'architecture_src has _llvm-stress-3.5' {
    assert "$asrc/_llvm-stress-3.5" is_file
}

@test 'architecture_src has _llvm-stress-4.0' {
    assert "$asrc/_llvm-stress-4.0" is_file
}

@test 'architecture_src has _llvm-stress-6.0' {
    assert "$asrc/_llvm-stress-6.0" is_file
}

@test 'architecture_src has _llvm-stress-7' {
    assert "$asrc/_llvm-stress-7" is_file
}

@test 'architecture_src has _llvm-stress-8' {
    assert "$asrc/_llvm-stress-8" is_file
}

@test 'architecture_src has _llvm-stress60' {
    assert "$asrc/_llvm-stress60" is_file
}

@test 'architecture_src has _llvm-strings' {
    assert "$asrc/_llvm-strings" is_file
}

@test 'architecture_src has _llvm-strings-13' {
    assert "$asrc/_llvm-strings-13" is_file
}

@test 'architecture_src has _llvm-strings-14' {
    assert "$asrc/_llvm-strings-14" is_file
}

@test 'architecture_src has _llvm-strings-4.0' {
    assert "$asrc/_llvm-strings-4.0" is_file
}

@test 'architecture_src has _llvm-strings-6.0' {
    assert "$asrc/_llvm-strings-6.0" is_file
}

@test 'architecture_src has _llvm-strings-7' {
    assert "$asrc/_llvm-strings-7" is_file
}

@test 'architecture_src has _llvm-strings-8' {
    assert "$asrc/_llvm-strings-8" is_file
}

@test 'architecture_src has _llvm-strings12' {
    assert "$asrc/_llvm-strings12" is_file
}

@test 'architecture_src has _llvm-strings60' {
    assert "$asrc/_llvm-strings60" is_file
}

@test 'architecture_src has _llvm-strip' {
    assert "$asrc/_llvm-strip" is_file
}

@test 'architecture_src has _llvm-strip-10' {
    assert "$asrc/_llvm-strip-10" is_file
}

@test 'architecture_src has _llvm-strip-11' {
    assert "$asrc/_llvm-strip-11" is_file
}

@test 'architecture_src has _llvm-strip-13' {
    assert "$asrc/_llvm-strip-13" is_file
}

@test 'architecture_src has _llvm-strip-14' {
    assert "$asrc/_llvm-strip-14" is_file
}

@test 'architecture_src has _llvm-strip-16' {
    assert "$asrc/_llvm-strip-16" is_file
}

@test 'architecture_src has _llvm-strip-17' {
    assert "$asrc/_llvm-strip-17" is_file
}

@test 'architecture_src has _llvm-strip-19' {
    assert "$asrc/_llvm-strip-19" is_file
}

@test 'architecture_src has _llvm-strip-7' {
    assert "$asrc/_llvm-strip-7" is_file
}

@test 'architecture_src has _llvm-strip-8' {
    assert "$asrc/_llvm-strip-8" is_file
}

@test 'architecture_src has _llvm-strip-9' {
    assert "$asrc/_llvm-strip-9" is_file
}

@test 'architecture_src has _llvm-strip12' {
    assert "$asrc/_llvm-strip12" is_file
}

@test 'architecture_src has _llvm-symbolizer' {
    assert "$asrc/_llvm-symbolizer" is_file
}

@test 'architecture_src has _llvm-symbolizer-11' {
    assert "$asrc/_llvm-symbolizer-11" is_file
}

@test 'architecture_src has _llvm-symbolizer-13' {
    assert "$asrc/_llvm-symbolizer-13" is_file
}

@test 'architecture_src has _llvm-symbolizer-14' {
    assert "$asrc/_llvm-symbolizer-14" is_file
}

@test 'architecture_src has _llvm-symbolizer-16' {
    assert "$asrc/_llvm-symbolizer-16" is_file
}

@test 'architecture_src has _llvm-symbolizer-17' {
    assert "$asrc/_llvm-symbolizer-17" is_file
}

@test 'architecture_src has _llvm-symbolizer-19' {
    assert "$asrc/_llvm-symbolizer-19" is_file
}

@test 'architecture_src has _llvm-symbolizer-4.0' {
    assert "$asrc/_llvm-symbolizer-4.0" is_file
}

@test 'architecture_src has _llvm-symbolizer-6.0' {
    assert "$asrc/_llvm-symbolizer-6.0" is_file
}

@test 'architecture_src has _llvm-symbolizer-7' {
    assert "$asrc/_llvm-symbolizer-7" is_file
}

@test 'architecture_src has _llvm-symbolizer-8' {
    assert "$asrc/_llvm-symbolizer-8" is_file
}

@test 'architecture_src has _llvm-symbolizer-9' {
    assert "$asrc/_llvm-symbolizer-9" is_file
}

@test 'architecture_src has _llvm-symbolizer60' {
    assert "$asrc/_llvm-symbolizer60" is_file
}

@test 'architecture_src has _llvm-tapi-diff-14' {
    assert "$asrc/_llvm-tapi-diff-14" is_file
}

@test 'architecture_src has _llvm-tblgen' {
    assert "$asrc/_llvm-tblgen" is_file
}

@test 'architecture_src has _llvm-tblgen-10' {
    assert "$asrc/_llvm-tblgen-10" is_file
}

@test 'architecture_src has _llvm-tblgen-11' {
    assert "$asrc/_llvm-tblgen-11" is_file
}

@test 'architecture_src has _llvm-tblgen-14' {
    assert "$asrc/_llvm-tblgen-14" is_file
}

@test 'architecture_src has _llvm-tblgen-3.5' {
    assert "$asrc/_llvm-tblgen-3.5" is_file
}

@test 'architecture_src has _llvm-tblgen-4.0' {
    assert "$asrc/_llvm-tblgen-4.0" is_file
}

@test 'architecture_src has _llvm-tblgen-6.0' {
    assert "$asrc/_llvm-tblgen-6.0" is_file
}

@test 'architecture_src has _llvm-tblgen-7' {
    assert "$asrc/_llvm-tblgen-7" is_file
}

@test 'architecture_src has _llvm-tblgen-9' {
    assert "$asrc/_llvm-tblgen-9" is_file
}

@test 'architecture_src has _llvm-tblgen12' {
    assert "$asrc/_llvm-tblgen12" is_file
}

@test 'architecture_src has _llvm-tblgen60' {
    assert "$asrc/_llvm-tblgen60" is_file
}

@test 'architecture_src has _llvm-tli-checker' {
    assert "$asrc/_llvm-tli-checker" is_file
}

@test 'architecture_src has _llvm-tli-checker-14' {
    assert "$asrc/_llvm-tli-checker-14" is_file
}

@test 'architecture_src has _llvm-tli-checker-17' {
    assert "$asrc/_llvm-tli-checker-17" is_file
}

@test 'architecture_src has _llvm-tli-checker-19' {
    assert "$asrc/_llvm-tli-checker-19" is_file
}

@test 'architecture_src has _llvm-undname' {
    assert "$asrc/_llvm-undname" is_file
}

@test 'architecture_src has _llvm-undname-10' {
    assert "$asrc/_llvm-undname-10" is_file
}

@test 'architecture_src has _llvm-undname-11' {
    assert "$asrc/_llvm-undname-11" is_file
}

@test 'architecture_src has _llvm-undname-14' {
    assert "$asrc/_llvm-undname-14" is_file
}

@test 'architecture_src has _llvm-undname-7' {
    assert "$asrc/_llvm-undname-7" is_file
}

@test 'architecture_src has _llvm-undname-8' {
    assert "$asrc/_llvm-undname-8" is_file
}

@test 'architecture_src has _llvm-undname-9' {
    assert "$asrc/_llvm-undname-9" is_file
}

@test 'architecture_src has _llvm-undname12' {
    assert "$asrc/_llvm-undname12" is_file
}

@test 'architecture_src has _llvm-windres' {
    assert "$asrc/_llvm-windres" is_file
}

@test 'architecture_src has _llvm-xray' {
    assert "$asrc/_llvm-xray" is_file
}

@test 'architecture_src has _llvm-xray-11' {
    assert "$asrc/_llvm-xray-11" is_file
}

@test 'architecture_src has _llvm-xray-14' {
    assert "$asrc/_llvm-xray-14" is_file
}

@test 'architecture_src has _llvm-xray-6.0' {
    assert "$asrc/_llvm-xray-6.0" is_file
}

@test 'architecture_src has _llvm-xray-7' {
    assert "$asrc/_llvm-xray-7" is_file
}

@test 'architecture_src has _llvm-xray-8' {
    assert "$asrc/_llvm-xray-8" is_file
}

@test 'architecture_src has _llvm-xray-9' {
    assert "$asrc/_llvm-xray-9" is_file
}

@test 'architecture_src has _llvm-xray12' {
    assert "$asrc/_llvm-xray12" is_file
}

@test 'architecture_src has _x86_64-apple-darwin17.7.0-c++-8' {
    assert "$asrc/_x86_64-apple-darwin17.7.0-c++-8" is_file
}

@test 'architecture_src has _x86_64-apple-darwin17.7.0-g++-8' {
    assert "$asrc/_x86_64-apple-darwin17.7.0-g++-8" is_file
}

@test 'architecture_src has _x86_64-apple-darwin17.7.0-gcc-8.2.0' {
    assert "$asrc/_x86_64-apple-darwin17.7.0-gcc-8.2.0" is_file
}

@test 'architecture_src has _x86_64-apple-darwin17.7.0-gfortran-8' {
    assert "$asrc/_x86_64-apple-darwin17.7.0-gfortran-8" is_file
}

@test 'architecture_src has _x86_64-apple-darwin18-c++-9' {
    assert "$asrc/_x86_64-apple-darwin18-c++-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin18-gcc-nm-9' {
    assert "$asrc/_x86_64-apple-darwin18-gcc-nm-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin18-gfortran-9' {
    assert "$asrc/_x86_64-apple-darwin18-gfortran-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin19-g++-9' {
    assert "$asrc/_x86_64-apple-darwin19-g++-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin19-gcc-9' {
    assert "$asrc/_x86_64-apple-darwin19-gcc-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin19-gfortran-9' {
    assert "$asrc/_x86_64-apple-darwin19-gfortran-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-c++-10' {
    assert "$asrc/_x86_64-apple-darwin20-c++-10" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-c++-11' {
    assert "$asrc/_x86_64-apple-darwin20-c++-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-g++-10' {
    assert "$asrc/_x86_64-apple-darwin20-g++-10" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gcc-10.2.0' {
    assert "$asrc/_x86_64-apple-darwin20-gcc-10.2.0" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gcc-11' {
    assert "$asrc/_x86_64-apple-darwin20-gcc-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gcc-11.1.0' {
    assert "$asrc/_x86_64-apple-darwin20-gcc-11.1.0" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gcc-11.2.0' {
    assert "$asrc/_x86_64-apple-darwin20-gcc-11.2.0" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gdc-11' {
    assert "$asrc/_x86_64-apple-darwin20-gdc-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gfortran-10' {
    assert "$asrc/_x86_64-apple-darwin20-gfortran-10" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gfortran-11' {
    assert "$asrc/_x86_64-apple-darwin20-gfortran-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-c++-12' {
    assert "$asrc/_x86_64-apple-darwin21-c++-12" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-g++-11' {
    assert "$asrc/_x86_64-apple-darwin21-g++-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-g++-12' {
    assert "$asrc/_x86_64-apple-darwin21-g++-12" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-gcc-11' {
    assert "$asrc/_x86_64-apple-darwin21-gcc-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-gcc-nm-11' {
    assert "$asrc/_x86_64-apple-darwin21-gcc-nm-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-gcc-tmp' {
    assert "$asrc/_x86_64-apple-darwin21-gcc-tmp" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-gdc-11' {
    assert "$asrc/_x86_64-apple-darwin21-gdc-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-gfortran-11' {
    assert "$asrc/_x86_64-apple-darwin21-gfortran-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-gfortran-12' {
    assert "$asrc/_x86_64-apple-darwin21-gfortran-12" is_file
}

@test 'architecture_src has _x86_64-apple-darwin22-gcc-13' {
    assert "$asrc/_x86_64-apple-darwin22-gcc-13" is_file
}

@test 'architecture_src has _x86_64-apple-darwin22-gfortran-13' {
    assert "$asrc/_x86_64-apple-darwin22-gfortran-13" is_file
}

@test 'architecture_src has _x86_64-apple-darwin23-c++-14' {
    assert "$asrc/_x86_64-apple-darwin23-c++-14" is_file
}

@test 'architecture_src has _x86_64-apple-darwin23-g++-14' {
    assert "$asrc/_x86_64-apple-darwin23-g++-14" is_file
}

@test 'architecture_src has _x86_64-apple-darwin23-gcc-14' {
    assert "$asrc/_x86_64-apple-darwin23-gcc-14" is_file
}

@test 'architecture_src has _x86_64-apple-darwin23-gfortran-14' {
    assert "$asrc/_x86_64-apple-darwin23-gfortran-14" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-addr2line' {
    assert "$asrc/_x86_64-linux-gnu-addr2line" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-ar' {
    assert "$asrc/_x86_64-linux-gnu-ar" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-as' {
    assert "$asrc/_x86_64-linux-gnu-as" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp-10' {
    assert "$asrc/_x86_64-linux-gnu-cpp-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp-5' {
    assert "$asrc/_x86_64-linux-gnu-cpp-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp-6' {
    assert "$asrc/_x86_64-linux-gnu-cpp-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp-7' {
    assert "$asrc/_x86_64-linux-gnu-cpp-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp-8' {
    assert "$asrc/_x86_64-linux-gnu-cpp-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp-9' {
    assert "$asrc/_x86_64-linux-gnu-cpp-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-elfedit' {
    assert "$asrc/_x86_64-linux-gnu-elfedit" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++' {
    assert "$asrc/_x86_64-linux-gnu-g++" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++-10' {
    assert "$asrc/_x86_64-linux-gnu-g++-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++-5' {
    assert "$asrc/_x86_64-linux-gnu-g++-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++-6' {
    assert "$asrc/_x86_64-linux-gnu-g++-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++-7' {
    assert "$asrc/_x86_64-linux-gnu-g++-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++-8' {
    assert "$asrc/_x86_64-linux-gnu-g++-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-g++-9' {
    assert "$asrc/_x86_64-linux-gnu-g++-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc' {
    assert "$asrc/_x86_64-linux-gnu-gcc" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-10' {
    assert "$asrc/_x86_64-linux-gnu-gcc-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-5' {
    assert "$asrc/_x86_64-linux-gnu-gcc-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-6' {
    assert "$asrc/_x86_64-linux-gnu-gcc-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-7' {
    assert "$asrc/_x86_64-linux-gnu-gcc-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-8' {
    assert "$asrc/_x86_64-linux-gnu-gcc-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-9' {
    assert "$asrc/_x86_64-linux-gnu-gcc-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar-5' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar-6' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar-8' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar-9' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm-10' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm-5' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm-6' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm-8' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm-9' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib-10' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib-5' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib-7' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib-8' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib-9' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-10' {
    assert "$asrc/_x86_64-linux-gnu-gcov-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-6' {
    assert "$asrc/_x86_64-linux-gnu-gcov-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-dump' {
    assert "$asrc/_x86_64-linux-gnu-gcov-dump" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-dump-10' {
    assert "$asrc/_x86_64-linux-gnu-gcov-dump-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-dump-6' {
    assert "$asrc/_x86_64-linux-gnu-gcov-dump-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-dump-7' {
    assert "$asrc/_x86_64-linux-gnu-gcov-dump-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-dump-8' {
    assert "$asrc/_x86_64-linux-gnu-gcov-dump-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-dump-9' {
    assert "$asrc/_x86_64-linux-gnu-gcov-dump-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool-10' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool-5' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool-7' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool-8' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool-9' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-ld' {
    assert "$asrc/_x86_64-linux-gnu-ld" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-ld.bfd' {
    assert "$asrc/_x86_64-linux-gnu-ld.bfd" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-ld.gold' {
    assert "$asrc/_x86_64-linux-gnu-ld.gold" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-lto-dump-10' {
    assert "$asrc/_x86_64-linux-gnu-lto-dump-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-nm' {
    assert "$asrc/_x86_64-linux-gnu-nm" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-objcopy' {
    assert "$asrc/_x86_64-linux-gnu-objcopy" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-objdump' {
    assert "$asrc/_x86_64-linux-gnu-objdump" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-pkg-config' {
    assert "$asrc/_x86_64-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python-config' {
    assert "$asrc/_x86_64-linux-gnu-python-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python2-config' {
    assert "$asrc/_x86_64-linux-gnu-python2-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python2.7-config' {
    assert "$asrc/_x86_64-linux-gnu-python2.7-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3-config' {
    assert "$asrc/_x86_64-linux-gnu-python3-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3.6-config' {
    assert "$asrc/_x86_64-linux-gnu-python3.6-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3.6m-config' {
    assert "$asrc/_x86_64-linux-gnu-python3.6m-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3.7-config' {
    assert "$asrc/_x86_64-linux-gnu-python3.7-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3.7m-config' {
    assert "$asrc/_x86_64-linux-gnu-python3.7m-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3.9-config' {
    assert "$asrc/_x86_64-linux-gnu-python3.9-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-qmake' {
    assert "$asrc/_x86_64-linux-gnu-qmake" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-ranlib' {
    assert "$asrc/_x86_64-linux-gnu-ranlib" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-strip' {
    assert "$asrc/_x86_64-linux-gnu-strip" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-valac-0.48' {
    assert "$asrc/_x86_64-linux-gnu-valac-0.48" is_file
}

@test 'architecture_src has _x86_64-pc-linux-gnu-pkg-config' {
    assert "$asrc/_x86_64-pc-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _x86_64-redhat-linux-c++' {
    assert "$asrc/_x86_64-redhat-linux-c++" is_file
}

@test 'architecture_src has _x86_64-redhat-linux-g++' {
    assert "$asrc/_x86_64-redhat-linux-g++" is_file
}

@test 'architecture_src has _x86_64-redhat-linux-gcc-8' {
    assert "$asrc/_x86_64-redhat-linux-gcc-8" is_file
}

@test 'architecture_src has _x86_64-redhat-linux-gnu-pkg-config' {
    assert "$asrc/_x86_64-redhat-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-addr2line' {
    assert "$asrc/_x86_64-w64-mingw32-addr2line" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-ar' {
    assert "$asrc/_x86_64-w64-mingw32-ar" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-as' {
    assert "$asrc/_x86_64-w64-mingw32-as" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-c++-win32' {
    assert "$asrc/_x86_64-w64-mingw32-c++-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-c++filt' {
    assert "$asrc/_x86_64-w64-mingw32-c++filt" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-cpp' {
    assert "$asrc/_x86_64-w64-mingw32-cpp" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-cpp-posix' {
    assert "$asrc/_x86_64-w64-mingw32-cpp-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-cpp-win32' {
    assert "$asrc/_x86_64-w64-mingw32-cpp-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-dlltool' {
    assert "$asrc/_x86_64-w64-mingw32-dlltool" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-dllwrap' {
    assert "$asrc/_x86_64-w64-mingw32-dllwrap" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-elfedit' {
    assert "$asrc/_x86_64-w64-mingw32-elfedit" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-g++' {
    assert "$asrc/_x86_64-w64-mingw32-g++" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-g++-win32' {
    assert "$asrc/_x86_64-w64-mingw32-g++-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc' {
    assert "$asrc/_x86_64-w64-mingw32-gcc" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-8' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-8" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-8.3-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-8.3-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-ar' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-ar" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-ar-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-ar-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-ar-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-ar-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-nm' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-nm" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-nm-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-nm-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-ranlib' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-ranlib" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-ranlib-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-ranlib-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov' {
    assert "$asrc/_x86_64-w64-mingw32-gcov" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-dump-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-dump-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-dump-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-dump-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-tool-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-tool-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-tool-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-tool-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gprof' {
    assert "$asrc/_x86_64-w64-mingw32-gprof" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-ld' {
    assert "$asrc/_x86_64-w64-mingw32-ld" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-ld.bfd' {
    assert "$asrc/_x86_64-w64-mingw32-ld.bfd" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-nm' {
    assert "$asrc/_x86_64-w64-mingw32-nm" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-objcopy' {
    assert "$asrc/_x86_64-w64-mingw32-objcopy" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-objdump' {
    assert "$asrc/_x86_64-w64-mingw32-objdump" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-ranlib' {
    assert "$asrc/_x86_64-w64-mingw32-ranlib" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-readelf' {
    assert "$asrc/_x86_64-w64-mingw32-readelf" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-size' {
    assert "$asrc/_x86_64-w64-mingw32-size" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-strings' {
    assert "$asrc/_x86_64-w64-mingw32-strings" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-windmc' {
    assert "$asrc/_x86_64-w64-mingw32-windmc" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-windres' {
    assert "$asrc/_x86_64-w64-mingw32-windres" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-addr2line' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-addr2line" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-ar' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-ar" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-dlltool' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-dlltool" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-dllwrap' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-dllwrap" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-elfedit' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-elfedit" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-gprof' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-gprof" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-ld' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-ld" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-nm' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-nm" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-objcopy' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-objcopy" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-objdump' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-objdump" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-ranlib' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-ranlib" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-readelf' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-readelf" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-size' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-size" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-strings' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-strings" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-strip' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-strip" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-windmc' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-windmc" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-windres' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-windres" is_file
}

@test 'architecture_src has _x86_energy_perf_policy' {
    assert "$asrc/_x86_energy_perf_policy" is_file
}

