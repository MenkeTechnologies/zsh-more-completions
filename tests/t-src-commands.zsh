#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Content tests for src/ completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    src="$pluginDir/src"
}

# ─── file existence ───────────────────────────────────────────────────────────

@test 'src has _grep' {
    assert "$src/_grep" is_file
}

@test 'src has _sed' {
    assert "$src/_sed" is_file
}

@test 'src has _awk' {
    assert "$src/_awk" is_file
}

@test 'src has _vim' {
    assert "$src/_vim" is_file
}

@test 'src has _docker' {
    assert "$src/_docker" is_file
}

@test 'src has _cargo' {
    assert "$src/_cargo" is_file
}

@test 'src has _make' {
    assert "$src/_make" is_file
}

@test 'src has _rsync' {
    assert "$src/_rsync" is_file
}

@test 'src has _jq' {
    assert "$src/_jq" is_file
}

@test 'src has _systemctl' {
    assert "$src/_systemctl" is_file
}

@test 'src has _emacs' {
    assert "$src/_emacs" is_file
}

@test 'src has _nano' {
    assert "$src/_nano" is_file
}

@test 'src has _screen' {
    assert "$src/_screen" is_file
}

@test 'src has _perl' {
    assert "$src/_perl" is_file
}

@test 'src has _python' {
    assert "$src/_python" is_file
}

@test 'src has _df' {
    assert "$src/_df" is_file
}

@test 'src has _du' {
    assert "$src/_du" is_file
}

@test 'src has _mount' {
    assert "$src/_mount" is_file
}

@test 'src has _unzip' {
    assert "$src/_unzip" is_file
}

# ─── _grep content ────────────────────────────────────────────────────────────

@test '_grep compdef is grep' {
    run head -1 "$src/_grep"
    assert $output same_as '#compdef grep'
}

@test '_grep has --extended-regexp' {
    run grep -cF 'extended-regexp' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --ignore-case' {
    run grep -c 'ignore-case' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --invert-match' {
    run grep -c 'invert-match' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --line-number' {
    run grep -c 'line-number' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --recursive' {
    run grep -c 'recursive' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --perl-regexp' {
    run grep -c 'perl-regexp' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --fixed-strings' {
    run grep -c 'fixed-strings' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --word-regexp' {
    run grep -c 'word-regexp' "$src/_grep"
    assert $state equals 0
}

@test '_grep uses _arguments' {
    run grep -c '_arguments' "$src/_grep"
    assert $state equals 0
}

# ─── _rsync content ───────────────────────────────────────────────────────────

@test '_rsync compdef is rsync' {
    run head -1 "$src/_rsync"
    assert $output same_as '#compdef rsync'
}

@test '_rsync has --verbose' {
    run grep -cF -- '--verbose' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --archive' {
    run grep -c 'archive' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --recursive' {
    run grep -c 'recursive' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --dry-run' {
    run grep -c 'dry-run' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --compress' {
    run grep -c 'compress' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --checksum' {
    run grep -c 'checksum' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --delete' {
    run grep -c 'delete' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --exclude' {
    run grep -c 'exclude' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --progress' {
    run grep -c 'progress' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync uses _arguments' {
    run grep -c '_arguments' "$src/_rsync"
    assert $state equals 0
}

# ─── _make content ────────────────────────────────────────────────────────────

@test '_make compdef is make' {
    run head -1 "$src/_make"
    assert $output contains '#compdef make'
}

@test '_make has --jobs' {
    run grep -c 'jobs' "$src/_make"
    assert $state equals 0
}

@test '_make has --dry-run' {
    run grep -c 'dry-run' "$src/_make"
    assert $state equals 0
}

@test '_make has --keep-going' {
    run grep -c 'keep-going' "$src/_make"
    assert $state equals 0
}

@test '_make has --directory' {
    run grep -c 'directory' "$src/_make"
    assert $state equals 0
}

@test '_make has --always-make' {
    run grep -c 'always-make' "$src/_make"
    assert $state equals 0
}

@test '_make has --help' {
    run grep -c 'help' "$src/_make"
    assert $state equals 0
}

@test '_make completes filenames' {
    run grep -c '_files' "$src/_make"
    assert $state equals 0
}

@test '_make uses _arguments' {
    run grep -c '_arguments' "$src/_make"
    assert $state equals 0
}

# ─── _sed content ─────────────────────────────────────────────────────────────

@test '_sed compdef is sed' {
    run head -1 "$src/_sed"
    assert $output same_as '#compdef sed'
}

@test '_sed has --expression' {
    run grep -c 'expression' "$src/_sed"
    assert $state equals 0
}

@test '_sed has --in-place' {
    run grep -c 'in-place' "$src/_sed"
    assert $state equals 0
}

@test '_sed has --regexp-extended' {
    run grep -c 'regexp-extended' "$src/_sed"
    assert $state equals 0
}

@test '_sed has --sandbox' {
    run grep -c 'sandbox' "$src/_sed"
    assert $state equals 0
}

@test '_sed has --null-data' {
    run grep -c 'null-data' "$src/_sed"
    assert $state equals 0
}

@test '_sed completes filenames' {
    run grep -c '_files' "$src/_sed"
    assert $state equals 0
}

# ─── _awk content ─────────────────────────────────────────────────────────────

@test '_awk compdef is awk' {
    run head -1 "$src/_awk"
    assert $output contains '#compdef awk'
}

@test '_awk has --file flag' {
    run grep -c 'file' "$src/_awk"
    assert $state equals 0
}

@test '_awk has --field-separator flag' {
    run grep -c 'field-separator' "$src/_awk"
    assert $state equals 0
}

@test '_awk has --debug flag' {
    run grep -c 'debug\|-D' "$src/_awk"
    assert $state equals 0
}

@test '_awk uses _arguments' {
    run grep -c '_arguments' "$src/_awk"
    assert $state equals 0
}

# ─── _jq content ─────────────────────────────────────────────────────────────

@test '_jq compdef is jq' {
    run head -1 "$src/_jq"
    assert $output same_as '#compdef jq'
}

@test '_jq has -c compact flag' {
    run grep -c 'compact' "$src/_jq"
    assert $state equals 0
}

@test '_jq has -r raw-output flag' {
    run grep -c 'raw' "$src/_jq"
    assert $state equals 0
}

@test '_jq has -s slurp flag' {
    run grep -c 'slurp' "$src/_jq"
    assert $state equals 0
}

@test '_jq has -M monochrome flag' {
    run grep -c 'monochrome' "$src/_jq"
    assert $state equals 0
}

@test '_jq has -S sort-keys flag' {
    run grep -c 'sort' "$src/_jq"
    assert $state equals 0
}

@test '_jq has -n null-input flag' {
    run grep -c 'null' "$src/_jq"
    assert $state equals 0
}

@test '_jq completes filenames' {
    run grep -c '_files' "$src/_jq"
    assert $state equals 0
}

# ─── _vim content ─────────────────────────────────────────────────────────────

@test '_vim compdef is vim' {
    run head -1 "$src/_vim"
    assert $output contains '#compdef vim'
}

@test '_vim has -d diff mode' {
    run grep -c 'diff' "$src/_vim"
    assert $state equals 0
}

@test '_vim has -R readonly' {
    run grep -c 'readonly\|-R\[' "$src/_vim"
    assert $state equals 0
}

@test '_vim has -b binary mode' {
    run grep -c 'binary' "$src/_vim"
    assert $state equals 0
}

@test '_vim has -C compatible' {
    run grep -c 'compatible\|-C\[' "$src/_vim"
    assert $state equals 0
}

@test '_vim uses _arguments' {
    run grep -c '_arguments' "$src/_vim"
    assert $state equals 0
}

# ─── _docker content ──────────────────────────────────────────────────────────

@test '_docker compdef is docker' {
    run head -1 "$src/_docker"
    assert $output same_as '#compdef docker'
}

@test '_docker has --debug flag' {
    run grep -c 'debug' "$src/_docker"
    assert $state equals 0
}

@test '_docker has --host flag' {
    run grep -c 'host' "$src/_docker"
    assert $state equals 0
}

@test '_docker has --tls flag' {
    run grep -c 'tls' "$src/_docker"
    assert $state equals 0
}

@test '_docker has --log-level flag' {
    run grep -c 'log-level' "$src/_docker"
    assert $state equals 0
}

@test '_docker has --context flag' {
    run grep -c 'context' "$src/_docker"
    assert $state equals 0
}

@test '_docker uses _arguments' {
    run grep -c '_arguments' "$src/_docker"
    assert $state equals 0
}

# ─── _cargo content ───────────────────────────────────────────────────────────

@test '_cargo compdef is cargo' {
    run head -1 "$src/_cargo"
    assert $output same_as '#compdef cargo'
}

@test '_cargo has --version flag' {
    run grep -c 'version' "$src/_cargo"
    assert $state equals 0
}

@test '_cargo has --verbose flag' {
    run grep -c 'verbose' "$src/_cargo"
    assert $state equals 0
}

@test '_cargo has --quiet flag' {
    run grep -c 'quiet' "$src/_cargo"
    assert $state equals 0
}

@test '_cargo has --frozen flag' {
    run grep -c 'frozen' "$src/_cargo"
    assert $state equals 0
}

@test '_cargo has --locked flag' {
    run grep -c 'locked' "$src/_cargo"
    assert $state equals 0
}

@test '_cargo uses _arguments' {
    run grep -c '_arguments' "$src/_cargo"
    assert $state equals 0
}

# ─── _systemctl content ───────────────────────────────────────────────────────

@test '_systemctl compdef includes systemctl' {
    run head -1 "$src/_systemctl"
    assert $output contains 'systemctl'
}

@test '_systemctl has unit type completion' {
    run grep -c 'unit type' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has --failed flag' {
    run grep -c 'failed' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has --quiet flag' {
    run grep -c 'quiet' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl uses _signals for signal completion' {
    run grep -c '_signals' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl passes syntax check' {
    run zsh -n "$src/_systemctl"
    assert $state equals 0
}

# ─── additional src files ─────────────────────────────────────────────────────

@test '_perl compdef is perl' {
    run head -1 "$src/_perl"
    assert $output same_as '#compdef perl'
}

@test '_python compdef is python' {
    run head -1 "$src/_python"
    assert $output same_as '#compdef python'
}

@test '_emacs uses _arguments' {
    run grep -c '_arguments' "$src/_emacs"
    assert $state equals 0
}

@test '_nano uses _arguments' {
    run grep -c '_arguments' "$src/_nano"
    assert $state equals 0
}

@test '_screen uses _arguments' {
    run grep -c '_arguments' "$src/_screen"
    assert $state equals 0
}

@test '_unzip uses _arguments' {
    run grep -c '_arguments' "$src/_unzip"
    assert $state equals 0
}

@test '_df uses _arguments' {
    run grep -c '_arguments' "$src/_df"
    assert $state equals 0
}

@test '_du uses _arguments' {
    run grep -c '_arguments' "$src/_du"
    assert $state equals 0
}

@test '_mount uses _arguments' {
    run grep -c '_arguments' "$src/_mount"
    assert $state equals 0
}

# ─── syntax checks for key src files ──────────────────────────────────────────

@test '_grep passes syntax check' {
    run zsh -n "$src/_grep"
    assert $state equals 0
}

@test '_rsync passes syntax check' {
    run zsh -n "$src/_rsync"
    assert $state equals 0
}

@test '_make passes syntax check' {
    run zsh -n "$src/_make"
    assert $state equals 0
}

@test '_sed passes syntax check' {
    run zsh -n "$src/_sed"
    assert $state equals 0
}

@test '_jq passes syntax check' {
    run zsh -n "$src/_jq"
    assert $state equals 0
}

@test '_vim passes syntax check' {
    run zsh -n "$src/_vim"
    assert $state equals 0
}

@test '_docker passes syntax check' {
    run zsh -n "$src/_docker"
    assert $state equals 0
}

@test '_cargo passes syntax check' {
    run zsh -n "$src/_cargo"
    assert $state equals 0
}

# ─── _wget content ───────────────────────────────────────────────────────────

@test 'src has _wget' {
    assert "$src/_wget" is_file
}

@test '_wget compdef is wget' {
    run head -1 "$src/_wget"
    assert $output same_as '#compdef wget'
}

@test '_wget has --recursive' {
    run grep -c 'recursive' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --output-document' {
    run grep -c 'output-document' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --continue' {
    run grep -c 'continue' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --mirror' {
    run grep -c 'mirror' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --no-check-certificate' {
    run grep -c 'no-check-certificate' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --user-agent' {
    run grep -c 'user-agent' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --timestamping' {
    run grep -c 'timestamping' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --page-requisites' {
    run grep -c 'page-requisites' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --convert-links' {
    run grep -c 'convert-links' "$src/_wget"
    assert $state equals 0
}

@test '_wget has --no-parent' {
    run grep -c 'no-parent' "$src/_wget"
    assert $state equals 0
}

@test '_wget uses _arguments' {
    run grep -c '_arguments' "$src/_wget"
    assert $state equals 0
}

@test '_wget completes URLs' {
    run grep -c '_urls' "$src/_wget"
    assert $state equals 0
}

@test '_wget passes syntax check' {
    run zsh -n "$src/_wget"
    assert $state equals 0
}

# ─── _ssh content ────────────────────────────────────────────────────────────

@test 'src has _ssh' {
    assert "$src/_ssh" is_file
}

@test '_ssh compdef is ssh' {
    run head -1 "$src/_ssh"
    assert $output same_as '#compdef ssh'
}

@test '_ssh has -i identity' {
    run grep -c 'identity' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -p port' {
    run grep -c 'port' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -C compression' {
    run grep -c 'compression' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -X X11 forwarding' {
    run grep -c 'X11 forwarding' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -J jump host' {
    run grep -c 'jump' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -N no remote command' {
    run grep -c 'not execute a remote command' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -l login name' {
    run grep -c 'login name' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has -A agent forwarding' {
    run grep -c 'authentication agent' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh has ProxyJump' {
    run grep -c 'ProxyJump' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh uses _arguments' {
    run grep -c '_arguments' "$src/_ssh"
    assert $state equals 0
}

@test '_ssh passes syntax check' {
    run zsh -n "$src/_ssh"
    assert $state equals 0
}

# ─── _gzip content ───────────────────────────────────────────────────────────

@test 'src has _gzip' {
    assert "$src/_gzip" is_file
}

@test '_gzip compdef is gzip' {
    run head -1 "$src/_gzip"
    assert $output same_as '#compdef gzip'
}

@test '_gzip has --decompress' {
    run grep -c 'decompress' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip has --keep' {
    run grep -c 'keep' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip has --fast' {
    run grep -c 'fast' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip has --best' {
    run grep -c 'best' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip has --stdout' {
    run grep -c 'stdout' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip has --recursive' {
    run grep -c 'recursive' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip has --rsyncable' {
    run grep -c 'rsyncable' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip uses _arguments' {
    run grep -c '_arguments' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip completes filenames' {
    run grep -c '_files' "$src/_gzip"
    assert $state equals 0
}

@test '_gzip passes syntax check' {
    run zsh -n "$src/_gzip"
    assert $state equals 0
}

# ─── _bzip2 content ──────────────────────────────────────────────────────────

@test 'src has _bzip2' {
    assert "$src/_bzip2" is_file
}

@test '_bzip2 compdef is bzip2' {
    run head -1 "$src/_bzip2"
    assert $output same_as '#compdef bzip2'
}

@test '_bzip2 has --decompress' {
    run grep -c 'decompress' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 has --compress' {
    run grep -c 'compress' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 has --keep' {
    run grep -c 'keep' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 has --force' {
    run grep -c 'force' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 has --small' {
    run grep -c 'small' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 uses _arguments' {
    run grep -c '_arguments' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 completes filenames' {
    run grep -c '_files' "$src/_bzip2"
    assert $state equals 0
}

@test '_bzip2 passes syntax check' {
    run zsh -n "$src/_bzip2"
    assert $state equals 0
}

# ─── _xargs content ──────────────────────────────────────────────────────────

@test 'src has _xargs' {
    assert "$src/_xargs" is_file
}

@test '_xargs compdef is xargs' {
    run head -1 "$src/_xargs"
    assert $output same_as '#compdef xargs'
}

@test '_xargs has --null' {
    run grep -c 'null' "$src/_xargs"
    assert $state equals 0
}

@test '_xargs has --max-procs' {
    run grep -c 'max-procs' "$src/_xargs"
    assert $state equals 0
}

@test '_xargs has --max-args' {
    run grep -c 'max-args' "$src/_xargs"
    assert $state equals 0
}

@test '_xargs has --replace' {
    run grep -c 'replace' "$src/_xargs"
    assert $state equals 0
}

@test '_xargs has --no-run-if-empty' {
    run grep -c 'no-run-if-empty' "$src/_xargs"
    assert $state equals 0
}

@test '_xargs uses _arguments' {
    run grep -c '_arguments' "$src/_xargs"
    assert $state equals 0
}

@test '_xargs passes syntax check' {
    run zsh -n "$src/_xargs"
    assert $state equals 0
}
