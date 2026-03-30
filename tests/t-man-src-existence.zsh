#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Existence, header and content tests for man_src/ completions
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    msrc="$pluginDir/man_src"
}

# ============================================================
# Section 1: File existence tests (~200 tests)
# ============================================================

@test 'man_src has _nginx' {
    assert "$msrc/_nginx" is_file
}

@test 'man_src has _python' {
    assert "$msrc/_python" is_file
}

@test 'man_src has _head' {
    assert "$msrc/_head" is_file
}

@test 'man_src has _a2x' {
    assert "$msrc/_a2x" is_file
}

@test 'man_src has _zeek' {
    assert "$msrc/_zeek" is_file
}

@test 'man_src has _abrt' {
    assert "$msrc/_abrt" is_file
}

@test 'man_src has _zic' {
    assert "$msrc/_zic" is_file
}

@test 'man_src has _2to3-3.4' {
    assert "$msrc/_2to3-3.4" is_file
}

@test 'man_src has _411toppm' {
    assert "$msrc/_411toppm" is_file
}

@test 'man_src has _a2disconf' {
    assert "$msrc/_a2disconf" is_file
}

@test 'man_src has _a2enconf' {
    assert "$msrc/_a2enconf" is_file
}

@test 'man_src has _a2ps-lpr-wrapper' {
    assert "$msrc/_a2ps-lpr-wrapper" is_file
}

@test 'man_src has _aa' {
    assert "$msrc/_aa" is_file
}

@test 'man_src has _aa-easyprof' {
    assert "$msrc/_aa-easyprof" is_file
}

@test 'man_src has _aa-features-abi' {
    assert "$msrc/_aa-features-abi" is_file
}

@test 'man_src has _aapt2' {
    assert "$msrc/_aapt2" is_file
}

@test 'man_src has _ab2' {
    assert "$msrc/_ab2" is_file
}

@test 'man_src has _abc2ly' {
    assert "$msrc/_abc2ly" is_file
}

@test 'man_src has _abrt-action-analyze-ccpp-local' {
    assert "$msrc/_abrt-action-analyze-ccpp-local" is_file
}

@test 'man_src has _abrt-action-analyze-core' {
    assert "$msrc/_abrt-action-analyze-core" is_file
}

@test 'man_src has _abrt-action-analyze-vmcore' {
    assert "$msrc/_abrt-action-analyze-vmcore" is_file
}

@test 'man_src has _abrt-action-list-dsos' {
    assert "$msrc/_abrt-action-list-dsos" is_file
}

@test 'man_src has _abrt-applet' {
    assert "$msrc/_abrt-applet" is_file
}

@test 'man_src has _abrt-cli' {
    assert "$msrc/_abrt-cli" is_file
}

@test 'man_src has _accept' {
    assert "$msrc/_accept" is_file
}

@test 'man_src has _accerciser' {
    assert "$msrc/_accerciser" is_file
}

@test 'man_src has _aclocal-1.14' {
    assert "$msrc/_aclocal-1.14" is_file
}

@test 'man_src has _aclocal-1.17' {
    assert "$msrc/_aclocal-1.17" is_file
}

@test 'man_src has _aclocal-1.18' {
    assert "$msrc/_aclocal-1.18" is_file
}

@test 'man_src has _acountry' {
    assert "$msrc/_acountry" is_file
}

@test 'man_src has _acpiconf' {
    assert "$msrc/_acpiconf" is_file
}

@test 'man_src has _acpidump' {
    assert "$msrc/_acpidump" is_file
}

@test 'man_src has _activate-global-python-argcomplete3' {
    assert "$msrc/_activate-global-python-argcomplete3" is_file
}

@test 'man_src has _actool' {
    assert "$msrc/_actool" is_file
}

@test 'man_src has _ad' {
    assert "$msrc/_ad" is_file
}

@test 'man_src has _addftinfo' {
    assert "$msrc/_addftinfo" is_file
}

@test 'man_src has _adig' {
    assert "$msrc/_adig" is_file
}

@test 'man_src has _adjkerntz' {
    assert "$msrc/_adjkerntz" is_file
}

@test 'man_src has _aea' {
    assert "$msrc/_aea" is_file
}

@test 'man_src has _aecho' {
    assert "$msrc/_aecho" is_file
}

@test 'man_src has _affconvert' {
    assert "$msrc/_affconvert" is_file
}

@test 'man_src has _afl-cmin' {
    assert "$msrc/_afl-cmin" is_file
}

@test 'man_src has _afl-cmin.bash' {
    assert "$msrc/_afl-cmin.bash" is_file
}

@test 'man_src has _afmtodit' {
    assert "$msrc/_afmtodit" is_file
}

@test 'man_src has _afp_client' {
    assert "$msrc/_afp_client" is_file
}

@test 'man_src has _afpd' {
    assert "$msrc/_afpd" is_file
}

@test 'man_src has _afpfsd' {
    assert "$msrc/_afpfsd" is_file
}

@test 'man_src has _afplay' {
    assert "$msrc/_afplay" is_file
}

@test 'man_src has _afpldaptest' {
    assert "$msrc/_afpldaptest" is_file
}

@test 'man_src has _afppasswd' {
    assert "$msrc/_afppasswd" is_file
}

@test 'man_src has _afs5log' {
    assert "$msrc/_afs5log" is_file
}

@test 'man_src has _ahost' {
    assert "$msrc/_ahost" is_file
}

@test 'man_src has _airmon-ng' {
    assert "$msrc/_airmon-ng" is_file
}

@test 'man_src has _airscan-discover' {
    assert "$msrc/_airscan-discover" is_file
}

@test 'man_src has _al' {
    assert "$msrc/_al" is_file
}

@test 'man_src has _albatross' {
    assert "$msrc/_albatross" is_file
}

@test 'man_src has _alsa_in' {
    assert "$msrc/_alsa_in" is_file
}

@test 'man_src has _alsa_out' {
    assert "$msrc/_alsa_out" is_file
}

@test 'man_src has _alsa-info.sh' {
    assert "$msrc/_alsa-info.sh" is_file
}

@test 'man_src has _alsamixer' {
    assert "$msrc/_alsamixer" is_file
}

@test 'man_src has _alt-java' {
    assert "$msrc/_alt-java" is_file
}

@test 'man_src has _amd' {
    assert "$msrc/_amd" is_file
}

@test 'man_src has _amq' {
    assert "$msrc/_amq" is_file
}

@test 'man_src has _amt' {
    assert "$msrc/_amt" is_file
}

@test 'man_src has _analyzevmcore' {
    assert "$msrc/_analyzevmcore" is_file
}

@test 'man_src has _ancontrol' {
    assert "$msrc/_ancontrol" is_file
}

@test 'man_src has _anthy-dic-tool-unicode' {
    assert "$msrc/_anthy-dic-tool-unicode" is_file
}

@test 'man_src has _antiword.bin' {
    assert "$msrc/_antiword.bin" is_file
}

@test 'man_src has _apfs_unlockfv' {
    assert "$msrc/_apfs_unlockfv" is_file
}

@test 'man_src has _appdata2solv' {
    assert "$msrc/_appdata2solv" is_file
}

@test 'man_src has _apply' {
    assert "$msrc/_apply" is_file
}

@test 'man_src has _applydeltarpm' {
    assert "$msrc/_applydeltarpm" is_file
}

@test 'man_src has _apport-collect' {
    assert "$msrc/_apport-collect" is_file
}

@test 'man_src has _apropos.man-db' {
    assert "$msrc/_apropos.man-db" is_file
}

@test 'man_src has _apt-extracttemplates' {
    assert "$msrc/_apt-extracttemplates" is_file
}

@test 'man_src has _apt-key' {
    assert "$msrc/_apt-key" is_file
}

@test 'man_src has _apt-listchanges' {
    assert "$msrc/_apt-listchanges" is_file
}

@test 'man_src has _apt-sortpkgs' {
    assert "$msrc/_apt-sortpkgs" is_file
}

@test 'man_src has _apturl-gtk' {
    assert "$msrc/_apturl-gtk" is_file
}

@test 'man_src has _apxs' {
    assert "$msrc/_apxs" is_file
}

@test 'man_src has _apython' {
    assert "$msrc/_apython" is_file
}

@test 'man_src has _arara' {
    assert "$msrc/_arara" is_file
}

@test 'man_src has _aria2c' {
    assert "$msrc/_aria2c" is_file
}

@test 'man_src has _arj-register' {
    assert "$msrc/_arj-register" is_file
}

@test 'man_src has _ark' {
    assert "$msrc/_ark" is_file
}

@test 'man_src has _arlatex' {
    assert "$msrc/_arlatex" is_file
}

@test 'man_src has _arpd' {
    assert "$msrc/_arpd" is_file
}

@test 'man_src has _arpsnmp' {
    assert "$msrc/_arpsnmp" is_file
}

@test 'man_src has _arpspoof' {
    assert "$msrc/_arpspoof" is_file
}

@test 'man_src has _arptables-nft-save' {
    assert "$msrc/_arptables-nft-save" is_file
}

@test 'man_src has _arptables-save' {
    assert "$msrc/_arptables-save" is_file
}

@test 'man_src has _arpwatch' {
    assert "$msrc/_arpwatch" is_file
}

@test 'man_src has _asciidoc' {
    assert "$msrc/_asciidoc" is_file
}

@test 'man_src has _aseqsend' {
    assert "$msrc/_aseqsend" is_file
}

@test 'man_src has _asip-status' {
    assert "$msrc/_asip-status" is_file
}

@test 'man_src has _ass' {
    assert "$msrc/_ass" is_file
}

@test 'man_src has _assetutil' {
    assert "$msrc/_assetutil" is_file
}

@test 'man_src has _atlas' {
    assert "$msrc/_atlas" is_file
}

@test 'man_src has _atmconfig' {
    assert "$msrc/_atmconfig" is_file
}

@test 'man_src has _atop' {
    assert "$msrc/_atop" is_file
}

@test 'man_src has _atopacctd' {
    assert "$msrc/_atopacctd" is_file
}

@test 'man_src has _atopcat' {
    assert "$msrc/_atopcat" is_file
}

@test 'man_src has _atophide' {
    assert "$msrc/_atophide" is_file
}

@test 'man_src has _atrun' {
    assert "$msrc/_atrun" is_file
}

@test 'man_src has _audit' {
    assert "$msrc/_audit" is_file
}

@test 'man_src has _auditd' {
    assert "$msrc/_auditd" is_file
}

@test 'man_src has _auditdistd' {
    assert "$msrc/_auditdistd" is_file
}

@test 'man_src has _augenrules' {
    assert "$msrc/_augenrules" is_file
}

@test 'man_src has _aulast' {
    assert "$msrc/_aulast" is_file
}

@test 'man_src has _aulastlog' {
    assert "$msrc/_aulastlog" is_file
}

@test 'man_src has _aumvdown' {
    assert "$msrc/_aumvdown" is_file
}

@test 'man_src has _ausyscall' {
    assert "$msrc/_ausyscall" is_file
}

@test 'man_src has _authbind' {
    assert "$msrc/_authbind" is_file
}

@test 'man_src has _authconfig-tui' {
    assert "$msrc/_authconfig-tui" is_file
}

@test 'man_src has _authselect' {
    assert "$msrc/_authselect" is_file
}

@test 'man_src has _automake-1.13' {
    assert "$msrc/_automake-1.13" is_file
}

@test 'man_src has _automake-1.14' {
    assert "$msrc/_automake-1.14" is_file
}

@test 'man_src has _automake-1.17' {
    assert "$msrc/_automake-1.17" is_file
}

@test 'man_src has _automator' {
    assert "$msrc/_automator" is_file
}

@test 'man_src has _automountd' {
    assert "$msrc/_automountd" is_file
}

@test 'man_src has _autosp' {
    assert "$msrc/_autosp" is_file
}

@test 'man_src has _autounmountd' {
    assert "$msrc/_autounmountd" is_file
}

@test 'man_src has _autrace' {
    assert "$msrc/_autrace" is_file
}

@test 'man_src has _auvirt' {
    assert "$msrc/_auvirt" is_file
}

@test 'man_src has _avahi-bookmarks' {
    assert "$msrc/_avahi-bookmarks" is_file
}

@test 'man_src has _avcstat' {
    assert "$msrc/_avcstat" is_file
}

@test 'man_src has _avmediainfo' {
    assert "$msrc/_avmediainfo" is_file
}

@test 'man_src has _awinreg' {
    assert "$msrc/_awinreg" is_file
}

@test 'man_src has _axfer' {
    assert "$msrc/_axfer" is_file
}

@test 'man_src has _b64decode' {
    assert "$msrc/_b64decode" is_file
}

@test 'man_src has _b64encode' {
    assert "$msrc/_b64encode" is_file
}

@test 'man_src has _badblocks' {
    assert "$msrc/_badblocks" is_file
}

@test 'man_src has _banner' {
    assert "$msrc/_banner" is_file
}

@test 'man_src has _base58' {
    assert "$msrc/_base58" is_file
}

@test 'man_src has _basenc' {
    assert "$msrc/_basenc" is_file
}

@test 'man_src has _bashbug' {
    assert "$msrc/_bashbug" is_file
}

@test 'man_src has _bats' {
    assert "$msrc/_bats" is_file
}

@test 'man_src has _bbl2bib' {
    assert "$msrc/_bbl2bib" is_file
}

@test 'man_src has _bbqsql' {
    assert "$msrc/_bbqsql" is_file
}

@test 'man_src has _bcache-super-show' {
    assert "$msrc/_bcache-super-show" is_file
}

@test 'man_src has _bcomps' {
    assert "$msrc/_bcomps" is_file
}

@test 'man_src has _bdeinfo' {
    assert "$msrc/_bdeinfo" is_file
}

@test 'man_src has _bdemount' {
    assert "$msrc/_bdemount" is_file
}

@test 'man_src has _bdes' {
    assert "$msrc/_bdes" is_file
}

@test 'man_src has _bdftopcf' {
    assert "$msrc/_bdftopcf" is_file
}

@test 'man_src has _bf_copy' {
    assert "$msrc/_bf_copy" is_file
}

@test 'man_src has _tpm2_selftest' {
    assert "$msrc/_tpm2_selftest" is_file
}

@test 'man_src has _tpm2_create' {
    assert "$msrc/_tpm2_create" is_file
}

@test 'man_src has _tpm2_createek' {
    assert "$msrc/_tpm2_createek" is_file
}

@test 'man_src has _tpm2_getrandom' {
    assert "$msrc/_tpm2_getrandom" is_file
}

@test 'man_src has _tpm2_import' {
    assert "$msrc/_tpm2_import" is_file
}

@test 'man_src has _tpm2_send' {
    assert "$msrc/_tpm2_send" is_file
}

@test 'man_src has _tpm2_stirrandom' {
    assert "$msrc/_tpm2_stirrandom" is_file
}

@test 'man_src has _test' {
    assert "$msrc/_test" is_file
}

@test 'man_src has _test.sh' {
    assert "$msrc/_test.sh" is_file
}

@test 'man_src has _alsa-info.sh existence verified' {
    assert "$msrc/_alsa-info.sh" is_file
}

@test 'man_src has _abrt-applet existence verified' {
    assert "$msrc/_abrt-applet" is_file
}

@test 'man_src has _abrt-cli existence verified' {
    assert "$msrc/_abrt-cli" is_file
}

@test 'man_src has _arptables-nft-save existence verified' {
    assert "$msrc/_arptables-nft-save" is_file
}

@test 'man_src has _automake-1.13 existence verified' {
    assert "$msrc/_automake-1.13" is_file
}

@test 'man_src has _activate-global-python-argcomplete3 existence verified' {
    assert "$msrc/_activate-global-python-argcomplete3" is_file
}

@test 'man_src has _apport-collect existence verified' {
    assert "$msrc/_apport-collect" is_file
}

@test 'man_src has _apropos.man-db existence verified' {
    assert "$msrc/_apropos.man-db" is_file
}

@test 'man_src has _apt-extracttemplates existence verified' {
    assert "$msrc/_apt-extracttemplates" is_file
}

@test 'man_src has _anthy-dic-tool-unicode existence verified' {
    assert "$msrc/_anthy-dic-tool-unicode" is_file
}

@test 'man_src has _antiword.bin existence verified' {
    assert "$msrc/_antiword.bin" is_file
}

@test 'man_src has _authconfig-tui existence verified' {
    assert "$msrc/_authconfig-tui" is_file
}

@test 'man_src has _bcache-super-show existence verified' {
    assert "$msrc/_bcache-super-show" is_file
}

@test 'man_src has _tpm2_createek existence verified' {
    assert "$msrc/_tpm2_createek" is_file
}

@test 'man_src has _tpm2_import existence verified' {
    assert "$msrc/_tpm2_import" is_file
}

@test 'man_src has _tpm2_stirrandom existence verified' {
    assert "$msrc/_tpm2_stirrandom" is_file
}

@test 'man_src has _abrt-action-analyze-ccpp-local existence verified' {
    assert "$msrc/_abrt-action-analyze-ccpp-local" is_file
}

@test 'man_src has _abrt-action-analyze-core existence verified' {
    assert "$msrc/_abrt-action-analyze-core" is_file
}

@test 'man_src has _abrt-action-analyze-vmcore existence verified' {
    assert "$msrc/_abrt-action-analyze-vmcore" is_file
}

@test 'man_src has _abrt-action-list-dsos existence verified' {
    assert "$msrc/_abrt-action-list-dsos" is_file
}

# ============================================================
# Section 2: Compdef header tests (~50 tests)
# ============================================================

@test 'man_src/_nginx compdef is nginx' {
    run head -1 "$msrc/_nginx"
    assert $output same_as '#compdef nginx'
}

@test 'man_src/_head compdef is head' {
    run head -1 "$msrc/_head"
    assert $output same_as '#compdef head'
}

@test 'man_src/_a2x compdef is a2x' {
    run head -1 "$msrc/_a2x"
    assert $output same_as '#compdef a2x'
}

@test 'man_src/_zeek compdef is zeek' {
    run head -1 "$msrc/_zeek"
    assert $output same_as '#compdef zeek'
}

@test 'man_src/_abrt compdef is abrt' {
    run head -1 "$msrc/_abrt"
    assert $output same_as '#compdef abrt'
}

@test 'man_src/_zic compdef is zic' {
    run head -1 "$msrc/_zic"
    assert $output same_as '#compdef zic'
}

@test 'man_src/_accept compdef is accept' {
    run head -1 "$msrc/_accept"
    assert $output same_as '#compdef accept'
}

@test 'man_src/_atlas compdef is atlas' {
    run head -1 "$msrc/_atlas"
    assert $output same_as '#compdef atlas'
}

@test 'man_src/_atop compdef is atop' {
    run head -1 "$msrc/_atop"
    assert $output same_as '#compdef atop'
}

@test 'man_src/_audit compdef is audit' {
    run head -1 "$msrc/_audit"
    assert $output same_as '#compdef audit'
}

@test 'man_src/_badblocks compdef is badblocks' {
    run head -1 "$msrc/_badblocks"
    assert $output same_as '#compdef badblocks'
}

@test 'man_src/_banner compdef is banner' {
    run head -1 "$msrc/_banner"
    assert $output same_as '#compdef banner'
}

@test 'man_src/_basenc compdef is basenc' {
    run head -1 "$msrc/_basenc"
    assert $output same_as '#compdef basenc'
}

@test 'man_src/_bats compdef is bats' {
    run head -1 "$msrc/_bats"
    assert $output same_as '#compdef bats'
}

@test 'man_src/_bcomps compdef is bcomps' {
    run head -1 "$msrc/_bcomps"
    assert $output same_as '#compdef bcomps'
}

@test 'man_src/_bf_copy compdef is bf_copy' {
    run head -1 "$msrc/_bf_copy"
    assert $output same_as '#compdef bf_copy'
}

@test 'man_src/_tpm2_selftest compdef is tpm2_selftest' {
    run head -1 "$msrc/_tpm2_selftest"
    assert $output same_as '#compdef tpm2_selftest'
}

@test 'man_src/_tpm2_create compdef is tpm2_create' {
    run head -1 "$msrc/_tpm2_create"
    assert $output same_as '#compdef tpm2_create'
}

@test 'man_src/_tpm2_getrandom compdef is tpm2_getrandom' {
    run head -1 "$msrc/_tpm2_getrandom"
    assert $output same_as '#compdef tpm2_getrandom'
}

@test 'man_src/_tpm2_send compdef is tpm2_send' {
    run head -1 "$msrc/_tpm2_send"
    assert $output same_as '#compdef tpm2_send'
}

@test 'man_src/_test compdef is test' {
    run head -1 "$msrc/_test"
    assert $output same_as '#compdef test'
}

@test 'man_src/_ab2 compdef is ab2' {
    run head -1 "$msrc/_ab2"
    assert $output same_as '#compdef ab ab2'
}

@test 'man_src/_alsamixer compdef is alsamixer' {
    run head -1 "$msrc/_alsamixer"
    assert $output same_as '#compdef alsamixer'
}

@test 'man_src/_amt compdef is amt' {
    run head -1 "$msrc/_amt"
    assert $output same_as '#compdef amt'
}

@test 'man_src/_automator compdef is automator' {
    run head -1 "$msrc/_automator"
    assert $output same_as '#compdef automator'
}

@test 'man_src/_autrace compdef is autrace' {
    run head -1 "$msrc/_autrace"
    assert $output same_as '#compdef autrace'
}

@test 'man_src/_axfer compdef is axfer' {
    run head -1 "$msrc/_axfer"
    assert $output same_as '#compdef axfer'
}

@test 'man_src/_b64decode compdef is b64decode' {
    run head -1 "$msrc/_b64decode"
    assert $output same_as '#compdef b64decode'
}

@test 'man_src/_b64encode compdef is b64encode' {
    run head -1 "$msrc/_b64encode"
    assert $output same_as '#compdef b64encode'
}

@test 'man_src/_bbqsql compdef is bbqsql' {
    run head -1 "$msrc/_bbqsql"
    assert $output same_as '#compdef bbqsql'
}

@test 'man_src/_bdeinfo compdef is bdeinfo' {
    run head -1 "$msrc/_bdeinfo"
    assert $output same_as '#compdef bdeinfo'
}

@test 'man_src/_bdemount compdef is bdemount' {
    run head -1 "$msrc/_bdemount"
    assert $output same_as '#compdef bdemount'
}

@test 'man_src/_bdes compdef is bdes' {
    run head -1 "$msrc/_bdes"
    assert $output same_as '#compdef bdes'
}

@test 'man_src/_bdftopcf compdef is bdftopcf' {
    run head -1 "$msrc/_bdftopcf"
    assert $output same_as '#compdef bdftopcf'
}

@test 'man_src/_acpiconf compdef is acpiconf' {
    run head -1 "$msrc/_acpiconf"
    assert $output same_as '#compdef acpiconf'
}

@test 'man_src/_acpidump compdef is acpidump' {
    run head -1 "$msrc/_acpidump"
    assert $output same_as '#compdef acpidump'
}

@test 'man_src/_airmon-ng compdef is airmon-ng' {
    run head -1 "$msrc/_airmon-ng"
    assert $output same_as '#compdef airmon-ng'
}

@test 'man_src/_albatross compdef is albatross' {
    run head -1 "$msrc/_albatross"
    assert $output same_as '#compdef albatross'
}

@test 'man_src/_ark compdef is ark' {
    run head -1 "$msrc/_ark"
    assert $output same_as '#compdef ark'
}

@test 'man_src/_asciidoc compdef is asciidoc' {
    run head -1 "$msrc/_asciidoc"
    assert $output same_as '#compdef asciidoc'
}

@test 'man_src/_arpwatch compdef is arpwatch' {
    run head -1 "$msrc/_arpwatch"
    assert $output same_as '#compdef arpwatch'
}

@test 'man_src/_adig compdef is adig' {
    run head -1 "$msrc/_adig"
    assert $output same_as '#compdef adig'
}

@test 'man_src/_arpd compdef is arpd' {
    run head -1 "$msrc/_arpd"
    assert $output same_as '#compdef arpd'
}

@test 'man_src/_arpsnmp compdef is arpsnmp' {
    run head -1 "$msrc/_arpsnmp"
    assert $output same_as '#compdef arpsnmp'
}

@test 'man_src/_arpspoof compdef is arpspoof' {
    run head -1 "$msrc/_arpspoof"
    assert $output same_as '#compdef arpspoof'
}

@test 'man_src/_aecho compdef is aecho' {
    run head -1 "$msrc/_aecho"
    assert $output same_as '#compdef aecho'
}

@test 'man_src/_ahost compdef is ahost' {
    run head -1 "$msrc/_ahost"
    assert $output same_as '#compdef ahost'
}

@test 'man_src/_accerciser compdef is accerciser' {
    run head -1 "$msrc/_accerciser"
    assert $output same_as '#compdef accerciser'
}

@test 'man_src/_acountry compdef is acountry' {
    run head -1 "$msrc/_acountry"
    assert $output same_as '#compdef acountry'
}

# ============================================================
# Section 3: Autogenerated comment tests (~100 tests)
# ============================================================

@test 'man_src/_nginx has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_nginx"
    assert $state equals 0
}

@test 'man_src/_python has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_python"
    assert $state equals 0
}

@test 'man_src/_head has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_head"
    assert $state equals 0
}

@test 'man_src/_a2x has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_a2x"
    assert $state equals 0
}

@test 'man_src/_zeek has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_zeek"
    assert $state equals 0
}

@test 'man_src/_zic has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_zic"
    assert $state equals 0
}

@test 'man_src/_accept has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_accept"
    assert $state equals 0
}

@test 'man_src/_atlas has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_atlas"
    assert $state equals 0
}

@test 'man_src/_atop has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_atop"
    assert $state equals 0
}

@test 'man_src/_audit has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_audit"
    assert $state equals 0
}

@test 'man_src/_badblocks has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_badblocks"
    assert $state equals 0
}

@test 'man_src/_banner has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_banner"
    assert $state equals 0
}

@test 'man_src/_basenc has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_basenc"
    assert $state equals 0
}

@test 'man_src/_bats has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bats"
    assert $state equals 0
}

@test 'man_src/_bcomps has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bcomps"
    assert $state equals 0
}

@test 'man_src/_bf_copy has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bf_copy"
    assert $state equals 0
}

@test 'man_src/_tpm2_selftest has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_tpm2_selftest"
    assert $state equals 0
}

@test 'man_src/_tpm2_create has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_tpm2_create"
    assert $state equals 0
}

@test 'man_src/_tpm2_getrandom has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_tpm2_getrandom"
    assert $state equals 0
}

@test 'man_src/_tpm2_send has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_tpm2_send"
    assert $state equals 0
}

@test 'man_src/_test has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_test"
    assert $state equals 0
}

@test 'man_src/_ab2 has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_ab2"
    assert $state equals 0
}

@test 'man_src/_alsamixer has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_alsamixer"
    assert $state equals 0
}

@test 'man_src/_amt has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_amt"
    assert $state equals 0
}

@test 'man_src/_automator has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_automator"
    assert $state equals 0
}

@test 'man_src/_autrace has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_autrace"
    assert $state equals 0
}

@test 'man_src/_axfer has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_axfer"
    assert $state equals 0
}

@test 'man_src/_b64decode has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_b64decode"
    assert $state equals 0
}

@test 'man_src/_b64encode has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_b64encode"
    assert $state equals 0
}

@test 'man_src/_bbqsql has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bbqsql"
    assert $state equals 0
}

@test 'man_src/_bdeinfo has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bdeinfo"
    assert $state equals 0
}

@test 'man_src/_bdemount has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bdemount"
    assert $state equals 0
}

@test 'man_src/_bdes has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bdes"
    assert $state equals 0
}

@test 'man_src/_bdftopcf has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_bdftopcf"
    assert $state equals 0
}

@test 'man_src/_acpiconf has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_acpiconf"
    assert $state equals 0
}

@test 'man_src/_acpidump has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_acpidump"
    assert $state equals 0
}

@test 'man_src/_airmon-ng has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_airmon-ng"
    assert $state equals 0
}

@test 'man_src/_albatross has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_albatross"
    assert $state equals 0
}

@test 'man_src/_ark has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_ark"
    assert $state equals 0
}

@test 'man_src/_asciidoc has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_asciidoc"
    assert $state equals 0
}

@test 'man_src/_arpwatch has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arpwatch"
    assert $state equals 0
}

@test 'man_src/_2to3-3.4 has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_2to3-3.4"
    assert $state equals 0
}

@test 'man_src/_411toppm has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_411toppm"
    assert $state equals 0
}

@test 'man_src/_a2disconf has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_a2disconf"
    assert $state equals 0
}

@test 'man_src/_a2enconf has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_a2enconf"
    assert $state equals 0
}

@test 'man_src/_a2ps-lpr-wrapper has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_a2ps-lpr-wrapper"
    assert $state equals 0
}

@test 'man_src/_aa has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aa"
    assert $state equals 0
}

@test 'man_src/_aa-easyprof has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aa-easyprof"
    assert $state equals 0
}

@test 'man_src/_aa-features-abi has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aa-features-abi"
    assert $state equals 0
}

@test 'man_src/_abc2ly has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_abc2ly"
    assert $state equals 0
}

@test 'man_src/_accerciser has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_accerciser"
    assert $state equals 0
}

@test 'man_src/_aclocal-1.14 has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aclocal-1.14"
    assert $state equals 0
}

@test 'man_src/_aclocal-1.17 has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aclocal-1.17"
    assert $state equals 0
}

@test 'man_src/_aclocal-1.18 has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aclocal-1.18"
    assert $state equals 0
}

@test 'man_src/_acountry has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_acountry"
    assert $state equals 0
}

@test 'man_src/_actool has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_actool"
    assert $state equals 0
}

@test 'man_src/_ad has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_ad"
    assert $state equals 0
}

@test 'man_src/_addftinfo has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_addftinfo"
    assert $state equals 0
}

@test 'man_src/_adig has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_adig"
    assert $state equals 0
}

@test 'man_src/_adjkerntz has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_adjkerntz"
    assert $state equals 0
}

@test 'man_src/_aea has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aea"
    assert $state equals 0
}

@test 'man_src/_aecho has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aecho"
    assert $state equals 0
}

@test 'man_src/_affconvert has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_affconvert"
    assert $state equals 0
}

@test 'man_src/_afmtodit has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afmtodit"
    assert $state equals 0
}

@test 'man_src/_afp_client has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afp_client"
    assert $state equals 0
}

@test 'man_src/_afpd has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afpd"
    assert $state equals 0
}

@test 'man_src/_afpfsd has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afpfsd"
    assert $state equals 0
}

@test 'man_src/_afplay has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afplay"
    assert $state equals 0
}

@test 'man_src/_afpldaptest has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afpldaptest"
    assert $state equals 0
}

@test 'man_src/_afppasswd has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afppasswd"
    assert $state equals 0
}

@test 'man_src/_afs5log has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_afs5log"
    assert $state equals 0
}

@test 'man_src/_ahost has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_ahost"
    assert $state equals 0
}

@test 'man_src/_al has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_al"
    assert $state equals 0
}

@test 'man_src/_alsa_in has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_alsa_in"
    assert $state equals 0
}

@test 'man_src/_alsa_out has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_alsa_out"
    assert $state equals 0
}

@test 'man_src/_alt-java has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_alt-java"
    assert $state equals 0
}

@test 'man_src/_amd has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_amd"
    assert $state equals 0
}

@test 'man_src/_amq has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_amq"
    assert $state equals 0
}

@test 'man_src/_analyzevmcore has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_analyzevmcore"
    assert $state equals 0
}

@test 'man_src/_ancontrol has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_ancontrol"
    assert $state equals 0
}

@test 'man_src/_apfs_unlockfv has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apfs_unlockfv"
    assert $state equals 0
}

@test 'man_src/_appdata2solv has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_appdata2solv"
    assert $state equals 0
}

@test 'man_src/_apply has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apply"
    assert $state equals 0
}

@test 'man_src/_applydeltarpm has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_applydeltarpm"
    assert $state equals 0
}

@test 'man_src/_apt-key has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apt-key"
    assert $state equals 0
}

@test 'man_src/_apt-listchanges has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apt-listchanges"
    assert $state equals 0
}

@test 'man_src/_apt-sortpkgs has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apt-sortpkgs"
    assert $state equals 0
}

@test 'man_src/_apturl-gtk has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apturl-gtk"
    assert $state equals 0
}

@test 'man_src/_apxs has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_apxs"
    assert $state equals 0
}

@test 'man_src/_arara has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arara"
    assert $state equals 0
}

@test 'man_src/_aria2c has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_aria2c"
    assert $state equals 0
}

@test 'man_src/_arj-register has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arj-register"
    assert $state equals 0
}

@test 'man_src/_arlatex has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arlatex"
    assert $state equals 0
}

@test 'man_src/_arpd has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arpd"
    assert $state equals 0
}

@test 'man_src/_arpsnmp has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arpsnmp"
    assert $state equals 0
}

@test 'man_src/_arpspoof has Autogenerated comment' {
    run grep -c 'Autogenerated' "$msrc/_arpspoof"
    assert $state equals 0
}

# ============================================================
# Section 4: Syntax check tests (~50 tests)
# ============================================================

@test 'man_src/_nginx passes syntax check' {
    run zsh -n "$msrc/_nginx"
    assert $state equals 0
}

@test 'man_src/_python passes syntax check' {
    run zsh -n "$msrc/_python"
    assert $state equals 0
}

@test 'man_src/_head passes syntax check' {
    run zsh -n "$msrc/_head"
    assert $state equals 0
}

@test 'man_src/_a2x passes syntax check' {
    run zsh -n "$msrc/_a2x"
    assert $state equals 0
}

@test 'man_src/_zeek passes syntax check' {
    run zsh -n "$msrc/_zeek"
    assert $state equals 0
}

@test 'man_src/_abrt passes syntax check' {
    run zsh -n "$msrc/_abrt"
    assert $state equals 0
}

@test 'man_src/_zic passes syntax check' {
    run zsh -n "$msrc/_zic"
    assert $state equals 0
}

@test 'man_src/_accept passes syntax check' {
    run zsh -n "$msrc/_accept"
    assert $state equals 0
}

@test 'man_src/_atlas passes syntax check' {
    run zsh -n "$msrc/_atlas"
    assert $state equals 0
}

@test 'man_src/_atop passes syntax check' {
    run zsh -n "$msrc/_atop"
    assert $state equals 0
}

@test 'man_src/_audit passes syntax check' {
    run zsh -n "$msrc/_audit"
    assert $state equals 0
}

@test 'man_src/_badblocks passes syntax check' {
    run zsh -n "$msrc/_badblocks"
    assert $state equals 0
}

@test 'man_src/_banner passes syntax check' {
    run zsh -n "$msrc/_banner"
    assert $state equals 0
}

@test 'man_src/_basenc passes syntax check' {
    run zsh -n "$msrc/_basenc"
    assert $state equals 0
}

@test 'man_src/_bats passes syntax check' {
    run zsh -n "$msrc/_bats"
    assert $state equals 0
}

@test 'man_src/_bcomps passes syntax check' {
    run zsh -n "$msrc/_bcomps"
    assert $state equals 0
}

@test 'man_src/_bf_copy passes syntax check' {
    run zsh -n "$msrc/_bf_copy"
    assert $state equals 0
}

@test 'man_src/_tpm2_selftest passes syntax check' {
    run zsh -n "$msrc/_tpm2_selftest"
    assert $state equals 0
}

@test 'man_src/_tpm2_create passes syntax check' {
    run zsh -n "$msrc/_tpm2_create"
    assert $state equals 0
}

@test 'man_src/_tpm2_getrandom passes syntax check' {
    run zsh -n "$msrc/_tpm2_getrandom"
    assert $state equals 0
}

@test 'man_src/_tpm2_send passes syntax check' {
    run zsh -n "$msrc/_tpm2_send"
    assert $state equals 0
}

@test 'man_src/_test passes syntax check' {
    run zsh -n "$msrc/_test"
    assert $state equals 0
}

@test 'man_src/_ab2 passes syntax check' {
    run zsh -n "$msrc/_ab2"
    assert $state equals 0
}

@test 'man_src/_alsamixer passes syntax check' {
    run zsh -n "$msrc/_alsamixer"
    assert $state equals 0
}

@test 'man_src/_amt passes syntax check' {
    run zsh -n "$msrc/_amt"
    assert $state equals 0
}

@test 'man_src/_automator passes syntax check' {
    run zsh -n "$msrc/_automator"
    assert $state equals 0
}

@test 'man_src/_autrace passes syntax check' {
    run zsh -n "$msrc/_autrace"
    assert $state equals 0
}

@test 'man_src/_axfer passes syntax check' {
    run zsh -n "$msrc/_axfer"
    assert $state equals 0
}

@test 'man_src/_b64decode passes syntax check' {
    run zsh -n "$msrc/_b64decode"
    assert $state equals 0
}

@test 'man_src/_b64encode passes syntax check' {
    run zsh -n "$msrc/_b64encode"
    assert $state equals 0
}

@test 'man_src/_bbqsql passes syntax check' {
    run zsh -n "$msrc/_bbqsql"
    assert $state equals 0
}

@test 'man_src/_bdeinfo passes syntax check' {
    run zsh -n "$msrc/_bdeinfo"
    assert $state equals 0
}

@test 'man_src/_bdemount passes syntax check' {
    run zsh -n "$msrc/_bdemount"
    assert $state equals 0
}

@test 'man_src/_bdes passes syntax check' {
    run zsh -n "$msrc/_bdes"
    assert $state equals 0
}

@test 'man_src/_bdftopcf passes syntax check' {
    run zsh -n "$msrc/_bdftopcf"
    assert $state equals 0
}

@test 'man_src/_acpiconf passes syntax check' {
    run zsh -n "$msrc/_acpiconf"
    assert $state equals 0
}

@test 'man_src/_acpidump passes syntax check' {
    run zsh -n "$msrc/_acpidump"
    assert $state equals 0
}

@test 'man_src/_airmon-ng passes syntax check' {
    run zsh -n "$msrc/_airmon-ng"
    assert $state equals 0
}

@test 'man_src/_albatross passes syntax check' {
    run zsh -n "$msrc/_albatross"
    assert $state equals 0
}

@test 'man_src/_ark passes syntax check' {
    run zsh -n "$msrc/_ark"
    assert $state equals 0
}

@test 'man_src/_asciidoc passes syntax check' {
    run zsh -n "$msrc/_asciidoc"
    assert $state equals 0
}

@test 'man_src/_arpwatch passes syntax check' {
    run zsh -n "$msrc/_arpwatch"
    assert $state equals 0
}

@test 'man_src/_adig passes syntax check' {
    run zsh -n "$msrc/_adig"
    assert $state equals 0
}

@test 'man_src/_arpd passes syntax check' {
    run zsh -n "$msrc/_arpd"
    assert $state equals 0
}

@test 'man_src/_arpsnmp passes syntax check' {
    run zsh -n "$msrc/_arpsnmp"
    assert $state equals 0
}

@test 'man_src/_arpspoof passes syntax check' {
    run zsh -n "$msrc/_arpspoof"
    assert $state equals 0
}

@test 'man_src/_aecho passes syntax check' {
    run zsh -n "$msrc/_aecho"
    assert $state equals 0
}

@test 'man_src/_ahost passes syntax check' {
    run zsh -n "$msrc/_ahost"
    assert $state equals 0
}

@test 'man_src/_accerciser passes syntax check' {
    run zsh -n "$msrc/_accerciser"
    assert $state equals 0
}

@test 'man_src/_acountry passes syntax check' {
    run zsh -n "$msrc/_acountry"
    assert $state equals 0
}

# ============================================================
# Section 5: _arguments usage tests (~50 tests)
# ============================================================

@test 'man_src/_nginx uses _arguments' {
    run grep -c '_arguments' "$msrc/_nginx"
    assert $state equals 0
}

@test 'man_src/_python uses _arguments' {
    run grep -c '_arguments' "$msrc/_python"
    assert $state equals 0
}

@test 'man_src/_head uses _arguments' {
    run grep -c '_arguments' "$msrc/_head"
    assert $state equals 0
}

@test 'man_src/_a2x uses _arguments' {
    run grep -c '_arguments' "$msrc/_a2x"
    assert $state equals 0
}

@test 'man_src/_zeek uses _arguments' {
    run grep -c '_arguments' "$msrc/_zeek"
    assert $state equals 0
}

@test 'man_src/_abrt uses _arguments' {
    run grep -c '_arguments' "$msrc/_abrt"
    assert $state equals 0
}

@test 'man_src/_zic uses _arguments' {
    run grep -c '_arguments' "$msrc/_zic"
    assert $state equals 0
}

@test 'man_src/_accept uses _arguments' {
    run grep -c '_arguments' "$msrc/_accept"
    assert $state equals 0
}

@test 'man_src/_atlas uses _arguments' {
    run grep -c '_arguments' "$msrc/_atlas"
    assert $state equals 0
}

@test 'man_src/_atop uses _arguments' {
    run grep -c '_arguments' "$msrc/_atop"
    assert $state equals 0
}

@test 'man_src/_audit uses _arguments' {
    run grep -c '_arguments' "$msrc/_audit"
    assert $state equals 0
}

@test 'man_src/_badblocks uses _arguments' {
    run grep -c '_arguments' "$msrc/_badblocks"
    assert $state equals 0
}

@test 'man_src/_banner uses _arguments' {
    run grep -c '_arguments' "$msrc/_banner"
    assert $state equals 0
}

@test 'man_src/_basenc uses _arguments' {
    run grep -c '_arguments' "$msrc/_basenc"
    assert $state equals 0
}

@test 'man_src/_bats uses _arguments' {
    run grep -c '_arguments' "$msrc/_bats"
    assert $state equals 0
}

@test 'man_src/_bcomps uses _arguments' {
    run grep -c '_arguments' "$msrc/_bcomps"
    assert $state equals 0
}

@test 'man_src/_bf_copy uses _arguments' {
    run grep -c '_arguments' "$msrc/_bf_copy"
    assert $state equals 0
}

@test 'man_src/_tpm2_selftest uses _arguments' {
    run grep -c '_arguments' "$msrc/_tpm2_selftest"
    assert $state equals 0
}

@test 'man_src/_tpm2_create uses _arguments' {
    run grep -c '_arguments' "$msrc/_tpm2_create"
    assert $state equals 0
}

@test 'man_src/_tpm2_getrandom uses _arguments' {
    run grep -c '_arguments' "$msrc/_tpm2_getrandom"
    assert $state equals 0
}

@test 'man_src/_tpm2_send uses _arguments' {
    run grep -c '_arguments' "$msrc/_tpm2_send"
    assert $state equals 0
}

@test 'man_src/_test uses _arguments' {
    run grep -c '_arguments' "$msrc/_test"
    assert $state equals 0
}

@test 'man_src/_ab2 uses _arguments' {
    run grep -c '_arguments' "$msrc/_ab2"
    assert $state equals 0
}

@test 'man_src/_alsamixer uses _arguments' {
    run grep -c '_arguments' "$msrc/_alsamixer"
    assert $state equals 0
}

@test 'man_src/_amt uses _arguments' {
    run grep -c '_arguments' "$msrc/_amt"
    assert $state equals 0
}

@test 'man_src/_automator uses _arguments' {
    run grep -c '_arguments' "$msrc/_automator"
    assert $state equals 0
}

@test 'man_src/_autrace uses _arguments' {
    run grep -c '_arguments' "$msrc/_autrace"
    assert $state equals 0
}

@test 'man_src/_axfer uses _arguments' {
    run grep -c '_arguments' "$msrc/_axfer"
    assert $state equals 0
}

@test 'man_src/_b64decode uses _arguments' {
    run grep -c '_arguments' "$msrc/_b64decode"
    assert $state equals 0
}

@test 'man_src/_b64encode uses _arguments' {
    run grep -c '_arguments' "$msrc/_b64encode"
    assert $state equals 0
}

@test 'man_src/_bbqsql uses _arguments' {
    run grep -c '_arguments' "$msrc/_bbqsql"
    assert $state equals 0
}

@test 'man_src/_bdeinfo uses _arguments' {
    run grep -c '_arguments' "$msrc/_bdeinfo"
    assert $state equals 0
}

@test 'man_src/_bdemount uses _arguments' {
    run grep -c '_arguments' "$msrc/_bdemount"
    assert $state equals 0
}

@test 'man_src/_bdes uses _arguments' {
    run grep -c '_arguments' "$msrc/_bdes"
    assert $state equals 0
}

@test 'man_src/_bdftopcf uses _arguments' {
    run grep -c '_arguments' "$msrc/_bdftopcf"
    assert $state equals 0
}

@test 'man_src/_acpiconf uses _arguments' {
    run grep -c '_arguments' "$msrc/_acpiconf"
    assert $state equals 0
}

@test 'man_src/_acpidump uses _arguments' {
    run grep -c '_arguments' "$msrc/_acpidump"
    assert $state equals 0
}

@test 'man_src/_airmon-ng uses _arguments' {
    run grep -c '_arguments' "$msrc/_airmon-ng"
    assert $state equals 0
}

@test 'man_src/_albatross uses _arguments' {
    run grep -c '_arguments' "$msrc/_albatross"
    assert $state equals 0
}

@test 'man_src/_ark uses _arguments' {
    run grep -c '_arguments' "$msrc/_ark"
    assert $state equals 0
}

@test 'man_src/_asciidoc uses _arguments' {
    run grep -c '_arguments' "$msrc/_asciidoc"
    assert $state equals 0
}

@test 'man_src/_arpwatch uses _arguments' {
    run grep -c '_arguments' "$msrc/_arpwatch"
    assert $state equals 0
}

@test 'man_src/_adig uses _arguments' {
    run grep -c '_arguments' "$msrc/_adig"
    assert $state equals 0
}

@test 'man_src/_arpd uses _arguments' {
    run grep -c '_arguments' "$msrc/_arpd"
    assert $state equals 0
}

@test 'man_src/_arpsnmp uses _arguments' {
    run grep -c '_arguments' "$msrc/_arpsnmp"
    assert $state equals 0
}

@test 'man_src/_arpspoof uses _arguments' {
    run grep -c '_arguments' "$msrc/_arpspoof"
    assert $state equals 0
}

@test 'man_src/_aecho uses _arguments' {
    run grep -c '_arguments' "$msrc/_aecho"
    assert $state equals 0
}

@test 'man_src/_ahost uses _arguments' {
    run grep -c '_arguments' "$msrc/_ahost"
    assert $state equals 0
}

@test 'man_src/_accerciser uses _arguments' {
    run grep -c '_arguments' "$msrc/_accerciser"
    assert $state equals 0
}

@test 'man_src/_acountry uses _arguments' {
    run grep -c '_arguments' "$msrc/_acountry"
    assert $state equals 0
}

# ============================================================
# Section 6: local arguments pattern tests (~50 tests)
# ============================================================

@test 'man_src/_nginx declares local arguments' {
    run grep -c 'local arguments' "$msrc/_nginx"
    assert $state equals 0
}

@test 'man_src/_python declares local arguments' {
    run grep -c 'local arguments' "$msrc/_python"
    assert $state equals 0
}

@test 'man_src/_head declares local arguments' {
    run grep -c 'local arguments' "$msrc/_head"
    assert $state equals 0
}

@test 'man_src/_a2x declares local arguments' {
    run grep -c 'local arguments' "$msrc/_a2x"
    assert $state equals 0
}

@test 'man_src/_zeek declares local arguments' {
    run grep -c 'local arguments' "$msrc/_zeek"
    assert $state equals 0
}

@test 'man_src/_abrt declares local arguments' {
    run grep -c 'local arguments' "$msrc/_abrt"
    assert $state equals 0
}

@test 'man_src/_zic declares local arguments' {
    run grep -c 'local arguments' "$msrc/_zic"
    assert $state equals 0
}

@test 'man_src/_accept declares local arguments' {
    run grep -c 'local arguments' "$msrc/_accept"
    assert $state equals 0
}

@test 'man_src/_atlas declares local arguments' {
    run grep -c 'local arguments' "$msrc/_atlas"
    assert $state equals 0
}

@test 'man_src/_atop declares local arguments' {
    run grep -c 'local arguments' "$msrc/_atop"
    assert $state equals 0
}

@test 'man_src/_audit declares local arguments' {
    run grep -c 'local arguments' "$msrc/_audit"
    assert $state equals 0
}

@test 'man_src/_badblocks declares local arguments' {
    run grep -c 'local arguments' "$msrc/_badblocks"
    assert $state equals 0
}

@test 'man_src/_banner declares local arguments' {
    run grep -c 'local arguments' "$msrc/_banner"
    assert $state equals 0
}

@test 'man_src/_basenc declares local arguments' {
    run grep -c 'local arguments' "$msrc/_basenc"
    assert $state equals 0
}

@test 'man_src/_bats declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bats"
    assert $state equals 0
}

@test 'man_src/_bcomps declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bcomps"
    assert $state equals 0
}

@test 'man_src/_bf_copy declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bf_copy"
    assert $state equals 0
}

@test 'man_src/_tpm2_selftest declares local arguments' {
    run grep -c 'local arguments' "$msrc/_tpm2_selftest"
    assert $state equals 0
}

@test 'man_src/_tpm2_create declares local arguments' {
    run grep -c 'local arguments' "$msrc/_tpm2_create"
    assert $state equals 0
}

@test 'man_src/_tpm2_getrandom declares local arguments' {
    run grep -c 'local arguments' "$msrc/_tpm2_getrandom"
    assert $state equals 0
}

@test 'man_src/_tpm2_send declares local arguments' {
    run grep -c 'local arguments' "$msrc/_tpm2_send"
    assert $state equals 0
}

@test 'man_src/_test declares local arguments' {
    run grep -c 'local arguments' "$msrc/_test"
    assert $state equals 0
}

@test 'man_src/_ab2 declares local arguments' {
    run grep -c 'local arguments' "$msrc/_ab2"
    assert $state equals 0
}

@test 'man_src/_alsamixer declares local arguments' {
    run grep -c 'local arguments' "$msrc/_alsamixer"
    assert $state equals 0
}

@test 'man_src/_amt declares local arguments' {
    run grep -c 'local arguments' "$msrc/_amt"
    assert $state equals 0
}

@test 'man_src/_automator declares local arguments' {
    run grep -c 'local arguments' "$msrc/_automator"
    assert $state equals 0
}

@test 'man_src/_autrace declares local arguments' {
    run grep -c 'local arguments' "$msrc/_autrace"
    assert $state equals 0
}

@test 'man_src/_axfer declares local arguments' {
    run grep -c 'local arguments' "$msrc/_axfer"
    assert $state equals 0
}

@test 'man_src/_b64decode declares local arguments' {
    run grep -c 'local arguments' "$msrc/_b64decode"
    assert $state equals 0
}

@test 'man_src/_b64encode declares local arguments' {
    run grep -c 'local arguments' "$msrc/_b64encode"
    assert $state equals 0
}

@test 'man_src/_bbqsql declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bbqsql"
    assert $state equals 0
}

@test 'man_src/_bdeinfo declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bdeinfo"
    assert $state equals 0
}

@test 'man_src/_bdemount declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bdemount"
    assert $state equals 0
}

@test 'man_src/_bdes declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bdes"
    assert $state equals 0
}

@test 'man_src/_bdftopcf declares local arguments' {
    run grep -c 'local arguments' "$msrc/_bdftopcf"
    assert $state equals 0
}

@test 'man_src/_acpiconf declares local arguments' {
    run grep -c 'local arguments' "$msrc/_acpiconf"
    assert $state equals 0
}

@test 'man_src/_acpidump declares local arguments' {
    run grep -c 'local arguments' "$msrc/_acpidump"
    assert $state equals 0
}

@test 'man_src/_airmon-ng declares local arguments' {
    run grep -c 'local arguments' "$msrc/_airmon-ng"
    assert $state equals 0
}

@test 'man_src/_albatross declares local arguments' {
    run grep -c 'local arguments' "$msrc/_albatross"
    assert $state equals 0
}

@test 'man_src/_ark declares local arguments' {
    run grep -c 'local arguments' "$msrc/_ark"
    assert $state equals 0
}

@test 'man_src/_asciidoc declares local arguments' {
    run grep -c 'local arguments' "$msrc/_asciidoc"
    assert $state equals 0
}

@test 'man_src/_arpwatch declares local arguments' {
    run grep -c 'local arguments' "$msrc/_arpwatch"
    assert $state equals 0
}

@test 'man_src/_adig declares local arguments' {
    run grep -c 'local arguments' "$msrc/_adig"
    assert $state equals 0
}

@test 'man_src/_arpd declares local arguments' {
    run grep -c 'local arguments' "$msrc/_arpd"
    assert $state equals 0
}

@test 'man_src/_arpsnmp declares local arguments' {
    run grep -c 'local arguments' "$msrc/_arpsnmp"
    assert $state equals 0
}

@test 'man_src/_arpspoof declares local arguments' {
    run grep -c 'local arguments' "$msrc/_arpspoof"
    assert $state equals 0
}

@test 'man_src/_aecho declares local arguments' {
    run grep -c 'local arguments' "$msrc/_aecho"
    assert $state equals 0
}

@test 'man_src/_ahost declares local arguments' {
    run grep -c 'local arguments' "$msrc/_ahost"
    assert $state equals 0
}

@test 'man_src/_accerciser declares local arguments' {
    run grep -c 'local arguments' "$msrc/_accerciser"
    assert $state equals 0
}

@test 'man_src/_acountry declares local arguments' {
    run grep -c 'local arguments' "$msrc/_acountry"
    assert $state equals 0
}

# ============================================================
# Section 7: _files completion tests (~30 tests)
# ============================================================

@test 'man_src/_nginx references _files' {
    run grep -c '_files' "$msrc/_nginx"
    assert $state equals 0
}

@test 'man_src/_a2x references _files' {
    run grep -c '_files' "$msrc/_a2x"
    assert $state equals 0
}

@test 'man_src/_asciidoc references _files' {
    run grep -c '_files' "$msrc/_asciidoc"
    assert $state equals 0
}

@test 'man_src/_ark references _files' {
    run grep -c '_files' "$msrc/_ark"
    assert $state equals 0
}

@test 'man_src/_bats references _files' {
    run grep -c '_files' "$msrc/_bats"
    assert $state equals 0
}

@test 'man_src/_aria2c references _files' {
    run grep -c '_files' "$msrc/_aria2c"
    assert $state equals 0
}

@test 'man_src/_atlas references _files' {
    run grep -c '_files' "$msrc/_atlas"
    assert $state equals 0
}

@test 'man_src/_tpm2_create references _files' {
    run grep -c '_files' "$msrc/_tpm2_create"
    assert $state equals 0
}

@test 'man_src/_tpm2_import references _files' {
    run grep -c '_files' "$msrc/_tpm2_import"
    assert $state equals 0
}

@test 'man_src/_tpm2_createek references _files' {
    run grep -c '_files' "$msrc/_tpm2_createek"
    assert $state equals 0
}

@test 'man_src/_bdeinfo references _files' {
    run grep -c '_files' "$msrc/_bdeinfo"
    assert $state equals 0
}

@test 'man_src/_bdemount references _files' {
    run grep -c '_files' "$msrc/_bdemount"
    assert $state equals 0
}

@test 'man_src/_axfer references _files' {
    run grep -c '_files' "$msrc/_axfer"
    assert $state equals 0
}

@test 'man_src/_badblocks references _files' {
    run grep -c '_files' "$msrc/_badblocks"
    assert $state equals 0
}

@test 'man_src/_arpwatch references _files' {
    run grep -c '_files' "$msrc/_arpwatch"
    assert $state equals 0
}

@test 'man_src/_atop references _files' {
    run grep -c '_files' "$msrc/_atop"
    assert $state equals 0
}

@test 'man_src/_albatross references _files' {
    run grep -c '_files' "$msrc/_albatross"
    assert $state equals 0
}

@test 'man_src/_abc2ly references _files' {
    run grep -c '_files' "$msrc/_abc2ly"
    assert $state equals 0
}

@test 'man_src/_afmtodit references _files' {
    run grep -c '_files' "$msrc/_afmtodit"
    assert $state equals 0
}

@test 'man_src/_afplay references _files' {
    run grep -c '_files' "$msrc/_afplay"
    assert $state equals 0
}

@test 'man_src/_affconvert references _files' {
    run grep -c '_files' "$msrc/_affconvert"
    assert $state equals 0
}

@test 'man_src/_arlatex references _files' {
    run grep -c '_files' "$msrc/_arlatex"
    assert $state equals 0
}

@test 'man_src/_automator references _files' {
    run grep -c '_files' "$msrc/_automator"
    assert $state equals 0
}

@test 'man_src/_alsamixer references _files' {
    run grep -c '_files' "$msrc/_alsamixer"
    assert $state equals 0
}

@test 'man_src/_bdftopcf references _files' {
    run grep -c '_files' "$msrc/_bdftopcf"
    assert $state equals 0
}

@test 'man_src/_arara references _files' {
    run grep -c '_files' "$msrc/_arara"
    assert $state equals 0
}

@test 'man_src/_bf_copy references _files' {
    run grep -c '_files' "$msrc/_bf_copy"
    assert $state equals 0
}

@test 'man_src/_basenc references _files' {
    run grep -c '_files' "$msrc/_basenc"
    assert $state equals 0
}

@test 'man_src/_head references _files' {
    run grep -c '_files' "$msrc/_head"
    assert $state equals 0
}

@test 'man_src/_autrace references _files' {
    run grep -c '_files' "$msrc/_autrace"
    assert $state equals 0
}
