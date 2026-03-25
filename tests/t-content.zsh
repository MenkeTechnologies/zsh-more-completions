#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Validate content of hand-crafted override completions
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

# ─── _claude ─────────────────────────────────────────────────────────────────

@test '_claude contains auth subcommand' {
    run grep -c "'auth:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains mcp subcommand' {
    run grep -c "'mcp:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains plugin subcommand' {
    run grep -c "'plugin:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains agents subcommand' {
    run grep -c "'agents:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains auto-mode subcommand' {
    run grep -c "'auto-mode:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains doctor subcommand' {
    run grep -c "'doctor:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains install subcommand' {
    run grep -c "'install:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains remote-control subcommand' {
    run grep -c "'remote-control:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains update subcommand' {
    run grep -c "'update:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude contains upgrade subcommand' {
    run grep -c "'upgrade:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude auth has login subcommand' {
    run grep -c "'login:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude auth has logout subcommand' {
    run grep -c "'logout:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude auth has status subcommand' {
    run grep -c "'status:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp has add subcommand' {
    run grep -c "'add:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp has remove subcommand' {
    run grep -c "'remove:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp has list subcommand' {
    run grep -c "'list:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp has serve subcommand' {
    run grep -c "'serve:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp has get subcommand' {
    run grep -c "'get:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude plugin has enable subcommand' {
    run grep -c "'enable:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude plugin has disable subcommand' {
    run grep -c "'disable:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude plugin has validate subcommand' {
    run grep -c "'validate:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude plugin has marketplace subcommand' {
    run grep -c "'marketplace:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --print global flag' {
    run grep -c -- '--print' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --model global flag' {
    run grep -c -- '--model' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --debug global flag' {
    run grep -c -- '--debug' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --help global flag' {
    run grep -c -- '--help' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --version global flag' {
    run grep -c -- '--version' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --continue global flag' {
    run grep -c -- '--continue' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --resume global flag' {
    run grep -c -- '--resume' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --dangerously-skip-permissions flag' {
    run grep -c 'dangerously-skip-permissions' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --worktree flag' {
    run grep -c -- '--worktree' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --output-format flag' {
    run grep -c 'output-format' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude install target has stable option' {
    run grep -c 'stable' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude install target has latest option' {
    run grep -c 'latest' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp add has --scope flag with values' {
    run grep -c 'local user project' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude mcp add has --transport flag' {
    run grep -c 'stdio sse http' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude permission-mode has acceptEdits value' {
    run grep -c 'acceptEdits' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude permission-mode has bypassPermissions value' {
    run grep -c 'bypassPermissions' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude effort level has low medium high max values' {
    run grep -c 'low medium high max' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude has --bare flag' {
    run grep -c -- '--bare' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude marketplace subcommands defined' {
    run grep -c 'marketplace_commands' "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude auto-mode config subcommand present' {
    run grep -c "'config:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude auto-mode defaults subcommand present' {
    run grep -c "'defaults:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

@test '_claude auto-mode critique subcommand present' {
    run grep -c "'critique:" "$pluginDir/override_src/_claude"
    assert $state equals 0
}

# ─── _curl ───────────────────────────────────────────────────────────────────

@test '_curl defines _curl_crypto_engine function' {
    run grep -c '_curl_crypto_engine' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl defines _curl_post_data function' {
    run grep -c '_curl_post_data' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --cookie option' {
    run grep -c -- '--cookie' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --data option' {
    run grep -c -- '--data' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --header option' {
    run grep -c -- '--header' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --location option' {
    run grep -c -- '--location' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --proxy option' {
    run grep -c -- '--proxy' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --user option' {
    run grep -c -- '--user' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --output option' {
    run grep -c -- '--output' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --silent option' {
    run grep -c -- '--silent' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --verbose option' {
    run grep -c -- '--verbose' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has --insecure option' {
    run grep -c -- '--insecure' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has FTP argument group' {
    run grep -c 'arg_ftp' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has HTTP argument group' {
    run grep -c 'arg_http' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

@test '_curl has connection argument group' {
    run grep -c 'arg_connection' "$pluginDir/override_src/_curl"
    assert $state equals 0
}

# ─── _lftp ───────────────────────────────────────────────────────────────────

@test '_lftp has -f flag for script file' {
    run grep -c "'-f\[" "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_lftp has --help flag' {
    run grep -c -- '--help' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_lftp has -u user flag' {
    run grep -c "'-u\[" "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_lftp has -p port flag' {
    run grep -c "'-p\[" "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_lftp has url argument' {
    run grep -c '_urls' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_lftp reads bookmarks file' {
    run grep -c 'bookmarks' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

@test '_lftp uses _arguments' {
    run grep -c '_arguments' "$pluginDir/override_src/_lftp"
    assert $state equals 0
}

# ─── _whois ──────────────────────────────────────────────────────────────────

@test '_whois defines _whois_setup function' {
    run grep -c '_whois_setup' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois defines _whois_single function' {
    run grep -c '_whois_single' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois defines _whois_multi function' {
    run grep -c '_whois_multi' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois defines _whois_fwhois function' {
    run grep -c '_whois_fwhois' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois defines _whois_hosts function' {
    run grep -c '_whois_hosts' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois defines _whois_ports function' {
    run grep -c '_whois_ports' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois includes internic.net server' {
    run grep -c 'whois.internic.net' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois includes arin.net server' {
    run grep -c 'whois.arin.net' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois includes ripe.net server' {
    run grep -c 'whois.ripe.net' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

@test '_whois uses _arguments -C for state machine' {
    run grep -c '_arguments -C' "$pluginDir/override_src/_whois"
    assert $state equals 0
}

# ─── _express ────────────────────────────────────────────────────────────────

@test '_express has --version flag' {
    run grep -c -- "'--version" "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --ejs flag' {
    run grep -c -- '--ejs' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --pug flag' {
    run grep -c -- "'--pug" "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --hbs flag' {
    run grep -c -- "'--hbs" "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --css flag' {
    run grep -c -- '--css' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --git flag' {
    run grep -c -- "'--git" "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --force flag' {
    run grep -c -- '--force' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express has --help flag' {
    run grep -c -- '--help' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express uses _arguments' {
    run grep -c '_arguments' "$pluginDir/override_src/_express"
    assert $state equals 0
}

@test '_express completes filenames' {
    run grep -c '_files' "$pluginDir/override_src/_express"
    assert $state equals 0
}
