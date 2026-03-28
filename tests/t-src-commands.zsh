#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Content tests for src/ completion files
#}}}***********************************************************

@setup {
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
