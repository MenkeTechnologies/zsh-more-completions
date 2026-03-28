#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Option content tests for src/ completion files
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    src="$pluginDir/src"
}

# ─── _htop ────────────────────────────────────────────────────────────────────

@test '_htop has --no-color' {
    run grep -c 'no-color' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --delay' {
    run grep -c 'delay' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --help' {
    run grep -c 'help' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --sort-key' {
    run grep -c 'sort-key' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --tree' {
    run grep -c 'tree' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --user' {
    run grep -c 'user' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --pid' {
    run grep -c 'pid' "$src/_htop"
    assert $state equals 0
}

@test '_htop has --version' {
    run grep -c 'version' "$src/_htop"
    assert $state equals 0
}

@test '_htop has _arguments' {
    run grep -c '_arguments' "$src/_htop"
    assert $state equals 0
}

# ─── _strace ──────────────────────────────────────────────────────────────────

@test '_strace has -p' {
    run grep -c '\-p' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -a' {
    run grep -c '\-a' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -i' {
    run grep -c '\-i' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -o' {
    run grep -c '\-o' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -q' {
    run grep -c '\-q' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -r' {
    run grep -c '\-r' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -s' {
    run grep -c '\-s' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -t' {
    run grep -c '\-t' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -T' {
    run grep -c '\-T' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -x' {
    run grep -c '\-x' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -y' {
    run grep -c '\-y' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -e' {
    run grep -c '\-e' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -f' {
    run grep -c '\-f' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -v' {
    run grep -c '\-v' "$src/_strace"
    assert $state equals 0
}

@test '_strace has syscall' {
    run grep -c 'syscall' "$src/_strace"
    assert $state equals 0
}

# ─── _diff ────────────────────────────────────────────────────────────────────

@test '_diff has --brief' {
    run grep -c 'brief' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --recursive' {
    run grep -c 'recursive' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --unified' {
    run grep -c 'unified' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --context' {
    run grep -c 'context' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --ignore-case' {
    run grep -c 'ignore-case' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --ignore-space-change' {
    run grep -c 'ignore-space-change' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --side-by-side' {
    run grep -c 'side-by-side' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --color' {
    run grep -c 'color' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --no-dereference' {
    run grep -c 'no-dereference' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --from-file' {
    run grep -c 'from-file' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --to-file' {
    run grep -c 'to-file' "$src/_diff"
    assert $state equals 0
}

@test '_diff has _files' {
    run grep -c '_files' "$src/_diff"
    assert $state equals 0
}

@test '_diff has _arguments' {
    run grep -c '_arguments' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --suppress-common-lines' {
    run grep -c 'suppress-common-lines' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --speed-large-files' {
    run grep -c 'speed-large-files' "$src/_diff"
    assert $state equals 0
}

# ─── _patch ───────────────────────────────────────────────────────────────────

@test '_patch has --reverse' {
    run grep -c 'reverse' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --dry-run' {
    run grep -c 'dry-run' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --strip' {
    run grep -c 'strip' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --directory' {
    run grep -c 'directory' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --output' {
    run grep -c 'output' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --reject-file' {
    run grep -c 'reject-file' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --backup' {
    run grep -c 'backup' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --verbose' {
    run grep -c 'verbose' "$src/_patch"
    assert $state equals 0
}

@test '_patch has _files' {
    run grep -c '_files' "$src/_patch"
    assert $state equals 0
}

@test '_patch has _arguments' {
    run grep -c '_arguments' "$src/_patch"
    assert $state equals 0
}

# ─── _lsof ────────────────────────────────────────────────────────────────────

@test '_lsof has -i' {
    run grep -c '\-i' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -p' {
    run grep -c '\-p' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -u' {
    run grep -c '\-u' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -c' {
    run grep -c '\-c' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -d' {
    run grep -c '\-d' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -n' {
    run grep -c '\-n' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -P' {
    run grep -c '\-P' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -t' {
    run grep -c '\-t' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has +D' {
    run grep -c '+D' "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has _arguments' {
    run grep -c '_arguments' "$src/_lsof"
    assert $state equals 0
}

# ─── _nmap ────────────────────────────────────────────────────────────────────

@test '_nmap has -sS' {
    run grep -c '\-sS' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -sU' {
    run grep -c '\-sU' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -sV' {
    run grep -c '\-sV' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -O' {
    run grep -c '\-O' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -A' {
    run grep -c '\-A' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -p' {
    run grep -c '\-p' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -T' {
    run grep -c '\-T' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has --script' {
    run grep -c 'script' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has --open' {
    run grep -c 'open' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has --reason' {
    run grep -c 'reason' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has --traceroute' {
    run grep -c 'traceroute' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -oN' {
    run grep -c '\-oN' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -oX' {
    run grep -c '\-oX' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has _arguments' {
    run grep -c '_arguments' "$src/_nmap"
    assert $state equals 0
}

# ─── _dig ─────────────────────────────────────────────────────────────────────

@test '_dig has -x' {
    run grep -c '\-x' "$src/_dig"
    assert $state equals 0
}

@test '_dig has -4' {
    run grep -c '\-4' "$src/_dig"
    assert $state equals 0
}

@test '_dig has -6' {
    run grep -c '\-6' "$src/_dig"
    assert $state equals 0
}

@test '_dig has _arguments' {
    run grep -c '_arguments' "$src/_dig"
    assert $state equals 0
}

# ─── _ip ──────────────────────────────────────────────────────────────────────

@test '_ip has link' {
    run grep -c 'link' "$src/_ip"
    assert $state equals 0
}

@test '_ip has addr' {
    run grep -c 'addr' "$src/_ip"
    assert $state equals 0
}

@test '_ip has _arguments' {
    run grep -c '_arguments' "$src/_ip"
    assert $state equals 0
}

# ─── _ss ──────────────────────────────────────────────────────────────────────

@test '_ss has -t' {
    run grep -c '\-t' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -u' {
    run grep -c '\-u' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -l' {
    run grep -c '\-l' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -a' {
    run grep -c '\-a' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -n' {
    run grep -c '\-n' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -p' {
    run grep -c '\-p' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -s' {
    run grep -c '\-s' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -4' {
    run grep -c '\-4' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -6' {
    run grep -c '\-6' "$src/_ss"
    assert $state equals 0
}

@test '_ss has _arguments' {
    run grep -c '_arguments' "$src/_ss"
    assert $state equals 0
}

# ─── _stat ────────────────────────────────────────────────────────────────────

@test '_stat has --format' {
    run grep -c 'format' "$src/_stat"
    assert $state equals 0
}

@test '_stat has --file-system' {
    run grep -c 'file-system' "$src/_stat"
    assert $state equals 0
}

@test '_stat has --dereference' {
    run grep -c 'dereference' "$src/_stat"
    assert $state equals 0
}

@test '_stat has --printf' {
    run grep -c 'printf' "$src/_stat"
    assert $state equals 0
}

@test '_stat has --terse' {
    run grep -c 'terse' "$src/_stat"
    assert $state equals 0
}

@test '_stat has _files' {
    run grep -c '_files' "$src/_stat"
    assert $state equals 0
}

@test '_stat has _arguments' {
    run grep -c '_arguments' "$src/_stat"
    assert $state equals 0
}

@test '_stat has --help' {
    run grep -c 'help' "$src/_stat"
    assert $state equals 0
}

@test '_stat has --version' {
    run grep -c 'version' "$src/_stat"
    assert $state equals 0
}

@test '_stat has -f' {
    run grep -c '\-f' "$src/_stat"
    assert $state equals 0
}

# ─── _chmod ───────────────────────────────────────────────────────────────────

@test '_chmod has --recursive' {
    run grep -c 'recursive' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has --verbose' {
    run grep -c 'verbose' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has --changes' {
    run grep -c 'changes' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has --preserve-root' {
    run grep -c 'preserve-root' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has --reference' {
    run grep -c 'reference' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has _files' {
    run grep -c '_files' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has _arguments' {
    run grep -c '_arguments' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has --quiet' {
    run grep -c 'quiet' "$src/_chmod"
    assert $state equals 0
}

# ─── _chown ───────────────────────────────────────────────────────────────────

@test '_chown has --recursive' {
    run grep -c 'recursive' "$src/_chown"
    assert $state equals 0
}

@test '_chown has --verbose' {
    run grep -c 'verbose' "$src/_chown"
    assert $state equals 0
}

@test '_chown has --changes' {
    run grep -c 'changes' "$src/_chown"
    assert $state equals 0
}

@test '_chown has --dereference' {
    run grep -c 'dereference' "$src/_chown"
    assert $state equals 0
}

@test '_chown has --from' {
    run grep -c 'from' "$src/_chown"
    assert $state equals 0
}

@test '_chown has --reference' {
    run grep -c 'reference' "$src/_chown"
    assert $state equals 0
}

@test '_chown has _files' {
    run grep -c '_files' "$src/_chown"
    assert $state equals 0
}

@test '_chown has _arguments' {
    run grep -c '_arguments' "$src/_chown"
    assert $state equals 0
}

# ─── _ln ──────────────────────────────────────────────────────────────────────

@test '_ln has --symbolic' {
    run grep -c 'symbolic' "$src/_ln"
    assert $state equals 0
}

@test '_ln has --force' {
    run grep -c 'force' "$src/_ln"
    assert $state equals 0
}

@test '_ln has --verbose' {
    run grep -c 'verbose' "$src/_ln"
    assert $state equals 0
}

@test '_ln has --backup' {
    run grep -c 'backup' "$src/_ln"
    assert $state equals 0
}

@test '_ln has --suffix' {
    run grep -c 'suffix' "$src/_ln"
    assert $state equals 0
}

@test '_ln has --relative' {
    run grep -c 'relative' "$src/_ln"
    assert $state equals 0
}

@test '_ln has _files' {
    run grep -c '_files' "$src/_ln"
    assert $state equals 0
}

@test '_ln has _arguments' {
    run grep -c '_arguments' "$src/_ln"
    assert $state equals 0
}

# ─── _sort ────────────────────────────────────────────────────────────────────

@test '_sort has --numeric-sort' {
    run grep -c 'numeric-sort' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --reverse' {
    run grep -c 'reverse' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --unique' {
    run grep -c 'unique' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --output' {
    run grep -c 'output' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --field-separator' {
    run grep -c 'field-separator' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --key' {
    run grep -c 'key' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --random-sort' {
    run grep -c 'random-sort' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --human-numeric-sort' {
    run grep -c 'human-numeric-sort' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --month-sort' {
    run grep -c 'month-sort' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --check' {
    run grep -c 'check' "$src/_sort"
    assert $state equals 0
}

@test '_sort has _files' {
    run grep -c '_files' "$src/_sort"
    assert $state equals 0
}

@test '_sort has _arguments' {
    run grep -c '_arguments' "$src/_sort"
    assert $state equals 0
}

# ─── _wc ──────────────────────────────────────────────────────────────────────

@test '_wc has --bytes' {
    run grep -c 'bytes' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --chars' {
    run grep -c 'chars' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --lines' {
    run grep -c 'lines' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --words' {
    run grep -c 'words' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --max-line-length' {
    run grep -c 'max-line-length' "$src/_wc"
    assert $state equals 0
}

@test '_wc has _files' {
    run grep -c '_files' "$src/_wc"
    assert $state equals 0
}

@test '_wc has _arguments' {
    run grep -c '_arguments' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --help' {
    run grep -c 'help' "$src/_wc"
    assert $state equals 0
}

# ─── _cut ─────────────────────────────────────────────────────────────────────

@test '_cut has --bytes' {
    run grep -c 'bytes' "$src/_cut"
    assert $state equals 0
}

@test '_cut has --characters' {
    run grep -c 'characters' "$src/_cut"
    assert $state equals 0
}

@test '_cut has --delimiter' {
    run grep -c 'delimiter' "$src/_cut"
    assert $state equals 0
}

@test '_cut has --fields' {
    run grep -c 'fields' "$src/_cut"
    assert $state equals 0
}

@test '_cut has --complement' {
    run grep -c 'complement' "$src/_cut"
    assert $state equals 0
}

@test '_cut has --output-delimiter' {
    run grep -c 'output-delimiter' "$src/_cut"
    assert $state equals 0
}

@test '_cut has _files' {
    run grep -c '_files' "$src/_cut"
    assert $state equals 0
}

@test '_cut has _arguments' {
    run grep -c '_arguments' "$src/_cut"
    assert $state equals 0
}

# ─── _head ────────────────────────────────────────────────────────────────────

@test '_head has _files' {
    run grep -c '_files' "$src/_head"
    assert $state equals 0
}

@test '_head has _arguments' {
    run grep -c '_arguments' "$src/_head"
    assert $state equals 0
}

@test '_head has -c' {
    run grep -c '\-c' "$src/_head"
    assert $state equals 0
}

# ─── _tail ────────────────────────────────────────────────────────────────────

@test '_tail has --bytes' {
    run grep -c 'bytes' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --lines' {
    run grep -c 'lines' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --follow' {
    run grep -c 'follow' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --retry' {
    run grep -c 'retry' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --quiet' {
    run grep -c 'quiet' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --verbose' {
    run grep -c 'verbose' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --pid' {
    run grep -c 'pid' "$src/_tail"
    assert $state equals 0
}

@test '_tail has --max-unchanged-stats' {
    run grep -c 'max-unchanged-stats' "$src/_tail"
    assert $state equals 0
}

@test '_tail has _files' {
    run grep -c '_files' "$src/_tail"
    assert $state equals 0
}

@test '_tail has _arguments' {
    run grep -c '_arguments' "$src/_tail"
    assert $state equals 0
}

# ─── _less ────────────────────────────────────────────────────────────────────

@test '_less has -N' {
    run grep -c '\-N' "$src/_less"
    assert $state equals 0
}

@test '_less has -i' {
    run grep -c '\-i' "$src/_less"
    assert $state equals 0
}

@test '_less has -S' {
    run grep -c '\-S' "$src/_less"
    assert $state equals 0
}

@test '_less has -R' {
    run grep -c '\-R' "$src/_less"
    assert $state equals 0
}

@test '_less has -F' {
    run grep -c '\-F' "$src/_less"
    assert $state equals 0
}

@test '_less has -X' {
    run grep -c '\-X' "$src/_less"
    assert $state equals 0
}

@test '_less has -g' {
    run grep -c '\-g' "$src/_less"
    assert $state equals 0
}

@test '_less has -m' {
    run grep -c '\-m' "$src/_less"
    assert $state equals 0
}

@test '_less has -M' {
    run grep -c '\-M' "$src/_less"
    assert $state equals 0
}

@test '_less has _arguments' {
    run grep -c '_arguments' "$src/_less"
    assert $state equals 0
}

# ─── _cat ─────────────────────────────────────────────────────────────────────

@test '_cat has --number' {
    run grep -c 'number' "$src/_cat"
    assert $state equals 0
}

@test '_cat has --number-nonblank' {
    run grep -c 'number-nonblank' "$src/_cat"
    assert $state equals 0
}

@test '_cat has --show-ends' {
    run grep -c 'show-ends' "$src/_cat"
    assert $state equals 0
}

@test '_cat has --show-tabs' {
    run grep -c 'show-tabs' "$src/_cat"
    assert $state equals 0
}

@test '_cat has --show-nonprinting' {
    run grep -c 'show-nonprinting' "$src/_cat"
    assert $state equals 0
}

@test '_cat has --squeeze-blank' {
    run grep -c 'squeeze-blank' "$src/_cat"
    assert $state equals 0
}

@test '_cat has _files' {
    run grep -c '_files' "$src/_cat"
    assert $state equals 0
}

@test '_cat has _arguments' {
    run grep -c '_arguments' "$src/_cat"
    assert $state equals 0
}

# ─── _tee ─────────────────────────────────────────────────────────────────────

@test '_tee has --append' {
    run grep -c 'append' "$src/_tee"
    assert $state equals 0
}

@test '_tee has --ignore-interrupts' {
    run grep -c 'ignore-interrupts' "$src/_tee"
    assert $state equals 0
}

@test '_tee has --output-error' {
    run grep -c 'output-error' "$src/_tee"
    assert $state equals 0
}

@test '_tee has _files' {
    run grep -c '_files' "$src/_tee"
    assert $state equals 0
}

@test '_tee has _arguments' {
    run grep -c '_arguments' "$src/_tee"
    assert $state equals 0
}

@test '_tee has --help' {
    run grep -c 'help' "$src/_tee"
    assert $state equals 0
}

# ─── _mv ──────────────────────────────────────────────────────────────────────

@test '_mv has --force' {
    run grep -c 'force' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --interactive' {
    run grep -c 'interactive' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --verbose' {
    run grep -c 'verbose' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --backup' {
    run grep -c 'backup' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --suffix' {
    run grep -c 'suffix' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --update' {
    run grep -c 'update' "$src/_mv"
    assert $state equals 0
}

@test '_mv has _files' {
    run grep -c '_files' "$src/_mv"
    assert $state equals 0
}

@test '_mv has _arguments' {
    run grep -c '_arguments' "$src/_mv"
    assert $state equals 0
}

# ─── _rm ──────────────────────────────────────────────────────────────────────

@test '_rm has --force' {
    run grep -c 'force' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --interactive' {
    run grep -c 'interactive' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --recursive' {
    run grep -c 'recursive' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --verbose' {
    run grep -c 'verbose' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --preserve-root' {
    run grep -c 'preserve-root' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --one-file-system' {
    run grep -c 'one-file-system' "$src/_rm"
    assert $state equals 0
}

@test '_rm has _files' {
    run grep -c '_files' "$src/_rm"
    assert $state equals 0
}

@test '_rm has _arguments' {
    run grep -c '_arguments' "$src/_rm"
    assert $state equals 0
}

# ─── _mkdir ───────────────────────────────────────────────────────────────────

@test '_mkdir has --parents' {
    run grep -c 'parents' "$src/_mkdir"
    assert $state equals 0
}

@test '_mkdir has --mode' {
    run grep -c 'mode' "$src/_mkdir"
    assert $state equals 0
}

@test '_mkdir has --verbose' {
    run grep -c 'verbose' "$src/_mkdir"
    assert $state equals 0
}

@test '_mkdir has --context' {
    run grep -c 'context' "$src/_mkdir"
    assert $state equals 0
}

@test '_mkdir has _arguments' {
    run grep -c '_arguments' "$src/_mkdir"
    assert $state equals 0
}

@test '_mkdir has --help' {
    run grep -c 'help' "$src/_mkdir"
    assert $state equals 0
}

# ─── _ls ──────────────────────────────────────────────────────────────────────

@test '_ls has --all' {
    run grep -c 'all' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --long' {
    run grep -c 'long' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --human-readable' {
    run grep -c 'human-readable' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --recursive' {
    run grep -c 'recursive' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --sort' {
    run grep -c 'sort' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --color' {
    run grep -c 'color' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --group-directories-first' {
    run grep -c 'group-directories-first' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --time' {
    run grep -c 'time' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --reverse' {
    run grep -c 'reverse' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --size' {
    run grep -c 'size' "$src/_ls"
    assert $state equals 0
}

@test '_ls has _files' {
    run grep -c '_files' "$src/_ls"
    assert $state equals 0
}

@test '_ls has _arguments' {
    run grep -c '_arguments' "$src/_ls"
    assert $state equals 0
}

# ─── _date ────────────────────────────────────────────────────────────────────

@test '_date has --date' {
    run grep -c 'date' "$src/_date"
    assert $state equals 0
}

@test '_date has --reference' {
    run grep -c 'reference' "$src/_date"
    assert $state equals 0
}

@test '_date has --utc' {
    run grep -c 'utc' "$src/_date"
    assert $state equals 0
}

@test '_date has --universal' {
    run grep -c 'universal' "$src/_date"
    assert $state equals 0
}

@test '_date has --rfc-email' {
    run grep -c 'rfc-email' "$src/_date"
    assert $state equals 0
}

@test '_date has --iso-8601' {
    run grep -c 'iso-8601' "$src/_date"
    assert $state equals 0
}

@test '_date has _arguments' {
    run grep -c '_arguments' "$src/_date"
    assert $state equals 0
}

@test '_date has --help' {
    run grep -c 'help' "$src/_date"
    assert $state equals 0
}

# ─── _kill ────────────────────────────────────────────────────────────────────

@test '_kill has -s' {
    run grep -c '\-s' "$src/_kill"
    assert $state equals 0
}

@test '_kill has -l' {
    run grep -c '\-l' "$src/_kill"
    assert $state equals 0
}

@test '_kill has -L' {
    run grep -c '\-L' "$src/_kill"
    assert $state equals 0
}

@test '_kill has --signal' {
    run grep -c 'signal' "$src/_kill"
    assert $state equals 0
}

@test '_kill has _arguments' {
    run grep -c '_arguments' "$src/_kill"
    assert $state equals 0
}

@test '_kill has pid' {
    run grep -c 'pid' "$src/_kill"
    assert $state equals 0
}

# ─── _pgrep ──────────────────────────────────────────────────────────────────

@test '_pgrep has -u' {
    run grep -c '\-u' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -P' {
    run grep -c '\-P' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -x' {
    run grep -c '\-x' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -f' {
    run grep -c '\-f' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -l' {
    run grep -c '\-l' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -a' {
    run grep -c '\-a' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -n' {
    run grep -c '\-n' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has _arguments' {
    run grep -c '_arguments' "$src/_pgrep"
    assert $state equals 0
}

# ─── _pkill ──────────────────────────────────────────────────────────────────

@test '_pkill has -u' {
    run grep -c '\-u' "$src/_pkill"
    assert $state equals 0
}

@test '_pkill has -P' {
    run grep -c '\-P' "$src/_pkill"
    assert $state equals 0
}

@test '_pkill has -x' {
    run grep -c '\-x' "$src/_pkill"
    assert $state equals 0
}

@test '_pkill has -f' {
    run grep -c '\-f' "$src/_pkill"
    assert $state equals 0
}

@test '_pkill has _arguments' {
    run grep -c '_arguments' "$src/_pkill"
    assert $state equals 0
}

@test '_pkill has -g' {
    run grep -c '\-g' "$src/_pkill"
    assert $state equals 0
}

# ─── _nice ────────────────────────────────────────────────────────────────────

@test '_nice has --adjustment' {
    run grep -c 'adjustment' "$src/_nice"
    assert $state equals 0
}

@test '_nice has _arguments' {
    run grep -c '_arguments' "$src/_nice"
    assert $state equals 0
}

@test '_nice has --help' {
    run grep -c 'help' "$src/_nice"
    assert $state equals 0
}

@test '_nice has --version' {
    run grep -c 'version' "$src/_nice"
    assert $state equals 0
}

@test '_nice has -n' {
    run grep -c '\-n' "$src/_nice"
    assert $state equals 0
}

# ─── _env ─────────────────────────────────────────────────────────────────────

@test '_env has --ignore-environment' {
    run grep -c 'ignore-environment' "$src/_env"
    assert $state equals 0
}

@test '_env has --unset' {
    run grep -c 'unset' "$src/_env"
    assert $state equals 0
}

@test '_env has --null' {
    run grep -c 'null' "$src/_env"
    assert $state equals 0
}

@test '_env has _arguments' {
    run grep -c '_arguments' "$src/_env"
    assert $state equals 0
}

@test '_env has --help' {
    run grep -c 'help' "$src/_env"
    assert $state equals 0
}

@test '_env has --version' {
    run grep -c 'version' "$src/_env"
    assert $state equals 0
}

# ─── _hostname ────────────────────────────────────────────────────────────────

@test '_hostname has --fqdn' {
    run grep -c 'fqdn' "$src/_hostname"
    assert $state equals 0
}

@test '_hostname has --domain' {
    run grep -c 'domain' "$src/_hostname"
    assert $state equals 0
}

@test '_hostname has --ip-address' {
    run grep -c 'ip-address' "$src/_hostname"
    assert $state equals 0
}

@test '_hostname has --short' {
    run grep -c 'short' "$src/_hostname"
    assert $state equals 0
}

@test '_hostname has _arguments' {
    run grep -c '_arguments' "$src/_hostname"
    assert $state equals 0
}

# ─── _uname ──────────────────────────────────────────────────────────────────

@test '_uname has --machine' {
    run grep -c 'machine' "$src/_uname"
    assert $state equals 0
}

@test '_uname has --nodename' {
    run grep -c 'nodename' "$src/_uname"
    assert $state equals 0
}

@test '_uname has --release' {
    run grep -c 'release' "$src/_uname"
    assert $state equals 0
}

@test '_uname has --processor' {
    run grep -c 'processor' "$src/_uname"
    assert $state equals 0
}

@test '_uname has --operating-system' {
    run grep -c 'operating-system' "$src/_uname"
    assert $state equals 0
}

@test '_uname has _arguments' {
    run grep -c '_arguments' "$src/_uname"
    assert $state equals 0
}

@test '_uname has --help' {
    run grep -c 'help' "$src/_uname"
    assert $state equals 0
}

# ─── _id ──────────────────────────────────────────────────────────────────────

@test '_id has --user' {
    run grep -c 'user' "$src/_id"
    assert $state equals 0
}

@test '_id has --group' {
    run grep -c 'group' "$src/_id"
    assert $state equals 0
}

@test '_id has --name' {
    run grep -c 'name' "$src/_id"
    assert $state equals 0
}

@test '_id has --real' {
    run grep -c 'real' "$src/_id"
    assert $state equals 0
}

@test '_id has _arguments' {
    run grep -c '_arguments' "$src/_id"
    assert $state equals 0
}

@test '_id has --help' {
    run grep -c 'help' "$src/_id"
    assert $state equals 0
}

# ─── _uptime ─────────────────────────────────────────────────────────────────

@test '_uptime has --pretty' {
    run grep -c 'pretty' "$src/_uptime"
    assert $state equals 0
}

@test '_uptime has --since' {
    run grep -c 'since' "$src/_uptime"
    assert $state equals 0
}

@test '_uptime has _arguments' {
    run grep -c '_arguments' "$src/_uptime"
    assert $state equals 0
}

@test '_uptime has --help' {
    run grep -c 'help' "$src/_uptime"
    assert $state equals 0
}

# ─── _free ────────────────────────────────────────────────────────────────────

@test '_free has --bytes' {
    run grep -c 'bytes' "$src/_free"
    assert $state equals 0
}

@test '_free has --kilo' {
    run grep -c 'kilo' "$src/_free"
    assert $state equals 0
}

@test '_free has --mega' {
    run grep -c 'mega' "$src/_free"
    assert $state equals 0
}

@test '_free has --giga' {
    run grep -c 'giga' "$src/_free"
    assert $state equals 0
}

@test '_free has --human' {
    run grep -c 'human' "$src/_free"
    assert $state equals 0
}

@test '_free has _arguments' {
    run grep -c '_arguments' "$src/_free"
    assert $state equals 0
}

# ─── _vmstat ─────────────────────────────────────────────────────────────────

@test '_vmstat has -a' {
    run grep -c '\-a' "$src/_vmstat"
    assert $state equals 0
}

@test '_vmstat has -d' {
    run grep -c '\-d' "$src/_vmstat"
    assert $state equals 0
}

@test '_vmstat has -s' {
    run grep -c '\-s' "$src/_vmstat"
    assert $state equals 0
}

@test '_vmstat has -w' {
    run grep -c '\-w' "$src/_vmstat"
    assert $state equals 0
}

@test '_vmstat has _arguments' {
    run grep -c '_arguments' "$src/_vmstat"
    assert $state equals 0
}

# ─── _dmesg ──────────────────────────────────────────────────────────────────

@test '_dmesg has --clear' {
    run grep -c 'clear' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --console-level' {
    run grep -c 'console-level' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --facility' {
    run grep -c 'facility' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --follow' {
    run grep -c 'follow' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --human' {
    run grep -c 'human' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --level' {
    run grep -c 'level' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --raw' {
    run grep -c 'raw' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has _arguments' {
    run grep -c '_arguments' "$src/_dmesg"
    assert $state equals 0
}

# ─── _journalctl ─────────────────────────────────────────────────────────────

@test '_journalctl has --follow' {
    run grep -c 'follow' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --reverse' {
    run grep -c 'reverse' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --output' {
    run grep -c 'output' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --since' {
    run grep -c 'since' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --until' {
    run grep -c 'until' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --unit' {
    run grep -c 'unit' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --user-unit' {
    run grep -c 'user-unit' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --boot' {
    run grep -c 'boot' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --priority' {
    run grep -c 'priority' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has _arguments' {
    run grep -c '_arguments' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --lines' {
    run grep -c 'lines' "$src/_journalctl"
    assert $state equals 0
}

# ─── _timedatectl ────────────────────────────────────────────────────────────

@test '_timedatectl has _arguments' {
    run grep -c '_arguments' "$src/_timedatectl"
    assert $state equals 0
}

# ─── _hostnamectl ────────────────────────────────────────────────────────────

@test '_hostnamectl has _arguments' {
    run grep -c '_arguments' "$src/_hostnamectl"
    assert $state equals 0
}

# ─── _loginctl ───────────────────────────────────────────────────────────────

@test '_loginctl has _arguments' {
    run grep -c '_arguments' "$src/_loginctl"
    assert $state equals 0
}

# ─── _systemctl ──────────────────────────────────────────────────────────────

@test '_systemctl has start' {
    run grep -c 'start' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has stop' {
    run grep -c 'stop' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has restart' {
    run grep -c 'restart' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has reload' {
    run grep -c 'reload' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has enable' {
    run grep -c 'enable' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has disable' {
    run grep -c 'disable' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has status' {
    run grep -c 'status' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has mask' {
    run grep -c 'mask' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has unmask' {
    run grep -c 'unmask' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has _arguments' {
    run grep -c '_arguments' "$src/_systemctl"
    assert $state equals 0
}

# ─── _networkctl ─────────────────────────────────────────────────────────────

@test '_networkctl has status' {
    run grep -c 'status' "$src/_networkctl"
    assert $state equals 0
}

@test '_networkctl has _arguments' {
    run grep -c '_arguments' "$src/_networkctl"
    assert $state equals 0
}

# ─── _exiftool ───────────────────────────────────────────────────────────────

@test '_exiftool has -common' {
    run grep -c 'common' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has -G' {
    run grep -c '\-G' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has -s' {
    run grep -c '\-s' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has -json' {
    run grep -c 'json' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has -csv' {
    run grep -c 'csv' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has -overwrite_original' {
    run grep -c 'overwrite_original' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has _arguments' {
    run grep -c '_arguments' "$src/_exiftool"
    assert $state equals 0
}

# ─── _pandoc ─────────────────────────────────────────────────────────────────

@test '_pandoc has --from' {
    run grep -c 'from' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --to' {
    run grep -c 'to' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --output' {
    run grep -c 'output' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --standalone' {
    run grep -c 'standalone' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --template' {
    run grep -c 'template' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --variable' {
    run grep -c 'variable' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --metadata' {
    run grep -c 'metadata' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --toc' {
    run grep -c 'toc' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --number-sections' {
    run grep -c 'number-sections' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has _arguments' {
    run grep -c '_arguments' "$src/_pandoc"
    assert $state equals 0
}

# ─── _ffprobe ────────────────────────────────────────────────────────────────

@test '_ffprobe has -show_streams' {
    run grep -c 'show.*streams' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has -show_format' {
    run grep -c 'show.*format' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has -show_packets' {
    run grep -c 'show.*packets' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has -show_frames' {
    run grep -c 'show.*frames' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has -print_format' {
    run grep -c 'print_format' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has -select_streams' {
    run grep -c 'select.*streams' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has _arguments' {
    run grep -c '_arguments' "$src/_ffprobe"
    assert $state equals 0
}

@test '_ffprobe has _files' {
    run grep -c '_files' "$src/_ffprobe"
    assert $state equals 0
}

# ─── _sox ─────────────────────────────────────────────────────────────────────

@test '_sox has --help' {
    run grep -c 'help' "$src/_sox"
    assert $state equals 0
}

@test '_sox has --version' {
    run grep -c 'version' "$src/_sox"
    assert $state equals 0
}

@test '_sox has -r' {
    run grep -c '\-r' "$src/_sox"
    assert $state equals 0
}

@test '_sox has -b' {
    run grep -c '\-b' "$src/_sox"
    assert $state equals 0
}

@test '_sox has -c' {
    run grep -c '\-c' "$src/_sox"
    assert $state equals 0
}

@test '_sox has -e' {
    run grep -c '\-e' "$src/_sox"
    assert $state equals 0
}

@test '_sox has --type' {
    run grep -c 'type' "$src/_sox"
    assert $state equals 0
}

@test '_sox has _arguments' {
    run grep -c '_arguments' "$src/_sox"
    assert $state equals 0
}

# ─── _convert ────────────────────────────────────────────────────────────────

@test '_convert has -resize' {
    run grep -c 'resize' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -quality' {
    run grep -c 'quality' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -format' {
    run grep -c 'format' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -crop' {
    run grep -c 'crop' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -rotate' {
    run grep -c 'rotate' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -flip' {
    run grep -c 'flip' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -flop' {
    run grep -c 'flop' "$src/_convert"
    assert $state equals 0
}

@test '_convert has _arguments' {
    run grep -c '_arguments' "$src/_convert"
    assert $state equals 0
}

# ─── _tesseract ──────────────────────────────────────────────────────────────

@test '_tesseract has -l' {
    run grep -c '\-l' "$src/_tesseract"
    assert $state equals 0
}

@test '_tesseract has _arguments' {
    run grep -c '_arguments' "$src/_tesseract"
    assert $state equals 0
}

@test '_tesseract has _files' {
    run grep -c '_files' "$src/_tesseract"
    assert $state equals 0
}

# ─── _tree ────────────────────────────────────────────────────────────────────

@test '_tree has -a' {
    run grep -c '\-a' "$src/_tree"
    assert $state equals 0
}

@test '_tree has -d' {
    run grep -c '\-d' "$src/_tree"
    assert $state equals 0
}

@test '_tree has -f' {
    run grep -c '\-f' "$src/_tree"
    assert $state equals 0
}

@test '_tree has -L' {
    run grep -c '\-L' "$src/_tree"
    assert $state equals 0
}

@test '_tree has -P' {
    run grep -c '\-P' "$src/_tree"
    assert $state equals 0
}

@test '_tree has -I' {
    run grep -c '\-I' "$src/_tree"
    assert $state equals 0
}

@test '_tree has --charset' {
    run grep -c 'charset' "$src/_tree"
    assert $state equals 0
}

@test '_tree has _arguments' {
    run grep -c '_arguments' "$src/_tree"
    assert $state equals 0
}

# ─── _touch ──────────────────────────────────────────────────────────────────

@test '_touch has --no-create' {
    run grep -c 'no-create' "$src/_touch"
    assert $state equals 0
}

@test '_touch has --date' {
    run grep -c 'date' "$src/_touch"
    assert $state equals 0
}

@test '_touch has --reference' {
    run grep -c 'reference' "$src/_touch"
    assert $state equals 0
}

@test '_touch has --time' {
    run grep -c 'time' "$src/_touch"
    assert $state equals 0
}

@test '_touch has _files' {
    run grep -c '_files' "$src/_touch"
    assert $state equals 0
}

@test '_touch has _arguments' {
    run grep -c '_arguments' "$src/_touch"
    assert $state equals 0
}

# ─── _tr ──────────────────────────────────────────────────────────────────────

@test '_tr has --delete' {
    run grep -c 'delete' "$src/_tr"
    assert $state equals 0
}

@test '_tr has --squeeze-repeats' {
    run grep -c 'squeeze-repeats' "$src/_tr"
    assert $state equals 0
}

@test '_tr has --complement' {
    run grep -c 'complement' "$src/_tr"
    assert $state equals 0
}

@test '_tr has --truncate-set1' {
    run grep -c 'truncate-set1' "$src/_tr"
    assert $state equals 0
}

@test '_tr has _arguments' {
    run grep -c '_arguments' "$src/_tr"
    assert $state equals 0
}

# ─── _netstat ────────────────────────────────────────────────────────────────

@test '_netstat has -t' {
    run grep -c '\-t' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has -u' {
    run grep -c '\-u' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has -l' {
    run grep -c '\-l' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has -p' {
    run grep -c '\-p' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has -n' {
    run grep -c '\-n' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has -r' {
    run grep -c '\-r' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has -a' {
    run grep -c '\-a' "$src/_netstat"
    assert $state equals 0
}

@test '_netstat has _arguments' {
    run grep -c '_arguments' "$src/_netstat"
    assert $state equals 0
}

# ─── _gpg ─────────────────────────────────────────────────────────────────────

@test '_gpg has --encrypt' {
    run grep -c 'encrypt' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --decrypt' {
    run grep -c 'decrypt' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --sign' {
    run grep -c 'sign' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --verify' {
    run grep -c 'verify' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --list-keys' {
    run grep -c 'list-keys' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --import' {
    run grep -c 'import' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --export' {
    run grep -c 'export' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --armor' {
    run grep -c 'armor' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --recipient' {
    run grep -c 'recipient' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has _arguments' {
    run grep -c '_arguments' "$src/_gpg"
    assert $state equals 0
}

# ─── _info ────────────────────────────────────────────────────────────────────

@test '_info has --apropos' {
    run grep -c 'apropos' "$src/_info"
    assert $state equals 0
}

@test '_info has --directory' {
    run grep -c 'directory' "$src/_info"
    assert $state equals 0
}

@test '_info has --node' {
    run grep -c 'node' "$src/_info"
    assert $state equals 0
}

@test '_info has --output' {
    run grep -c 'output' "$src/_info"
    assert $state equals 0
}

@test '_info has --subnodes' {
    run grep -c 'subnodes' "$src/_info"
    assert $state equals 0
}

@test '_info has _arguments' {
    run grep -c '_arguments' "$src/_info"
    assert $state equals 0
}

# ─── _7z ──────────────────────────────────────────────────────────────────────

@test '_7z has _arguments' {
    run grep -c '_arguments' "$src/_7z"
    assert $state equals 0
}

# ─── Additional _strace tests ────────────────────────────────────────────────

@test '_strace has -c' {
    run grep -c '\-c' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -C' {
    run grep -c '\-C' "$src/_strace"
    assert $state equals 0
}

@test '_strace has _arguments' {
    run grep -c '_arguments' "$src/_strace"
    assert $state equals 0
}

# ─── Additional _nmap tests ──────────────────────────────────────────────────

@test '_nmap has -sn' {
    run grep -c '\-sn' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -Pn' {
    run grep -c '\-Pn' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -oG' {
    run grep -c '\-oG' "$src/_nmap"
    assert $state equals 0
}

# ─── Additional _gpg tests ───────────────────────────────────────────────────

@test '_gpg has --keyserver' {
    run grep -c 'keyserver' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --output' {
    run grep -c 'output' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has _files' {
    run grep -c '_files' "$src/_gpg"
    assert $state equals 0
}

# ─── Additional _diff tests ──────────────────────────────────────────────────

@test '_diff has --ignore-all-space' {
    run grep -c 'ignore-all-space' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --ignore-blank-lines' {
    run grep -c 'ignore-blank-lines' "$src/_diff"
    assert $state equals 0
}

# ─── Additional _sort tests ──────────────────────────────────────────────────

@test '_sort has --stable' {
    run grep -c 'stable' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --merge' {
    run grep -c 'merge' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --ignore-leading-blanks' {
    run grep -c 'ignore-leading-blanks' "$src/_sort"
    assert $state equals 0
}

# ─── Additional _ls tests ────────────────────────────────────────────────────

@test '_ls has --classify' {
    run grep -c 'classify' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --author' {
    run grep -c 'author' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --inode' {
    run grep -c 'inode' "$src/_ls"
    assert $state equals 0
}

# ─── Additional _journalctl tests ────────────────────────────────────────────

@test '_journalctl has --no-pager' {
    run grep -c 'no-pager' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --catalog' {
    run grep -c 'catalog' "$src/_journalctl"
    assert $state equals 0
}

# ─── Additional _systemctl tests ─────────────────────────────────────────────

@test '_systemctl has daemon-reload' {
    run grep -c 'daemon-reload' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has is-active' {
    run grep -c 'is-active' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has is-enabled' {
    run grep -c 'is-enabled' "$src/_systemctl"
    assert $state equals 0
}

# ─── Additional _pandoc tests ────────────────────────────────────────────────

@test '_pandoc has --filter' {
    run grep -c 'filter' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has --highlight-style' {
    run grep -c 'highlight-style' "$src/_pandoc"
    assert $state equals 0
}

@test '_pandoc has _files' {
    run grep -c '_files' "$src/_pandoc"
    assert $state equals 0
}

# ─── Additional _rm tests ────────────────────────────────────────────────────

@test '_rm has --dir' {
    run grep -c 'dir' "$src/_rm"
    assert $state equals 0
}

# ─── Additional _mv tests ────────────────────────────────────────────────────

@test '_mv has --no-clobber' {
    run grep -c 'no-clobber' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --target-directory' {
    run grep -c 'target-directory' "$src/_mv"
    assert $state equals 0
}

# ─── Additional _convert tests ───────────────────────────────────────────────

@test '_convert has -blur' {
    run grep -c 'blur' "$src/_convert"
    assert $state equals 0
}

@test '_convert has -sharpen' {
    run grep -c 'sharpen' "$src/_convert"
    assert $state equals 0
}

@test '_convert has _files' {
    run grep -c '_files' "$src/_convert"
    assert $state equals 0
}

# ─── Additional _tree tests ──────────────────────────────────────────────────

@test '_tree has -h' {
    run grep -c '\-h' "$src/_tree"
    assert $state equals 0
}

@test '_tree has -o' {
    run grep -c '\-o' "$src/_tree"
    assert $state equals 0
}

# ─── Additional _dmesg tests ─────────────────────────────────────────────────

@test '_dmesg has --color' {
    run grep -c 'color' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --decode' {
    run grep -c 'decode' "$src/_dmesg"
    assert $state equals 0
}

# ─── Additional _loginctl tests ──────────────────────────────────────────────

# ─── Additional _exiftool tests ──────────────────────────────────────────────

@test '_exiftool has _files' {
    run grep -c '_files' "$src/_exiftool"
    assert $state equals 0
}

@test '_exiftool has -r' {
    run grep -c '\-r' "$src/_exiftool"
    assert $state equals 0
}
