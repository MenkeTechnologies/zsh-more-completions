#!/usr/bin/env zsh
# Emit repository metrics for README / CI (counts from filesystem and tests — no hand-typed totals).
emulate -L zsh
0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
repo="${0:h:h:A}"

count_underscore() {
    local dir="$1"
    print -r -- $(find "$dir" -maxdepth 1 -name '_*' -type f 2>/dev/null | wc -l | tr -d ' ')
}

local src more more2 more3 more4 more5 more6 more7 more8 man over arch total_comp ztests
src=$(count_underscore "$repo/src")
more=$(count_underscore "$repo/more_src")
more2=$(count_underscore "$repo/more_src2")
more3=$(count_underscore "$repo/more_src3")
more4=$(count_underscore "$repo/more_src4")
more5=$(count_underscore "$repo/more_src5")
more6=$(count_underscore "$repo/more_src6")
more7=$(count_underscore "$repo/more_src7")
more8=$(count_underscore "$repo/more_src8")
man=$(count_underscore "$repo/man_src")
over=$(count_underscore "$repo/override_src")
arch=$(count_underscore "$repo/architecture_src")
total_comp=$(( src + more + more2 + more3 + more4 + more5 + more6 + more7 + more8 + man + over + arch ))
ztests=$(grep -h '^@test' "$repo"/tests/*.zsh 2>/dev/null | wc -l | tr -d ' ')

print -r "src=$src"
print -r "more_src=$more"
print -r "more_src2=$more2"
print -r "more_src3=$more3"
print -r "more_src4=$more4"
print -r "more_src5=$more5"
print -r "more_src6=$more6"
print -r "more_src7=$more7"
print -r "more_src8=$more8"
print -r "man_src=$man"
print -r "override_src=$over"
print -r "architecture_src=$arch"
print -r "total_completions=$total_comp"
print -r "zunit_tests=$ztests"
