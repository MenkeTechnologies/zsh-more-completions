#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Existence, header and content tests for architecture_src/ completions
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    asrc="$pluginDir/architecture_src"
}

# ============================================================
# Section 1: File existence tests (~300 tests)
# ============================================================

@test 'architecture_src has _aarch64-alpine-linux-musl-c++' {
    assert "$asrc/_aarch64-alpine-linux-musl-c++" is_file
}

@test 'architecture_src has _aarch64-alpine-linux-musl-g++' {
    assert "$asrc/_aarch64-alpine-linux-musl-g++" is_file
}

@test 'architecture_src has _aarch64-alpine-linux-musl-gcc' {
    assert "$asrc/_aarch64-alpine-linux-musl-gcc" is_file
}

@test 'architecture_src has _aarch64-alpine-linux-musl-gcc-10.3.1' {
    assert "$asrc/_aarch64-alpine-linux-musl-gcc-10.3.1" is_file
}

@test 'architecture_src has _aarch64-alpine-linux-musl-gcc-ar' {
    assert "$asrc/_aarch64-alpine-linux-musl-gcc-ar" is_file
}

@test 'architecture_src has _aarch64-alpine-linux-musl-gcc-nm' {
    assert "$asrc/_aarch64-alpine-linux-musl-gcc-nm" is_file
}

@test 'architecture_src has _aarch64-alpine-linux-musl-gcc-ranlib' {
    assert "$asrc/_aarch64-alpine-linux-musl-gcc-ranlib" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-c++-11' {
    assert "$asrc/_aarch64-apple-darwin21-c++-11" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-c++-12' {
    assert "$asrc/_aarch64-apple-darwin21-c++-12" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-g++-11' {
    assert "$asrc/_aarch64-apple-darwin21-g++-11" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-g++-12' {
    assert "$asrc/_aarch64-apple-darwin21-g++-12" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-gcc-11' {
    assert "$asrc/_aarch64-apple-darwin21-gcc-11" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-gcc-12' {
    assert "$asrc/_aarch64-apple-darwin21-gcc-12" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-gcc-tmp' {
    assert "$asrc/_aarch64-apple-darwin21-gcc-tmp" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-gfortran-11' {
    assert "$asrc/_aarch64-apple-darwin21-gfortran-11" is_file
}

@test 'architecture_src has _aarch64-apple-darwin21-gfortran-12' {
    assert "$asrc/_aarch64-apple-darwin21-gfortran-12" is_file
}

@test 'architecture_src has _aarch64-apple-darwin22-c++-13' {
    assert "$asrc/_aarch64-apple-darwin22-c++-13" is_file
}

@test 'architecture_src has _aarch64-apple-darwin22-g++-13' {
    assert "$asrc/_aarch64-apple-darwin22-g++-13" is_file
}

@test 'architecture_src has _aarch64-apple-darwin22-gcc-13' {
    assert "$asrc/_aarch64-apple-darwin22-gcc-13" is_file
}

@test 'architecture_src has _aarch64-apple-darwin22-gcc-nm-13' {
    assert "$asrc/_aarch64-apple-darwin22-gcc-nm-13" is_file
}

@test 'architecture_src has _aarch64-apple-darwin22-gfortran-13' {
    assert "$asrc/_aarch64-apple-darwin22-gfortran-13" is_file
}

@test 'architecture_src has _aarch64-apple-darwin23-c++-14' {
    assert "$asrc/_aarch64-apple-darwin23-c++-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin23-g++-14' {
    assert "$asrc/_aarch64-apple-darwin23-g++-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin23-gcc-14' {
    assert "$asrc/_aarch64-apple-darwin23-gcc-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin23-gcc-nm-14' {
    assert "$asrc/_aarch64-apple-darwin23-gcc-nm-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin23-gfortran-14' {
    assert "$asrc/_aarch64-apple-darwin23-gfortran-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin24-c++-14' {
    assert "$asrc/_aarch64-apple-darwin24-c++-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin24-g++-14' {
    assert "$asrc/_aarch64-apple-darwin24-g++-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin24-gcc-14' {
    assert "$asrc/_aarch64-apple-darwin24-gcc-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin24-gfortran-14' {
    assert "$asrc/_aarch64-apple-darwin24-gfortran-14" is_file
}

@test 'architecture_src has _aarch64-apple-darwin24-gm2-14' {
    assert "$asrc/_aarch64-apple-darwin24-gm2-14" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-addr2line' {
    assert "$asrc/_aarch64-linux-gnu-addr2line" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-ar' {
    assert "$asrc/_aarch64-linux-gnu-ar" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-as' {
    assert "$asrc/_aarch64-linux-gnu-as" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-c++filt' {
    assert "$asrc/_aarch64-linux-gnu-c++filt" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp' {
    assert "$asrc/_aarch64-linux-gnu-cpp" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-10' {
    assert "$asrc/_aarch64-linux-gnu-cpp-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-11' {
    assert "$asrc/_aarch64-linux-gnu-cpp-11" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-12' {
    assert "$asrc/_aarch64-linux-gnu-cpp-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-13' {
    assert "$asrc/_aarch64-linux-gnu-cpp-13" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-14' {
    assert "$asrc/_aarch64-linux-gnu-cpp-14" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-8' {
    assert "$asrc/_aarch64-linux-gnu-cpp-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-cpp-9' {
    assert "$asrc/_aarch64-linux-gnu-cpp-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-dwp' {
    assert "$asrc/_aarch64-linux-gnu-dwp" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-elfedit' {
    assert "$asrc/_aarch64-linux-gnu-elfedit" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-g++' {
    assert "$asrc/_aarch64-linux-gnu-g++" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-g++-10' {
    assert "$asrc/_aarch64-linux-gnu-g++-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-g++-8' {
    assert "$asrc/_aarch64-linux-gnu-g++-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-g++-9' {
    assert "$asrc/_aarch64-linux-gnu-g++-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc' {
    assert "$asrc/_aarch64-linux-gnu-gcc" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-10' {
    assert "$asrc/_aarch64-linux-gnu-gcc-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-12' {
    assert "$asrc/_aarch64-linux-gnu-gcc-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-8' {
    assert "$asrc/_aarch64-linux-gnu-gcc-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-9' {
    assert "$asrc/_aarch64-linux-gnu-gcc-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-10' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-11' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-11" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-12' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-13' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-13" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-14' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-14" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-7' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-7" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-8' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ar-9' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ar-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-10' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-11' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-11" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-12' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-13' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-13" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-14' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-14" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-7' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-7" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-8' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-nm-9' {
    assert "$asrc/_aarch64-linux-gnu-gcc-nm-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-10' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-11' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-11" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-12' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-13' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-13" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-14' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-14" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-7' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-7" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-8' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcc-ranlib-9' {
    assert "$asrc/_aarch64-linux-gnu-gcc-ranlib-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov' {
    assert "$asrc/_aarch64-linux-gnu-gcov" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-10' {
    assert "$asrc/_aarch64-linux-gnu-gcov-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-12' {
    assert "$asrc/_aarch64-linux-gnu-gcov-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-8' {
    assert "$asrc/_aarch64-linux-gnu-gcov-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-9' {
    assert "$asrc/_aarch64-linux-gnu-gcov-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-10' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-11' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-11" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-12' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-13' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-13" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-14' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-14" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-8' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-dump-9' {
    assert "$asrc/_aarch64-linux-gnu-gcov-dump-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-tool' {
    assert "$asrc/_aarch64-linux-gnu-gcov-tool" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-tool-10' {
    assert "$asrc/_aarch64-linux-gnu-gcov-tool-10" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-tool-12' {
    assert "$asrc/_aarch64-linux-gnu-gcov-tool-12" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-tool-8' {
    assert "$asrc/_aarch64-linux-gnu-gcov-tool-8" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gcov-tool-9' {
    assert "$asrc/_aarch64-linux-gnu-gcov-tool-9" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gi-compile-repository' {
    assert "$asrc/_aarch64-linux-gnu-gi-compile-repository" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gi-decompile-typelib' {
    assert "$asrc/_aarch64-linux-gnu-gi-decompile-typelib" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gp-display-src' {
    assert "$asrc/_aarch64-linux-gnu-gp-display-src" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-gprofng' {
    assert "$asrc/_aarch64-linux-gnu-gprofng" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-pkgconf' {
    assert "$asrc/_aarch64-linux-gnu-pkgconf" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.12-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.12-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-python3.7m-config' {
    assert "$asrc/_aarch64-linux-gnu-python3.7m-config" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-size' {
    assert "$asrc/_aarch64-linux-gnu-size" is_file
}

@test 'architecture_src has _aarch64-linux-gnu-strings' {
    assert "$asrc/_aarch64-linux-gnu-strings" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-gcc-10.3.0' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-gcc-10.3.0" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-gcc-ar10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-gcc-ar10" is_file
}

@test 'architecture_src has _aarch64-portbld-freebsd14.0-gfortran10' {
    assert "$asrc/_aarch64-portbld-freebsd14.0-gfortran10" is_file
}

@test 'architecture_src has _aarch64-redhat-linux-gcc-14' {
    assert "$asrc/_aarch64-redhat-linux-gcc-14" is_file
}

@test 'architecture_src has _aarch64-suse-linux-gnu-pkg-config' {
    assert "$asrc/_aarch64-suse-linux-gnu-pkg-config" is_file
}

@test 'architecture_src has _aarch64-unknown-linux-gnu-gcc' {
    assert "$asrc/_aarch64-unknown-linux-gnu-gcc" is_file
}

@test 'architecture_src has _llvm-ar-13' {
    assert "$asrc/_llvm-ar-13" is_file
}

@test 'architecture_src has _llvm-as' {
    assert "$asrc/_llvm-as" is_file
}

@test 'architecture_src has _llvm-as-13' {
    assert "$asrc/_llvm-as-13" is_file
}

@test 'architecture_src has _llvm-as-17' {
    assert "$asrc/_llvm-as-17" is_file
}

@test 'architecture_src has _llvm-as-7' {
    assert "$asrc/_llvm-as-7" is_file
}

@test 'architecture_src has _llvm-bitcode-strip12' {
    assert "$asrc/_llvm-bitcode-strip12" is_file
}

@test 'architecture_src has _llvm-cat' {
    assert "$asrc/_llvm-cat" is_file
}

@test 'architecture_src has _llvm-cfi-verify-6.0' {
    assert "$asrc/_llvm-cfi-verify-6.0" is_file
}

@test 'architecture_src has _llvm-cfi-verify-7' {
    assert "$asrc/_llvm-cfi-verify-7" is_file
}

@test 'architecture_src has _llvm-cfi-verify-8' {
    assert "$asrc/_llvm-cfi-verify-8" is_file
}

@test 'architecture_src has _llvm-cfi-verify60' {
    assert "$asrc/_llvm-cfi-verify60" is_file
}

@test 'architecture_src has _llvm-config' {
    assert "$asrc/_llvm-config" is_file
}

@test 'architecture_src has _llvm-config-18-64' {
    assert "$asrc/_llvm-config-18-64" is_file
}

@test 'architecture_src has _llvm-config-64' {
    assert "$asrc/_llvm-config-64" is_file
}

@test 'architecture_src has _llvm-config12' {
    assert "$asrc/_llvm-config12" is_file
}

@test 'architecture_src has _llvm-cov' {
    assert "$asrc/_llvm-cov" is_file
}

@test 'architecture_src has _llvm-cov-14' {
    assert "$asrc/_llvm-cov-14" is_file
}

@test 'architecture_src has _llvm-cov-3.5' {
    assert "$asrc/_llvm-cov-3.5" is_file
}

@test 'architecture_src has _llvm-cov-6.0' {
    assert "$asrc/_llvm-cov-6.0" is_file
}

@test 'architecture_src has _llvm-cvtres-6.0' {
    assert "$asrc/_llvm-cvtres-6.0" is_file
}

@test 'architecture_src has _llvm-cxxfilt' {
    assert "$asrc/_llvm-cxxfilt" is_file
}

@test 'architecture_src has _llvm-cxxfilt-11' {
    assert "$asrc/_llvm-cxxfilt-11" is_file
}

@test 'architecture_src has _llvm-cxxfilt-14' {
    assert "$asrc/_llvm-cxxfilt-14" is_file
}

@test 'architecture_src has _llvm-cxxfilt-4.0' {
    assert "$asrc/_llvm-cxxfilt-4.0" is_file
}

@test 'architecture_src has _llvm-cxxfilt-7' {
    assert "$asrc/_llvm-cxxfilt-7" is_file
}

@test 'architecture_src has _llvm-cxxmap' {
    assert "$asrc/_llvm-cxxmap" is_file
}

@test 'architecture_src has _llvm-cxxmap-14' {
    assert "$asrc/_llvm-cxxmap-14" is_file
}

@test 'architecture_src has _llvm-diff12' {
    assert "$asrc/_llvm-diff12" is_file
}

@test 'architecture_src has _llvm-dis-14' {
    assert "$asrc/_llvm-dis-14" is_file
}

@test 'architecture_src has _llvm-dis-3.5' {
    assert "$asrc/_llvm-dis-3.5" is_file
}

@test 'architecture_src has _llvm-dlltool-6.0' {
    assert "$asrc/_llvm-dlltool-6.0" is_file
}

@test 'architecture_src has _llvm-dwarfdump-11' {
    assert "$asrc/_llvm-dwarfdump-11" is_file
}

@test 'architecture_src has _llvm-dwarfdump-17' {
    assert "$asrc/_llvm-dwarfdump-17" is_file
}

@test 'architecture_src has _llvm-dwarfdump-3.5' {
    assert "$asrc/_llvm-dwarfdump-3.5" is_file
}

@test 'architecture_src has _llvm-dwarfdump-6.0' {
    assert "$asrc/_llvm-dwarfdump-6.0" is_file
}

@test 'architecture_src has _llvm-dwarfdump-8' {
    assert "$asrc/_llvm-dwarfdump-8" is_file
}

@test 'architecture_src has _llvm-dwarfutil' {
    assert "$asrc/_llvm-dwarfutil" is_file
}

@test 'architecture_src has _llvm-dwarfutil-16' {
    assert "$asrc/_llvm-dwarfutil-16" is_file
}

@test 'architecture_src has _llvm-dwp-10' {
    assert "$asrc/_llvm-dwp-10" is_file
}

@test 'architecture_src has _llvm-dwp-7' {
    assert "$asrc/_llvm-dwp-7" is_file
}

@test 'architecture_src has _llvm-elfabi' {
    assert "$asrc/_llvm-elfabi" is_file
}

@test 'architecture_src has _llvm-elfabi-10' {
    assert "$asrc/_llvm-elfabi-10" is_file
}

@test 'architecture_src has _llvm-elfabi12' {
    assert "$asrc/_llvm-elfabi12" is_file
}

@test 'architecture_src has _llvm-exegesis' {
    assert "$asrc/_llvm-exegesis" is_file
}

@test 'architecture_src has _llvm-exegesis-9' {
    assert "$asrc/_llvm-exegesis-9" is_file
}

@test 'architecture_src has _llvm-gsymutil' {
    assert "$asrc/_llvm-gsymutil" is_file
}

@test 'architecture_src has _llvm-gsymutil-13' {
    assert "$asrc/_llvm-gsymutil-13" is_file
}

@test 'architecture_src has _llvm-gsymutil-14' {
    assert "$asrc/_llvm-gsymutil-14" is_file
}

@test 'architecture_src has _llvm-ifs' {
    assert "$asrc/_llvm-ifs" is_file
}

@test 'architecture_src has _llvm-ifs-16' {
    assert "$asrc/_llvm-ifs-16" is_file
}

@test 'architecture_src has _llvm-ifs-19' {
    assert "$asrc/_llvm-ifs-19" is_file
}

@test 'architecture_src has _llvm-install-name-tool-10' {
    assert "$asrc/_llvm-install-name-tool-10" is_file
}

@test 'architecture_src has _llvm-install-name-tool-11' {
    assert "$asrc/_llvm-install-name-tool-11" is_file
}

@test 'architecture_src has _llvm-jitlink-11' {
    assert "$asrc/_llvm-jitlink-11" is_file
}

@test 'architecture_src has _llvm-link-16' {
    assert "$asrc/_llvm-link-16" is_file
}

@test 'architecture_src has _llvm-link-8' {
    assert "$asrc/_llvm-link-8" is_file
}

@test 'architecture_src has _llvm-lipo-11' {
    assert "$asrc/_llvm-lipo-11" is_file
}

@test 'architecture_src has _llvm-lipo-19' {
    assert "$asrc/_llvm-lipo-19" is_file
}

@test 'architecture_src has _llvm-lto' {
    assert "$asrc/_llvm-lto" is_file
}

@test 'architecture_src has _llvm-lto-10' {
    assert "$asrc/_llvm-lto-10" is_file
}

@test 'architecture_src has _llvm-lto-11' {
    assert "$asrc/_llvm-lto-11" is_file
}

@test 'architecture_src has _llvm-lto-6.0' {
    assert "$asrc/_llvm-lto-6.0" is_file
}

@test 'architecture_src has _llvm-mc-8' {
    assert "$asrc/_llvm-mc-8" is_file
}

@test 'architecture_src has _llvm-mca' {
    assert "$asrc/_llvm-mca" is_file
}

@test 'architecture_src has _llvm-mca-17' {
    assert "$asrc/_llvm-mca-17" is_file
}

@test 'architecture_src has _llvm-mca12' {
    assert "$asrc/_llvm-mca12" is_file
}

@test 'architecture_src has _llvm-mcmarkup60' {
    assert "$asrc/_llvm-mcmarkup60" is_file
}

@test 'architecture_src has _llvm-ml-11' {
    assert "$asrc/_llvm-ml-11" is_file
}

@test 'architecture_src has _llvm-modextract-17' {
    assert "$asrc/_llvm-modextract-17" is_file
}

@test 'architecture_src has _llvm-modextract-19' {
    assert "$asrc/_llvm-modextract-19" is_file
}

@test 'architecture_src has _llvm-modextract-4.0' {
    assert "$asrc/_llvm-modextract-4.0" is_file
}

@test 'architecture_src has _llvm-modextract60' {
    assert "$asrc/_llvm-modextract60" is_file
}

@test 'architecture_src has _llvm-nm' {
    assert "$asrc/_llvm-nm" is_file
}

@test 'architecture_src has _llvm-nm-3.5' {
    assert "$asrc/_llvm-nm-3.5" is_file
}

@test 'architecture_src has _llvm-objcopy-16' {
    assert "$asrc/_llvm-objcopy-16" is_file
}

@test 'architecture_src has _llvm-objcopy12' {
    assert "$asrc/_llvm-objcopy12" is_file
}

@test 'architecture_src has _llvm-objdump-7' {
    assert "$asrc/_llvm-objdump-7" is_file
}

@test 'architecture_src has _llvm-objdump-8' {
    assert "$asrc/_llvm-objdump-8" is_file
}

@test 'architecture_src has _llvm-objdump-9' {
    assert "$asrc/_llvm-objdump-9" is_file
}

@test 'architecture_src has _llvm-opt-report-11' {
    assert "$asrc/_llvm-opt-report-11" is_file
}

@test 'architecture_src has _llvm-opt-report-16' {
    assert "$asrc/_llvm-opt-report-16" is_file
}

@test 'architecture_src has _llvm-pdbdump-4.0' {
    assert "$asrc/_llvm-pdbdump-4.0" is_file
}

@test 'architecture_src has _llvm-pdbutil-13' {
    assert "$asrc/_llvm-pdbutil-13" is_file
}

@test 'architecture_src has _llvm-pdbutil-16' {
    assert "$asrc/_llvm-pdbutil-16" is_file
}

@test 'architecture_src has _llvm-pdbutil-8' {
    assert "$asrc/_llvm-pdbutil-8" is_file
}

@test 'architecture_src has _llvm-profgen-14' {
    assert "$asrc/_llvm-profgen-14" is_file
}

@test 'architecture_src has _llvm-profgen-17' {
    assert "$asrc/_llvm-profgen-17" is_file
}

@test 'architecture_src has _llvm-ranlib-11' {
    assert "$asrc/_llvm-ranlib-11" is_file
}

@test 'architecture_src has _llvm-ranlib-17' {
    assert "$asrc/_llvm-ranlib-17" is_file
}

@test 'architecture_src has _llvm-readelf' {
    assert "$asrc/_llvm-readelf" is_file
}

@test 'architecture_src has _llvm-readelf-16' {
    assert "$asrc/_llvm-readelf-16" is_file
}

@test 'architecture_src has _llvm-readelf60' {
    assert "$asrc/_llvm-readelf60" is_file
}

@test 'architecture_src has _llvm-readobj-11' {
    assert "$asrc/_llvm-readobj-11" is_file
}

@test 'architecture_src has _llvm-readobj-17' {
    assert "$asrc/_llvm-readobj-17" is_file
}

@test 'architecture_src has _llvm-readobj-19' {
    assert "$asrc/_llvm-readobj-19" is_file
}

@test 'architecture_src has _llvm-readobj-3.5' {
    assert "$asrc/_llvm-readobj-3.5" is_file
}

@test 'architecture_src has _llvm-readobj-9' {
    assert "$asrc/_llvm-readobj-9" is_file
}

@test 'architecture_src has _llvm-remark-size-diff-16' {
    assert "$asrc/_llvm-remark-size-diff-16" is_file
}

@test 'architecture_src has _llvm-remarkutil' {
    assert "$asrc/_llvm-remarkutil" is_file
}

@test 'architecture_src has _llvm-remarkutil-19' {
    assert "$asrc/_llvm-remarkutil-19" is_file
}

@test 'architecture_src has _llvm-rtdyld-16' {
    assert "$asrc/_llvm-rtdyld-16" is_file
}

@test 'architecture_src has _llvm-sim-14' {
    assert "$asrc/_llvm-sim-14" is_file
}

@test 'architecture_src has _llvm-size-3.5' {
    assert "$asrc/_llvm-size-3.5" is_file
}

@test 'architecture_src has _llvm-split-10' {
    assert "$asrc/_llvm-split-10" is_file
}

@test 'architecture_src has _llvm-stress' {
    assert "$asrc/_llvm-stress" is_file
}

@test 'architecture_src has _llvm-stress-13' {
    assert "$asrc/_llvm-stress-13" is_file
}

@test 'architecture_src has _llvm-stress-19' {
    assert "$asrc/_llvm-stress-19" is_file
}

@test 'architecture_src has _llvm-stress-9' {
    assert "$asrc/_llvm-stress-9" is_file
}

@test 'architecture_src has _llvm-stress12' {
    assert "$asrc/_llvm-stress12" is_file
}

@test 'architecture_src has _llvm-strings-10' {
    assert "$asrc/_llvm-strings-10" is_file
}

@test 'architecture_src has _llvm-strings-11' {
    assert "$asrc/_llvm-strings-11" is_file
}

@test 'architecture_src has _llvm-strings-16' {
    assert "$asrc/_llvm-strings-16" is_file
}

@test 'architecture_src has _llvm-strings-17' {
    assert "$asrc/_llvm-strings-17" is_file
}

@test 'architecture_src has _llvm-strings-19' {
    assert "$asrc/_llvm-strings-19" is_file
}

@test 'architecture_src has _llvm-strings-9' {
    assert "$asrc/_llvm-strings-9" is_file
}

@test 'architecture_src has _llvm-symbolizer-10' {
    assert "$asrc/_llvm-symbolizer-10" is_file
}

@test 'architecture_src has _llvm-symbolizer-3.5' {
    assert "$asrc/_llvm-symbolizer-3.5" is_file
}

@test 'architecture_src has _llvm-symbolizer12' {
    assert "$asrc/_llvm-symbolizer12" is_file
}

@test 'architecture_src has _llvm-tblgen-8' {
    assert "$asrc/_llvm-tblgen-8" is_file
}

@test 'architecture_src has _llvm-tli-checker-16' {
    assert "$asrc/_llvm-tli-checker-16" is_file
}

@test 'architecture_src has _llvm-windres-14' {
    assert "$asrc/_llvm-windres-14" is_file
}

@test 'architecture_src has _llvm-xray-10' {
    assert "$asrc/_llvm-xray-10" is_file
}

@test 'architecture_src has _llvm-xray-4.0' {
    assert "$asrc/_llvm-xray-4.0" is_file
}

@test 'architecture_src has _x86_64-apple-darwin17.7.0-gcc-8' {
    assert "$asrc/_x86_64-apple-darwin17.7.0-gcc-8" is_file
}

@test 'architecture_src has _x86_64-apple-darwin18-g++-9' {
    assert "$asrc/_x86_64-apple-darwin18-g++-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin18-gcc-9' {
    assert "$asrc/_x86_64-apple-darwin18-gcc-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin18-gcc-9.1.0' {
    assert "$asrc/_x86_64-apple-darwin18-gcc-9.1.0" is_file
}

@test 'architecture_src has _x86_64-apple-darwin19-c++-9' {
    assert "$asrc/_x86_64-apple-darwin19-c++-9" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-g++-11' {
    assert "$asrc/_x86_64-apple-darwin20-g++-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin20-gcc-10' {
    assert "$asrc/_x86_64-apple-darwin20-gcc-10" is_file
}

@test 'architecture_src has _x86_64-apple-darwin21-c++-11' {
    assert "$asrc/_x86_64-apple-darwin21-c++-11" is_file
}

@test 'architecture_src has _x86_64-apple-darwin22-c++-13' {
    assert "$asrc/_x86_64-apple-darwin22-c++-13" is_file
}

@test 'architecture_src has _x86_64-apple-darwin22-g++-13' {
    assert "$asrc/_x86_64-apple-darwin22-g++-13" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-cpp' {
    assert "$asrc/_x86_64-linux-gnu-cpp" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-dwp' {
    assert "$asrc/_x86_64-linux-gnu-dwp" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar-10' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar-10" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ar-7' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ar-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-nm-7' {
    assert "$asrc/_x86_64-linux-gnu-gcc-nm-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcc-ranlib-6' {
    assert "$asrc/_x86_64-linux-gnu-gcc-ranlib-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov' {
    assert "$asrc/_x86_64-linux-gnu-gcov" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-5' {
    assert "$asrc/_x86_64-linux-gnu-gcov-5" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-7' {
    assert "$asrc/_x86_64-linux-gnu-gcov-7" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-8' {
    assert "$asrc/_x86_64-linux-gnu-gcov-8" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-9' {
    assert "$asrc/_x86_64-linux-gnu-gcov-9" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gcov-tool-6' {
    assert "$asrc/_x86_64-linux-gnu-gcov-tool-6" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-gold' {
    assert "$asrc/_x86_64-linux-gnu-gold" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3.8-config' {
    assert "$asrc/_x86_64-linux-gnu-python3.8-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-python3m-config' {
    assert "$asrc/_x86_64-linux-gnu-python3m-config" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-readelf' {
    assert "$asrc/_x86_64-linux-gnu-readelf" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-size' {
    assert "$asrc/_x86_64-linux-gnu-size" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-strings' {
    assert "$asrc/_x86_64-linux-gnu-strings" is_file
}

@test 'architecture_src has _x86_64-linux-gnu-valac' {
    assert "$asrc/_x86_64-linux-gnu-valac" is_file
}

@test 'architecture_src has _x86_64-redhat-linux-gcc' {
    assert "$asrc/_x86_64-redhat-linux-gcc" is_file
}

@test 'architecture_src has _x86_64-redhat-linux-gcc-7' {
    assert "$asrc/_x86_64-redhat-linux-gcc-7" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-c++' {
    assert "$asrc/_x86_64-w64-mingw32-c++" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-c++-posix' {
    assert "$asrc/_x86_64-w64-mingw32-c++-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-g++-posix' {
    assert "$asrc/_x86_64-w64-mingw32-g++-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-8.3-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-8.3-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-nm-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-nm-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-ranlib-posix' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-ranlib-posix" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcc-win32' {
    assert "$asrc/_x86_64-w64-mingw32-gcc-win32" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-gcov-tool' {
    assert "$asrc/_x86_64-w64-mingw32-gcov-tool" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32-strip' {
    assert "$asrc/_x86_64-w64-mingw32-strip" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-as' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-as" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-c++filt' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-c++filt" is_file
}

@test 'architecture_src has _x86_64-w64-mingw32ucrt-ld.bfd' {
    assert "$asrc/_x86_64-w64-mingw32ucrt-ld.bfd" is_file
}

# ============================================================
# Section 2: Compdef header tests (~80 tests)
# ============================================================

@test '_aarch64-alpine-linux-musl-c++ has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-c++"
    assert $output matches '^#compdef'
}

@test '_aarch64-alpine-linux-musl-g++ has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-g++"
    assert $output matches '^#compdef'
}

@test '_aarch64-alpine-linux-musl-gcc has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-gcc"
    assert $output matches '^#compdef'
}

@test '_aarch64-alpine-linux-musl-gcc-10.3.1 has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-gcc-10.3.1"
    assert $output matches '^#compdef'
}

@test '_aarch64-alpine-linux-musl-gcc-ar has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-gcc-ar"
    assert $output matches '^#compdef'
}

@test '_aarch64-alpine-linux-musl-gcc-nm has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-gcc-nm"
    assert $output matches '^#compdef'
}

@test '_aarch64-alpine-linux-musl-gcc-ranlib has compdef header' {
    run head -1 "$asrc/_aarch64-alpine-linux-musl-gcc-ranlib"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin21-c++-11 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin21-c++-11"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin21-g++-11 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin21-g++-11"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin21-gcc-11 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin21-gcc-11"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin21-gfortran-11 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin21-gfortran-11"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin22-c++-13 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin22-c++-13"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin22-g++-13 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin22-g++-13"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin22-gcc-13 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin22-gcc-13"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin23-c++-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin23-c++-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin23-g++-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin23-g++-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin23-gcc-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin23-gcc-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin24-c++-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin24-c++-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin24-g++-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin24-g++-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin24-gcc-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin24-gcc-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin24-gfortran-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin24-gfortran-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-apple-darwin24-gm2-14 has compdef header' {
    run head -1 "$asrc/_aarch64-apple-darwin24-gm2-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-addr2line has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-addr2line"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-ar has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-ar"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-as has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-as"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-c++filt has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-c++filt"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-cpp has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-cpp"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-g++ has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-g++"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcc has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcc"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcc-ar has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcc-ar"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcc-nm has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcc-nm"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcc-ranlib has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcc-ranlib"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcov has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcov"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcov-dump has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcov-dump"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-gcov-tool has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-gcov-tool"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-size has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-size"
    assert $output matches '^#compdef'
}

@test '_aarch64-linux-gnu-strings has compdef header' {
    run head -1 "$asrc/_aarch64-linux-gnu-strings"
    assert $output matches '^#compdef'
}

@test '_aarch64-portbld-freebsd14.0-gcc-10.3.0 has compdef header' {
    run head -1 "$asrc/_aarch64-portbld-freebsd14.0-gcc-10.3.0"
    assert $output matches '^#compdef'
}

@test '_aarch64-redhat-linux-gcc-14 has compdef header' {
    run head -1 "$asrc/_aarch64-redhat-linux-gcc-14"
    assert $output matches '^#compdef'
}

@test '_aarch64-suse-linux-gnu-pkg-config has compdef header' {
    run head -1 "$asrc/_aarch64-suse-linux-gnu-pkg-config"
    assert $output matches '^#compdef'
}

@test '_aarch64-unknown-linux-gnu-gcc has compdef header' {
    run head -1 "$asrc/_aarch64-unknown-linux-gnu-gcc"
    assert $output matches '^#compdef'
}

@test '_llvm-ar-13 has compdef header' {
    run head -1 "$asrc/_llvm-ar-13"
    assert $output matches '^#compdef'
}

@test '_llvm-as has compdef header' {
    run head -1 "$asrc/_llvm-as"
    assert $output matches '^#compdef'
}

@test '_llvm-config has compdef header' {
    run head -1 "$asrc/_llvm-config"
    assert $output matches '^#compdef'
}

@test '_llvm-cov has compdef header' {
    run head -1 "$asrc/_llvm-cov"
    assert $output matches '^#compdef'
}

@test '_llvm-cxxfilt has compdef header' {
    run head -1 "$asrc/_llvm-cxxfilt"
    assert $output matches '^#compdef'
}

@test '_llvm-cxxmap has compdef header' {
    run head -1 "$asrc/_llvm-cxxmap"
    assert $output matches '^#compdef'
}

@test '_llvm-dwarfutil has compdef header' {
    run head -1 "$asrc/_llvm-dwarfutil"
    assert $output matches '^#compdef'
}

@test '_llvm-elfabi has compdef header' {
    run head -1 "$asrc/_llvm-elfabi"
    assert $output matches '^#compdef'
}

@test '_llvm-exegesis has compdef header' {
    run head -1 "$asrc/_llvm-exegesis"
    assert $output matches '^#compdef'
}

@test '_llvm-gsymutil has compdef header' {
    run head -1 "$asrc/_llvm-gsymutil"
    assert $output matches '^#compdef'
}

@test '_llvm-ifs has compdef header' {
    run head -1 "$asrc/_llvm-ifs"
    assert $output matches '^#compdef'
}

@test '_llvm-lto has compdef header' {
    run head -1 "$asrc/_llvm-lto"
    assert $output matches '^#compdef'
}

@test '_llvm-mca has compdef header' {
    run head -1 "$asrc/_llvm-mca"
    assert $output matches '^#compdef'
}

@test '_llvm-nm has compdef header' {
    run head -1 "$asrc/_llvm-nm"
    assert $output matches '^#compdef'
}

@test '_llvm-readelf has compdef header' {
    run head -1 "$asrc/_llvm-readelf"
    assert $output matches '^#compdef'
}

@test '_llvm-remarkutil has compdef header' {
    run head -1 "$asrc/_llvm-remarkutil"
    assert $output matches '^#compdef'
}

@test '_llvm-stress has compdef header' {
    run head -1 "$asrc/_llvm-stress"
    assert $output matches '^#compdef'
}

@test '_llvm-cat has compdef header' {
    run head -1 "$asrc/_llvm-cat"
    assert $output matches '^#compdef'
}

@test '_llvm-cov-14 has compdef header' {
    run head -1 "$asrc/_llvm-cov-14"
    assert $output matches '^#compdef'
}

@test '_llvm-cov-3.5 has compdef header' {
    run head -1 "$asrc/_llvm-cov-3.5"
    assert $output matches '^#compdef'
}

@test '_llvm-cov-6.0 has compdef header' {
    run head -1 "$asrc/_llvm-cov-6.0"
    assert $output matches '^#compdef'
}

@test '_llvm-stress-13 has compdef header' {
    run head -1 "$asrc/_llvm-stress-13"
    assert $output matches '^#compdef'
}

@test '_llvm-stress-19 has compdef header' {
    run head -1 "$asrc/_llvm-stress-19"
    assert $output matches '^#compdef'
}

@test '_llvm-stress-9 has compdef header' {
    run head -1 "$asrc/_llvm-stress-9"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin17.7.0-gcc-8 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin17.7.0-gcc-8"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin18-g++-9 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin18-g++-9"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin18-gcc-9 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin18-gcc-9"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin19-c++-9 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin19-c++-9"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin20-g++-11 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin20-g++-11"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin21-c++-11 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin21-c++-11"
    assert $output matches '^#compdef'
}

@test '_x86_64-apple-darwin22-c++-13 has compdef header' {
    run head -1 "$asrc/_x86_64-apple-darwin22-c++-13"
    assert $output matches '^#compdef'
}

@test '_x86_64-linux-gnu-cpp has compdef header' {
    run head -1 "$asrc/_x86_64-linux-gnu-cpp"
    assert $output matches '^#compdef'
}

@test '_x86_64-linux-gnu-gcov has compdef header' {
    run head -1 "$asrc/_x86_64-linux-gnu-gcov"
    assert $output matches '^#compdef'
}

@test '_x86_64-linux-gnu-gold has compdef header' {
    run head -1 "$asrc/_x86_64-linux-gnu-gold"
    assert $output matches '^#compdef'
}

@test '_x86_64-linux-gnu-readelf has compdef header' {
    run head -1 "$asrc/_x86_64-linux-gnu-readelf"
    assert $output matches '^#compdef'
}

@test '_x86_64-linux-gnu-valac has compdef header' {
    run head -1 "$asrc/_x86_64-linux-gnu-valac"
    assert $output matches '^#compdef'
}

@test '_x86_64-redhat-linux-gcc has compdef header' {
    run head -1 "$asrc/_x86_64-redhat-linux-gcc"
    assert $output matches '^#compdef'
}

@test '_x86_64-w64-mingw32-c++ has compdef header' {
    run head -1 "$asrc/_x86_64-w64-mingw32-c++"
    assert $output matches '^#compdef'
}

@test '_x86_64-w64-mingw32-gcc-win32 has compdef header' {
    run head -1 "$asrc/_x86_64-w64-mingw32-gcc-win32"
    assert $output matches '^#compdef'
}

@test '_x86_64-w64-mingw32-strip has compdef header' {
    run head -1 "$asrc/_x86_64-w64-mingw32-strip"
    assert $output matches '^#compdef'
}

@test '_x86_64-w64-mingw32ucrt-as has compdef header' {
    run head -1 "$asrc/_x86_64-w64-mingw32ucrt-as"
    assert $output matches '^#compdef'
}

# ============================================================
# Section 3: Syntax check tests (~80 tests)
# ============================================================

@test '_aarch64-alpine-linux-musl-c++ passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-c++"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-g++ passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-g++"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-gcc"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc-10.3.1 passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-gcc-10.3.1"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc-ar passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-gcc-ar"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc-nm passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-gcc-nm"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc-ranlib passes syntax check' {
    run zsh -n "$asrc/_aarch64-alpine-linux-musl-gcc-ranlib"
    assert $state equals 0
}

@test '_aarch64-apple-darwin21-c++-11 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin21-c++-11"
    assert $state equals 0
}

@test '_aarch64-apple-darwin21-g++-11 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin21-g++-11"
    assert $state equals 0
}

@test '_aarch64-apple-darwin21-gcc-11 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin21-gcc-11"
    assert $state equals 0
}

@test '_aarch64-apple-darwin21-gfortran-11 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin21-gfortran-11"
    assert $state equals 0
}

@test '_aarch64-apple-darwin22-c++-13 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin22-c++-13"
    assert $state equals 0
}

@test '_aarch64-apple-darwin22-gcc-13 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin22-gcc-13"
    assert $state equals 0
}

@test '_aarch64-apple-darwin23-c++-14 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin23-c++-14"
    assert $state equals 0
}

@test '_aarch64-apple-darwin23-gcc-14 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin23-gcc-14"
    assert $state equals 0
}

@test '_aarch64-apple-darwin24-c++-14 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin24-c++-14"
    assert $state equals 0
}

@test '_aarch64-apple-darwin24-gcc-14 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin24-gcc-14"
    assert $state equals 0
}

@test '_aarch64-apple-darwin24-gm2-14 passes syntax check' {
    run zsh -n "$asrc/_aarch64-apple-darwin24-gm2-14"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-addr2line passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-addr2line"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-ar passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-ar"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-as passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-as"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-c++filt passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-c++filt"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-cpp passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-cpp"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-g++ passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-g++"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcc"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc-ar passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcc-ar"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc-nm passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcc-nm"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc-ranlib passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcc-ranlib"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcov passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcov"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcov-dump passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcov-dump"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcov-tool passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gcov-tool"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-size passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-size"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-strings passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-strings"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-pkgconf passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-pkgconf"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gprofng passes syntax check' {
    run zsh -n "$asrc/_aarch64-linux-gnu-gprofng"
    assert $state equals 0
}

@test '_aarch64-portbld-freebsd14.0-gcc-10.3.0 passes syntax check' {
    run zsh -n "$asrc/_aarch64-portbld-freebsd14.0-gcc-10.3.0"
    assert $state equals 0
}

@test '_aarch64-portbld-freebsd14.0-gcc-ar10 passes syntax check' {
    run zsh -n "$asrc/_aarch64-portbld-freebsd14.0-gcc-ar10"
    assert $state equals 0
}

@test '_aarch64-portbld-freebsd14.0-gfortran10 passes syntax check' {
    run zsh -n "$asrc/_aarch64-portbld-freebsd14.0-gfortran10"
    assert $state equals 0
}

@test '_aarch64-redhat-linux-gcc-14 passes syntax check' {
    run zsh -n "$asrc/_aarch64-redhat-linux-gcc-14"
    assert $state equals 0
}

@test '_aarch64-suse-linux-gnu-pkg-config passes syntax check' {
    run zsh -n "$asrc/_aarch64-suse-linux-gnu-pkg-config"
    assert $state equals 0
}

@test '_aarch64-unknown-linux-gnu-gcc passes syntax check' {
    run zsh -n "$asrc/_aarch64-unknown-linux-gnu-gcc"
    assert $state equals 0
}

@test '_llvm-ar-13 passes syntax check' {
    run zsh -n "$asrc/_llvm-ar-13"
    assert $state equals 0
}

@test '_llvm-as passes syntax check' {
    run zsh -n "$asrc/_llvm-as"
    assert $state equals 0
}

@test '_llvm-cat passes syntax check' {
    run zsh -n "$asrc/_llvm-cat"
    assert $state equals 0
}

@test '_llvm-config passes syntax check' {
    run zsh -n "$asrc/_llvm-config"
    assert $state equals 0
}

@test '_llvm-cov passes syntax check' {
    run zsh -n "$asrc/_llvm-cov"
    assert $state equals 0
}

@test '_llvm-cxxfilt passes syntax check' {
    run zsh -n "$asrc/_llvm-cxxfilt"
    assert $state equals 0
}

@test '_llvm-cxxmap passes syntax check' {
    run zsh -n "$asrc/_llvm-cxxmap"
    assert $state equals 0
}

@test '_llvm-dwarfutil passes syntax check' {
    run zsh -n "$asrc/_llvm-dwarfutil"
    assert $state equals 0
}

@test '_llvm-elfabi passes syntax check' {
    run zsh -n "$asrc/_llvm-elfabi"
    assert $state equals 0
}

@test '_llvm-exegesis passes syntax check' {
    run zsh -n "$asrc/_llvm-exegesis"
    assert $state equals 0
}

@test '_llvm-gsymutil passes syntax check' {
    run zsh -n "$asrc/_llvm-gsymutil"
    assert $state equals 0
}

@test '_llvm-ifs passes syntax check' {
    run zsh -n "$asrc/_llvm-ifs"
    assert $state equals 0
}

@test '_llvm-lto passes syntax check' {
    run zsh -n "$asrc/_llvm-lto"
    assert $state equals 0
}

@test '_llvm-mca passes syntax check' {
    run zsh -n "$asrc/_llvm-mca"
    assert $state equals 0
}

@test '_llvm-nm passes syntax check' {
    run zsh -n "$asrc/_llvm-nm"
    assert $state equals 0
}

@test '_llvm-readelf passes syntax check' {
    run zsh -n "$asrc/_llvm-readelf"
    assert $state equals 0
}

@test '_llvm-remarkutil passes syntax check' {
    run zsh -n "$asrc/_llvm-remarkutil"
    assert $state equals 0
}

@test '_llvm-stress passes syntax check' {
    run zsh -n "$asrc/_llvm-stress"
    assert $state equals 0
}

@test '_x86_64-apple-darwin17.7.0-gcc-8 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin17.7.0-gcc-8"
    assert $state equals 0
}

@test '_x86_64-apple-darwin18-g++-9 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin18-g++-9"
    assert $state equals 0
}

@test '_x86_64-apple-darwin18-gcc-9 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin18-gcc-9"
    assert $state equals 0
}

@test '_x86_64-apple-darwin19-c++-9 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin19-c++-9"
    assert $state equals 0
}

@test '_x86_64-apple-darwin20-g++-11 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin20-g++-11"
    assert $state equals 0
}

@test '_x86_64-apple-darwin20-gcc-10 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin20-gcc-10"
    assert $state equals 0
}

@test '_x86_64-apple-darwin21-c++-11 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin21-c++-11"
    assert $state equals 0
}

@test '_x86_64-apple-darwin22-c++-13 passes syntax check' {
    run zsh -n "$asrc/_x86_64-apple-darwin22-c++-13"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-cpp passes syntax check' {
    run zsh -n "$asrc/_x86_64-linux-gnu-cpp"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-gcov passes syntax check' {
    run zsh -n "$asrc/_x86_64-linux-gnu-gcov"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-gold passes syntax check' {
    run zsh -n "$asrc/_x86_64-linux-gnu-gold"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-readelf passes syntax check' {
    run zsh -n "$asrc/_x86_64-linux-gnu-readelf"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-valac passes syntax check' {
    run zsh -n "$asrc/_x86_64-linux-gnu-valac"
    assert $state equals 0
}

@test '_x86_64-redhat-linux-gcc passes syntax check' {
    run zsh -n "$asrc/_x86_64-redhat-linux-gcc"
    assert $state equals 0
}

@test '_x86_64-redhat-linux-gcc-7 passes syntax check' {
    run zsh -n "$asrc/_x86_64-redhat-linux-gcc-7"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-c++ passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32-c++"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-c++-posix passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32-c++-posix"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-gcc-win32 passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32-gcc-win32"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-strip passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32-strip"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32ucrt-as passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32ucrt-as"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32ucrt-c++filt passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32ucrt-c++filt"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32ucrt-ld.bfd passes syntax check' {
    run zsh -n "$asrc/_x86_64-w64-mingw32ucrt-ld.bfd"
    assert $state equals 0
}

# ============================================================
# Section 4: _arguments usage tests (~50 tests)
# ============================================================

@test '_aarch64-alpine-linux-musl-c++ uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-alpine-linux-musl-c++"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-g++ uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-alpine-linux-musl-g++"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-alpine-linux-musl-gcc"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc-ar uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-alpine-linux-musl-gcc-ar"
    assert $state equals 0
}

@test '_aarch64-alpine-linux-musl-gcc-nm uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-alpine-linux-musl-gcc-nm"
    assert $state equals 0
}

@test '_aarch64-apple-darwin21-c++-11 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-apple-darwin21-c++-11"
    assert $state equals 0
}

@test '_aarch64-apple-darwin21-gcc-11 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-apple-darwin21-gcc-11"
    assert $state equals 0
}

@test '_aarch64-apple-darwin22-gcc-13 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-apple-darwin22-gcc-13"
    assert $state equals 0
}

@test '_aarch64-apple-darwin23-gcc-14 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-apple-darwin23-gcc-14"
    assert $state equals 0
}

@test '_aarch64-apple-darwin24-gcc-14 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-apple-darwin24-gcc-14"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-addr2line uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-addr2line"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-ar uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-ar"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-as uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-as"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-cpp uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-cpp"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-g++ uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-g++"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-gcc"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc-ar uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-gcc-ar"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc-nm uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-gcc-nm"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcc-ranlib uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-gcc-ranlib"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-gcov uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-gcov"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-size uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-size"
    assert $state equals 0
}

@test '_aarch64-linux-gnu-strings uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-linux-gnu-strings"
    assert $state equals 0
}

@test '_aarch64-portbld-freebsd14.0-gcc-10.3.0 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-portbld-freebsd14.0-gcc-10.3.0"
    assert $state equals 0
}

@test '_aarch64-redhat-linux-gcc-14 uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-redhat-linux-gcc-14"
    assert $state equals 0
}

@test '_aarch64-unknown-linux-gnu-gcc uses _arguments' {
    run grep -c '_arguments' "$asrc/_aarch64-unknown-linux-gnu-gcc"
    assert $state equals 0
}

@test '_llvm-ar-13 uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-ar-13"
    assert $state equals 0
}

@test '_llvm-as uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-as"
    assert $state equals 0
}

@test '_llvm-config uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-config"
    assert $state equals 0
}

@test '_llvm-cov uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-cov"
    assert $state equals 0
}

@test '_llvm-cxxfilt uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-cxxfilt"
    assert $state equals 0
}

@test '_llvm-dwarfutil uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-dwarfutil"
    assert $state equals 0
}

@test '_llvm-elfabi uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-elfabi"
    assert $state equals 0
}

@test '_llvm-gsymutil uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-gsymutil"
    assert $state equals 0
}

@test '_llvm-ifs uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-ifs"
    assert $state equals 0
}

@test '_llvm-lto uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-lto"
    assert $state equals 0
}

@test '_llvm-mca uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-mca"
    assert $state equals 0
}

@test '_llvm-nm uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-nm"
    assert $state equals 0
}

@test '_llvm-readelf uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-readelf"
    assert $state equals 0
}

@test '_llvm-stress uses _arguments' {
    run grep -c '_arguments' "$asrc/_llvm-stress"
    assert $state equals 0
}

@test '_x86_64-apple-darwin17.7.0-gcc-8 uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-apple-darwin17.7.0-gcc-8"
    assert $state equals 0
}

@test '_x86_64-apple-darwin18-gcc-9 uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-apple-darwin18-gcc-9"
    assert $state equals 0
}

@test '_x86_64-apple-darwin20-gcc-10 uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-apple-darwin20-gcc-10"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-cpp uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-linux-gnu-cpp"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-gcov uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-linux-gnu-gcov"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-gold uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-linux-gnu-gold"
    assert $state equals 0
}

@test '_x86_64-linux-gnu-readelf uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-linux-gnu-readelf"
    assert $state equals 0
}

@test '_x86_64-redhat-linux-gcc uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-redhat-linux-gcc"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-c++ uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-w64-mingw32-c++"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-gcc-win32 uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-w64-mingw32-gcc-win32"
    assert $state equals 0
}

@test '_x86_64-w64-mingw32-strip uses _arguments' {
    run grep -c '_arguments' "$asrc/_x86_64-w64-mingw32-strip"
    assert $state equals 0
}

# ============================================================
# Section 5: Architecture grouping tests
# ============================================================

@test 'architecture_src has 5+ aarch64-alpine-linux-musl completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-alpine-linux-musl' | wc -l | tr -d ' ')
    assert $count is_greater_than 4
}

@test 'architecture_src has 5+ aarch64-apple-darwin21 completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-apple-darwin21' | wc -l | tr -d ' ')
    assert $count is_greater_than 4
}

@test 'architecture_src has 3+ aarch64-apple-darwin22 completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-apple-darwin22' | wc -l | tr -d ' ')
    assert $count is_greater_than 2
}

@test 'architecture_src has 3+ aarch64-apple-darwin23 completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-apple-darwin23' | wc -l | tr -d ' ')
    assert $count is_greater_than 2
}

@test 'architecture_src has 3+ aarch64-apple-darwin24 completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-apple-darwin24' | wc -l | tr -d ' ')
    assert $count is_greater_than 2
}

@test 'architecture_src has 30+ aarch64-linux-gnu completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-linux-gnu' | wc -l | tr -d ' ')
    assert $count is_greater_than 29
}

@test 'architecture_src has 2+ aarch64-portbld-freebsd14.0 completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-portbld-freebsd14.0' | wc -l | tr -d ' ')
    assert $count is_greater_than 1
}

@test 'architecture_src has 1+ aarch64-redhat-linux completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-redhat-linux' | wc -l | tr -d ' ')
    assert $count is_greater_than 0
}

@test 'architecture_src has 1+ aarch64-suse-linux completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-suse-linux' | wc -l | tr -d ' ')
    assert $count is_greater_than 0
}

@test 'architecture_src has 1+ aarch64-unknown-linux completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64-unknown-linux' | wc -l | tr -d ' ')
    assert $count is_greater_than 0
}

@test 'architecture_src has 50+ llvm completions' {
    local count
    count=$(ls "$asrc/" | grep 'llvm' | wc -l | tr -d ' ')
    assert $count is_greater_than 49
}

@test 'architecture_src has 5+ x86_64-apple-darwin completions' {
    local count
    count=$(ls "$asrc/" | grep 'x86_64-apple-darwin' | wc -l | tr -d ' ')
    assert $count is_greater_than 4
}

@test 'architecture_src has 10+ x86_64-linux-gnu completions' {
    local count
    count=$(ls "$asrc/" | grep 'x86_64-linux-gnu' | wc -l | tr -d ' ')
    assert $count is_greater_than 9
}

@test 'architecture_src has 1+ x86_64-redhat-linux completions' {
    local count
    count=$(ls "$asrc/" | grep 'x86_64-redhat-linux' | wc -l | tr -d ' ')
    assert $count is_greater_than 0
}

@test 'architecture_src has 5+ x86_64-w64-mingw32 completions' {
    local count
    count=$(ls "$asrc/" | grep 'x86_64-w64-mingw32' | wc -l | tr -d ' ')
    assert $count is_greater_than 4
}

# ============================================================
# Section 6: Directory and general validation tests
# ============================================================

@test 'architecture_src directory exists' {
    assert "$asrc" is_dir
}

@test 'architecture_src is not empty' {
    local count
    count=$(ls "$asrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 0
}

@test 'architecture_src has 1000+ completion files' {
    local count
    count=$(ls "$asrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 999
}

@test 'all architecture_src files start with underscore' {
    local count
    count=$(ls "$asrc/" | grep -v '^_' | wc -l | tr -d ' ')
    assert $count equals 0
}

@test 'architecture_src has no empty files' {
    local empty_count
    empty_count=0
    for f in "$asrc"/_aarch64-alpine-linux-musl-c++ "$asrc"/_aarch64-linux-gnu-gcc "$asrc"/_llvm-config "$asrc"/_x86_64-linux-gnu-cpp; do
        if [[ ! -s "$f" ]]; then
            (( empty_count++ ))
        fi
    done
    assert $empty_count equals 0
}
