#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Additional existence tests for man_src/ completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    msrc="$pluginDir/man_src"
}

# ─── File existence tests ───────────────────────────────────────────────────

@test 'man_src has _CAT' {
    assert "$msrc/_CAT" is_file
}

@test 'man_src has _DeRez' {
    assert "$msrc/_DeRez" is_file
}

@test 'man_src has _FileCheck' {
    assert "$msrc/_FileCheck" is_file
}

@test 'man_src has _FileCheck-10' {
    assert "$msrc/_FileCheck-10" is_file
}

@test 'man_src has _FileCheck-11' {
    assert "$msrc/_FileCheck-11" is_file
}

@test 'man_src has _FileCheck-13' {
    assert "$msrc/_FileCheck-13" is_file
}

@test 'man_src has _FileCheck-14' {
    assert "$msrc/_FileCheck-14" is_file
}

@test 'man_src has _GetFileInfo' {
    assert "$msrc/_GetFileInfo" is_file
}

@test 'man_src has _GraphicsMagick++-config' {
    assert "$msrc/_GraphicsMagick++-config" is_file
}

@test 'man_src has _GraphicsMagick-config' {
    assert "$msrc/_GraphicsMagick-config" is_file
}

@test 'man_src has _GraphicsMagickWand-config' {
    assert "$msrc/_GraphicsMagickWand-config" is_file
}

@test 'man_src has _LS' {
    assert "$msrc/_LS" is_file
}

@test 'man_src has _MAKEDEV' {
    assert "$msrc/_MAKEDEV" is_file
}

@test 'man_src has _Magick++-config' {
    assert "$msrc/_Magick++-config" is_file
}

@test 'man_src has _Magick-config' {
    assert "$msrc/_Magick-config" is_file
}

@test 'man_src has _MagickCore-config' {
    assert "$msrc/_MagickCore-config" is_file
}

@test 'man_src has _MagickWand-config' {
    assert "$msrc/_MagickWand-config" is_file
}

@test 'man_src has _PasswordService' {
    assert "$msrc/_PasswordService" is_file
}

@test 'man_src has _ResMerger' {
    assert "$msrc/_ResMerger" is_file
}

@test 'man_src has _Rez' {
    assert "$msrc/_Rez" is_file
}

@test 'man_src has _SIPdump' {
    assert "$msrc/_SIPdump" is_file
}

@test 'man_src has _Thunar' {
    assert "$msrc/_Thunar" is_file
}

@test 'man_src has _UTscapy' {
    assert "$msrc/_UTscapy" is_file
}

@test 'man_src has _Wand-config' {
    assert "$msrc/_Wand-config" is_file
}

@test 'man_src has _Xquartz' {
    assert "$msrc/_Xquartz" is_file
}

@test 'man_src has _arm-linux-gnueabihf-ar' {
    assert "$msrc/_arm-linux-gnueabihf-ar" is_file
}

@test 'man_src has _arm-linux-gnueabihf-dwp' {
    assert "$msrc/_arm-linux-gnueabihf-dwp" is_file
}

@test 'man_src has _arm-linux-gnueabihf-gcc-ar' {
    assert "$msrc/_arm-linux-gnueabihf-gcc-ar" is_file
}

@test 'man_src has _arm-linux-gnueabihf-gcc-nm' {
    assert "$msrc/_arm-linux-gnueabihf-gcc-nm" is_file
}

@test 'man_src has _arm-linux-gnueabihf-gcc-ranlib' {
    assert "$msrc/_arm-linux-gnueabihf-gcc-ranlib" is_file
}

@test 'man_src has _arm-linux-gnueabihf-python-config' {
    assert "$msrc/_arm-linux-gnueabihf-python-config" is_file
}

@test 'man_src has _arm-linux-gnueabihf-python2.7-config' {
    assert "$msrc/_arm-linux-gnueabihf-python2.7-config" is_file
}

@test 'man_src has _arm-linux-gnueabihf-python3-config' {
    assert "$msrc/_arm-linux-gnueabihf-python3-config" is_file
}

@test 'man_src has _arm-linux-gnueabihf-python3.4-config' {
    assert "$msrc/_arm-linux-gnueabihf-python3.4-config" is_file
}

@test 'man_src has _arm-linux-gnueabihf-python3.4m-config' {
    assert "$msrc/_arm-linux-gnueabihf-python3.4m-config" is_file
}

@test 'man_src has _arm-linux-gnueabihf-python3m-config' {
    assert "$msrc/_arm-linux-gnueabihf-python3m-config" is_file
}

@test 'man_src has _arm-linux-gnueabihf-run' {
    assert "$msrc/_arm-linux-gnueabihf-run" is_file
}

@test 'man_src has _asysocksproxy' {
    assert "$msrc/_asysocksproxy" is_file
}

@test 'man_src has _asysockssec' {
    assert "$msrc/_asysockssec" is_file
}

@test 'man_src has _asysockstunnel' {
    assert "$msrc/_asysockstunnel" is_file
}

@test 'man_src has _atalkd' {
    assert "$msrc/_atalkd" is_file
}

@test 'man_src has _atd' {
    assert "$msrc/_atd" is_file
}

@test 'man_src has _atk6-address6' {
    assert "$msrc/_atk6-address6" is_file
}

@test 'man_src has _atk6-denial6' {
    assert "$msrc/_atk6-denial6" is_file
}

@test 'man_src has _atk6-detect-new-ip6' {
    assert "$msrc/_atk6-detect-new-ip6" is_file
}

@test 'man_src has _atk6-detect_sniffer6' {
    assert "$msrc/_atk6-detect_sniffer6" is_file
}

@test 'man_src has _atk6-dnsrevenum6' {
    assert "$msrc/_atk6-dnsrevenum6" is_file
}

@test 'man_src has _atk6-dos-new-ip6' {
    assert "$msrc/_atk6-dos-new-ip6" is_file
}

@test 'man_src has _atk6-dump_router6' {
    assert "$msrc/_atk6-dump_router6" is_file
}

@test 'man_src has _atk6-exploit6' {
    assert "$msrc/_atk6-exploit6" is_file
}

@test 'man_src has _atk6-extract_hosts6' {
    assert "$msrc/_atk6-extract_hosts6" is_file
}

@test 'man_src has _atk6-fake_dhcps6' {
    assert "$msrc/_atk6-fake_dhcps6" is_file
}

@test 'man_src has _atk6-fake_dns6d' {
    assert "$msrc/_atk6-fake_dns6d" is_file
}

@test 'man_src has _atk6-fake_dnsupdate6' {
    assert "$msrc/_atk6-fake_dnsupdate6" is_file
}

@test 'man_src has _atk6-fake_mipv6' {
    assert "$msrc/_atk6-fake_mipv6" is_file
}

@test 'man_src has _atk6-fake_mld26' {
    assert "$msrc/_atk6-fake_mld26" is_file
}

@test 'man_src has _atk6-fake_mld6' {
    assert "$msrc/_atk6-fake_mld6" is_file
}

@test 'man_src has _atk6-fake_mldrouter6' {
    assert "$msrc/_atk6-fake_mldrouter6" is_file
}

@test 'man_src has _atk6-fake_router6' {
    assert "$msrc/_atk6-fake_router6" is_file
}

@test 'man_src has _atk6-fake_solicitate6' {
    assert "$msrc/_atk6-fake_solicitate6" is_file
}

@test 'man_src has _atk6-firewall6' {
    assert "$msrc/_atk6-firewall6" is_file
}

@test 'man_src has _atk6-flood_advertise6' {
    assert "$msrc/_atk6-flood_advertise6" is_file
}

@test 'man_src has _atk6-flood_dhcpc6' {
    assert "$msrc/_atk6-flood_dhcpc6" is_file
}

@test 'man_src has _atk6-flood_mld26' {
    assert "$msrc/_atk6-flood_mld26" is_file
}

@test 'man_src has _atk6-flood_mld6' {
    assert "$msrc/_atk6-flood_mld6" is_file
}

@test 'man_src has _atk6-flood_mldrouter6' {
    assert "$msrc/_atk6-flood_mldrouter6" is_file
}

@test 'man_src has _atk6-flood_rs6' {
    assert "$msrc/_atk6-flood_rs6" is_file
}

@test 'man_src has _atk6-flood_solicitate6' {
    assert "$msrc/_atk6-flood_solicitate6" is_file
}

@test 'man_src has _atk6-implementation6d' {
    assert "$msrc/_atk6-implementation6d" is_file
}

@test 'man_src has _atk6-inject_alive6' {
    assert "$msrc/_atk6-inject_alive6" is_file
}

@test 'man_src has _atk6-inverse_lookup6' {
    assert "$msrc/_atk6-inverse_lookup6" is_file
}

@test 'man_src has _atk6-kill_router6' {
    assert "$msrc/_atk6-kill_router6" is_file
}

@test 'man_src has _atk6-ndpexhaust6' {
    assert "$msrc/_atk6-ndpexhaust6" is_file
}

@test 'man_src has _atk6-node_query6' {
    assert "$msrc/_atk6-node_query6" is_file
}

@test 'man_src has _atk6-parasite6' {
    assert "$msrc/_atk6-parasite6" is_file
}

@test 'man_src has _atk6-randicmp6' {
    assert "$msrc/_atk6-randicmp6" is_file
}

@test 'man_src has _atk6-redir6' {
    assert "$msrc/_atk6-redir6" is_file
}

@test 'man_src has _atk6-redirsniff6' {
    assert "$msrc/_atk6-redirsniff6" is_file
}

@test 'man_src has _atk6-rsmurf6' {
    assert "$msrc/_atk6-rsmurf6" is_file
}

@test 'man_src has _atk6-sendpees6' {
    assert "$msrc/_atk6-sendpees6" is_file
}

@test 'man_src has _atk6-sendpeesmp6' {
    assert "$msrc/_atk6-sendpeesmp6" is_file
}

@test 'man_src has _atk6-smurf6' {
    assert "$msrc/_atk6-smurf6" is_file
}

@test 'man_src has _atk6-toobig6' {
    assert "$msrc/_atk6-toobig6" is_file
}

@test 'man_src has _atk6-toobigsniff6' {
    assert "$msrc/_atk6-toobigsniff6" is_file
}

@test 'man_src has _bf_copy-bdb' {
    assert "$msrc/_bf_copy-bdb" is_file
}

@test 'man_src has _bf_tar' {
    assert "$msrc/_bf_tar" is_file
}

@test 'man_src has _bf_tar-bdb' {
    assert "$msrc/_bf_tar-bdb" is_file
}

@test 'man_src has _bhyvectl' {
    assert "$msrc/_bhyvectl" is_file
}

@test 'man_src has _bhyveload' {
    assert "$msrc/_bhyveload" is_file
}

@test 'man_src has _bib2gls' {
    assert "$msrc/_bib2gls" is_file
}

@test 'man_src has _bibcop' {
    assert "$msrc/_bibcop" is_file
}

@test 'man_src has _bibdoiadd' {
    assert "$msrc/_bibdoiadd" is_file
}

@test 'man_src has _bibmradd' {
    assert "$msrc/_bibmradd" is_file
}

@test 'man_src has _biburl2doi' {
    assert "$msrc/_biburl2doi" is_file
}

@test 'man_src has _bibzbladd' {
    assert "$msrc/_bibzbladd" is_file
}

@test 'man_src has _bind9-config' {
    assert "$msrc/_bind9-config" is_file
}

@test 'man_src has _bintrans' {
    assert "$msrc/_bintrans" is_file
}

@test 'man_src has _bioradtopgm' {
    assert "$msrc/_bioradtopgm" is_file
}

@test 'man_src has _bitcode_strip' {
    assert "$msrc/_bitcode_strip" is_file
}

@test 'man_src has _bitmap' {
    assert "$msrc/_bitmap" is_file
}

@test 'man_src has _bittwist' {
    assert "$msrc/_bittwist" is_file
}

@test 'man_src has _bittwiste' {
    assert "$msrc/_bittwiste" is_file
}

@test 'man_src has _blacklistctl' {
    assert "$msrc/_blacklistctl" is_file
}

@test 'man_src has _blacklistd' {
    assert "$msrc/_blacklistd" is_file
}

@test 'man_src has _bladeRF-cli' {
    assert "$msrc/_bladeRF-cli" is_file
}

@test 'man_src has _blescan' {
    assert "$msrc/_blescan" is_file
}

@test 'man_src has _blivet-gui' {
    assert "$msrc/_blivet-gui" is_file
}

@test 'man_src has _blkmapd' {
    assert "$msrc/_blkmapd" is_file
}

@test 'man_src has _blkpr' {
    assert "$msrc/_blkpr" is_file
}

@test 'man_src has _bluefish' {
    assert "$msrc/_bluefish" is_file
}

@test 'man_src has _bm4' {
    assert "$msrc/_bm4" is_file
}

@test 'man_src has _bookshelf-listallfonts' {
    assert "$msrc/_bookshelf-listallfonts" is_file
}

@test 'man_src has _bookshelf-mkfontsel' {
    assert "$msrc/_bookshelf-mkfontsel" is_file
}

@test 'man_src has _boot0cfg' {
    assert "$msrc/_boot0cfg" is_file
}

@test 'man_src has _bootparamd' {
    assert "$msrc/_bootparamd" is_file
}

@test 'man_src has _bootptest' {
    assert "$msrc/_bootptest" is_file
}

@test 'man_src has _bpdb3' {
    assert "$msrc/_bpdb3" is_file
}

@test 'man_src has _bputil' {
    assert "$msrc/_bputil" is_file
}

@test 'man_src has _bpython-2.7' {
    assert "$msrc/_bpython-2.7" is_file
}

@test 'man_src has _bpython3-curses' {
    assert "$msrc/_bpython3-curses" is_file
}

@test 'man_src has _brandelf' {
    assert "$msrc/_brandelf" is_file
}

@test 'man_src has _brltty-cldr' {
    assert "$msrc/_brltty-cldr" is_file
}

@test 'man_src has _brltty-clip' {
    assert "$msrc/_brltty-clip" is_file
}

@test 'man_src has _brltty-lscmds' {
    assert "$msrc/_brltty-lscmds" is_file
}

@test 'man_src has _brltty-lsinc' {
    assert "$msrc/_brltty-lsinc" is_file
}

@test 'man_src has _brltty-morse' {
    assert "$msrc/_brltty-morse" is_file
}

@test 'man_src has _bscalc' {
    assert "$msrc/_bscalc" is_file
}

@test 'man_src has _bsd-from' {
    assert "$msrc/_bsd-from" is_file
}

@test 'man_src has _bsd-mailx' {
    assert "$msrc/_bsd-mailx" is_file
}

@test 'man_src has _bsdmake' {
    assert "$msrc/_bsdmake" is_file
}

@test 'man_src has _bsh' {
    assert "$msrc/_bsh" is_file
}

@test 'man_src has _bsnmpget' {
    assert "$msrc/_bsnmpget" is_file
}

@test 'man_src has _bsnmpset' {
    assert "$msrc/_bsnmpset" is_file
}

@test 'man_src has _bsnmpwalk' {
    assert "$msrc/_bsnmpwalk" is_file
}

@test 'man_src has _bsqldb' {
    assert "$msrc/_bsqldb" is_file
}

@test 'man_src has _bsqlodbc' {
    assert "$msrc/_bsqlodbc" is_file
}

@test 'man_src has _bssh' {
    assert "$msrc/_bssh" is_file
}

@test 'man_src has _bt3cfw' {
    assert "$msrc/_bt3cfw" is_file
}

@test 'man_src has _bthost' {
    assert "$msrc/_bthost" is_file
}

@test 'man_src has _btrace' {
    assert "$msrc/_btrace" is_file
}

@test 'man_src has _btrecord' {
    assert "$msrc/_btrecord" is_file
}

@test 'man_src has _btreplay' {
    assert "$msrc/_btreplay" is_file
}

@test 'man_src has _btrfs-find-root' {
    assert "$msrc/_btrfs-find-root" is_file
}

@test 'man_src has _btrfs-zero-log' {
    assert "$msrc/_btrfs-zero-log" is_file
}

@test 'man_src has _btsockstat' {
    assert "$msrc/_btsockstat" is_file
}

@test 'man_src has _btt' {
    assert "$msrc/_btt" is_file
}

@test 'man_src has _btxld' {
    assert "$msrc/_btxld" is_file
}

@test 'man_src has _bugpoint' {
    assert "$msrc/_bugpoint" is_file
}

@test 'man_src has _bugpoint-10' {
    assert "$msrc/_bugpoint-10" is_file
}

@test 'man_src has _bugpoint-11' {
    assert "$msrc/_bugpoint-11" is_file
}

@test 'man_src has _bugpoint-13' {
    assert "$msrc/_bugpoint-13" is_file
}

@test 'man_src has _bugpoint-14' {
    assert "$msrc/_bugpoint-14" is_file
}

@test 'man_src has _bugpoint-3.5' {
    assert "$msrc/_bugpoint-3.5" is_file
}

@test 'man_src has _bugpoint-8' {
    assert "$msrc/_bugpoint-8" is_file
}

@test 'man_src has _builder' {
    assert "$msrc/_builder" is_file
}

@test 'man_src has _bundle2.7' {
    assert "$msrc/_bundle2.7" is_file
}

@test 'man_src has _bundledoc' {
    assert "$msrc/_bundledoc" is_file
}

@test 'man_src has _bvnc' {
    assert "$msrc/_bvnc" is_file
}

@test 'man_src has _bzz' {
    assert "$msrc/_bzz" is_file
}

@test 'man_src has _caca-config' {
    assert "$msrc/_caca-config" is_file
}

@test 'man_src has _cache_check' {
    assert "$msrc/_cache_check" is_file
}

@test 'man_src has _cache_dump' {
    assert "$msrc/_cache_dump" is_file
}

@test 'man_src has _cache_metadata_size' {
    assert "$msrc/_cache_metadata_size" is_file
}

@test 'man_src has _cache_repair' {
    assert "$msrc/_cache_repair" is_file
}

@test 'man_src has _cache_restore' {
    assert "$msrc/_cache_restore" is_file
}

@test 'man_src has _cameratopam' {
    assert "$msrc/_cameratopam" is_file
}

@test 'man_src has _cancel' {
    assert "$msrc/_cancel" is_file
}

@test 'man_src has _cancel.cups' {
    assert "$msrc/_cancel.cups" is_file
}

@test 'man_src has _cap_mkdb' {
    assert "$msrc/_cap_mkdb" is_file
}

@test 'man_src has _captest' {
    assert "$msrc/_captest" is_file
}

@test 'man_src has _captype' {
    assert "$msrc/_captype" is_file
}

@test 'man_src has _catfish' {
    assert "$msrc/_catfish" is_file
}

@test 'man_src has _ccache2kirbi' {
    assert "$msrc/_ccache2kirbi" is_file
}

@test 'man_src has _ccacheedit' {
    assert "$msrc/_ccacheedit" is_file
}

@test 'man_src has _ccdconfig' {
    assert "$msrc/_ccdconfig" is_file
}

@test 'man_src has _ccomps' {
    assert "$msrc/_ccomps" is_file
}

@test 'man_src has _ccsm' {
    assert "$msrc/_ccsm" is_file
}

@test 'man_src has _cdb' {
    assert "$msrc/_cdb" is_file
}

@test 'man_src has _cdcontrol' {
    assert "$msrc/_cdcontrol" is_file
}

@test 'man_src has _cdparanoia' {
    assert "$msrc/_cdparanoia" is_file
}

@test 'man_src has _cec-compliance' {
    assert "$msrc/_cec-compliance" is_file
}

@test 'man_src has _cec-ctl' {
    assert "$msrc/_cec-ctl" is_file
}

@test 'man_src has _cec-follower' {
    assert "$msrc/_cec-follower" is_file
}

@test 'man_src has _cert-sync' {
    assert "$msrc/_cert-sync" is_file
}

@test 'man_src has _certgraph' {
    assert "$msrc/_certgraph" is_file
}

@test 'man_src has _cgdisk' {
    assert "$msrc/_cgdisk" is_file
}

@test 'man_src has _cgpt' {
    assert "$msrc/_cgpt" is_file
}

@test 'man_src has _chacl' {
    assert "$msrc/_chacl" is_file
}

@test 'man_src has _changeme' {
    assert "$msrc/_changeme" is_file
}

@test 'man_src has _chat' {
    assert "$msrc/_chat" is_file
}

@test 'man_src has _chattr' {
    assert "$msrc/_chattr" is_file
}

@test 'man_src has _chcat' {
    assert "$msrc/_chcat" is_file
}

@test 'man_src has _check-regexp' {
    assert "$msrc/_check-regexp" is_file
}

@test 'man_src has _check_lft_balance.pl' {
    assert "$msrc/_check_lft_balance.pl" is_file
}

@test 'man_src has _checkinstall' {
    assert "$msrc/_checkinstall" is_file
}

@test 'man_src has _checkisomd5' {
    assert "$msrc/_checkisomd5" is_file
}

@test 'man_src has _checknr' {
    assert "$msrc/_checknr" is_file
}

@test 'man_src has _checkpolicy' {
    assert "$msrc/_checkpolicy" is_file
}

@test 'man_src has _checkrad' {
    assert "$msrc/_checkrad" is_file
}

@test 'man_src has _checkstyle' {
    assert "$msrc/_checkstyle" is_file
}

@test 'man_src has _checkupdates' {
    assert "$msrc/_checkupdates" is_file
}

@test 'man_src has _cheetah' {
    assert "$msrc/_cheetah" is_file
}

@test 'man_src has _cherryd' {
    assert "$msrc/_cherryd" is_file
}

@test 'man_src has _cherryd3' {
    assert "$msrc/_cherryd3" is_file
}

@test 'man_src has _chez' {
    assert "$msrc/_chez" is_file
}

@test 'man_src has _chg' {
    assert "$msrc/_chg" is_file
}

@test 'man_src has _chio' {
    assert "$msrc/_chio" is_file
}

@test 'man_src has _chirpw' {
    assert "$msrc/_chirpw" is_file
}

@test 'man_src has _chkbin' {
    assert "$msrc/_chkbin" is_file
}

@test 'man_src has _chkgrp' {
    assert "$msrc/_chkgrp" is_file
}

@test 'man_src has _chklref' {
    assert "$msrc/_chklref" is_file
}

@test 'man_src has _chooser' {
    assert "$msrc/_chooser" is_file
}

@test 'man_src has _chpl' {
    assert "$msrc/_chpl" is_file
}

@test 'man_src has _chpldoc' {
    assert "$msrc/_chpldoc" is_file
}

@test 'man_src has _chronic' {
    assert "$msrc/_chronic" is_file
}

@test 'man_src has _chronyc' {
    assert "$msrc/_chronyc" is_file
}

@test 'man_src has _chronyd' {
    assert "$msrc/_chronyd" is_file
}

@test 'man_src has _chvt' {
    assert "$msrc/_chvt" is_file
}

@test 'man_src has _cifs.idmap' {
    assert "$msrc/_cifs.idmap" is_file
}

@test 'man_src has _cifs.upcall' {
    assert "$msrc/_cifs.upcall" is_file
}

@test 'man_src has _cifscreds' {
    assert "$msrc/_cifscreds" is_file
}

@test 'man_src has _cifsiostat' {
    assert "$msrc/_cifsiostat" is_file
}

@test 'man_src has _citeproc' {
    assert "$msrc/_citeproc" is_file
}

@test 'man_src has _citeproc-lua' {
    assert "$msrc/_citeproc-lua" is_file
}

@test 'man_src has _ckdist' {
    assert "$msrc/_ckdist" is_file
}

@test 'man_src has _ckeygen3' {
    assert "$msrc/_ckeygen3" is_file
}

@test 'man_src has _clang++-10' {
    assert "$msrc/_clang++-10" is_file
}

@test 'man_src has _clang++-11' {
    assert "$msrc/_clang++-11" is_file
}

@test 'man_src has _clang++-12' {
    assert "$msrc/_clang++-12" is_file
}

@test 'man_src has _clang++-18' {
    assert "$msrc/_clang++-18" is_file
}

@test 'man_src has _clang-12' {
    assert "$msrc/_clang-12" is_file
}

@test 'man_src has _clang-13' {
    assert "$msrc/_clang-13" is_file
}

@test 'man_src has _clang-18' {
    assert "$msrc/_clang-18" is_file
}

@test 'man_src has _clang-3.5' {
    assert "$msrc/_clang-3.5" is_file
}

@test 'man_src has _clang-8' {
    assert "$msrc/_clang-8" is_file
}

@test 'man_src has _clang-9' {
    assert "$msrc/_clang-9" is_file
}

@test 'man_src has _clang-apply-replacements-3.5' {
    assert "$msrc/_clang-apply-replacements-3.5" is_file
}

@test 'man_src has _clang-check-3.5' {
    assert "$msrc/_clang-check-3.5" is_file
}

@test 'man_src has _clang-tblgen-3.5' {
    assert "$msrc/_clang-tblgen-3.5" is_file
}

@test 'man_src has _clang-tidy-3.5' {
    assert "$msrc/_clang-tidy-3.5" is_file
}

@test 'man_src has _claws-mail' {
    assert "$msrc/_claws-mail" is_file
}

@test 'man_src has _clisp-link' {
    assert "$msrc/_clisp-link" is_file
}

@test 'man_src has _clockdiff' {
    assert "$msrc/_clockdiff" is_file
}

@test 'man_src has _cloud-id' {
    assert "$msrc/_cloud-id" is_file
}

@test 'man_src has _cloud-init' {
    assert "$msrc/_cloud-init" is_file
}

@test 'man_src has _cluster' {
    assert "$msrc/_cluster" is_file
}

@test 'man_src has _cmail' {
    assert "$msrc/_cmail" is_file
}

@test 'man_src has _cmake-gui' {
    assert "$msrc/_cmake-gui" is_file
}

@test 'man_src has _cmis-client' {
    assert "$msrc/_cmis-client" is_file
}

@test 'man_src has _cmospwd' {
    assert "$msrc/_cmospwd" is_file
}

@test 'man_src has _cnid_dbd' {
    assert "$msrc/_cnid_dbd" is_file
}

@test 'man_src has _cnid_metad' {
    assert "$msrc/_cnid_metad" is_file
}

@test 'man_src has _cob-config' {
    assert "$msrc/_cob-config" is_file
}

@test 'man_src has _cobc' {
    assert "$msrc/_cobc" is_file
}

@test 'man_src has _cobcrun' {
    assert "$msrc/_cobcrun" is_file
}

@test 'man_src has _codepage' {
    assert "$msrc/_codepage" is_file
}

@test 'man_src has _codesign' {
    assert "$msrc/_codesign" is_file
}

@test 'man_src has _codesign_allocate' {
    assert "$msrc/_codesign_allocate" is_file
}

@test 'man_src has _cola' {
    assert "$msrc/_cola" is_file
}

@test 'man_src has _colldef' {
    assert "$msrc/_colldef" is_file
}

@test 'man_src has _colortail' {
    assert "$msrc/_colortail" is_file
}

@test 'man_src has _combinedeltarpm' {
    assert "$msrc/_combinedeltarpm" is_file
}

@test 'man_src has _comm' {
    assert "$msrc/_comm" is_file
}

@test 'man_src has _comp_err' {
    assert "$msrc/_comp_err" is_file
}

@test 'man_src has _compile_et' {
    assert "$msrc/_compile_et" is_file
}

@test 'man_src has _compiz' {
    assert "$msrc/_compiz" is_file
}

@test 'man_src has _compiz-boxmenu' {
    assert "$msrc/_compiz-boxmenu" is_file
}

@test 'man_src has _compiz-boxmenu-daemon' {
    assert "$msrc/_compiz-boxmenu-daemon" is_file
}

@test 'man_src has _compiz-boxmenu-dlist' {
    assert "$msrc/_compiz-boxmenu-dlist" is_file
}

@test 'man_src has _compiz-boxmenu-dplist' {
    assert "$msrc/_compiz-boxmenu-dplist" is_file
}

@test 'man_src has _compiz-boxmenu-vplist' {
    assert "$msrc/_compiz-boxmenu-vplist" is_file
}

@test 'man_src has _compiz-boxmenu-wlist' {
    assert "$msrc/_compiz-boxmenu-wlist" is_file
}

@test 'man_src has _compose' {
    assert "$msrc/_compose" is_file
}

@test 'man_src has _composefs-info' {
    assert "$msrc/_composefs-info" is_file
}

@test 'man_src has _compsize' {
    assert "$msrc/_compsize" is_file
}

@test 'man_src has _compton-trans' {
    assert "$msrc/_compton-trans" is_file
}

@test 'man_src has _conchftp' {
    assert "$msrc/_conchftp" is_file
}

@test 'man_src has _config' {
    assert "$msrc/_config" is_file
}

@test 'man_src has _conmon' {
    assert "$msrc/_conmon" is_file
}

@test 'man_src has _connect' {
    assert "$msrc/_connect" is_file
}

@test 'man_src has _connect-proxy' {
    assert "$msrc/_connect-proxy" is_file
}

@test 'man_src has _conntrack' {
    assert "$msrc/_conntrack" is_file
}

@test 'man_src has _containerd' {
    assert "$msrc/_containerd" is_file
}

@test 'man_src has _context' {
    assert "$msrc/_context" is_file
}

@test 'man_src has _contextjit' {
    assert "$msrc/_contextjit" is_file
}

@test 'man_src has _convert-ly' {
    assert "$msrc/_convert-ly" is_file
}

@test 'man_src has _convertgls2bib' {
    assert "$msrc/_convertgls2bib" is_file
}

@test 'man_src has _coredumpctl' {
    assert "$msrc/_coredumpctl" is_file
}

@test 'man_src has _corelist5' {
    assert "$msrc/_corelist5" is_file
}

@test 'man_src has _corelist5.18' {
    assert "$msrc/_corelist5.18" is_file
}

@test 'man_src has _corelist5.28' {
    assert "$msrc/_corelist5.28" is_file
}

@test 'man_src has _corelist5.30' {
    assert "$msrc/_corelist5.30" is_file
}

@test 'man_src has _corelist5.34' {
    assert "$msrc/_corelist5.34" is_file
}

@test 'man_src has _cpanel_json_xs' {
    assert "$msrc/_cpanel_json_xs" is_file
}

@test 'man_src has _cpanfile-dump' {
    assert "$msrc/_cpanfile-dump" is_file
}

@test 'man_src has _cpucontrol' {
    assert "$msrc/_cpucontrol" is_file
}

@test 'man_src has _cracklib-packer' {
    assert "$msrc/_cracklib-packer" is_file
}

@test 'man_src has _crashinfo' {
    assert "$msrc/_crashinfo" is_file
}

@test 'man_src has _createhomedir' {
    assert "$msrc/_createhomedir" is_file
}

@test 'man_src has _createrepo' {
    assert "$msrc/_createrepo" is_file
}

@test 'man_src has _crit' {
    assert "$msrc/_crit" is_file
}

@test 'man_src has _cronnext' {
    assert "$msrc/_cronnext" is_file
}

@test 'man_src has _crun' {
    assert "$msrc/_crun" is_file
}

@test 'man_src has _crunch' {
    assert "$msrc/_crunch" is_file
}

@test 'man_src has _crunchgen' {
    assert "$msrc/_crunchgen" is_file
}

@test 'man_src has _cryptcat' {
    assert "$msrc/_cryptcat" is_file
}

@test 'man_src has _cryptsetup-ssh' {
    assert "$msrc/_cryptsetup-ssh" is_file
}

@test 'man_src has _cs2cs' {
    assert "$msrc/_cs2cs" is_file
}

@test 'man_src has _csdiagnose' {
    assert "$msrc/_csdiagnose" is_file
}

@test 'man_src has _csgather' {
    assert "$msrc/_csgather" is_file
}

@test 'man_src has _csharp' {
    assert "$msrc/_csharp" is_file
}

@test 'man_src has _csreq' {
    assert "$msrc/_csreq" is_file
}

@test 'man_src has _cstool' {
    assert "$msrc/_cstool" is_file
}

@test 'man_src has _ct_run' {
    assert "$msrc/_ct_run" is_file
}

@test 'man_src has _ctags.emacs25' {
    assert "$msrc/_ctags.emacs25" is_file
}

@test 'man_src has _ctanbib' {
    assert "$msrc/_ctanbib" is_file
}

@test 'man_src has _ctanify' {
    assert "$msrc/_ctanify" is_file
}

@test 'man_src has _ctf_insert' {
    assert "$msrc/_ctf_insert" is_file
}

@test 'man_src has _ctfconvert' {
    assert "$msrc/_ctfconvert" is_file
}

@test 'man_src has _ctfdump' {
    assert "$msrc/_ctfdump" is_file
}

@test 'man_src has _ctfmerge' {
    assert "$msrc/_ctfmerge" is_file
}

@test 'man_src has _ctld' {
    assert "$msrc/_ctld" is_file
}

@test 'man_src has _ctlstat' {
    assert "$msrc/_ctlstat" is_file
}

@test 'man_src has _ctm' {
    assert "$msrc/_ctm" is_file
}

@test 'man_src has _ctm_dequeue' {
    assert "$msrc/_ctm_dequeue" is_file
}

@test 'man_src has _ctm_rmail' {
    assert "$msrc/_ctm_rmail" is_file
}

@test 'man_src has _ctm_smail' {
    assert "$msrc/_ctm_smail" is_file
}

@test 'man_src has _ctwill' {
    assert "$msrc/_ctwill" is_file
}

@test 'man_src has _ctwill-proofsort' {
    assert "$msrc/_ctwill-proofsort" is_file
}

@test 'man_src has _cups-config' {
    assert "$msrc/_cups-config" is_file
}

@test 'man_src has _cups-genppd.5.3' {
    assert "$msrc/_cups-genppd.5.3" is_file
}

@test 'man_src has _cupsaccept' {
    assert "$msrc/_cupsaccept" is_file
}

@test 'man_src has _cupsdisable' {
    assert "$msrc/_cupsdisable" is_file
}

@test 'man_src has _cupsenable' {
    assert "$msrc/_cupsenable" is_file
}

@test 'man_src has _cupsreject' {
    assert "$msrc/_cupsreject" is_file
}

@test 'man_src has _curator' {
    assert "$msrc/_curator" is_file
}

@test 'man_src has _curator_cli' {
    assert "$msrc/_curator_cli" is_file
}

@test 'man_src has _cvadmin' {
    assert "$msrc/_cvadmin" is_file
}

@test 'man_src has _cvaffinity' {
    assert "$msrc/_cvaffinity" is_file
}

@test 'man_src has _cvcp' {
    assert "$msrc/_cvcp" is_file
}

@test 'man_src has _cvfsck' {
    assert "$msrc/_cvfsck" is_file
}

@test 'man_src has _cvfsid' {
    assert "$msrc/_cvfsid" is_file
}

@test 'man_src has _cvgather' {
    assert "$msrc/_cvgather" is_file
}

@test 'man_src has _cvlabel' {
    assert "$msrc/_cvlabel" is_file
}

@test 'man_src has _cvmkfile' {
    assert "$msrc/_cvmkfile" is_file
}

@test 'man_src has _cvmkfs' {
    assert "$msrc/_cvmkfs" is_file
}

@test 'man_src has _cvsbug' {
    assert "$msrc/_cvsbug" is_file
}

@test 'man_src has _cvslock' {
    assert "$msrc/_cvslock" is_file
}

@test 'man_src has _cvupdatefs' {
    assert "$msrc/_cvupdatefs" is_file
}

@test 'man_src has _cvversions' {
    assert "$msrc/_cvversions" is_file
}

@test 'man_src has _daemon' {
    assert "$msrc/_daemon" is_file
}

@test 'man_src has _darkstat' {
    assert "$msrc/_darkstat" is_file
}

@test 'man_src has _dash' {
    assert "$msrc/_dash" is_file
}

@test 'man_src has _dasher' {
    assert "$msrc/_dasher" is_file
}

@test 'man_src has _dave' {
    assert "$msrc/_dave" is_file
}

@test 'man_src has _daxctl' {
    assert "$msrc/_daxctl" is_file
}

@test 'man_src has _db5.3_archive' {
    assert "$msrc/_db5.3_archive" is_file
}

@test 'man_src has _db5.3_checkpoint' {
    assert "$msrc/_db5.3_checkpoint" is_file
}

@test 'man_src has _db5.3_deadlock' {
    assert "$msrc/_db5.3_deadlock" is_file
}

@test 'man_src has _db5.3_dump' {
    assert "$msrc/_db5.3_dump" is_file
}

@test 'man_src has _db5.3_hotbackup' {
    assert "$msrc/_db5.3_hotbackup" is_file
}

@test 'man_src has _db5.3_load' {
    assert "$msrc/_db5.3_load" is_file
}

@test 'man_src has _db5.3_printlog' {
    assert "$msrc/_db5.3_printlog" is_file
}

@test 'man_src has _db5.3_recover' {
    assert "$msrc/_db5.3_recover" is_file
}

@test 'man_src has _db5.3_stat' {
    assert "$msrc/_db5.3_stat" is_file
}

@test 'man_src has _db5.3_upgrade' {
    assert "$msrc/_db5.3_upgrade" is_file
}

@test 'man_src has _db5.3_verify' {
    assert "$msrc/_db5.3_verify" is_file
}

@test 'man_src has _db_archive' {
    assert "$msrc/_db_archive" is_file
}

@test 'man_src has _db_checkpoint' {
    assert "$msrc/_db_checkpoint" is_file
}

@test 'man_src has _db_deadlock' {
    assert "$msrc/_db_deadlock" is_file
}

@test 'man_src has _db_dump' {
    assert "$msrc/_db_dump" is_file
}

@test 'man_src has _db_dump185' {
    assert "$msrc/_db_dump185" is_file
}

@test 'man_src has _db_hotbackup' {
    assert "$msrc/_db_hotbackup" is_file
}

@test 'man_src has _db_load' {
    assert "$msrc/_db_load" is_file
}

@test 'man_src has _db_log_verify' {
    assert "$msrc/_db_log_verify" is_file
}

@test 'man_src has _db_printlog' {
    assert "$msrc/_db_printlog" is_file
}

@test 'man_src has _db_recover' {
    assert "$msrc/_db_recover" is_file
}

@test 'man_src has _db_replicate' {
    assert "$msrc/_db_replicate" is_file
}

@test 'man_src has _db_stat' {
    assert "$msrc/_db_stat" is_file
}

@test 'man_src has _db_tuner' {
    assert "$msrc/_db_tuner" is_file
}

@test 'man_src has _db_upgrade' {
    assert "$msrc/_db_upgrade" is_file
}

@test 'man_src has _db_verify' {
    assert "$msrc/_db_verify" is_file
}

@test 'man_src has _dbicadmin' {
    assert "$msrc/_dbicadmin" is_file
}

@test 'man_src has _dbicadmin5.30' {
    assert "$msrc/_dbicadmin5.30" is_file
}

@test 'man_src has _dbicadmin5.34' {
    assert "$msrc/_dbicadmin5.34" is_file
}

@test 'man_src has _dbiprof5' {
    assert "$msrc/_dbiprof5" is_file
}

@test 'man_src has _dbiprof5.30' {
    assert "$msrc/_dbiprof5.30" is_file
}

@test 'man_src has _dbiprof5.34' {
    assert "$msrc/_dbiprof5.34" is_file
}

@test 'man_src has _dbmmanage2' {
    assert "$msrc/_dbmmanage2" is_file
}

@test 'man_src has _dbus-binding-tool' {
    assert "$msrc/_dbus-binding-tool" is_file
}

@test 'man_src has _dbus-broker' {
    assert "$msrc/_dbus-broker" is_file
}

@test 'man_src has _dbus-broker-launch' {
    assert "$msrc/_dbus-broker-launch" is_file
}

@test 'man_src has _dbus-daemon' {
    assert "$msrc/_dbus-daemon" is_file
}

@test 'man_src has _dbus-launch' {
    assert "$msrc/_dbus-launch" is_file
}

@test 'man_src has _dbus-test-tool' {
    assert "$msrc/_dbus-test-tool" is_file
}

@test 'man_src has _dbus-uuidgen' {
    assert "$msrc/_dbus-uuidgen" is_file
}

@test 'man_src has _dconf' {
    assert "$msrc/_dconf" is_file
}

@test 'man_src has _dcraw' {
    assert "$msrc/_dcraw" is_file
}

@test 'man_src has _deallocvt' {
    assert "$msrc/_deallocvt" is_file
}

@test 'man_src has _debconf-apt-progress' {
    assert "$msrc/_debconf-apt-progress" is_file
}

@test 'man_src has _debconf-copydb' {
    assert "$msrc/_debconf-copydb" is_file
}

@test 'man_src has _debconf-show' {
    assert "$msrc/_debconf-show" is_file
}

@test 'man_src has _debian-distro-info' {
    assert "$msrc/_debian-distro-info" is_file
}

@test 'man_src has _debsums' {
    assert "$msrc/_debsums" is_file
}

@test 'man_src has _debtags' {
    assert "$msrc/_debtags" is_file
}

@test 'man_src has _debugedit' {
    assert "$msrc/_debugedit" is_file
}

@test 'man_src has _debugfs' {
    assert "$msrc/_debugfs" is_file
}

@test 'man_src has _debugfs.reiserfs' {
    assert "$msrc/_debugfs.reiserfs" is_file
}

@test 'man_src has _debuginfod-find' {
    assert "$msrc/_debuginfod-find" is_file
}

@test 'man_src has _debugvmfs' {
    assert "$msrc/_debugvmfs" is_file
}

@test 'man_src has _decodemail' {
    assert "$msrc/_decodemail" is_file
}

@test 'man_src has _defmt-c' {
    assert "$msrc/_defmt-c" is_file
}

@test 'man_src has _defmt-sh' {
    assert "$msrc/_defmt-sh" is_file
}

@test 'man_src has _defncopy' {
    assert "$msrc/_defncopy" is_file
}

@test 'man_src has _defrag.f2fs' {
    assert "$msrc/_defrag.f2fs" is_file
}

@test 'man_src has _dehtmldiff' {
    assert "$msrc/_dehtmldiff" is_file
}

@test 'man_src has _demandoc' {
    assert "$msrc/_demandoc" is_file
}

@test 'man_src has _derb' {
    assert "$msrc/_derb" is_file
}

@test 'man_src has _derq' {
    assert "$msrc/_derq" is_file
}

@test 'man_src has _desktoptojson' {
    assert "$msrc/_desktoptojson" is_file
}

@test 'man_src has _devd' {
    assert "$msrc/_devd" is_file
}

@test 'man_src has _devfs' {
    assert "$msrc/_devfs" is_file
}

@test 'man_src has _devinfo' {
    assert "$msrc/_devinfo" is_file
}

@test 'man_src has _devio' {
    assert "$msrc/_devio" is_file
}

@test 'man_src has _devlink' {
    assert "$msrc/_devlink" is_file
}

@test 'man_src has _devnag' {
    assert "$msrc/_devnag" is_file
}

@test 'man_src has _dftest' {
    assert "$msrc/_dftest" is_file
}

@test 'man_src has _dh' {
    assert "$msrc/_dh" is_file
}

@test 'man_src has _dh_auto_install' {
    assert "$msrc/_dh_auto_install" is_file
}

@test 'man_src has _dh_autoreconf' {
    assert "$msrc/_dh_autoreconf" is_file
}

@test 'man_src has _dh_builddeb' {
    assert "$msrc/_dh_builddeb" is_file
}

@test 'man_src has _dh_clean' {
    assert "$msrc/_dh_clean" is_file
}

@test 'man_src has _dh_compress' {
    assert "$msrc/_dh_compress" is_file
}

@test 'man_src has _dh_dkms' {
    assert "$msrc/_dh_dkms" is_file
}

@test 'man_src has _dh_dwz' {
    assert "$msrc/_dh_dwz" is_file
}

@test 'man_src has _dh_girepository' {
    assert "$msrc/_dh_girepository" is_file
}

@test 'man_src has _dh_install' {
    assert "$msrc/_dh_install" is_file
}

@test 'man_src has _dh_installchangelogs' {
    assert "$msrc/_dh_installchangelogs" is_file
}

@test 'man_src has _dh_installdebconf' {
    assert "$msrc/_dh_installdebconf" is_file
}

@test 'man_src has _dh_installdirs' {
    assert "$msrc/_dh_installdirs" is_file
}

@test 'man_src has _dh_installdocs' {
    assert "$msrc/_dh_installdocs" is_file
}

@test 'man_src has _dh_installemacsen' {
    assert "$msrc/_dh_installemacsen" is_file
}

@test 'man_src has _dh_installexamples' {
    assert "$msrc/_dh_installexamples" is_file
}

@test 'man_src has _dh_installinfo' {
    assert "$msrc/_dh_installinfo" is_file
}

@test 'man_src has _dh_installman' {
    assert "$msrc/_dh_installman" is_file
}

@test 'man_src has _dh_installmodules' {
    assert "$msrc/_dh_installmodules" is_file
}

@test 'man_src has _dh_installsystemd' {
    assert "$msrc/_dh_installsystemd" is_file
}

@test 'man_src has _dh_installsystemduser' {
    assert "$msrc/_dh_installsystemduser" is_file
}

@test 'man_src has _dh_installtex' {
    assert "$msrc/_dh_installtex" is_file
}

@test 'man_src has _dh_installudev' {
    assert "$msrc/_dh_installudev" is_file
}

@test 'man_src has _dh_installwm' {
    assert "$msrc/_dh_installwm" is_file
}

@test 'man_src has _dh_link' {
    assert "$msrc/_dh_link" is_file
}

@test 'man_src has _dh_md5sums' {
    assert "$msrc/_dh_md5sums" is_file
}

@test 'man_src has _dh_missing' {
    assert "$msrc/_dh_missing" is_file
}

@test 'man_src has _dh_movefiles' {
    assert "$msrc/_dh_movefiles" is_file
}

@test 'man_src has _dh_perl' {
    assert "$msrc/_dh_perl" is_file
}

@test 'man_src has _dh_pysupport' {
    assert "$msrc/_dh_pysupport" is_file
}

@test 'man_src has _dh_shlibdeps' {
    assert "$msrc/_dh_shlibdeps" is_file
}

@test 'man_src has _dh_strip' {
    assert "$msrc/_dh_strip" is_file
}

@test 'man_src has _dh_systemd_enable' {
    assert "$msrc/_dh_systemd_enable" is_file
}

@test 'man_src has _dh_systemd_start' {
    assert "$msrc/_dh_systemd_start" is_file
}

@test 'man_src has _dh_ucf' {
    assert "$msrc/_dh_ucf" is_file
}

@test 'man_src has _dhcpcd5' {
    assert "$msrc/_dhcpcd5" is_file
}

@test 'man_src has _dhcpd' {
    assert "$msrc/_dhcpd" is_file
}

@test 'man_src has _dhcpig' {
    assert "$msrc/_dhcpig" is_file
}

@test 'man_src has _digictl' {
    assert "$msrc/_digictl" is_file
}

@test 'man_src has _dirb' {
    assert "$msrc/_dirb" is_file
}

@test 'man_src has _disdvi' {
    assert "$msrc/_disdvi" is_file
}

@test 'man_src has _diskinfo' {
    assert "$msrc/_diskinfo" is_file
}

@test 'man_src has _distro-info' {
    assert "$msrc/_distro-info" is_file
}

@test 'man_src has _djvm' {
    assert "$msrc/_djvm" is_file
}

@test 'man_src has _djvmcvt' {
    assert "$msrc/_djvmcvt" is_file
}

@test 'man_src has _djvudigital' {
    assert "$msrc/_djvudigital" is_file
}

@test 'man_src has _djvuextract' {
    assert "$msrc/_djvuextract" is_file
}

@test 'man_src has _djvutxt' {
    assert "$msrc/_djvutxt" is_file
}

@test 'man_src has _djvuxmlparser' {
    assert "$msrc/_djvuxmlparser" is_file
}

@test 'man_src has _dkms' {
    assert "$msrc/_dkms" is_file
}

@test 'man_src has _dmenu' {
    assert "$msrc/_dmenu" is_file
}

@test 'man_src has _dmenu_run' {
    assert "$msrc/_dmenu_run" is_file
}

@test 'man_src has _dmraid' {
    assert "$msrc/_dmraid" is_file
}

@test 'man_src has _dmraid.static' {
    assert "$msrc/_dmraid.static" is_file
}

@test 'man_src has _dmsetup' {
    assert "$msrc/_dmsetup" is_file
}

@test 'man_src has _dmstats' {
    assert "$msrc/_dmstats" is_file
}

@test 'man_src has _dnf4' {
    assert "$msrc/_dnf4" is_file
}

@test 'man_src has _dnsmap' {
    assert "$msrc/_dnsmap" is_file
}

@test 'man_src has _dnssec-cds' {
    assert "$msrc/_dnssec-cds" is_file
}

@test 'man_src has _dnsspoof' {
    assert "$msrc/_dnsspoof" is_file
}

@test 'man_src has _dnswalk' {
    assert "$msrc/_dnswalk" is_file
}

@test 'man_src has _do-release-upgrade' {
    assert "$msrc/_do-release-upgrade" is_file
}

@test 'man_src has _docbook-to-man' {
    assert "$msrc/_docbook-to-man" is_file
}

@test 'man_src has _dosfslabel' {
    assert "$msrc/_dosfslabel" is_file
}

@test 'man_src has _dot2gxl' {
    assert "$msrc/_dot2gxl" is_file
}

@test 'man_src has _dot_clean' {
    assert "$msrc/_dot_clean" is_file
}

@test 'man_src has _dot_sandbox' {
    assert "$msrc/_dot_sandbox" is_file
}

@test 'man_src has _dotenv' {
    assert "$msrc/_dotenv" is_file
}

@test 'man_src has _dotlockfile' {
    assert "$msrc/_dotlockfile" is_file
}

@test 'man_src has _dotty' {
    assert "$msrc/_dotty" is_file
}

@test 'man_src has _doveadm' {
    assert "$msrc/_doveadm" is_file
}

@test 'man_src has _doveconf' {
    assert "$msrc/_doveconf" is_file
}

@test 'man_src has _dovecot' {
    assert "$msrc/_dovecot" is_file
}

@test 'man_src has _dpkg-buildtree' {
    assert "$msrc/_dpkg-buildtree" is_file
}

@test 'man_src has _dpkg-fsys-usrunmess' {
    assert "$msrc/_dpkg-fsys-usrunmess" is_file
}

@test 'man_src has _dpkg-maintscript-helper' {
    assert "$msrc/_dpkg-maintscript-helper" is_file
}

@test 'man_src has _dqtool' {
    assert "$msrc/_dqtool" is_file
}

@test 'man_src has _driverless-fax' {
    assert "$msrc/_driverless-fax" is_file
}

@test 'man_src has _drracket' {
    assert "$msrc/_drracket" is_file
}

@test 'man_src has _dscacheutil' {
    assert "$msrc/_dscacheutil" is_file
}

@test 'man_src has _dseditgroup' {
    assert "$msrc/_dseditgroup" is_file
}

@test 'man_src has _dsenableroot' {
    assert "$msrc/_dsenableroot" is_file
}

@test 'man_src has _dsexport' {
    assert "$msrc/_dsexport" is_file
}

@test 'man_src has _dsniff' {
    assert "$msrc/_dsniff" is_file
}

@test 'man_src has _dsymutil-13' {
    assert "$msrc/_dsymutil-13" is_file
}

@test 'man_src has _dsymutil-14' {
    assert "$msrc/_dsymutil-14" is_file
}

@test 'man_src has _dsymutil-8' {
    assert "$msrc/_dsymutil-8" is_file
}

@test 'man_src has _dsync' {
    assert "$msrc/_dsync" is_file
}

@test 'man_src has _dt2dv' {
    assert "$msrc/_dt2dv" is_file
}

@test 'man_src has _dtrust-tool' {
    assert "$msrc/_dtrust-tool" is_file
}

@test 'man_src has _dump' {
    assert "$msrc/_dump" is_file
}

@test 'man_src has _dump-acct' {
    assert "$msrc/_dump-acct" is_file
}

@test 'man_src has _dump-utmp' {
    assert "$msrc/_dump-utmp" is_file
}

@test 'man_src has _dump.exfat' {
    assert "$msrc/_dump.exfat" is_file
}

@test 'man_src has _dump.f2fs' {
    assert "$msrc/_dump.f2fs" is_file
}

@test 'man_src has _dump_fts' {
    assert "$msrc/_dump_fts" is_file
}

@test 'man_src has _dump_lfts.sh' {
    assert "$msrc/_dump_lfts.sh" is_file
}

@test 'man_src has _dump_mfts.sh' {
    assert "$msrc/_dump_mfts.sh" is_file
}

@test 'man_src has _dumpe2fs' {
    assert "$msrc/_dumpe2fs" is_file
}

@test 'man_src has _dumpexfat' {
    assert "$msrc/_dumpexfat" is_file
}

@test 'man_src has _dvb-fe-tool' {
    assert "$msrc/_dvb-fe-tool" is_file
}

@test 'man_src has _dvb-format-convert' {
    assert "$msrc/_dvb-format-convert" is_file
}

@test 'man_src has _dvbv5-scan' {
    assert "$msrc/_dvbv5-scan" is_file
}

@test 'man_src has _dvbv5-zap' {
    assert "$msrc/_dvbv5-zap" is_file
}

@test 'man_src has _dvd+rw-booktype' {
    assert "$msrc/_dvd+rw-booktype" is_file
}

@test 'man_src has _dvd+rw-format' {
    assert "$msrc/_dvd+rw-format" is_file
}

@test 'man_src has _dvired' {
    assert "$msrc/_dvired" is_file
}

@test 'man_src has _dvispc' {
    assert "$msrc/_dvispc" is_file
}

@test 'man_src has _dwz' {
    assert "$msrc/_dwz" is_file
}

@test 'man_src has _dyld_info' {
    assert "$msrc/_dyld_info" is_file
}

@test 'man_src has _dyld_usage' {
    assert "$msrc/_dyld_usage" is_file
}

@test 'man_src has _dyldinfo' {
    assert "$msrc/_dyldinfo" is_file
}

@test 'man_src has _dynamic_pager' {
    assert "$msrc/_dynamic_pager" is_file
}

@test 'man_src has _e2freefrag' {
    assert "$msrc/_e2freefrag" is_file
}

@test 'man_src has _e2image' {
    assert "$msrc/_e2image" is_file
}

@test 'man_src has _e2label' {
    assert "$msrc/_e2label" is_file
}

@test 'man_src has _e2mmpstatus' {
    assert "$msrc/_e2mmpstatus" is_file
}

@test 'man_src has _e2scrub' {
    assert "$msrc/_e2scrub" is_file
}

@test 'man_src has _e2scrub_all' {
    assert "$msrc/_e2scrub_all" is_file
}

@test 'man_src has _e2undo' {
    assert "$msrc/_e2undo" is_file
}

@test 'man_src has _e4defrag' {
    assert "$msrc/_e4defrag" is_file
}

@test 'man_src has _ebrowse.emacs' {
    assert "$msrc/_ebrowse.emacs" is_file
}

@test 'man_src has _ebrowse.emacs25' {
    assert "$msrc/_ebrowse.emacs25" is_file
}

@test 'man_src has _ebtables-legacy' {
    assert "$msrc/_ebtables-legacy" is_file
}

@test 'man_src has _ebtables-translate' {
    assert "$msrc/_ebtables-translate" is_file
}

@test 'man_src has _ecj' {
    assert "$msrc/_ecj" is_file
}

@test 'man_src has _editdiff' {
    assert "$msrc/_editdiff" is_file
}

@test 'man_src has _editmap' {
    assert "$msrc/_editmap" is_file
}

@test 'man_src has _edonr256-hash' {
    assert "$msrc/_edonr256-hash" is_file
}

@test 'man_src has _edonr512-hash' {
    assert "$msrc/_edonr512-hash" is_file
}

@test 'man_src has _edquota' {
    assert "$msrc/_edquota" is_file
}

@test 'man_src has _edtx2dtx' {
    assert "$msrc/_edtx2dtx" is_file
}

@test 'man_src has _ee' {
    assert "$msrc/_ee" is_file
}

@test 'man_src has _eepget' {
    assert "$msrc/_eepget" is_file
}

@test 'man_src has _efidp' {
    assert "$msrc/_efidp" is_file
}

@test 'man_src has _electrum' {
    assert "$msrc/_electrum" is_file
}

@test 'man_src has _emacs-gtk' {
    assert "$msrc/_emacs-gtk" is_file
}

@test 'man_src has _emacsclient.emacs25' {
    assert "$msrc/_emacsclient.emacs25" is_file
}

@test 'man_src has _emond' {
    assert "$msrc/_emond" is_file
}

@test 'man_src has _enchant' {
    assert "$msrc/_enchant" is_file
}

@test 'man_src has _enchant-lsmod' {
    assert "$msrc/_enchant-lsmod" is_file
}

@test 'man_src has _enchant-lsmod-2' {
    assert "$msrc/_enchant-lsmod-2" is_file
}

@test 'man_src has _enosys' {
    assert "$msrc/_enosys" is_file
}

@test 'man_src has _env_parallel' {
    assert "$msrc/_env_parallel" is_file
}

@test 'man_src has _eolang' {
    assert "$msrc/_eolang" is_file
}

@test 'man_src has _epiphany-browser' {
    assert "$msrc/_epiphany-browser" is_file
}

@test 'man_src has _eqn' {
    assert "$msrc/_eqn" is_file
}

@test 'man_src has _eqn2graph' {
    assert "$msrc/_eqn2graph" is_file
}

@test 'man_src has _era_check' {
    assert "$msrc/_era_check" is_file
}

@test 'man_src has _era_dump' {
    assert "$msrc/_era_dump" is_file
}

@test 'man_src has _era_invalidate' {
    assert "$msrc/_era_invalidate" is_file
}

@test 'man_src has _era_restore' {
    assert "$msrc/_era_restore" is_file
}

@test 'man_src has _erb2.1' {
    assert "$msrc/_erb2.1" is_file
}

@test 'man_src has _erb2.7' {
    assert "$msrc/_erb2.7" is_file
}

@test 'man_src has _erl' {
    assert "$msrc/_erl" is_file
}

@test 'man_src has _errno' {
    assert "$msrc/_errno" is_file
}

@test 'man_src has _es2_info' {
    assert "$msrc/_es2_info" is_file
}

@test 'man_src has _es_repo_mgr' {
    assert "$msrc/_es_repo_mgr" is_file
}

@test 'man_src has _escript' {
    assert "$msrc/_escript" is_file
}

@test 'man_src has _esedbinfo' {
    assert "$msrc/_esedbinfo" is_file
}

@test 'man_src has _espdiff' {
    assert "$msrc/_espdiff" is_file
}

@test 'man_src has _espeak-ng' {
    assert "$msrc/_espeak-ng" is_file
}

@test 'man_src has _etags.emacs' {
    assert "$msrc/_etags.emacs" is_file
}

@test 'man_src has _etags.emacs25' {
    assert "$msrc/_etags.emacs25" is_file
}

@test 'man_src has _etcupdate' {
    assert "$msrc/_etcupdate" is_file
}

@test 'man_src has _etdump' {
    assert "$msrc/_etdump" is_file
}

@test 'man_src has _etf2ly' {
    assert "$msrc/_etf2ly" is_file
}

@test 'man_src has _ether-wake' {
    assert "$msrc/_ether-wake" is_file
}

@test 'man_src has _etherswitchcfg' {
    assert "$msrc/_etherswitchcfg" is_file
}

@test 'man_src has _etherwake' {
    assert "$msrc/_etherwake" is_file
}

@test 'man_src has _eu-srcfiles' {
    assert "$msrc/_eu-srcfiles" is_file
}

@test 'man_src has _eu-strings' {
    assert "$msrc/_eu-strings" is_file
}

@test 'man_src has _evtexport' {
    assert "$msrc/_evtexport" is_file
}

@test 'man_src has _evtinfo' {
    assert "$msrc/_evtinfo" is_file
}

@test 'man_src has _evtxexport' {
    assert "$msrc/_evtxexport" is_file
}

@test 'man_src has _evtxinfo' {
    assert "$msrc/_evtxinfo" is_file
}

@test 'man_src has _exch' {
    assert "$msrc/_exch" is_file
}

@test 'man_src has _exfat2img' {
    assert "$msrc/_exfat2img" is_file
}

@test 'man_src has _exfatfsck' {
    assert "$msrc/_exfatfsck" is_file
}

@test 'man_src has _exfatlabel' {
    assert "$msrc/_exfatlabel" is_file
}

@test 'man_src has _exigrep' {
    assert "$msrc/_exigrep" is_file
}

@test 'man_src has _exim' {
    assert "$msrc/_exim" is_file
}

@test 'man_src has _exim4' {
    assert "$msrc/_exim4" is_file
}

@test 'man_src has _exim_checkaccess' {
    assert "$msrc/_exim_checkaccess" is_file
}

@test 'man_src has _exim_dbmbuild' {
    assert "$msrc/_exim_dbmbuild" is_file
}

@test 'man_src has _exim_lock' {
    assert "$msrc/_exim_lock" is_file
}

@test 'man_src has _exipick' {
    assert "$msrc/_exipick" is_file
}

@test 'man_src has _exiqgrep' {
    assert "$msrc/_exiqgrep" is_file
}

@test 'man_src has _exiqsumm' {
    assert "$msrc/_exiqsumm" is_file
}

@test 'man_src has _exo-open' {
    assert "$msrc/_exo-open" is_file
}

@test 'man_src has _expandcmd' {
    assert "$msrc/_expandcmd" is_file
}

@test 'man_src has _expect_multixterm' {
    assert "$msrc/_expect_multixterm" is_file
}

@test 'man_src has _f2fs_io' {
    assert "$msrc/_f2fs_io" is_file
}

@test 'man_src has _f2py3.4' {
    assert "$msrc/_f2py3.4" is_file
}

@test 'man_src has _fadvise' {
    assert "$msrc/_fadvise" is_file
}

@test 'man_src has _faillock' {
    assert "$msrc/_faillock" is_file
}

@test 'man_src has _faked-sysv' {
    assert "$msrc/_faked-sysv" is_file
}

@test 'man_src has _faked-tcp' {
    assert "$msrc/_faked-tcp" is_file
}

@test 'man_src has _fakeroot-sysv' {
    assert "$msrc/_fakeroot-sysv" is_file
}

@test 'man_src has _fakeroot-tcp' {
    assert "$msrc/_fakeroot-tcp" is_file
}

@test 'man_src has _fanctl' {
    assert "$msrc/_fanctl" is_file
}

@test 'man_src has _faraday-client' {
    assert "$msrc/_faraday-client" is_file
}

@test 'man_src has _faraday-manage' {
    assert "$msrc/_faraday-manage" is_file
}

@test 'man_src has _faraday-plugins' {
    assert "$msrc/_faraday-plugins" is_file
}

@test 'man_src has _faraday-server' {
    assert "$msrc/_faraday-server" is_file
}

@test 'man_src has _fasthalt' {
    assert "$msrc/_fasthalt" is_file
}

@test 'man_src has _fatlabel' {
    assert "$msrc/_fatlabel" is_file
}

@test 'man_src has _fcgistarter' {
    assert "$msrc/_fcgistarter" is_file
}

@test 'man_src has _fcitx' {
    assert "$msrc/_fcitx" is_file
}

@test 'man_src has _fcitx-remote' {
    assert "$msrc/_fcitx-remote" is_file
}

@test 'man_src has _fcoeadm' {
    assert "$msrc/_fcoeadm" is_file
}

@test 'man_src has _fcoemon' {
    assert "$msrc/_fcoemon" is_file
}

@test 'man_src has _fcrackzip' {
    assert "$msrc/_fcrackzip" is_file
}

@test 'man_src has _fdesetup' {
    assert "$msrc/_fdesetup" is_file
}

@test 'man_src has _fdread' {
    assert "$msrc/_fdread" is_file
}

@test 'man_src has _fdtget' {
    assert "$msrc/_fdtget" is_file
}

@test 'man_src has _fdtput' {
    assert "$msrc/_fdtput" is_file
}

@test 'man_src has _fdwrite' {
    assert "$msrc/_fdwrite" is_file
}

@test 'man_src has _fedora-third-party' {
    assert "$msrc/_fedora-third-party" is_file
}

@test 'man_src has _ffsinfo' {
    assert "$msrc/_ffsinfo" is_file
}

@test 'man_src has _ffuf' {
    assert "$msrc/_ffuf" is_file
}

@test 'man_src has _fidentify' {
    assert "$msrc/_fidentify" is_file
}

@test 'man_src has _fido2-assert' {
    assert "$msrc/_fido2-assert" is_file
}

@test 'man_src has _fido2-cred' {
    assert "$msrc/_fido2-cred" is_file
}

@test 'man_src has _fido2-token' {
    assert "$msrc/_fido2-token" is_file
}

@test 'man_src has _figlet-figlet' {
    assert "$msrc/_figlet-figlet" is_file
}

@test 'man_src has _file2cable' {
    assert "$msrc/_file2cable" is_file
}

@test 'man_src has _filecap' {
    assert "$msrc/_filecap" is_file
}

@test 'man_src has _filefrag' {
    assert "$msrc/_filefrag" is_file
}

@test 'man_src has _fileop' {
    assert "$msrc/_fileop" is_file
}

@test 'man_src has _fileproviderctl' {
    assert "$msrc/_fileproviderctl" is_file
}

@test 'man_src has _filesnarf' {
    assert "$msrc/_filesnarf" is_file
}

@test 'man_src has _filtercalltree' {
    assert "$msrc/_filtercalltree" is_file
}

@test 'man_src has _find-debuginfo' {
    assert "$msrc/_find-debuginfo" is_file
}

@test 'man_src has _findsmb' {
    assert "$msrc/_findsmb" is_file
}

@test 'man_src has _fips-finish-install' {
    assert "$msrc/_fips-finish-install" is_file
}

@test 'man_src has _fips-mode-setup' {
    assert "$msrc/_fips-mode-setup" is_file
}

@test 'man_src has _fipscheck' {
    assert "$msrc/_fipscheck" is_file
}

@test 'man_src has _fipshmac' {
    assert "$msrc/_fipshmac" is_file
}

@test 'man_src has _firewall-offline-cmd' {
    assert "$msrc/_firewall-offline-cmd" is_file
}

@test 'man_src has _firewallctl' {
    assert "$msrc/_firewallctl" is_file
}

@test 'man_src has _firewalld' {
    assert "$msrc/_firewalld" is_file
}

@test 'man_src has _fish' {
    assert "$msrc/_fish" is_file
}

@test 'man_src has _fish_indent' {
    assert "$msrc/_fish_indent" is_file
}

@test 'man_src has _fish_key_reader' {
    assert "$msrc/_fish_key_reader" is_file
}

@test 'man_src has _fisql' {
    assert "$msrc/_fisql" is_file
}

@test 'man_src has _fitstopnm' {
    assert "$msrc/_fitstopnm" is_file
}

@test 'man_src has _fixcvsdiff' {
    assert "$msrc/_fixcvsdiff" is_file
}

@test 'man_src has _fixfiles' {
    assert "$msrc/_fixfiles" is_file
}

@test 'man_src has _fixmount' {
    assert "$msrc/_fixmount" is_file
}

@test 'man_src has _fixproc' {
    assert "$msrc/_fixproc" is_file
}

@test 'man_src has _fl-build-report' {
    assert "$msrc/_fl-build-report" is_file
}

@test 'man_src has _fl-credential-ctl' {
    assert "$msrc/_fl-credential-ctl" is_file
}

@test 'man_src has _fl-monitor-ctl' {
    assert "$msrc/_fl-monitor-ctl" is_file
}

@test 'man_src has _fl-record' {
    assert "$msrc/_fl-record" is_file
}

@test 'man_src has _fl-run-bench' {
    assert "$msrc/_fl-run-bench" is_file
}

@test 'man_src has _fl-run-test' {
    assert "$msrc/_fl-run-test" is_file
}

@test 'man_src has _flashrom' {
    assert "$msrc/_flashrom" is_file
}

@test 'man_src has _flexiblas' {
    assert "$msrc/_flexiblas" is_file
}

@test 'man_src has _flowctl' {
    assert "$msrc/_flowctl" is_file
}

@test 'man_src has _fmaptool' {
    assert "$msrc/_fmaptool" is_file
}

@test 'man_src has _fmtree' {
    assert "$msrc/_fmtree" is_file
}

@test 'man_src has _fonttosfnt' {
    assert "$msrc/_fonttosfnt" is_file
}

@test 'man_src has _foomatic-kitload' {
    assert "$msrc/_foomatic-kitload" is_file
}

@test 'man_src has _foomatic-rip' {
    assert "$msrc/_foomatic-rip" is_file
}

@test 'man_src has _fop' {
    assert "$msrc/_fop" is_file
}

@test 'man_src has _fop-ttfreader' {
    assert "$msrc/_fop-ttfreader" is_file
}

@test 'man_src has _fpaste' {
    assert "$msrc/_fpaste" is_file
}

@test 'man_src has _fplugin' {
    assert "$msrc/_fplugin" is_file
}

@test 'man_src has _fragroute' {
    assert "$msrc/_fragroute" is_file
}

@test 'man_src has _freebcp' {
    assert "$msrc/_freebcp" is_file
}

@test 'man_src has _freebsd-version' {
    assert "$msrc/_freebsd-version" is_file
}

@test 'man_src has _fros' {
    assert "$msrc/_fros" is_file
}

@test 'man_src has _fsapfsinfo' {
    assert "$msrc/_fsapfsinfo" is_file
}

@test 'man_src has _fsapfsmount' {
    assert "$msrc/_fsapfsmount" is_file
}

@test 'man_src has _fsc' {
    assert "$msrc/_fsc" is_file
}

@test 'man_src has _fsck.exfat' {
    assert "$msrc/_fsck.exfat" is_file
}

@test 'man_src has _fsck.f2fs' {
    assert "$msrc/_fsck.f2fs" is_file
}

@test 'man_src has _fsck.hfs' {
    assert "$msrc/_fsck.hfs" is_file
}

@test 'man_src has _fsck.hfsplus' {
    assert "$msrc/_fsck.hfsplus" is_file
}

@test 'man_src has _fsck_4.2bsd' {
    assert "$msrc/_fsck_4.2bsd" is_file
}

@test 'man_src has _fsck_cs' {
    assert "$msrc/_fsck_cs" is_file
}

@test 'man_src has _fsck_exfat' {
    assert "$msrc/_fsck_exfat" is_file
}

@test 'man_src has _fsck_ffs' {
    assert "$msrc/_fsck_ffs" is_file
}

@test 'man_src has _fsck_hfs' {
    assert "$msrc/_fsck_hfs" is_file
}

@test 'man_src has _fsck_msdos' {
    assert "$msrc/_fsck_msdos" is_file
}

@test 'man_src has _fsck_msdosfs' {
    assert "$msrc/_fsck_msdosfs" is_file
}

@test 'man_src has _fsck_ufs' {
    assert "$msrc/_fsck_ufs" is_file
}

@test 'man_src has _fsdb' {
    assert "$msrc/_fsdb" is_file
}

@test 'man_src has _fsinfo' {
    assert "$msrc/_fsinfo" is_file
}

@test 'man_src has _fsirand' {
    assert "$msrc/_fsirand" is_file
}

@test 'man_src has _fstobdf' {
    assert "$msrc/_fstobdf" is_file
}

@test 'man_src has _fstyp' {
    assert "$msrc/_fstyp" is_file
}

@test 'man_src has _ftp-proxy' {
    assert "$msrc/_ftp-proxy" is_file
}

@test 'man_src has _ftpd' {
    assert "$msrc/_ftpd" is_file
}

@test 'man_src has _fuse-overlayfs' {
    assert "$msrc/_fuse-overlayfs" is_file
}

@test 'man_src has _fusermount3' {
    assert "$msrc/_fusermount3" is_file
}

@test 'man_src has _fvdeinfo' {
    assert "$msrc/_fvdeinfo" is_file
}

@test 'man_src has _fvdemount' {
    assert "$msrc/_fvdemount" is_file
}

@test 'man_src has _fw_printenv' {
    assert "$msrc/_fw_printenv" is_file
}

@test 'man_src has _fwkdp' {
    assert "$msrc/_fwkdp" is_file
}

@test 'man_src has _fwkpfv' {
    assert "$msrc/_fwkpfv" is_file
}

@test 'man_src has _fwupdagent' {
    assert "$msrc/_fwupdagent" is_file
}

@test 'man_src has _fwupdtool' {
    assert "$msrc/_fwupdtool" is_file
}

@test 'man_src has _fwupdtpmevlog' {
    assert "$msrc/_fwupdtpmevlog" is_file
}

@test 'man_src has _fxload' {
    assert "$msrc/_fxload" is_file
}

@test 'man_src has _g-ir-doc-tool' {
    assert "$msrc/_g-ir-doc-tool" is_file
}

@test 'man_src has _g3topbm' {
    assert "$msrc/_g3topbm" is_file
}

@test 'man_src has _galculator' {
    assert "$msrc/_galculator" is_file
}

@test 'man_src has _galera_new_cluster' {
    assert "$msrc/_galera_new_cluster" is_file
}

@test 'man_src has _gamemoded' {
    assert "$msrc/_gamemoded" is_file
}

@test 'man_src has _gate-ftp' {
    assert "$msrc/_gate-ftp" is_file
}

@test 'man_src has _gc' {
    assert "$msrc/_gc" is_file
}

@test 'man_src has _gcab' {
    assert "$msrc/_gcab" is_file
}

@test 'man_src has _gcache' {
    assert "$msrc/_gcache" is_file
}

@test 'man_src has _gcc-ar-10' {
    assert "$msrc/_gcc-ar-10" is_file
}

@test 'man_src has _gcc-ar-11' {
    assert "$msrc/_gcc-ar-11" is_file
}

@test 'man_src has _gcc-ar-12' {
    assert "$msrc/_gcc-ar-12" is_file
}

@test 'man_src has _gcc-ar-13' {
    assert "$msrc/_gcc-ar-13" is_file
}

@test 'man_src has _gcc-ar-14' {
    assert "$msrc/_gcc-ar-14" is_file
}

@test 'man_src has _gcc-ar-4.9' {
    assert "$msrc/_gcc-ar-4.9" is_file
}

@test 'man_src has _gcc-ar-9' {
    assert "$msrc/_gcc-ar-9" is_file
}

@test 'man_src has _gcc-nm-4.9' {
    assert "$msrc/_gcc-nm-4.9" is_file
}

@test 'man_src has _gcc-ranlib-10' {
    assert "$msrc/_gcc-ranlib-10" is_file
}

@test 'man_src has _gcc-ranlib-11' {
    assert "$msrc/_gcc-ranlib-11" is_file
}

@test 'man_src has _gcc-ranlib-12' {
    assert "$msrc/_gcc-ranlib-12" is_file
}

@test 'man_src has _gcc-ranlib-4.9' {
    assert "$msrc/_gcc-ranlib-4.9" is_file
}

@test 'man_src has _gcc-ranlib-9' {
    assert "$msrc/_gcc-ranlib-9" is_file
}

@test 'man_src has _gccmakedep' {
    assert "$msrc/_gccmakedep" is_file
}

@test 'man_src has _gconcat' {
    assert "$msrc/_gconcat" is_file
}

@test 'man_src has _gdb-add-index' {
    assert "$msrc/_gdb-add-index" is_file
}

@test 'man_src has _gdbus' {
    assert "$msrc/_gdbus" is_file
}

@test 'man_src has _gdisk' {
    assert "$msrc/_gdisk" is_file
}

@test 'man_src has _gdk-pixbuf-query-loaders' {
    assert "$msrc/_gdk-pixbuf-query-loaders" is_file
}

@test 'man_src has _gdm-control' {
    assert "$msrc/_gdm-control" is_file
}

@test 'man_src has _geany' {
    assert "$msrc/_geany" is_file
}

@test 'man_src has _geli' {
    assert "$msrc/_geli" is_file
}

@test 'man_src has _gemtopbm' {
    assert "$msrc/_gemtopbm" is_file
}

@test 'man_src has _gemtopnm' {
    assert "$msrc/_gemtopnm" is_file
}

@test 'man_src has _gen_bridge_metadata' {
    assert "$msrc/_gen_bridge_metadata" is_file
}

@test 'man_src has _genl' {
    assert "$msrc/_genl" is_file
}

@test 'man_src has _genpmda' {
    assert "$msrc/_genpmda" is_file
}

@test 'man_src has _genrandom' {
    assert "$msrc/_genrandom" is_file
}

@test 'man_src has _genscript' {
    assert "$msrc/_genscript" is_file
}

@test 'man_src has _genstrings' {
    assert "$msrc/_genstrings" is_file
}

@test 'man_src has _genxs' {
    assert "$msrc/_genxs" is_file
}

@test 'man_src has _geod' {
    assert "$msrc/_geod" is_file
}

@test 'man_src has _geoiplookup' {
    assert "$msrc/_geoiplookup" is_file
}

@test 'man_src has _geoiplookup6' {
    assert "$msrc/_geoiplookup6" is_file
}

@test 'man_src has _geom' {
    assert "$msrc/_geom" is_file
}

@test 'man_src has _geqn' {
    assert "$msrc/_geqn" is_file
}

@test 'man_src has _ges-launch-1.0' {
    assert "$msrc/_ges-launch-1.0" is_file
}

@test 'man_src has _getS4U2self' {
    assert "$msrc/_getS4U2self" is_file
}

@test 'man_src has _getaddrinfo' {
    assert "$msrc/_getaddrinfo" is_file
}

@test 'man_src has _getappcore' {
    assert "$msrc/_getappcore" is_file
}

@test 'man_src has _getcap' {
    assert "$msrc/_getcap" is_file
}

@test 'man_src has _getcifsacl' {
    assert "$msrc/_getcifsacl" is_file
}

@test 'man_src has _getextattr' {
    assert "$msrc/_getextattr" is_file
}

@test 'man_src has _gethostip' {
    assert "$msrc/_gethostip" is_file
}

@test 'man_src has _getkeycodes' {
    assert "$msrc/_getkeycodes" is_file
}

@test 'man_src has _getsebool' {
    assert "$msrc/_getsebool" is_file
}

@test 'man_src has _getsubids' {
    assert "$msrc/_getsubids" is_file
}

@test 'man_src has _getunimap' {
    assert "$msrc/_getunimap" is_file
}

@test 'man_src has _getzones' {
    assert "$msrc/_getzones" is_file
}

@test 'man_src has _gforth-0.7.2' {
    assert "$msrc/_gforth-0.7.2" is_file
}

@test 'man_src has _gforth-fast-0.7.2' {
    assert "$msrc/_gforth-fast-0.7.2" is_file
}

@test 'man_src has _gforth-itc-0.7.2' {
    assert "$msrc/_gforth-itc-0.7.2" is_file
}

@test 'man_src has _gforthmi' {
    assert "$msrc/_gforthmi" is_file
}

@test 'man_src has _gforthmi-0.7.2' {
    assert "$msrc/_gforthmi-0.7.2" is_file
}

@test 'man_src has _gforthmi-0.7.3' {
    assert "$msrc/_gforthmi-0.7.3" is_file
}

@test 'man_src has _ggatec' {
    assert "$msrc/_ggatec" is_file
}

@test 'man_src has _ggated' {
    assert "$msrc/_ggated" is_file
}

@test 'man_src has _ggatel' {
    assert "$msrc/_ggatel" is_file
}

@test 'man_src has _gif2rgb' {
    assert "$msrc/_gif2rgb" is_file
}

@test 'man_src has _gifbuild' {
    assert "$msrc/_gifbuild" is_file
}

@test 'man_src has _gifclrmp' {
    assert "$msrc/_gifclrmp" is_file
}

@test 'man_src has _gifecho' {
    assert "$msrc/_gifecho" is_file
}

@test 'man_src has _giffix' {
    assert "$msrc/_giffix" is_file
}

@test 'man_src has _gifinto' {
    assert "$msrc/_gifinto" is_file
}

@test 'man_src has _giftext' {
    assert "$msrc/_giftext" is_file
}

@test 'man_src has _giftopnm' {
    assert "$msrc/_giftopnm" is_file
}

@test 'man_src has _gio' {
    assert "$msrc/_gio" is_file
}

@test 'man_src has _git-cola' {
    assert "$msrc/_git-cola" is_file
}

@test 'man_src has _git-dag' {
    assert "$msrc/_git-dag" is_file
}

@test 'man_src has _gjournal' {
    assert "$msrc/_gjournal" is_file
}

@test 'man_src has _glabel' {
    assert "$msrc/_glabel" is_file
}

@test 'man_src has _glilypond' {
    assert "$msrc/_glilypond" is_file
}

@test 'man_src has _glslc' {
    assert "$msrc/_glslc" is_file
}

@test 'man_src has _gluster' {
    assert "$msrc/_gluster" is_file
}

@test 'man_src has _gm2-14' {
    assert "$msrc/_gm2-14" is_file
}

@test 'man_src has _gmirror' {
    assert "$msrc/_gmirror" is_file
}

@test 'man_src has _gmountver' {
    assert "$msrc/_gmountver" is_file
}

@test 'man_src has _gnome-control-center' {
    assert "$msrc/_gnome-control-center" is_file
}

@test 'man_src has _gnome-language-selector' {
    assert "$msrc/_gnome-language-selector" is_file
}

@test 'man_src has _gnome-tour' {
    assert "$msrc/_gnome-tour" is_file
}

@test 'man_src has _gnop' {
    assert "$msrc/_gnop" is_file
}

@test 'man_src has _gnroff' {
    assert "$msrc/_gnroff" is_file
}

@test 'man_src has _golang-guru' {
    assert "$msrc/_golang-guru" is_file
}

@test 'man_src has _gost12-256-hash' {
    assert "$msrc/_gost12-256-hash" is_file
}

@test 'man_src has _gost12-512-hash' {
    assert "$msrc/_gost12-512-hash" is_file
}

@test 'man_src has _gotype' {
    assert "$msrc/_gotype" is_file
}

@test 'man_src has _gozilla' {
    assert "$msrc/_gozilla" is_file
}

@test 'man_src has _gp-archive' {
    assert "$msrc/_gp-archive" is_file
}

@test 'man_src has _gp-collect-app' {
    assert "$msrc/_gp-collect-app" is_file
}

@test 'man_src has _gp-display-html' {
    assert "$msrc/_gp-display-html" is_file
}

@test 'man_src has _gp-display-src' {
    assert "$msrc/_gp-display-src" is_file
}

@test 'man_src has _gp-display-text' {
    assert "$msrc/_gp-display-text" is_file
}

@test 'man_src has _gperl' {
    assert "$msrc/_gperl" is_file
}

@test 'man_src has _gpg-error-config' {
    assert "$msrc/_gpg-error-config" is_file
}

@test 'man_src has _gpg-mail-tube' {
    assert "$msrc/_gpg-mail-tube" is_file
}

@test 'man_src has _gpg-wks-client' {
    assert "$msrc/_gpg-wks-client" is_file
}

@test 'man_src has _gpgrt-config' {
    assert "$msrc/_gpgrt-config" is_file
}

@test 'man_src has _gpic' {
    assert "$msrc/_gpic" is_file
}

@test 'man_src has _gpinyin' {
    assert "$msrc/_gpinyin" is_file
}

@test 'man_src has _gpio' {
    assert "$msrc/_gpio" is_file
}

@test 'man_src has _gpioctl' {
    assert "$msrc/_gpioctl" is_file
}

@test 'man_src has _gpm-root' {
    assert "$msrc/_gpm-root" is_file
}

@test 'man_src has _gpre' {
    assert "$msrc/_gpre" is_file
}

@test 'man_src has _gprofng' {
    assert "$msrc/_gprofng" is_file
}

@test 'man_src has _gptx' {
    assert "$msrc/_gptx" is_file
}

@test 'man_src has _gr-ctrlport-monitor' {
    assert "$msrc/_gr-ctrlport-monitor" is_file
}

@test 'man_src has _gr-ctrlport-monitorc' {
    assert "$msrc/_gr-ctrlport-monitorc" is_file
}

@test 'man_src has _gr-ctrlport-monitoro' {
    assert "$msrc/_gr-ctrlport-monitoro" is_file
}

@test 'man_src has _gr-perf-monitorx' {
    assert "$msrc/_gr-perf-monitorx" is_file
}

@test 'man_src has _gr-perf-monitorxc' {
    assert "$msrc/_gr-perf-monitorxc" is_file
}

@test 'man_src has _gr-perf-monitorxo' {
    assert "$msrc/_gr-perf-monitorxo" is_file
}

@test 'man_src has _gr_filter_design' {
    assert "$msrc/_gr_filter_design" is_file
}

@test 'man_src has _gr_plot' {
    assert "$msrc/_gr_plot" is_file
}

@test 'man_src has _gr_plot_fft_c' {
    assert "$msrc/_gr_plot_fft_c" is_file
}

@test 'man_src has _gr_plot_iq' {
    assert "$msrc/_gr_plot_iq" is_file
}

@test 'man_src has _gr_time_plot_c' {
    assert "$msrc/_gr_time_plot_c" is_file
}

@test 'man_src has _graid' {
    assert "$msrc/_graid" is_file
}

@test 'man_src has _graid3' {
    assert "$msrc/_graid3" is_file
}

@test 'man_src has _grap2graph' {
    assert "$msrc/_grap2graph" is_file
}

@test 'man_src has _grape' {
    assert "$msrc/_grape" is_file
}

@test 'man_src has _grdctl' {
    assert "$msrc/_grdctl" is_file
}

@test 'man_src has _grepcidr' {
    assert "$msrc/_grepcidr" is_file
}

@test 'man_src has _gresource' {
    assert "$msrc/_gresource" is_file
}

@test 'man_src has _grn' {
    assert "$msrc/_grn" is_file
}

@test 'man_src has _grodvi' {
    assert "$msrc/_grodvi" is_file
}

@test 'man_src has _grolj4' {
    assert "$msrc/_grolj4" is_file
}

@test 'man_src has _gropdf' {
    assert "$msrc/_gropdf" is_file
}

@test 'man_src has _grops' {
    assert "$msrc/_grops" is_file
}

@test 'man_src has _grotty' {
    assert "$msrc/_grotty" is_file
}

@test 'man_src has _growfs' {
    assert "$msrc/_growfs" is_file
}

@test 'man_src has _growpart' {
    assert "$msrc/_growpart" is_file
}

@test 'man_src has _grub2-set-password' {
    assert "$msrc/_grub2-set-password" is_file
}

@test 'man_src has _grub2-switch-to-blscfg' {
    assert "$msrc/_grub2-switch-to-blscfg" is_file
}

@test 'man_src has _gsched' {
    assert "$msrc/_gsched" is_file
}

@test 'man_src has _gshsec' {
    assert "$msrc/_gshsec" is_file
}

@test 'man_src has _gsoelim' {
    assert "$msrc/_gsoelim" is_file
}

@test 'man_src has _gssd' {
    assert "$msrc/_gssd" is_file
}

@test 'man_src has _gst-transcoder-1.0' {
    assert "$msrc/_gst-transcoder-1.0" is_file
}

@test 'man_src has _gstripe' {
    assert "$msrc/_gstripe" is_file
}

@test 'man_src has _gtags' {
    assert "$msrc/_gtags" is_file
}

@test 'man_src has _gtags-cscope' {
    assert "$msrc/_gtags-cscope" is_file
}

@test 'man_src has _gtbl' {
    assert "$msrc/_gtbl" is_file
}

@test 'man_src has _gtk-query-immodules-2.0-64' {
    assert "$msrc/_gtk-query-immodules-2.0-64" is_file
}

@test 'man_src has _gtk-query-immodules-3.0' {
    assert "$msrc/_gtk-query-immodules-3.0" is_file
}

@test 'man_src has _gtk-query-immodules-3.0-64' {
    assert "$msrc/_gtk-query-immodules-3.0-64" is_file
}

@test 'man_src has _gtk-window-decorator' {
    assert "$msrc/_gtk-window-decorator" is_file
}

@test 'man_src has _gtk4-builder-tool' {
    assert "$msrc/_gtk4-builder-tool" is_file
}

@test 'man_src has _gtk4-image-tool' {
    assert "$msrc/_gtk4-image-tool" is_file
}

@test 'man_src has _gtk4-node-editor' {
    assert "$msrc/_gtk4-node-editor" is_file
}

@test 'man_src has _gtk4-path-tool' {
    assert "$msrc/_gtk4-path-tool" is_file
}

@test 'man_src has _gtk4-rendernode-tool' {
    assert "$msrc/_gtk4-rendernode-tool" is_file
}

@test 'man_src has _gtkdocize' {
    assert "$msrc/_gtkdocize" is_file
}

@test 'man_src has _gts-config' {
    assert "$msrc/_gts-config" is_file
}

@test 'man_src has _gtstemplate' {
    assert "$msrc/_gtstemplate" is_file
}

@test 'man_src has _guile2.0' {
    assert "$msrc/_guile2.0" is_file
}

@test 'man_src has _guile2.2' {
    assert "$msrc/_guile2.2" is_file
}

@test 'man_src has _guile3.0' {
    assert "$msrc/_guile3.0" is_file
}

@test 'man_src has _guymager' {
    assert "$msrc/_guymager" is_file
}

@test 'man_src has _gv2gxl' {
    assert "$msrc/_gv2gxl" is_file
}

@test 'man_src has _gvinum' {
    assert "$msrc/_gvinum" is_file
}

@test 'man_src has _gvirstor' {
    assert "$msrc/_gvirstor" is_file
}

@test 'man_src has _gvm-cli' {
    assert "$msrc/_gvm-cli" is_file
}

@test 'man_src has _gvm-manage-certs' {
    assert "$msrc/_gvm-manage-certs" is_file
}

@test 'man_src has _gvm-migrate-to-postgres' {
    assert "$msrc/_gvm-migrate-to-postgres" is_file
}

@test 'man_src has _gvmap.sh' {
    assert "$msrc/_gvmap.sh" is_file
}

@test 'man_src has _gvmd' {
    assert "$msrc/_gvmd" is_file
}

@test 'man_src has _gvpack' {
    assert "$msrc/_gvpack" is_file
}

@test 'man_src has _gxditview' {
    assert "$msrc/_gxditview" is_file
}

@test 'man_src has _gxl2dot' {
    assert "$msrc/_gxl2dot" is_file
}

@test 'man_src has _gxl2gv' {
    assert "$msrc/_gxl2gv" is_file
}

@test 'man_src has _gzrecover' {
    assert "$msrc/_gzrecover" is_file
}

@test 'man_src has _h2ph' {
    assert "$msrc/_h2ph" is_file
}

@test 'man_src has _h2ph5.18' {
    assert "$msrc/_h2ph5.18" is_file
}

@test 'man_src has _h2ph5.28' {
    assert "$msrc/_h2ph5.28" is_file
}

@test 'man_src has _h2ph5.30' {
    assert "$msrc/_h2ph5.30" is_file
}

@test 'man_src has _h2ph5.34' {
    assert "$msrc/_h2ph5.34" is_file
}

@test 'man_src has _h2xs' {
    assert "$msrc/_h2xs" is_file
}

@test 'man_src has _h2xs5.18' {
    assert "$msrc/_h2xs5.18" is_file
}

@test 'man_src has _h2xs5.28' {
    assert "$msrc/_h2xs5.28" is_file
}

@test 'man_src has _h2xs5.30' {
    assert "$msrc/_h2xs5.30" is_file
}

@test 'man_src has _h2xs5.34' {
    assert "$msrc/_h2xs5.34" is_file
}

@test 'man_src has _h52gif' {
    assert "$msrc/_h52gif" is_file
}

@test 'man_src has _hastctl' {
    assert "$msrc/_hastctl" is_file
}

@test 'man_src has _hastd' {
    assert "$msrc/_hastd" is_file
}

@test 'man_src has _hbf2gf' {
    assert "$msrc/_hbf2gf" is_file
}

@test 'man_src has _hccontrol' {
    assert "$msrc/_hccontrol" is_file
}

@test 'man_src has _hciattach' {
    assert "$msrc/_hciattach" is_file
}

@test 'man_src has _hciconfig' {
    assert "$msrc/_hciconfig" is_file
}

@test 'man_src has _hcopy' {
    assert "$msrc/_hcopy" is_file
}

@test 'man_src has _hcxessidtool' {
    assert "$msrc/_hcxessidtool" is_file
}

@test 'man_src has _hcxhashtool' {
    assert "$msrc/_hcxhashtool" is_file
}

@test 'man_src has _hcxmactool' {
    assert "$msrc/_hcxmactool" is_file
}

@test 'man_src has _hcxpcapngtool' {
    assert "$msrc/_hcxpcapngtool" is_file
}

@test 'man_src has _hcxpioff' {
    assert "$msrc/_hcxpioff" is_file
}

@test 'man_src has _hcxpmkidtool' {
    assert "$msrc/_hcxpmkidtool" is_file
}

@test 'man_src has _hd' {
    assert "$msrc/_hd" is_file
}

@test 'man_src has _hdifftopam' {
    assert "$msrc/_hdifftopam" is_file
}

@test 'man_src has _headerdoc2html' {
    assert "$msrc/_headerdoc2html" is_file
}

@test 'man_src has _heif-convert' {
    assert "$msrc/_heif-convert" is_file
}

@test 'man_src has _heif-dec' {
    assert "$msrc/_heif-dec" is_file
}

@test 'man_src has _heif-thumbnailer' {
    assert "$msrc/_heif-thumbnailer" is_file
}

@test 'man_src has _hexedit' {
    assert "$msrc/_hexedit" is_file
}

@test 'man_src has _hformat' {
    assert "$msrc/_hformat" is_file
}

@test 'man_src has _hg' {
    assert "$msrc/_hg" is_file
}

@test 'man_src has _hivexml' {
    assert "$msrc/_hivexml" is_file
}

@test 'man_src has _hivexregedit' {
    assert "$msrc/_hivexregedit" is_file
}

@test 'man_src has _hivexsh' {
    assert "$msrc/_hivexsh" is_file
}

@test 'man_src has _hlfsd' {
    assert "$msrc/_hlfsd" is_file
}

@test 'man_src has _hls' {
    assert "$msrc/_hls" is_file
}

@test 'man_src has _hmac256' {
    assert "$msrc/_hmac256" is_file
}

@test 'man_src has _homectl' {
    assert "$msrc/_homectl" is_file
}

@test 'man_src has _hoststat' {
    assert "$msrc/_hoststat" is_file
}

@test 'man_src has _hp-align' {
    assert "$msrc/_hp-align" is_file
}

@test 'man_src has _hp-check' {
    assert "$msrc/_hp-check" is_file
}

@test 'man_src has _hp-clean' {
    assert "$msrc/_hp-clean" is_file
}

@test 'man_src has _hp-colorcal' {
    assert "$msrc/_hp-colorcal" is_file
}

@test 'man_src has _hp-config_usb_printer' {
    assert "$msrc/_hp-config_usb_printer" is_file
}

@test 'man_src has _hp-doctor' {
    assert "$msrc/_hp-doctor" is_file
}

@test 'man_src has _hp-firmware' {
    assert "$msrc/_hp-firmware" is_file
}

@test 'man_src has _hp-info' {
    assert "$msrc/_hp-info" is_file
}

@test 'man_src has _hp-levels' {
    assert "$msrc/_hp-levels" is_file
}

@test 'man_src has _hp-logcapture' {
    assert "$msrc/_hp-logcapture" is_file
}

@test 'man_src has _hp-makeuri' {
    assert "$msrc/_hp-makeuri" is_file
}

@test 'man_src has _hp-pkservice' {
    assert "$msrc/_hp-pkservice" is_file
}

@test 'man_src has _hp-plugin' {
    assert "$msrc/_hp-plugin" is_file
}

@test 'man_src has _hp-probe' {
    assert "$msrc/_hp-probe" is_file
}

@test 'man_src has _hp-query' {
    assert "$msrc/_hp-query" is_file
}

@test 'man_src has _hp-scan' {
    assert "$msrc/_hp-scan" is_file
}

@test 'man_src has _hp-setup' {
    assert "$msrc/_hp-setup" is_file
}

@test 'man_src has _hp-testpage' {
    assert "$msrc/_hp-testpage" is_file
}

@test 'man_src has _hp-timedate' {
    assert "$msrc/_hp-timedate" is_file
}

@test 'man_src has _hpftodit' {
    assert "$msrc/_hpftodit" is_file
}

@test 'man_src has _htags' {
    assert "$msrc/_htags" is_file
}

@test 'man_src has _htags-server' {
    assert "$msrc/_htags-server" is_file
}

@test 'man_src has _htdbm2' {
    assert "$msrc/_htdbm2" is_file
}

@test 'man_src has _htdigest' {
    assert "$msrc/_htdigest" is_file
}

@test 'man_src has _htdigest2' {
    assert "$msrc/_htdigest2" is_file
}

@test 'man_src has _html2markdown.py2' {
    assert "$msrc/_html2markdown.py2" is_file
}

@test 'man_src has _html2markdown.py3' {
    assert "$msrc/_html2markdown.py3" is_file
}

@test 'man_src has _html2text' {
    assert "$msrc/_html2text" is_file
}

@test 'man_src has _htpasswd2' {
    assert "$msrc/_htpasswd2" is_file
}

@test 'man_src has _httpcfg' {
    assert "$msrc/_httpcfg" is_file
}

@test 'man_src has _httpie' {
    assert "$msrc/_httpie" is_file
}

@test 'man_src has _hunzip' {
    assert "$msrc/_hunzip" is_file
}

@test 'man_src has _hv_kvp_daemon' {
    assert "$msrc/_hv_kvp_daemon" is_file
}

