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

@test 'man_src has _hwloc-gather-cpuid' {
    assert "$msrc/_hwloc-gather-cpuid" is_file
}

@test 'man_src has _hyperxmp-add-bytecount' {
    assert "$msrc/_hyperxmp-add-bytecount" is_file
}

@test 'man_src has _i2c' {
    assert "$msrc/_i2c" is_file
}

@test 'man_src has _i2cdetect' {
    assert "$msrc/_i2cdetect" is_file
}

@test 'man_src has _i2cdump' {
    assert "$msrc/_i2cdump" is_file
}

@test 'man_src has _i2cget' {
    assert "$msrc/_i2cget" is_file
}

@test 'man_src has _i2cset' {
    assert "$msrc/_i2cset" is_file
}

@test 'man_src has _i2ctransfer' {
    assert "$msrc/_i2ctransfer" is_file
}

@test 'man_src has _i686-w64-mingw32-gcov-dump' {
    assert "$msrc/_i686-w64-mingw32-gcov-dump" is_file
}

@test 'man_src has _i686-w64-mingw32-gprof' {
    assert "$msrc/_i686-w64-mingw32-gprof" is_file
}

@test 'man_src has _ibaddr' {
    assert "$msrc/_ibaddr" is_file
}

@test 'man_src has _ibcacheedit' {
    assert "$msrc/_ibcacheedit" is_file
}

@test 'man_src has _ibccconfig' {
    assert "$msrc/_ibccconfig" is_file
}

@test 'man_src has _ibccquery' {
    assert "$msrc/_ibccquery" is_file
}

@test 'man_src has _ibfindnodesusing.pl' {
    assert "$msrc/_ibfindnodesusing.pl" is_file
}

@test 'man_src has _ibidsverify.pl' {
    assert "$msrc/_ibidsverify.pl" is_file
}

@test 'man_src has _iblinkinfo' {
    assert "$msrc/_iblinkinfo" is_file
}

@test 'man_src has _ibnetdiscover' {
    assert "$msrc/_ibnetdiscover" is_file
}

@test 'man_src has _ibping' {
    assert "$msrc/_ibping" is_file
}

@test 'man_src has _ibportstate' {
    assert "$msrc/_ibportstate" is_file
}

@test 'man_src has _ibqueryerrors' {
    assert "$msrc/_ibqueryerrors" is_file
}

@test 'man_src has _ibroute' {
    assert "$msrc/_ibroute" is_file
}

@test 'man_src has _ibstatus' {
    assert "$msrc/_ibstatus" is_file
}

@test 'man_src has _ibsysstat' {
    assert "$msrc/_ibsysstat" is_file
}

@test 'man_src has _ibtool' {
    assert "$msrc/_ibtool" is_file
}

@test 'man_src has _ibtracert' {
    assert "$msrc/_ibtracert" is_file
}

@test 'man_src has _icedax' {
    assert "$msrc/_icedax" is_file
}

@test 'man_src has _iclingo' {
    assert "$msrc/_iclingo" is_file
}

@test 'man_src has _iconutil' {
    assert "$msrc/_iconutil" is_file
}

@test 'man_src has _ident' {
    assert "$msrc/_ident" is_file
}

@test 'man_src has _idle-python2.7' {
    assert "$msrc/_idle-python2.7" is_file
}

@test 'man_src has _idle-python3.4' {
    assert "$msrc/_idle-python3.4" is_file
}

@test 'man_src has _ifmcstat' {
    assert "$msrc/_ifmcstat" is_file
}

@test 'man_src has _ifne' {
    assert "$msrc/_ifne" is_file
}

@test 'man_src has _ifrename' {
    assert "$msrc/_ifrename" is_file
}

@test 'man_src has _ifstatus' {
    assert "$msrc/_ifstatus" is_file
}

@test 'man_src has _ijs-config' {
    assert "$msrc/_ijs-config" is_file
}

@test 'man_src has _ilbmtoppm' {
    assert "$msrc/_ilbmtoppm" is_file
}

@test 'man_src has _im-config' {
    assert "$msrc/_im-config" is_file
}

@test 'man_src has _imagetops' {
    assert "$msrc/_imagetops" is_file
}

@test 'man_src has _implantisomd5' {
    assert "$msrc/_implantisomd5" is_file
}

@test 'man_src has _indent' {
    assert "$msrc/_indent" is_file
}

@test 'man_src has _indxbib' {
    assert "$msrc/_indxbib" is_file
}

@test 'man_src has _inetd' {
    assert "$msrc/_inetd" is_file
}

@test 'man_src has _inetd2rlinetd' {
    assert "$msrc/_inetd2rlinetd" is_file
}

@test 'man_src has _infotopam' {
    assert "$msrc/_infotopam" is_file
}

@test 'man_src has _install-sgmlcatalog' {
    assert "$msrc/_install-sgmlcatalog" is_file
}

@test 'man_src has _install_name_tool' {
    assert "$msrc/_install_name_tool" is_file
}

@test 'man_src has _installwatch' {
    assert "$msrc/_installwatch" is_file
}

@test 'man_src has _instaloader' {
    assert "$msrc/_instaloader" is_file
}

@test 'man_src has _invgeod' {
    assert "$msrc/_invgeod" is_file
}

@test 'man_src has _invproj' {
    assert "$msrc/_invproj" is_file
}

@test 'man_src has _io_demo' {
    assert "$msrc/_io_demo" is_file
}

@test 'man_src has _iostat' {
    assert "$msrc/_iostat" is_file
}

@test 'man_src has _iotop-py' {
    assert "$msrc/_iotop-py" is_file
}

@test 'man_src has _iovctl' {
    assert "$msrc/_iovctl" is_file
}

@test 'man_src has _ip6tables-restore' {
    assert "$msrc/_ip6tables-restore" is_file
}

@test 'man_src has _ip6tables-restore-translate' {
    assert "$msrc/_ip6tables-restore-translate" is_file
}

@test 'man_src has _ip6tables-save' {
    assert "$msrc/_ip6tables-save" is_file
}

@test 'man_src has _ipf' {
    assert "$msrc/_ipf" is_file
}

@test 'man_src has _ipfs' {
    assert "$msrc/_ipfs" is_file
}

@test 'man_src has _ipfstat' {
    assert "$msrc/_ipfstat" is_file
}

@test 'man_src has _ipftest' {
    assert "$msrc/_ipftest" is_file
}

@test 'man_src has _ipfw' {
    assert "$msrc/_ipfw" is_file
}

@test 'man_src has _ipfwpcap' {
    assert "$msrc/_ipfwpcap" is_file
}

@test 'man_src has _ipmi_ui' {
    assert "$msrc/_ipmi_ui" is_file
}

@test 'man_src has _ipmievd' {
    assert "$msrc/_ipmievd" is_file
}

@test 'man_src has _ipmilan' {
    assert "$msrc/_ipmilan" is_file
}

@test 'man_src has _ipmon' {
    assert "$msrc/_ipmon" is_file
}

@test 'man_src has _ipnat' {
    assert "$msrc/_ipnat" is_file
}

@test 'man_src has _ipp-usb' {
    assert "$msrc/_ipp-usb" is_file
}

@test 'man_src has _ippeveprinter' {
    assert "$msrc/_ippeveprinter" is_file
}

@test 'man_src has _ippool' {
    assert "$msrc/_ippool" is_file
}

@test 'man_src has _iprdbg' {
    assert "$msrc/_iprdbg" is_file
}

@test 'man_src has _iprinit' {
    assert "$msrc/_iprinit" is_file
}

@test 'man_src has _iprop-log' {
    assert "$msrc/_iprop-log" is_file
}

@test 'man_src has _iptables-restore-translate' {
    assert "$msrc/_iptables-restore-translate" is_file
}

@test 'man_src has _iptables-xml' {
    assert "$msrc/_iptables-xml" is_file
}

@test 'man_src has _iptraf' {
    assert "$msrc/_iptraf" is_file
}

@test 'man_src has _ir-ctl' {
    assert "$msrc/_ir-ctl" is_file
}

@test 'man_src has _ir-keytable' {
    assert "$msrc/_ir-keytable" is_file
}

@test 'man_src has _irb2.1' {
    assert "$msrc/_irb2.1" is_file
}

@test 'man_src has _irb2.7' {
    assert "$msrc/_irb2.7" is_file
}

@test 'man_src has _irdp' {
    assert "$msrc/_irdp" is_file
}

@test 'man_src has _irdpresponder' {
    assert "$msrc/_irdpresponder" is_file
}

@test 'man_src has _irqbalance' {
    assert "$msrc/_irqbalance" is_file
}

@test 'man_src has _irqtop' {
    assert "$msrc/_irqtop" is_file
}

@test 'man_src has _isc-config.sh' {
    assert "$msrc/_isc-config.sh" is_file
}

@test 'man_src has _iscontrol' {
    assert "$msrc/_iscontrol" is_file
}

@test 'man_src has _iscsiadm' {
    assert "$msrc/_iscsiadm" is_file
}

@test 'man_src has _iscsictl' {
    assert "$msrc/_iscsictl" is_file
}

@test 'man_src has _isql' {
    assert "$msrc/_isql" is_file
}

@test 'man_src has _isympy3' {
    assert "$msrc/_isympy3" is_file
}

@test 'man_src has _itox' {
    assert "$msrc/_itox" is_file
}

@test 'man_src has _itweb-settings.itweb' {
    assert "$msrc/_itweb-settings.itweb" is_file
}

@test 'man_src has _iusql' {
    assert "$msrc/_iusql" is_file
}

@test 'man_src has _ivstools' {
    assert "$msrc/_ivstools" is_file
}

@test 'man_src has _iwlist' {
    assert "$msrc/_iwlist" is_file
}

@test 'man_src has _iwpriv' {
    assert "$msrc/_iwpriv" is_file
}

@test 'man_src has _j1939acd' {
    assert "$msrc/_j1939acd" is_file
}

@test 'man_src has _j1939cat' {
    assert "$msrc/_j1939cat" is_file
}

@test 'man_src has _j1939spy' {
    assert "$msrc/_j1939spy" is_file
}

@test 'man_src has _j1939sr' {
    assert "$msrc/_j1939sr" is_file
}

@test 'man_src has _jack_load' {
    assert "$msrc/_jack_load" is_file
}

@test 'man_src has _jack_lsp' {
    assert "$msrc/_jack_lsp" is_file
}

@test 'man_src has _jack_metro' {
    assert "$msrc/_jack_metro" is_file
}

@test 'man_src has _jack_netsource' {
    assert "$msrc/_jack_netsource" is_file
}

@test 'man_src has _jack_property' {
    assert "$msrc/_jack_property" is_file
}

@test 'man_src has _jack_wait' {
    assert "$msrc/_jack_wait" is_file
}

@test 'man_src has _jailcheck' {
    assert "$msrc/_jailcheck" is_file
}

@test 'man_src has _javaws.itweb' {
    assert "$msrc/_javaws.itweb" is_file
}

@test 'man_src has _jbigtopnm' {
    assert "$msrc/_jbigtopnm" is_file
}

@test 'man_src has _jcat-tool' {
    assert "$msrc/_jcat-tool" is_file
}

@test 'man_src has _jconsole' {
    assert "$msrc/_jconsole" is_file
}

@test 'man_src has _jfs_debugfs' {
    assert "$msrc/_jfs_debugfs" is_file
}

@test 'man_src has _jfs_logdump' {
    assert "$msrc/_jfs_logdump" is_file
}

@test 'man_src has _jpeg2ktopam' {
    assert "$msrc/_jpeg2ktopam" is_file
}

@test 'man_src has _jpegtopnm' {
    assert "$msrc/_jpegtopnm" is_file
}

@test 'man_src has _jps' {
    assert "$msrc/_jps" is_file
}

@test 'man_src has _json_pp' {
    assert "$msrc/_json_pp" is_file
}

@test 'man_src has _jstatd' {
    assert "$msrc/_jstatd" is_file
}

@test 'man_src has _julia' {
    assert "$msrc/_julia" is_file
}

@test 'man_src has _junit' {
    assert "$msrc/_junit" is_file
}

@test 'man_src has _kadmin.local' {
    assert "$msrc/_kadmin.local" is_file
}

@test 'man_src has _kadmind' {
    assert "$msrc/_kadmind" is_file
}

@test 'man_src has _kasumi-unicode' {
    assert "$msrc/_kasumi-unicode" is_file
}

@test 'man_src has _kate' {
    assert "$msrc/_kate" is_file
}

@test 'man_src has _kbd_mode' {
    assert "$msrc/_kbd_mode" is_file
}

@test 'man_src has _kbdcontrol' {
    assert "$msrc/_kbdcontrol" is_file
}

@test 'man_src has _kbdmap' {
    assert "$msrc/_kbdmap" is_file
}

@test 'man_src has _kbdrate' {
    assert "$msrc/_kbdrate" is_file
}

@test 'man_src has _kcc' {
    assert "$msrc/_kcc" is_file
}

@test 'man_src has _kdb5_ldap_util' {
    assert "$msrc/_kdb5_ldap_util" is_file
}

@test 'man_src has _kdb5_util' {
    assert "$msrc/_kdb5_util" is_file
}

@test 'man_src has _kdcsetup' {
    assert "$msrc/_kdcsetup" is_file
}

@test 'man_src has _kded5' {
    assert "$msrc/_kded5" is_file
}

@test 'man_src has _kdesu' {
    assert "$msrc/_kdesu" is_file
}

@test 'man_src has _kdump' {
    assert "$msrc/_kdump" is_file
}

@test 'man_src has _kerneloops' {
    assert "$msrc/_kerneloops" is_file
}

@test 'man_src has _key.dns_resolver' {
    assert "$msrc/_key.dns_resolver" is_file
}

@test 'man_src has _keylogout' {
    assert "$msrc/_keylogout" is_file
}

@test 'man_src has _kf5-config' {
    assert "$msrc/_kf5-config" is_file
}

@test 'man_src has _kgdb' {
    assert "$msrc/_kgdb" is_file
}

@test 'man_src has _kgmon' {
    assert "$msrc/_kgmon" is_file
}

@test 'man_src has _kismet_cap_bt_geiger' {
    assert "$msrc/_kismet_cap_bt_geiger" is_file
}

@test 'man_src has _kismet_cap_freaklabs_zigbee' {
    assert "$msrc/_kismet_cap_freaklabs_zigbee" is_file
}

@test 'man_src has _kismetdb_clean' {
    assert "$msrc/_kismetdb_clean" is_file
}

@test 'man_src has _kismetdb_dump_devices' {
    assert "$msrc/_kismetdb_dump_devices" is_file
}

@test 'man_src has _kismetdb_statistics' {
    assert "$msrc/_kismetdb_statistics" is_file
}

@test 'man_src has _kismetdb_strip_packets' {
    assert "$msrc/_kismetdb_strip_packets" is_file
}

@test 'man_src has _kismetdb_to_gpx' {
    assert "$msrc/_kismetdb_to_gpx" is_file
}

@test 'man_src has _kismetdb_to_pcap' {
    assert "$msrc/_kismetdb_to_pcap" is_file
}

@test 'man_src has _kismetdb_to_wiglecsv' {
    assert "$msrc/_kismetdb_to_wiglecsv" is_file
}

@test 'man_src has _kjs' {
    assert "$msrc/_kjs" is_file
}

@test 'man_src has _kjs5' {
    assert "$msrc/_kjs5" is_file
}

@test 'man_src has _kldconfig' {
    assert "$msrc/_kldconfig" is_file
}

@test 'man_src has _kldstat' {
    assert "$msrc/_kldstat" is_file
}

@test 'man_src has _kldxref' {
    assert "$msrc/_kldxref" is_file
}

@test 'man_src has _klogconsole' {
    assert "$msrc/_klogconsole" is_file
}

@test 'man_src has _klogd' {
    assert "$msrc/_klogd" is_file
}

@test 'man_src has _kmutil' {
    assert "$msrc/_kmutil" is_file
}

@test 'man_src has _kpartx' {
    assert "$msrc/_kpartx" is_file
}

@test 'man_src has _kprop' {
    assert "$msrc/_kprop" is_file
}

@test 'man_src has _kpropd' {
    assert "$msrc/_kpropd" is_file
}

@test 'man_src has _kproplog' {
    assert "$msrc/_kproplog" is_file
}

@test 'man_src has _krb5-config' {
    assert "$msrc/_krb5-config" is_file
}

@test 'man_src has _krb5-config.mit' {
    assert "$msrc/_krb5-config.mit" is_file
}

@test 'man_src has _krbservicesetup' {
    assert "$msrc/_krbservicesetup" is_file
}

@test 'man_src has _ksvalidator' {
    assert "$msrc/_ksvalidator" is_file
}

@test 'man_src has _ktrdump' {
    assert "$msrc/_ktrdump" is_file
}

@test 'man_src has _kunittestmodrunner' {
    assert "$msrc/_kunittestmodrunner" is_file
}

@test 'man_src has _kvm' {
    assert "$msrc/_kvm" is_file
}

@test 'man_src has _kwboot' {
    assert "$msrc/_kwboot" is_file
}

@test 'man_src has _lam' {
    assert "$msrc/_lam" is_file
}

@test 'man_src has _lamed' {
    assert "$msrc/_lamed" is_file
}

@test 'man_src has _landscape-sysinfo' {
    assert "$msrc/_landscape-sysinfo" is_file
}

@test 'man_src has _lastcomm' {
    assert "$msrc/_lastcomm" is_file
}

@test 'man_src has _lastlogin' {
    assert "$msrc/_lastlogin" is_file
}

@test 'man_src has _latex-git-log' {
    assert "$msrc/_latex-git-log" is_file
}

@test 'man_src has _latex2man' {
    assert "$msrc/_latex2man" is_file
}

@test 'man_src has _latexdiff-vc' {
    assert "$msrc/_latexdiff-vc" is_file
}

@test 'man_src has _lckdo' {
    assert "$msrc/_lckdo" is_file
}

@test 'man_src has _ld-classic' {
    assert "$msrc/_ld-classic" is_file
}

@test 'man_src has _ldapadd' {
    assert "$msrc/_ldapadd" is_file
}

@test 'man_src has _ldapcompare' {
    assert "$msrc/_ldapcompare" is_file
}

@test 'man_src has _ldapdelete' {
    assert "$msrc/_ldapdelete" is_file
}

@test 'man_src has _ldapexop' {
    assert "$msrc/_ldapexop" is_file
}

@test 'man_src has _ldapmodify' {
    assert "$msrc/_ldapmodify" is_file
}

@test 'man_src has _ldapmodrdn' {
    assert "$msrc/_ldapmodrdn" is_file
}

@test 'man_src has _ldappasswd' {
    assert "$msrc/_ldappasswd" is_file
}

@test 'man_src has _ldapsearch' {
    assert "$msrc/_ldapsearch" is_file
}

@test 'man_src has _ldapurl' {
    assert "$msrc/_ldapurl" is_file
}

@test 'man_src has _ldapwhoami' {
    assert "$msrc/_ldapwhoami" is_file
}

@test 'man_src has _ldmtool' {
    assert "$msrc/_ldmtool" is_file
}

@test 'man_src has _ldns-config' {
    assert "$msrc/_ldns-config" is_file
}

@test 'man_src has _ldns-walk' {
    assert "$msrc/_ldns-walk" is_file
}

@test 'man_src has _lft.db' {
    assert "$msrc/_lft.db" is_file
}

@test 'man_src has _lftpget' {
    assert "$msrc/_lftpget" is_file
}

@test 'man_src has _libIDL-config-2' {
    assert "$msrc/_libIDL-config-2" is_file
}

@test 'man_src has _libart2-config' {
    assert "$msrc/_libart2-config" is_file
}

@test 'man_src has _libinput-debug-events' {
    assert "$msrc/_libinput-debug-events" is_file
}

@test 'man_src has _libmikmod-config' {
    assert "$msrc/_libmikmod-config" is_file
}

@test 'man_src has _libnet-config' {
    assert "$msrc/_libnet-config" is_file
}

@test 'man_src has _libwacom-list-devices' {
    assert "$msrc/_libwacom-list-devices" is_file
}

@test 'man_src has _libwacom-update-db' {
    assert "$msrc/_libwacom-update-db" is_file
}

@test 'man_src has _light-locker' {
    assert "$msrc/_light-locker" is_file
}

@test 'man_src has _light-locker-command' {
    assert "$msrc/_light-locker-command" is_file
}

@test 'man_src has _lightdm-gtk-greeter-settings' {
    assert "$msrc/_lightdm-gtk-greeter-settings" is_file
}

@test 'man_src has _lightdm-gtk-greeter-settings-pkexec' {
    assert "$msrc/_lightdm-gtk-greeter-settings-pkexec" is_file
}

@test 'man_src has _lighttpd' {
    assert "$msrc/_lighttpd" is_file
}

@test 'man_src has _lilymidi' {
    assert "$msrc/_lilymidi" is_file
}

@test 'man_src has _lilypond-book' {
    assert "$msrc/_lilypond-book" is_file
}

@test 'man_src has _lilypond-invoke-editor' {
    assert "$msrc/_lilypond-invoke-editor" is_file
}

@test 'man_src has _lilysong' {
    assert "$msrc/_lilysong" is_file
}

@test 'man_src has _limits' {
    assert "$msrc/_limits" is_file
}

@test 'man_src has _lintian-annotate-hints' {
    assert "$msrc/_lintian-annotate-hints" is_file
}

@test 'man_src has _linux-version' {
    assert "$msrc/_linux-version" is_file
}

@test 'man_src has _lipo' {
    assert "$msrc/_lipo" is_file
}

@test 'man_src has _lit' {
    assert "$msrc/_lit" is_file
}

@test 'man_src has _lkbib' {
    assert "$msrc/_lkbib" is_file
}

@test 'man_src has _llc' {
    assert "$msrc/_llc" is_file
}

@test 'man_src has _llc-10' {
    assert "$msrc/_llc-10" is_file
}

@test 'man_src has _llc-11' {
    assert "$msrc/_llc-11" is_file
}

@test 'man_src has _llc-13' {
    assert "$msrc/_llc-13" is_file
}

@test 'man_src has _llc-14' {
    assert "$msrc/_llc-14" is_file
}

@test 'man_src has _llc-3.5' {
    assert "$msrc/_llc-3.5" is_file
}

@test 'man_src has _llc-8' {
    assert "$msrc/_llc-8" is_file
}

@test 'man_src has _lldptool' {
    assert "$msrc/_lldptool" is_file
}

@test 'man_src has _lli' {
    assert "$msrc/_lli" is_file
}

@test 'man_src has _lli-10' {
    assert "$msrc/_lli-10" is_file
}

@test 'man_src has _lli-11' {
    assert "$msrc/_lli-11" is_file
}

@test 'man_src has _lli-13' {
    assert "$msrc/_lli-13" is_file
}

@test 'man_src has _lli-14' {
    assert "$msrc/_lli-14" is_file
}

@test 'man_src has _lli-3.5' {
    assert "$msrc/_lli-3.5" is_file
}

@test 'man_src has _lli-8' {
    assert "$msrc/_lli-8" is_file
}

@test 'man_src has _lli-9' {
    assert "$msrc/_lli-9" is_file
}

@test 'man_src has _llmk' {
    assert "$msrc/_llmk" is_file
}

@test 'man_src has _lmcconfig' {
    assert "$msrc/_lmcconfig" is_file
}

@test 'man_src has _lneato' {
    assert "$msrc/_lneato" is_file
}

@test 'man_src has _load_policy' {
    assert "$msrc/_load_policy" is_file
}

@test 'man_src has _loadunimap' {
    assert "$msrc/_loadunimap" is_file
}

@test 'man_src has _localemanager' {
    assert "$msrc/_localemanager" is_file
}

@test 'man_src has _locate.findutils' {
    assert "$msrc/_locate.findutils" is_file
}

@test 'man_src has _lock' {
    assert "$msrc/_lock" is_file
}

@test 'man_src has _lockdev' {
    assert "$msrc/_lockdev" is_file
}

@test 'man_src has _lockf' {
    assert "$msrc/_lockf" is_file
}

@test 'man_src has _logins' {
    assert "$msrc/_logins" is_file
}

@test 'man_src has _logresolve2' {
    assert "$msrc/_logresolve2" is_file
}

@test 'man_src has _logsave' {
    assert "$msrc/_logsave" is_file
}

@test 'man_src has _lookbib' {
    assert "$msrc/_lookbib" is_file
}

@test 'man_src has _losetup' {
    assert "$msrc/_losetup" is_file
}

@test 'man_src has _lou_allround' {
    assert "$msrc/_lou_allround" is_file
}

@test 'man_src has _lou_checkhyphens' {
    assert "$msrc/_lou_checkhyphens" is_file
}

@test 'man_src has _lou_checktable' {
    assert "$msrc/_lou_checktable" is_file
}

@test 'man_src has _lou_checkyaml' {
    assert "$msrc/_lou_checkyaml" is_file
}

@test 'man_src has _lou_debug' {
    assert "$msrc/_lou_debug" is_file
}

@test 'man_src has _lou_tableinfo' {
    assert "$msrc/_lou_tableinfo" is_file
}

@test 'man_src has _lou_trace' {
    assert "$msrc/_lou_trace" is_file
}

@test 'man_src has _lou_translate' {
    assert "$msrc/_lou_translate" is_file
}

@test 'man_src has _lp.cups' {
    assert "$msrc/_lp.cups" is_file
}

@test 'man_src has _lp2' {
    assert "$msrc/_lp2" is_file
}

@test 'man_src has _lpd' {
    assert "$msrc/_lpd" is_file
}

@test 'man_src has _lpmove' {
    assert "$msrc/_lpmove" is_file
}

@test 'man_src has _lppasswd' {
    assert "$msrc/_lppasswd" is_file
}

@test 'man_src has _lpq.cups' {
    assert "$msrc/_lpq.cups" is_file
}

@test 'man_src has _lprm.cups' {
    assert "$msrc/_lprm.cups" is_file
}

@test 'man_src has _lpstat.cups' {
    assert "$msrc/_lpstat.cups" is_file
}

@test 'man_src has _lptcontrol' {
    assert "$msrc/_lptcontrol" is_file
}

@test 'man_src has _lsattr' {
    assert "$msrc/_lsattr" is_file
}

@test 'man_src has _lsclocks' {
    assert "$msrc/_lsclocks" is_file
}

@test 'man_src has _lsextattr' {
    assert "$msrc/_lsextattr" is_file
}

@test 'man_src has _lsfd' {
    assert "$msrc/_lsfd" is_file
}

@test 'man_src has _lsirq' {
    assert "$msrc/_lsirq" is_file
}

@test 'man_src has _lskq' {
    assert "$msrc/_lskq" is_file
}

@test 'man_src has _lsmcli' {
    assert "$msrc/_lsmcli" is_file
}

@test 'man_src has _lsmdev' {
    assert "$msrc/_lsmdev" is_file
}

@test 'man_src has _lsmtd' {
    assert "$msrc/_lsmtd" is_file
}

@test 'man_src has _lspcmcia' {
    assert "$msrc/_lspcmcia" is_file
}

@test 'man_src has _lto-dump' {
    assert "$msrc/_lto-dump" is_file
}

@test 'man_src has _lto-dump-10' {
    assert "$msrc/_lto-dump-10" is_file
}

@test 'man_src has _lto-dump-11' {
    assert "$msrc/_lto-dump-11" is_file
}

@test 'man_src has _lto-dump-12' {
    assert "$msrc/_lto-dump-12" is_file
}

@test 'man_src has _lto-dump-13' {
    assert "$msrc/_lto-dump-13" is_file
}

@test 'man_src has _lto-dump-14' {
    assert "$msrc/_lto-dump-14" is_file
}

@test 'man_src has _ltx2crossrefxml' {
    assert "$msrc/_ltx2crossrefxml" is_file
}

@test 'man_src has _ltx2unitxt' {
    assert "$msrc/_ltx2unitxt" is_file
}

@test 'man_src has _ltximg' {
    assert "$msrc/_ltximg" is_file
}

@test 'man_src has _lua5.2' {
    assert "$msrc/_lua5.2" is_file
}

@test 'man_src has _luac5.2' {
    assert "$msrc/_luac5.2" is_file
}

@test 'man_src has _luafindfont' {
    assert "$msrc/_luafindfont" is_file
}

@test 'man_src has _luahbtex' {
    assert "$msrc/_luahbtex" is_file
}

@test 'man_src has _luajithbtex' {
    assert "$msrc/_luajithbtex" is_file
}

@test 'man_src has _luaotfload-tool' {
    assert "$msrc/_luaotfload-tool" is_file
}

@test 'man_src has _luatex' {
    assert "$msrc/_luatex" is_file
}

@test 'man_src has _luatools' {
    assert "$msrc/_luatools" is_file
}

@test 'man_src has _lv2apply' {
    assert "$msrc/_lv2apply" is_file
}

@test 'man_src has _lv2bench' {
    assert "$msrc/_lv2bench" is_file
}

@test 'man_src has _lv2info' {
    assert "$msrc/_lv2info" is_file
}

@test 'man_src has _lv2ls' {
    assert "$msrc/_lv2ls" is_file
}

@test 'man_src has _lvconvert' {
    assert "$msrc/_lvconvert" is_file
}

@test 'man_src has _lvcreate' {
    assert "$msrc/_lvcreate" is_file
}

@test 'man_src has _lvdisplay' {
    assert "$msrc/_lvdisplay" is_file
}

@test 'man_src has _lvextend' {
    assert "$msrc/_lvextend" is_file
}

@test 'man_src has _lvm' {
    assert "$msrc/_lvm" is_file
}

@test 'man_src has _lvm_import_vdo' {
    assert "$msrc/_lvm_import_vdo" is_file
}

@test 'man_src has _lvmconf' {
    assert "$msrc/_lvmconf" is_file
}

@test 'man_src has _lvmconfig' {
    assert "$msrc/_lvmconfig" is_file
}

@test 'man_src has _lvmdevices' {
    assert "$msrc/_lvmdevices" is_file
}

@test 'man_src has _lvmdiskscan' {
    assert "$msrc/_lvmdiskscan" is_file
}

@test 'man_src has _lvreduce' {
    assert "$msrc/_lvreduce" is_file
}

@test 'man_src has _lvremove' {
    assert "$msrc/_lvremove" is_file
}

@test 'man_src has _lvrename' {
    assert "$msrc/_lvrename" is_file
}

@test 'man_src has _lvresize' {
    assert "$msrc/_lvresize" is_file
}

@test 'man_src has _lvs' {
    assert "$msrc/_lvs" is_file
}

@test 'man_src has _lvscan' {
    assert "$msrc/_lvscan" is_file
}

@test 'man_src has _lxc' {
    assert "$msrc/_lxc" is_file
}

@test 'man_src has _lxcfs' {
    assert "$msrc/_lxcfs" is_file
}

@test 'man_src has _lxd' {
    assert "$msrc/_lxd" is_file
}

@test 'man_src has _lxdm' {
    assert "$msrc/_lxdm" is_file
}

@test 'man_src has _lxdm-binary' {
    assert "$msrc/_lxdm-binary" is_file
}

@test 'man_src has _lxdm-config' {
    assert "$msrc/_lxdm-config" is_file
}

@test 'man_src has _lxhotkey' {
    assert "$msrc/_lxhotkey" is_file
}

@test 'man_src has _lxpanel' {
    assert "$msrc/_lxpanel" is_file
}

@test 'man_src has _lxsession-logout' {
    assert "$msrc/_lxsession-logout" is_file
}

@test 'man_src has _lxterminal' {
    assert "$msrc/_lxterminal" is_file
}

@test 'man_src has _lynis' {
    assert "$msrc/_lynis" is_file
}

@test 'man_src has _lz4_decompress' {
    assert "$msrc/_lz4_decompress" is_file
}

@test 'man_src has _lzcmp' {
    assert "$msrc/_lzcmp" is_file
}

@test 'man_src has _lzdiff' {
    assert "$msrc/_lzdiff" is_file
}

@test 'man_src has _lzegrep' {
    assert "$msrc/_lzegrep" is_file
}

@test 'man_src has _lzfgrep' {
    assert "$msrc/_lzfgrep" is_file
}

@test 'man_src has _lzgrep' {
    assert "$msrc/_lzgrep" is_file
}

@test 'man_src has _lzip' {
    assert "$msrc/_lzip" is_file
}

@test 'man_src has _lzip-compressor' {
    assert "$msrc/_lzip-compressor" is_file
}

@test 'man_src has _lzip-decompressor' {
    assert "$msrc/_lzip-decompressor" is_file
}

@test 'man_src has _lzip.lzip' {
    assert "$msrc/_lzip.lzip" is_file
}

@test 'man_src has _m17n-db' {
    assert "$msrc/_m17n-db" is_file
}

@test 'man_src has _mDNSResponder' {
    assert "$msrc/_mDNSResponder" is_file
}

@test 'man_src has _macho-dump' {
    assert "$msrc/_macho-dump" is_file
}

@test 'man_src has _macho-dump-3.5' {
    assert "$msrc/_macho-dump-3.5" is_file
}

@test 'man_src has _macof' {
    assert "$msrc/_macof" is_file
}

@test 'man_src has _macptopbm' {
    assert "$msrc/_macptopbm" is_file
}

@test 'man_src has _macro-expander' {
    assert "$msrc/_macro-expander" is_file
}

@test 'man_src has _macusers' {
    assert "$msrc/_macusers" is_file
}

@test 'man_src has _mag' {
    assert "$msrc/_mag" is_file
}

@test 'man_src has _maildirmake.dovecot' {
    assert "$msrc/_maildirmake.dovecot" is_file
}

@test 'man_src has _mailq' {
    assert "$msrc/_mailq" is_file
}

@test 'man_src has _mailq.postfix' {
    assert "$msrc/_mailq.postfix" is_file
}

@test 'man_src has _mailsnarf' {
    assert "$msrc/_mailsnarf" is_file
}

@test 'man_src has _mailstats' {
    assert "$msrc/_mailstats" is_file
}

@test 'man_src has _mailto' {
    assert "$msrc/_mailto" is_file
}

@test 'man_src has _mailutil' {
    assert "$msrc/_mailutil" is_file
}

@test 'man_src has _make-ssl-cert' {
    assert "$msrc/_make-ssl-cert" is_file
}

@test 'man_src has _makedeltarpm' {
    assert "$msrc/_makedeltarpm" is_file
}

@test 'man_src has _makedepend' {
    assert "$msrc/_makedepend" is_file
}

@test 'man_src has _makefs' {
    assert "$msrc/_makefs" is_file
}

@test 'man_src has _makeindex' {
    assert "$msrc/_makeindex" is_file
}

@test 'man_src has _makekdewidgets' {
    assert "$msrc/_makekdewidgets" is_file
}

@test 'man_src has _makemap' {
    assert "$msrc/_makemap" is_file
}

@test 'man_src has _makepkg-template' {
    assert "$msrc/_makepkg-template" is_file
}

@test 'man_src has _makewhatis' {
    assert "$msrc/_makewhatis" is_file
}

@test 'man_src has _mako-render-3' {
    assert "$msrc/_mako-render-3" is_file
}

@test 'man_src has _man-recode' {
    assert "$msrc/_man-recode" is_file
}

@test 'man_src has _man.man-db' {
    assert "$msrc/_man.man-db" is_file
}

@test 'man_src has _manctl' {
    assert "$msrc/_manctl" is_file
}

@test 'man_src has _mandoc' {
    assert "$msrc/_mandoc" is_file
}

@test 'man_src has _mandoc_soelim' {
    assert "$msrc/_mandoc_soelim" is_file
}

@test 'man_src has _manweb' {
    assert "$msrc/_manweb" is_file
}

@test 'man_src has _mapscrn' {
    assert "$msrc/_mapscrn" is_file
}

@test 'man_src has _mariadb-access' {
    assert "$msrc/_mariadb-access" is_file
}

@test 'man_src has _mariadb-admin' {
    assert "$msrc/_mariadb-admin" is_file
}

@test 'man_src has _mariadb-analyze' {
    assert "$msrc/_mariadb-analyze" is_file
}

@test 'man_src has _mariadb-backup' {
    assert "$msrc/_mariadb-backup" is_file
}

@test 'man_src has _mariadb-binlog' {
    assert "$msrc/_mariadb-binlog" is_file
}

@test 'man_src has _mariadb-check' {
    assert "$msrc/_mariadb-check" is_file
}

@test 'man_src has _mariadb-client-test' {
    assert "$msrc/_mariadb-client-test" is_file
}

@test 'man_src has _mariadb-client-test-embedded' {
    assert "$msrc/_mariadb-client-test-embedded" is_file
}

@test 'man_src has _mariadb-convert-table-format' {
    assert "$msrc/_mariadb-convert-table-format" is_file
}

@test 'man_src has _mariadb-dump' {
    assert "$msrc/_mariadb-dump" is_file
}

@test 'man_src has _mariadb-dumpslow' {
    assert "$msrc/_mariadb-dumpslow" is_file
}

@test 'man_src has _mariadb-embedded' {
    assert "$msrc/_mariadb-embedded" is_file
}

@test 'man_src has _mariadb-find-rows' {
    assert "$msrc/_mariadb-find-rows" is_file
}

@test 'man_src has _mariadb-hotcopy' {
    assert "$msrc/_mariadb-hotcopy" is_file
}

@test 'man_src has _mariadb-import' {
    assert "$msrc/_mariadb-import" is_file
}

@test 'man_src has _mariadb-install-db' {
    assert "$msrc/_mariadb-install-db" is_file
}

@test 'man_src has _mariadb-optimize' {
    assert "$msrc/_mariadb-optimize" is_file
}

@test 'man_src has _mariadb-plugin' {
    assert "$msrc/_mariadb-plugin" is_file
}

@test 'man_src has _mariadb-repair' {
    assert "$msrc/_mariadb-repair" is_file
}

@test 'man_src has _mariadb-report' {
    assert "$msrc/_mariadb-report" is_file
}

@test 'man_src has _mariadb-secure-installation' {
    assert "$msrc/_mariadb-secure-installation" is_file
}

@test 'man_src has _mariadb-setpermission' {
    assert "$msrc/_mariadb-setpermission" is_file
}

@test 'man_src has _mariadb-show' {
    assert "$msrc/_mariadb-show" is_file
}

@test 'man_src has _mariadb-slap' {
    assert "$msrc/_mariadb-slap" is_file
}

@test 'man_src has _mariadb-test' {
    assert "$msrc/_mariadb-test" is_file
}

@test 'man_src has _mariadb-test-embedded' {
    assert "$msrc/_mariadb-test-embedded" is_file
}

@test 'man_src has _mariadb-upgrade' {
    assert "$msrc/_mariadb-upgrade" is_file
}

@test 'man_src has _mariadb-waitpid' {
    assert "$msrc/_mariadb-waitpid" is_file
}

@test 'man_src has _mariadbcheck' {
    assert "$msrc/_mariadbcheck" is_file
}

@test 'man_src has _mariadbd-multi' {
    assert "$msrc/_mariadbd-multi" is_file
}

@test 'man_src has _mariadbd-safe' {
    assert "$msrc/_mariadbd-safe" is_file
}

@test 'man_src has _markdown' {
    assert "$msrc/_markdown" is_file
}

@test 'man_src has _matchpathcon' {
    assert "$msrc/_matchpathcon" is_file
}

@test 'man_src has _mate-doc-common' {
    assert "$msrc/_mate-doc-common" is_file
}

@test 'man_src has _mate-wm' {
    assert "$msrc/_mate-wm" is_file
}

@test 'man_src has _mawk' {
    assert "$msrc/_mawk" is_file
}

@test 'man_src has _mcc' {
    assert "$msrc/_mcc" is_file
}

@test 'man_src has _mcheck' {
    assert "$msrc/_mcheck" is_file
}

@test 'man_src has _mcxrefresh' {
    assert "$msrc/_mcxrefresh" is_file
}

@test 'man_src has _md2html' {
    assert "$msrc/_md2html" is_file
}

@test 'man_src has _mdb-queries' {
    assert "$msrc/_mdb-queries" is_file
}

@test 'man_src has _mdb-schema' {
    assert "$msrc/_mdb-schema" is_file
}

@test 'man_src has _mdb-sql' {
    assert "$msrc/_mdb-sql" is_file
}

@test 'man_src has _mdb-tables' {
    assert "$msrc/_mdb-tables" is_file
}

@test 'man_src has _mdb-ver' {
    assert "$msrc/_mdb-ver" is_file
}

@test 'man_src has _mdb_copy' {
    assert "$msrc/_mdb_copy" is_file
}

@test 'man_src has _mdb_dump' {
    assert "$msrc/_mdb_dump" is_file
}

@test 'man_src has _mdb_load' {
    assert "$msrc/_mdb_load" is_file
}

@test 'man_src has _mdb_stat' {
    assert "$msrc/_mdb_stat" is_file
}

@test 'man_src has _mdconfig' {
    assert "$msrc/_mdconfig" is_file
}

@test 'man_src has _mdk3' {
    assert "$msrc/_mdk3" is_file
}

@test 'man_src has _mdk4' {
    assert "$msrc/_mdk4" is_file
}

@test 'man_src has _mdmfs' {
    assert "$msrc/_mdmfs" is_file
}

@test 'man_src has _mdsearch' {
    assert "$msrc/_mdsearch" is_file
}

@test 'man_src has _mecab' {
    assert "$msrc/_mecab" is_file
}

@test 'man_src has _megatron' {
    assert "$msrc/_megatron" is_file
}

@test 'man_src has _meinproc5' {
    assert "$msrc/_meinproc5" is_file
}

@test 'man_src has _meld' {
    assert "$msrc/_meld" is_file
}

@test 'man_src has _memcontrol' {
    assert "$msrc/_memcontrol" is_file
}

@test 'man_src has _memusage' {
    assert "$msrc/_memusage" is_file
}

@test 'man_src has _memusagestat' {
    assert "$msrc/_memusagestat" is_file
}

@test 'man_src has _mergerepo' {
    assert "$msrc/_mergerepo" is_file
}

@test 'man_src has _mergesolv' {
    assert "$msrc/_mergesolv" is_file
}

@test 'man_src has _mesa-overlay-control.py' {
    assert "$msrc/_mesa-overlay-control.py" is_file
}

@test 'man_src has _metamail' {
    assert "$msrc/_metamail" is_file
}

@test 'man_src has _mfiutil' {
    assert "$msrc/_mfiutil" is_file
}

@test 'man_src has _mfoc' {
    assert "$msrc/_mfoc" is_file
}

@test 'man_src has _mg' {
    assert "$msrc/_mg" is_file
}

@test 'man_src has _midi2ly' {
    assert "$msrc/_midi2ly" is_file
}

@test 'man_src has _mig' {
    assert "$msrc/_mig" is_file
}

@test 'man_src has _minidump' {
    assert "$msrc/_minidump" is_file
}

@test 'man_src has _minikerberos-ccache2kirbi' {
    assert "$msrc/_minikerberos-ccache2kirbi" is_file
}

@test 'man_src has _minikerberos-ccacheroast' {
    assert "$msrc/_minikerberos-ccacheroast" is_file
}

@test 'man_src has _miredo-checkconf' {
    assert "$msrc/_miredo-checkconf" is_file
}

@test 'man_src has _miredo-server' {
    assert "$msrc/_miredo-server" is_file
}

@test 'man_src has _mk_modmap' {
    assert "$msrc/_mk_modmap" is_file
}

@test 'man_src has _mkcomposefs' {
    assert "$msrc/_mkcomposefs" is_file
}

@test 'man_src has _mkcsmapper' {
    assert "$msrc/_mkcsmapper" is_file
}

@test 'man_src has _mkd2html' {
    assert "$msrc/_mkd2html" is_file
}

@test 'man_src has _mkdep' {
    assert "$msrc/_mkdep" is_file
}

@test 'man_src has _mkdosfs' {
    assert "$msrc/_mkdosfs" is_file
}

@test 'man_src has _mke2fs' {
    assert "$msrc/_mke2fs" is_file
}

@test 'man_src has _mkesdb' {
    assert "$msrc/_mkesdb" is_file
}

@test 'man_src has _mkexfatfs' {
    assert "$msrc/_mkexfatfs" is_file
}

@test 'man_src has _mkfile' {
    assert "$msrc/_mkfile" is_file
}

@test 'man_src has _mkfontdir' {
    assert "$msrc/_mkfontdir" is_file
}

@test 'man_src has _mkfontscale' {
    assert "$msrc/_mkfontscale" is_file
}

@test 'man_src has _mkfs.exfat' {
    assert "$msrc/_mkfs.exfat" is_file
}

@test 'man_src has _mkfs.ext2' {
    assert "$msrc/_mkfs.ext2" is_file
}

@test 'man_src has _mkfs.ext3' {
    assert "$msrc/_mkfs.ext3" is_file
}

@test 'man_src has _mkfs.ext4' {
    assert "$msrc/_mkfs.ext4" is_file
}

@test 'man_src has _mkfs.ext4dev' {
    assert "$msrc/_mkfs.ext4dev" is_file
}

@test 'man_src has _mkfs.f2fs' {
    assert "$msrc/_mkfs.f2fs" is_file
}

@test 'man_src has _mkfs.fat' {
    assert "$msrc/_mkfs.fat" is_file
}

@test 'man_src has _mkfs.msdos' {
    assert "$msrc/_mkfs.msdos" is_file
}

@test 'man_src has _mkfs.nilfs2' {
    assert "$msrc/_mkfs.nilfs2" is_file
}

@test 'man_src has _mkfs.vfat' {
    assert "$msrc/_mkfs.vfat" is_file
}

@test 'man_src has _mkfs.xfs' {
    assert "$msrc/_mkfs.xfs" is_file
}

@test 'man_src has _mkimage' {
    assert "$msrc/_mkimage" is_file
}

@test 'man_src has _mkjobtexmf' {
    assert "$msrc/_mkjobtexmf" is_file
}

@test 'man_src has _mklocale' {
    assert "$msrc/_mklocale" is_file
}

@test 'man_src has _mkpassdb' {
    assert "$msrc/_mkpassdb" is_file
}

@test 'man_src has _mksubvolume' {
    assert "$msrc/_mksubvolume" is_file
}

@test 'man_src has _mktexfmt' {
    assert "$msrc/_mktexfmt" is_file
}

@test 'man_src has _mktexmf' {
    assert "$msrc/_mktexmf" is_file
}

@test 'man_src has _mktextfm' {
    assert "$msrc/_mktextfm" is_file
}

@test 'man_src has _mkuzip' {
    assert "$msrc/_mkuzip" is_file
}

@test 'man_src has _mkzimage_cmdline' {
    assert "$msrc/_mkzimage_cmdline" is_file
}

@test 'man_src has _mmdbresolve' {
    assert "$msrc/_mmdbresolve" is_file
}

@test 'man_src has _modeline2fb' {
    assert "$msrc/_modeline2fb" is_file
}

@test 'man_src has _modifyrepo' {
    assert "$msrc/_modifyrepo" is_file
}

@test 'man_src has _mokutil' {
    assert "$msrc/_mokutil" is_file
}

@test 'man_src has _mongoperf' {
    assert "$msrc/_mongoperf" is_file
}

@test 'man_src has _monitor-sensor' {
    assert "$msrc/_monitor-sensor" is_file
}

@test 'man_src has _mono-cil-strip' {
    assert "$msrc/_mono-cil-strip" is_file
}

@test 'man_src has _mono-service' {
    assert "$msrc/_mono-service" is_file
}

@test 'man_src has _mono-shlib-cop' {
    assert "$msrc/_mono-shlib-cop" is_file
}

@test 'man_src has _monodis' {
    assert "$msrc/_monodis" is_file
}

@test 'man_src has _morse' {
    assert "$msrc/_morse" is_file
}

@test 'man_src has _mount.cifs' {
    assert "$msrc/_mount.cifs" is_file
}

@test 'man_src has _mount.ddi' {
    assert "$msrc/_mount.ddi" is_file
}

@test 'man_src has _mount.exfat' {
    assert "$msrc/_mount.exfat" is_file
}

@test 'man_src has _mount.exfat-fuse' {
    assert "$msrc/_mount.exfat-fuse" is_file
}

@test 'man_src has _mount.nilfs2' {
    assert "$msrc/_mount.nilfs2" is_file
}

@test 'man_src has _mount.smb3' {
    assert "$msrc/_mount.smb3" is_file
}

@test 'man_src has _mount_acfs' {
    assert "$msrc/_mount_acfs" is_file
}

@test 'man_src has _mount_afp' {
    assert "$msrc/_mount_afp" is_file
}

@test 'man_src has _mount_apfs' {
    assert "$msrc/_mount_apfs" is_file
}

@test 'man_src has _mount_cd9660' {
    assert "$msrc/_mount_cd9660" is_file
}

@test 'man_src has _mount_cddafs' {
    assert "$msrc/_mount_cddafs" is_file
}

@test 'man_src has _mount_exfat' {
    assert "$msrc/_mount_exfat" is_file
}

@test 'man_src has _mount_fdesc' {
    assert "$msrc/_mount_fdesc" is_file
}

@test 'man_src has _mount_ftp' {
    assert "$msrc/_mount_ftp" is_file
}

@test 'man_src has _mount_hfs' {
    assert "$msrc/_mount_hfs" is_file
}

@test 'man_src has _mount_mfs' {
    assert "$msrc/_mount_mfs" is_file
}

@test 'man_src has _mount_msdos' {
    assert "$msrc/_mount_msdos" is_file
}

@test 'man_src has _mount_msdosfs' {
    assert "$msrc/_mount_msdosfs" is_file
}

@test 'man_src has _mount_nfs' {
    assert "$msrc/_mount_nfs" is_file
}

@test 'man_src has _mount_ntfs' {
    assert "$msrc/_mount_ntfs" is_file
}

@test 'man_src has _mount_nullfs' {
    assert "$msrc/_mount_nullfs" is_file
}

@test 'man_src has _mount_smbfs' {
    assert "$msrc/_mount_smbfs" is_file
}

@test 'man_src has _mount_tmpfs' {
    assert "$msrc/_mount_tmpfs" is_file
}

@test 'man_src has _mount_udf' {
    assert "$msrc/_mount_udf" is_file
}

@test 'man_src has _mount_unionfs' {
    assert "$msrc/_mount_unionfs" is_file
}

@test 'man_src has _mount_virtiofs' {
    assert "$msrc/_mount_virtiofs" is_file
}

@test 'man_src has _mount_webdav' {
    assert "$msrc/_mount_webdav" is_file
}

@test 'man_src has _mountall' {
    assert "$msrc/_mountall" is_file
}

@test 'man_src has _mountd' {
    assert "$msrc/_mountd" is_file
}

@test 'man_src has _mouse-test' {
    assert "$msrc/_mouse-test" is_file
}

@test 'man_src has _moused' {
    assert "$msrc/_moused" is_file
}

@test 'man_src has _mousepad' {
    assert "$msrc/_mousepad" is_file
}

@test 'man_src has _mp3tag' {
    assert "$msrc/_mp3tag" is_file
}

@test 'man_src has _mpathconf' {
    assert "$msrc/_mpathconf" is_file
}

@test 'man_src has _mpathpersist' {
    assert "$msrc/_mpathpersist" is_file
}

@test 'man_src has _mpiCC' {
    assert "$msrc/_mpiCC" is_file
}

@test 'man_src has _mprutil' {
    assert "$msrc/_mprutil" is_file
}

@test 'man_src has _mpstat' {
    assert "$msrc/_mpstat" is_file
}

@test 'man_src has _mpsutil' {
    assert "$msrc/_mpsutil" is_file
}

@test 'man_src has _mptable' {
    assert "$msrc/_mptable" is_file
}

@test 'man_src has _mptopdf' {
    assert "$msrc/_mptopdf" is_file
}

@test 'man_src has _mptutil' {
    assert "$msrc/_mptutil" is_file
}

@test 'man_src has _mpv' {
    assert "$msrc/_mpv" is_file
}

@test 'man_src has _mrftopbm' {
    assert "$msrc/_mrftopbm" is_file
}

@test 'man_src has _msgfmt.py' {
    assert "$msrc/_msgfmt.py" is_file
}

@test 'man_src has _msgfmt3.9.py' {
    assert "$msrc/_msgfmt3.9.py" is_file
}

@test 'man_src has _msgs' {
    assert "$msrc/_msgs" is_file
}

@test 'man_src has _msgsnarf' {
    assert "$msrc/_msgsnarf" is_file
}

@test 'man_src has _mtree' {
    assert "$msrc/_mtree" is_file
}

@test 'man_src has _mtxrun' {
    assert "$msrc/_mtxrun" is_file
}

@test 'man_src has _mtxrunjit' {
    assert "$msrc/_mtxrunjit" is_file
}

@test 'man_src has _mu-tool' {
    assert "$msrc/_mu-tool" is_file
}

@test 'man_src has _multipathd' {
    assert "$msrc/_multipathd" is_file
}

@test 'man_src has _multixterm' {
    assert "$msrc/_multixterm" is_file
}

@test 'man_src has _mungekey' {
    assert "$msrc/_mungekey" is_file
}

@test 'man_src has _muraster' {
    assert "$msrc/_muraster" is_file
}

@test 'man_src has _musicxml2ly' {
    assert "$msrc/_musicxml2ly" is_file
}

@test 'man_src has _musixtex' {
    assert "$msrc/_musixtex" is_file
}

@test 'man_src has _mutt_pgpring' {
    assert "$msrc/_mutt_pgpring" is_file
}

@test 'man_src has _myisamlog' {
    assert "$msrc/_myisamlog" is_file
}

@test 'man_src has _mymeta-cpanfile' {
    assert "$msrc/_mymeta-cpanfile" is_file
}

@test 'man_src has _mysql-workbench' {
    assert "$msrc/_mysql-workbench" is_file
}

@test 'man_src has _mysql_client_test_embedded' {
    assert "$msrc/_mysql_client_test_embedded" is_file
}

@test 'man_src has _mysql_zap' {
    assert "$msrc/_mysql_zap" is_file
}

@test 'man_src has _mysqlanalyze' {
    assert "$msrc/_mysqlanalyze" is_file
}

@test 'man_src has _mysqlauditadmin' {
    assert "$msrc/_mysqlauditadmin" is_file
}

@test 'man_src has _mysqlauditgrep' {
    assert "$msrc/_mysqlauditgrep" is_file
}

@test 'man_src has _mysqldbcompare' {
    assert "$msrc/_mysqldbcompare" is_file
}

@test 'man_src has _mysqldbcopy' {
    assert "$msrc/_mysqldbcopy" is_file
}

@test 'man_src has _mysqldbexport' {
    assert "$msrc/_mysqldbexport" is_file
}

@test 'man_src has _mysqldbimport' {
    assert "$msrc/_mysqldbimport" is_file
}

@test 'man_src has _mysqldiskusage' {
    assert "$msrc/_mysqldiskusage" is_file
}

@test 'man_src has _mysqlfailover' {
    assert "$msrc/_mysqlfailover" is_file
}

@test 'man_src has _mysqlfrm' {
    assert "$msrc/_mysqlfrm" is_file
}

@test 'man_src has _mysqlindexcheck' {
    assert "$msrc/_mysqlindexcheck" is_file
}

@test 'man_src has _mysqlmetagrep' {
    assert "$msrc/_mysqlmetagrep" is_file
}

@test 'man_src has _mysqloptimize' {
    assert "$msrc/_mysqloptimize" is_file
}

@test 'man_src has _mysqlprocgrep' {
    assert "$msrc/_mysqlprocgrep" is_file
}

@test 'man_src has _mysqlrepair' {
    assert "$msrc/_mysqlrepair" is_file
}

@test 'man_src has _mysqlreplicate' {
    assert "$msrc/_mysqlreplicate" is_file
}

@test 'man_src has _mysqlrpladmin' {
    assert "$msrc/_mysqlrpladmin" is_file
}

@test 'man_src has _mysqlrplcheck' {
    assert "$msrc/_mysqlrplcheck" is_file
}

@test 'man_src has _mysqlrplshow' {
    assert "$msrc/_mysqlrplshow" is_file
}

@test 'man_src has _mysqlserverclone' {
    assert "$msrc/_mysqlserverclone" is_file
}

@test 'man_src has _mysqlserverinfo' {
    assert "$msrc/_mysqlserverinfo" is_file
}

@test 'man_src has _mysqltest_embedded' {
    assert "$msrc/_mysqltest_embedded" is_file
}

@test 'man_src has _mysqluc' {
    assert "$msrc/_mysqluc" is_file
}

@test 'man_src has _mysqluserclone' {
    assert "$msrc/_mysqluserclone" is_file
}

@test 'man_src has _mytop' {
    assert "$msrc/_mytop" is_file
}

@test 'man_src has _named' {
    assert "$msrc/_named" is_file
}

@test 'man_src has _named-checkconf' {
    assert "$msrc/_named-checkconf" is_file
}

@test 'man_src has _named-checkzone' {
    assert "$msrc/_named-checkzone" is_file
}

@test 'man_src has _named-compilezone' {
    assert "$msrc/_named-compilezone" is_file
}

@test 'man_src has _named-rrchecker' {
    assert "$msrc/_named-rrchecker" is_file
}

@test 'man_src has _nameif' {
    assert "$msrc/_nameif" is_file
}

@test 'man_src has _natsort' {
    assert "$msrc/_natsort" is_file
}

@test 'man_src has _nawk' {
    assert "$msrc/_nawk" is_file
}

@test 'man_src has _nbd-client' {
    assert "$msrc/_nbd-client" is_file
}

@test 'man_src has _nbdcopy' {
    assert "$msrc/_nbdcopy" is_file
}

@test 'man_src has _nbddump' {
    assert "$msrc/_nbddump" is_file
}

@test 'man_src has _nbdinfo' {
    assert "$msrc/_nbdinfo" is_file
}

@test 'man_src has _nbdkit' {
    assert "$msrc/_nbdkit" is_file
}

@test 'man_src has _nbdst' {
    assert "$msrc/_nbdst" is_file
}

@test 'man_src has _ncdestroy' {
    assert "$msrc/_ncdestroy" is_file
}

@test 'man_src has _ncinit' {
    assert "$msrc/_ncinit" is_file
}

@test 'man_src has _nclist' {
    assert "$msrc/_nclist" is_file
}

@test 'man_src has _ndctl' {
    assert "$msrc/_ndctl" is_file
}

@test 'man_src has _ndis_events' {
    assert "$msrc/_ndis_events" is_file
}

@test 'man_src has _ndiscvt' {
    assert "$msrc/_ndiscvt" is_file
}

@test 'man_src has _ndp' {
    assert "$msrc/_ndp" is_file
}

@test 'man_src has _needrestart' {
    assert "$msrc/_needrestart" is_file
}

@test 'man_src has _needs-restarting' {
    assert "$msrc/_needs-restarting" is_file
}

@test 'man_src has _net' {
    assert "$msrc/_net" is_file
}

@test 'man_src has _net-snmp-create-v3-user' {
    assert "$msrc/_net-snmp-create-v3-user" is_file
}

@test 'man_src has _netatalk' {
    assert "$msrc/_netatalk" is_file
}

@test 'man_src has _netconfig' {
    assert "$msrc/_netconfig" is_file
}

@test 'man_src has _nethogs' {
    assert "$msrc/_nethogs" is_file
}

@test 'man_src has _netreport' {
    assert "$msrc/_netreport" is_file
}

@test 'man_src has _netscsid' {
    assert "$msrc/_netscsid" is_file
}

@test 'man_src has _netsurf' {
    assert "$msrc/_netsurf" is_file
}

@test 'man_src has _netsurf-gtk' {
    assert "$msrc/_netsurf-gtk" is_file
}

@test 'man_src has _networkQuality' {
    assert "$msrc/_networkQuality" is_file
}

@test 'man_src has _new-kernel-pkg' {
    assert "$msrc/_new-kernel-pkg" is_file
}

@test 'man_src has _newaliases' {
    assert "$msrc/_newaliases" is_file
}

@test 'man_src has _newaliases.postfix' {
    assert "$msrc/_newaliases.postfix" is_file
}

@test 'man_src has _newfs_apfs' {
    assert "$msrc/_newfs_apfs" is_file
}

@test 'man_src has _newfs_udf' {
    assert "$msrc/_newfs_udf" is_file
}

@test 'man_src has _newkey' {
    assert "$msrc/_newkey" is_file
}

@test 'man_src has _newsyslog' {
    assert "$msrc/_newsyslog" is_file
}

@test 'man_src has _nex' {
    assert "$msrc/_nex" is_file
}

@test 'man_src has _nextboot' {
    assert "$msrc/_nextboot" is_file
}

@test 'man_src has _nfc-barcode' {
    assert "$msrc/_nfc-barcode" is_file
}

@test 'man_src has _nfc-mfultralight' {
    assert "$msrc/_nfc-mfultralight" is_file
}

@test 'man_src has _nfnl_osf' {
    assert "$msrc/_nfnl_osf" is_file
}

@test 'man_src has _nfs-ls' {
    assert "$msrc/_nfs-ls" is_file
}

@test 'man_src has _nfs4mapid' {
    assert "$msrc/_nfs4mapid" is_file
}

@test 'man_src has _nfscbd' {
    assert "$msrc/_nfscbd" is_file
}

@test 'man_src has _nfsd' {
    assert "$msrc/_nfsd" is_file
}

@test 'man_src has _nfsdclddb' {
    assert "$msrc/_nfsdclddb" is_file
}

@test 'man_src has _nfsdclnts' {
    assert "$msrc/_nfsdclnts" is_file
}

@test 'man_src has _nfsdcltrack' {
    assert "$msrc/_nfsdcltrack" is_file
}

@test 'man_src has _nfsdumpstate' {
    assert "$msrc/_nfsdumpstate" is_file
}

@test 'man_src has _nfsidmap' {
    assert "$msrc/_nfsidmap" is_file
}

@test 'man_src has _nfsiod' {
    assert "$msrc/_nfsiod" is_file
}

@test 'man_src has _nfsiostat-sysstat' {
    assert "$msrc/_nfsiostat-sysstat" is_file
}

@test 'man_src has _nfsstat' {
    assert "$msrc/_nfsstat" is_file
}

@test 'man_src has _nfsuserd' {
    assert "$msrc/_nfsuserd" is_file
}

@test 'man_src has _ngctl' {
    assert "$msrc/_ngctl" is_file
}

@test 'man_src has _nghook' {
    assert "$msrc/_nghook" is_file
}

@test 'man_src has _nhlt-dmic-info' {
    assert "$msrc/_nhlt-dmic-info" is_file
}

@test 'man_src has _nilfs-tune' {
    assert "$msrc/_nilfs-tune" is_file
}

@test 'man_src has _nim' {
    assert "$msrc/_nim" is_file
}

@test 'man_src has _nimble' {
    assert "$msrc/_nimble" is_file
}

@test 'man_src has _nimgrep' {
    assert "$msrc/_nimgrep" is_file
}

@test 'man_src has _nimpretty' {
    assert "$msrc/_nimpretty" is_file
}

@test 'man_src has _nimsuggest' {
    assert "$msrc/_nimsuggest" is_file
}

@test 'man_src has _ninfod' {
    assert "$msrc/_ninfod" is_file
}

@test 'man_src has _nipper' {
    assert "$msrc/_nipper" is_file
}

@test 'man_src has _nm-classic' {
    assert "$msrc/_nm-classic" is_file
}

@test 'man_src has _nmedit' {
    assert "$msrc/_nmedit" is_file
}

@test 'man_src has _nmtree' {
    assert "$msrc/_nmtree" is_file
}

@test 'man_src has _nop' {
    assert "$msrc/_nop" is_file
}

@test 'man_src has _npa-tool' {
    assert "$msrc/_npa-tool" is_file
}

@test 'man_src has _nroff' {
    assert "$msrc/_nroff" is_file
}

@test 'man_src has _nsupdate' {
    assert "$msrc/_nsupdate" is_file
}

@test 'man_src has _ntfs-3g.probe' {
    assert "$msrc/_ntfs-3g.probe" is_file
}

@test 'man_src has _ntop' {
    assert "$msrc/_ntop" is_file
}

@test 'man_src has _ntpdate' {
    assert "$msrc/_ntpdate" is_file
}

@test 'man_src has _ntsysv' {
    assert "$msrc/_ntsysv" is_file
}

@test 'man_src has _numactl' {
    assert "$msrc/_numactl" is_file
}

@test 'man_src has _number' {
    assert "$msrc/_number" is_file
}

@test 'man_src has _nvi' {
    assert "$msrc/_nvi" is_file
}

@test 'man_src has _nview' {
    assert "$msrc/_nview" is_file
}

@test 'man_src has _nvramtool' {
    assert "$msrc/_nvramtool" is_file
}

@test 'man_src has _nyx' {
    assert "$msrc/_nyx" is_file
}

@test 'man_src has _obj2yaml-10' {
    assert "$msrc/_obj2yaml-10" is_file
}

@test 'man_src has _obj2yaml-11' {
    assert "$msrc/_obj2yaml-11" is_file
}

@test 'man_src has _ocamlrun' {
    assert "$msrc/_ocamlrun" is_file
}

@test 'man_src has _ocamlyacc' {
    assert "$msrc/_ocamlyacc" is_file
}

@test 'man_src has _oclhashcat' {
    assert "$msrc/_oclhashcat" is_file
}

@test 'man_src has _oclingo' {
    assert "$msrc/_oclingo" is_file
}

@test 'man_src has _oclock' {
    assert "$msrc/_oclock" is_file
}

@test 'man_src has _odbc_config' {
    assert "$msrc/_odbc_config" is_file
}

@test 'man_src has _odbcinst' {
    assert "$msrc/_odbcinst" is_file
}

@test 'man_src has _oddjob_request' {
    assert "$msrc/_oddjob_request" is_file
}

@test 'man_src has _oddjobd' {
    assert "$msrc/_oddjobd" is_file
}

@test 'man_src has _odt2sxw' {
    assert "$msrc/_odt2sxw" is_file
}

@test 'man_src has _omp-dialog' {
    assert "$msrc/_omp-dialog" is_file
}

@test 'man_src has _ompi_info' {
    assert "$msrc/_ompi_info" is_file
}

@test 'man_src has _omxregister-bellagio' {
    assert "$msrc/_omxregister-bellagio" is_file
}

@test 'man_src has _onionshare-gui' {
    assert "$msrc/_onionshare-gui" is_file
}

@test 'man_src has _oocalc' {
    assert "$msrc/_oocalc" is_file
}

@test 'man_src has _oodraw' {
    assert "$msrc/_oodraw" is_file
}

@test 'man_src has _ooffice' {
    assert "$msrc/_ooffice" is_file
}

@test 'man_src has _ooimpress' {
    assert "$msrc/_ooimpress" is_file
}

@test 'man_src has _oomath' {
    assert "$msrc/_oomath" is_file
}

@test 'man_src has _oomctl' {
    assert "$msrc/_oomctl" is_file
}

@test 'man_src has _ooviewdoc' {
    assert "$msrc/_ooviewdoc" is_file
}

@test 'man_src has _oowriter' {
    assert "$msrc/_oowriter" is_file
}

@test 'man_src has _opam-admin' {
    assert "$msrc/_opam-admin" is_file
}

@test 'man_src has _opam-installer' {
    assert "$msrc/_opam-installer" is_file
}

@test 'man_src has _openoffice.org' {
    assert "$msrc/_openoffice.org" is_file
}

@test 'man_src has _opensnitchd' {
    assert "$msrc/_opensnitchd" is_file
}

@test 'man_src has _openssl11' {
    assert "$msrc/_openssl11" is_file
}

@test 'man_src has _openvas' {
    assert "$msrc/_openvas" is_file
}

@test 'man_src has _openvas-nasl' {
    assert "$msrc/_openvas-nasl" is_file
}

@test 'man_src has _openvas-nasl-lint' {
    assert "$msrc/_openvas-nasl-lint" is_file
}

@test 'man_src has _opieinfo' {
    assert "$msrc/_opieinfo" is_file
}

@test 'man_src has _opiekey' {
    assert "$msrc/_opiekey" is_file
}

@test 'man_src has _opiepasswd' {
    assert "$msrc/_opiepasswd" is_file
}

@test 'man_src has _opt' {
    assert "$msrc/_opt" is_file
}

@test 'man_src has _opt-10' {
    assert "$msrc/_opt-10" is_file
}

@test 'man_src has _opt-11' {
    assert "$msrc/_opt-11" is_file
}

@test 'man_src has _opt-13' {
    assert "$msrc/_opt-13" is_file
}

@test 'man_src has _opt-14' {
    assert "$msrc/_opt-14" is_file
}

@test 'man_src has _opt-16' {
    assert "$msrc/_opt-16" is_file
}

@test 'man_src has _opt-17' {
    assert "$msrc/_opt-17" is_file
}

@test 'man_src has _opt-19' {
    assert "$msrc/_opt-19" is_file
}

@test 'man_src has _opt-3.5' {
    assert "$msrc/_opt-3.5" is_file
}

@test 'man_src has _opt-8' {
    assert "$msrc/_opt-8" is_file
}

@test 'man_src has _oracle' {
    assert "$msrc/_oracle" is_file
}

@test 'man_src has _orbd' {
    assert "$msrc/_orbd" is_file
}

@test 'man_src has _orte-info' {
    assert "$msrc/_orte-info" is_file
}

@test 'man_src has _osacompile' {
    assert "$msrc/_osacompile" is_file
}

@test 'man_src has _osalang' {
    assert "$msrc/_osalang" is_file
}

@test 'man_src has _osmocom_fft' {
    assert "$msrc/_osmocom_fft" is_file
}

@test 'man_src has _osmocom_siggen' {
    assert "$msrc/_osmocom_siggen" is_file
}

@test 'man_src has _osmocom_siggen_nogui' {
    assert "$msrc/_osmocom_siggen_nogui" is_file
}

@test 'man_src has _ospd-openvas' {
    assert "$msrc/_ospd-openvas" is_file
}

@test 'man_src has _osql' {
    assert "$msrc/_osql" is_file
}

@test 'man_src has _ot2kpx' {
    assert "$msrc/_ot2kpx" is_file
}

@test 'man_src has _otp-md4' {
    assert "$msrc/_otp-md4" is_file
}

@test 'man_src has _otp-md5' {
    assert "$msrc/_otp-md5" is_file
}

@test 'man_src has _otp-sha1' {
    assert "$msrc/_otp-sha1" is_file
}

@test 'man_src has _p11-kit' {
    assert "$msrc/_p11-kit" is_file
}

@test 'man_src has _pac' {
    assert "$msrc/_pac" is_file
}

@test 'man_src has _pacdiff' {
    assert "$msrc/_pacdiff" is_file
}

@test 'man_src has _package-cleanup' {
    assert "$msrc/_package-cleanup" is_file
}

@test 'man_src has _pagelayoutapi' {
    assert "$msrc/_pagelayoutapi" is_file
}

@test 'man_src has _pagestuff' {
    assert "$msrc/_pagestuff" is_file
}

@test 'man_src has _palmtopnm' {
    assert "$msrc/_palmtopnm" is_file
}

@test 'man_src has _pam-auth-update' {
    assert "$msrc/_pam-auth-update" is_file
}

@test 'man_src has _pam_console_apply' {
    assert "$msrc/_pam_console_apply" is_file
}

@test 'man_src has _pam_timestamp_check' {
    assert "$msrc/_pam_timestamp_check" is_file
}

@test 'man_src has _pamaddnoise' {
    assert "$msrc/_pamaddnoise" is_file
}

@test 'man_src has _pamarith' {
    assert "$msrc/_pamarith" is_file
}

@test 'man_src has _pambackground' {
    assert "$msrc/_pambackground" is_file
}

@test 'man_src has _pambayer' {
    assert "$msrc/_pambayer" is_file
}

@test 'man_src has _pamchannel' {
    assert "$msrc/_pamchannel" is_file
}

@test 'man_src has _pamcomp' {
    assert "$msrc/_pamcomp" is_file
}

@test 'man_src has _pamcrater' {
    assert "$msrc/_pamcrater" is_file
}

@test 'man_src has _pamcut' {
    assert "$msrc/_pamcut" is_file
}

@test 'man_src has _pamdeinterlace' {
    assert "$msrc/_pamdeinterlace" is_file
}

@test 'man_src has _pamdice' {
    assert "$msrc/_pamdice" is_file
}

@test 'man_src has _pamditherbw' {
    assert "$msrc/_pamditherbw" is_file
}

@test 'man_src has _pamexec' {
    assert "$msrc/_pamexec" is_file
}

@test 'man_src has _pamfile' {
    assert "$msrc/_pamfile" is_file
}

@test 'man_src has _pamfix' {
    assert "$msrc/_pamfix" is_file
}

@test 'man_src has _pamflip' {
    assert "$msrc/_pamflip" is_file
}

@test 'man_src has _pamfunc' {
    assert "$msrc/_pamfunc" is_file
}

@test 'man_src has _pamgauss' {
    assert "$msrc/_pamgauss" is_file
}

@test 'man_src has _pamgradient' {
    assert "$msrc/_pamgradient" is_file
}

@test 'man_src has _pamlookup' {
    assert "$msrc/_pamlookup" is_file
}

@test 'man_src has _pammasksharpen' {
    assert "$msrc/_pammasksharpen" is_file
}

@test 'man_src has _pammixinterlace' {
    assert "$msrc/_pammixinterlace" is_file
}

@test 'man_src has _pamoil' {
    assert "$msrc/_pamoil" is_file
}

@test 'man_src has _pampaintspill' {
    assert "$msrc/_pampaintspill" is_file
}

@test 'man_src has _pamperspective' {
    assert "$msrc/_pamperspective" is_file
}

@test 'man_src has _pamrecolor' {
    assert "$msrc/_pamrecolor" is_file
}

@test 'man_src has _pamrubber' {
    assert "$msrc/_pamrubber" is_file
}

@test 'man_src has _pamscale' {
    assert "$msrc/_pamscale" is_file
}

@test 'man_src has _pamseq' {
    assert "$msrc/_pamseq" is_file
}

@test 'man_src has _pamshadedrelief' {
    assert "$msrc/_pamshadedrelief" is_file
}

@test 'man_src has _pamsistoaglyph' {
    assert "$msrc/_pamsistoaglyph" is_file
}

@test 'man_src has _pamslice' {
    assert "$msrc/_pamslice" is_file
}

@test 'man_src has _pamstack' {
    assert "$msrc/_pamstack" is_file
}

@test 'man_src has _pamstereogram' {
    assert "$msrc/_pamstereogram" is_file
}

@test 'man_src has _pamstretch' {
    assert "$msrc/_pamstretch" is_file
}

@test 'man_src has _pamsumm' {
    assert "$msrc/_pamsumm" is_file
}

@test 'man_src has _pamsummcol' {
    assert "$msrc/_pamsummcol" is_file
}

@test 'man_src has _pamthreshold' {
    assert "$msrc/_pamthreshold" is_file
}

@test 'man_src has _pamtilt' {
    assert "$msrc/_pamtilt" is_file
}

@test 'man_src has _pamtodjvurle' {
    assert "$msrc/_pamtodjvurle" is_file
}

@test 'man_src has _pamtofits' {
    assert "$msrc/_pamtofits" is_file
}

@test 'man_src has _pamtogif' {
    assert "$msrc/_pamtogif" is_file
}

@test 'man_src has _pamtohtmltbl' {
    assert "$msrc/_pamtohtmltbl" is_file
}

@test 'man_src has _pamtojpeg2k' {
    assert "$msrc/_pamtojpeg2k" is_file
}

@test 'man_src has _pamtopdbimg' {
    assert "$msrc/_pamtopdbimg" is_file
}

@test 'man_src has _pamtopfm' {
    assert "$msrc/_pamtopfm" is_file
}

@test 'man_src has _pamtopng' {
    assert "$msrc/_pamtopng" is_file
}

@test 'man_src has _pamtopnm' {
    assert "$msrc/_pamtopnm" is_file
}

@test 'man_src has _pamtosrf' {
    assert "$msrc/_pamtosrf" is_file
}

@test 'man_src has _pamtosvg' {
    assert "$msrc/_pamtosvg" is_file
}

@test 'man_src has _pamtotga' {
    assert "$msrc/_pamtotga" is_file
}

@test 'man_src has _pamtotiff' {
    assert "$msrc/_pamtotiff" is_file
}

@test 'man_src has _pamtouil' {
    assert "$msrc/_pamtouil" is_file
}

@test 'man_src has _pamtowinicon' {
    assert "$msrc/_pamtowinicon" is_file
}

@test 'man_src has _pamundice' {
    assert "$msrc/_pamundice" is_file
}

@test 'man_src has _pamunlookup' {
    assert "$msrc/_pamunlookup" is_file
}

@test 'man_src has _pamwipeout' {
    assert "$msrc/_pamwipeout" is_file
}

@test 'man_src has _pamx' {
    assert "$msrc/_pamx" is_file
}

@test 'man_src has _pango-querymodules' {
    assert "$msrc/_pango-querymodules" is_file
}

@test 'man_src has _papd' {
    assert "$msrc/_papd" is_file
}

@test 'man_src has _paper' {
    assert "$msrc/_paper" is_file
}

@test 'man_src has _paperconf' {
    assert "$msrc/_paperconf" is_file
}

@test 'man_src has _papstatus' {
    assert "$msrc/_papstatus" is_file
}

@test 'man_src has _parallel.moreutils' {
    assert "$msrc/_parallel.moreutils" is_file
}

@test 'man_src has _parcat' {
    assert "$msrc/_parcat" is_file
}

@test 'man_src has _parole' {
    assert "$msrc/_parole" is_file
}

@test 'man_src has _parse-edid' {
    assert "$msrc/_parse-edid" is_file
}

@test 'man_src has _parsort' {
    assert "$msrc/_parsort" is_file
}

@test 'man_src has _passt' {
    assert "$msrc/_passt" is_file
}

@test 'man_src has _pasta' {
    assert "$msrc/_pasta" is_file
}

@test 'man_src has _pastebinit' {
    assert "$msrc/_pastebinit" is_file
}

@test 'man_src has _paster3' {
    assert "$msrc/_paster3" is_file
}

@test 'man_src has _patchview' {
    assert "$msrc/_patchview" is_file
}

@test 'man_src has _pavucontrol' {
    assert "$msrc/_pavucontrol" is_file
}

@test 'man_src has _paxcpio' {
    assert "$msrc/_paxcpio" is_file
}

@test 'man_src has _paxtar' {
    assert "$msrc/_paxtar" is_file
}

@test 'man_src has _pbmclean' {
    assert "$msrc/_pbmclean" is_file
}

@test 'man_src has _pbmmake' {
    assert "$msrc/_pbmmake" is_file
}

@test 'man_src has _pbmmask' {
    assert "$msrc/_pbmmask" is_file
}

@test 'man_src has _pbmpage' {
    assert "$msrc/_pbmpage" is_file
}

@test 'man_src has _pbmreduce' {
    assert "$msrc/_pbmreduce" is_file
}

@test 'man_src has _pbmtext' {
    assert "$msrc/_pbmtext" is_file
}

@test 'man_src has _pbmtextps' {
    assert "$msrc/_pbmtextps" is_file
}

@test 'man_src has _pbmto10x' {
    assert "$msrc/_pbmto10x" is_file
}

@test 'man_src has _pbmtoascii' {
    assert "$msrc/_pbmtoascii" is_file
}

@test 'man_src has _pbmtoepsi' {
    assert "$msrc/_pbmtoepsi" is_file
}

@test 'man_src has _pbmtoepson' {
    assert "$msrc/_pbmtoepson" is_file
}

@test 'man_src has _pbmtoescp2' {
    assert "$msrc/_pbmtoescp2" is_file
}

@test 'man_src has _pbmtog3' {
    assert "$msrc/_pbmtog3" is_file
}

@test 'man_src has _pbmtoibm23xx' {
    assert "$msrc/_pbmtoibm23xx" is_file
}

@test 'man_src has _pbmtolj' {
    assert "$msrc/_pbmtolj" is_file
}

@test 'man_src has _pbmtoln03' {
    assert "$msrc/_pbmtoln03" is_file
}

@test 'man_src has _pbmtomacp' {
    assert "$msrc/_pbmtomacp" is_file
}

@test 'man_src has _pbmtopsg3' {
    assert "$msrc/_pbmtopsg3" is_file
}

@test 'man_src has _pbmtoxbm' {
    assert "$msrc/_pbmtoxbm" is_file
}

@test 'man_src has _pbmupc' {
    assert "$msrc/_pbmupc" is_file
}

@test 'man_src has _pbuildid' {
    assert "$msrc/_pbuildid" is_file
}

@test 'man_src has _pc-sysinstall' {
    assert "$msrc/_pc-sysinstall" is_file
}

@test 'man_src has _pcap-config' {
    assert "$msrc/_pcap-config" is_file
}

@test 'man_src has _pccardctl' {
    assert "$msrc/_pccardctl" is_file
}

@test 'man_src has _pcimodules' {
    assert "$msrc/_pcimodules" is_file
}

@test 'man_src has _pcmanfm' {
    assert "$msrc/_pcmanfm" is_file
}

@test 'man_src has _pcmanfm-qt' {
    assert "$msrc/_pcmanfm-qt" is_file
}

@test 'man_src has _pcp2csv' {
    assert "$msrc/_pcp2csv" is_file
}

@test 'man_src has _pcre-config' {
    assert "$msrc/_pcre-config" is_file
}

@test 'man_src has _pcre2-config' {
    assert "$msrc/_pcre2-config" is_file
}

@test 'man_src has _pcxtoppm' {
    assert "$msrc/_pcxtoppm" is_file
}

@test 'man_src has _pdbimgtopam' {
    assert "$msrc/_pdbimgtopam" is_file
}

@test 'man_src has _pdbtool' {
    assert "$msrc/_pdbtool" is_file
}

@test 'man_src has _pdfattach' {
    assert "$msrc/_pdfattach" is_file
}

@test 'man_src has _pdfclose' {
    assert "$msrc/_pdfclose" is_file
}

@test 'man_src has _pdfopen' {
    assert "$msrc/_pdfopen" is_file
}

@test 'man_src has _pdftopng' {
    assert "$msrc/_pdftopng" is_file
}

@test 'man_src has _pdistreport3' {
    assert "$msrc/_pdistreport3" is_file
}

@test 'man_src has _pear' {
    assert "$msrc/_pear" is_file
}

@test 'man_src has _peardev' {
    assert "$msrc/_peardev" is_file
}

@test 'man_src has _pecl' {
    assert "$msrc/_pecl" is_file
}

@test 'man_src has _pedigree' {
    assert "$msrc/_pedigree" is_file
}

@test 'man_src has _pee' {
    assert "$msrc/_pee" is_file
}

@test 'man_src has _perfquery' {
    assert "$msrc/_perfquery" is_file
}

@test 'man_src has _perl5.32-x86_64-linux-gnu' {
    assert "$msrc/_perl5.32-x86_64-linux-gnu" is_file
}

@test 'man_src has _perl5.38-aarch64-linux-gnu' {
    assert "$msrc/_perl5.38-aarch64-linux-gnu" is_file
}

@test 'man_src has _perl5.40.0' {
    assert "$msrc/_perl5.40.0" is_file
}

@test 'man_src has _perlbug5.30' {
    assert "$msrc/_perlbug5.30" is_file
}

@test 'man_src has _perlbug5.34' {
    assert "$msrc/_perlbug5.34" is_file
}

@test 'man_src has _perlcritic' {
    assert "$msrc/_perlcritic" is_file
}

@test 'man_src has _perldoc5.34' {
    assert "$msrc/_perldoc5.34" is_file
}

@test 'man_src has _perlivp5.34' {
    assert "$msrc/_perlivp5.34" is_file
}

@test 'man_src has _perlthanks5.34' {
    assert "$msrc/_perlthanks5.34" is_file
}

@test 'man_src has _persist-tool' {
    assert "$msrc/_persist-tool" is_file
}

@test 'man_src has _petite' {
    assert "$msrc/_petite" is_file
}

@test 'man_src has _pfbtops' {
    assert "$msrc/_pfbtops" is_file
}

@test 'man_src has _pflogd' {
    assert "$msrc/_pflogd" is_file
}

@test 'man_src has _pfmtopam' {
    assert "$msrc/_pfmtopam" is_file
}

@test 'man_src has _pg_amcheck' {
    assert "$msrc/_pg_amcheck" is_file
}

@test 'man_src has _pg_backupcluster' {
    assert "$msrc/_pg_backupcluster" is_file
}

@test 'man_src has _pg_checksums' {
    assert "$msrc/_pg_checksums" is_file
}

@test 'man_src has _pg_ctlcluster' {
    assert "$msrc/_pg_ctlcluster" is_file
}

@test 'man_src has _pg_test_fsync' {
    assert "$msrc/_pg_test_fsync" is_file
}

@test 'man_src has _pg_test_timing' {
    assert "$msrc/_pg_test_timing" is_file
}

@test 'man_src has _pg_verifybackup' {
    assert "$msrc/_pg_verifybackup" is_file
}

@test 'man_src has _pgmabel' {
    assert "$msrc/_pgmabel" is_file
}

@test 'man_src has _pgmcrater' {
    assert "$msrc/_pgmcrater" is_file
}

@test 'man_src has _pgmenhance' {
    assert "$msrc/_pgmenhance" is_file
}

@test 'man_src has _pgmhist' {
    assert "$msrc/_pgmhist" is_file
}

@test 'man_src has _pgmkernel' {
    assert "$msrc/_pgmkernel" is_file
}

@test 'man_src has _pgmmake' {
    assert "$msrc/_pgmmake" is_file
}

@test 'man_src has _pgmmedian' {
    assert "$msrc/_pgmmedian" is_file
}

@test 'man_src has _pgmmorphconv' {
    assert "$msrc/_pgmmorphconv" is_file
}

@test 'man_src has _pgmnoise' {
    assert "$msrc/_pgmnoise" is_file
}

@test 'man_src has _pgmnorm' {
    assert "$msrc/_pgmnorm" is_file
}

@test 'man_src has _pgmoil' {
    assert "$msrc/_pgmoil" is_file
}

@test 'man_src has _pgmramp' {
    assert "$msrc/_pgmramp" is_file
}

@test 'man_src has _pgmslice' {
    assert "$msrc/_pgmslice" is_file
}

@test 'man_src has _pgmtopbm' {
    assert "$msrc/_pgmtopbm" is_file
}

@test 'man_src has _pgpring' {
    assert "$msrc/_pgpring" is_file
}

@test 'man_src has _phar' {
    assert "$msrc/_phar" is_file
}

@test 'man_src has _phar.default' {
    assert "$msrc/_phar.default" is_file
}

@test 'man_src has _phar.phar' {
    assert "$msrc/_phar.phar" is_file
}

@test 'man_src has _phar.phar.default' {
    assert "$msrc/_phar.phar.default" is_file
}

@test 'man_src has _phar.phar7.2' {
    assert "$msrc/_phar.phar7.2" is_file
}

@test 'man_src has _phar.phar7.3' {
    assert "$msrc/_phar.phar7.3" is_file
}

@test 'man_src has _phar.phar7.4' {
    assert "$msrc/_phar.phar7.4" is_file
}

@test 'man_src has _phar.phar8.1' {
    assert "$msrc/_phar.phar8.1" is_file
}

@test 'man_src has _phar5' {
    assert "$msrc/_phar5" is_file
}

@test 'man_src has _phar7.2' {
    assert "$msrc/_phar7.2" is_file
}

@test 'man_src has _phar7.3' {
    assert "$msrc/_phar7.3" is_file
}

@test 'man_src has _phar7.4' {
    assert "$msrc/_phar7.4" is_file
}

@test 'man_src has _phar7.4.phar' {
    assert "$msrc/_phar7.4.phar" is_file
}

@test 'man_src has _phar8.1' {
    assert "$msrc/_phar8.1" is_file
}

@test 'man_src has _phar8.1.phar' {
    assert "$msrc/_phar8.1.phar" is_file
}

@test 'man_src has _php.default' {
    assert "$msrc/_php.default" is_file
}

@test 'man_src has _php5' {
    assert "$msrc/_php5" is_file
}

@test 'man_src has _php7.4' {
    assert "$msrc/_php7.4" is_file
}

@test 'man_src has _php8.1' {
    assert "$msrc/_php8.1" is_file
}

@test 'man_src has _php8.2' {
    assert "$msrc/_php8.2" is_file
}

@test 'man_src has _phpdbg' {
    assert "$msrc/_phpdbg" is_file
}

@test 'man_src has _phpize' {
    assert "$msrc/_phpize" is_file
}

@test 'man_src has _pic' {
    assert "$msrc/_pic" is_file
}

@test 'man_src has _pic2graph' {
    assert "$msrc/_pic2graph" is_file
}

@test 'man_src has _picttoppm' {
    assert "$msrc/_picttoppm" is_file
}

@test 'man_src has _pidl' {
    assert "$msrc/_pidl" is_file
}

@test 'man_src has _pidof' {
    assert "$msrc/_pidof" is_file
}

@test 'man_src has _pidstat' {
    assert "$msrc/_pidstat" is_file
}

@test 'man_src has _pidwait' {
    assert "$msrc/_pidwait" is_file
}

@test 'man_src has _pigpiod' {
    assert "$msrc/_pigpiod" is_file
}

@test 'man_src has _pigs' {
    assert "$msrc/_pigs" is_file
}

@test 'man_src has _ping4' {
    assert "$msrc/_ping4" is_file
}

@test 'man_src has _ping6' {
    assert "$msrc/_ping6" is_file
}

@test 'man_src has _pip-3' {
    assert "$msrc/_pip-3" is_file
}

@test 'man_src has _pip-3.12' {
    assert "$msrc/_pip-3.12" is_file
}

@test 'man_src has _pipesz' {
    assert "$msrc/_pipesz" is_file
}

@test 'man_src has _pk12util' {
    assert "$msrc/_pk12util" is_file
}

@test 'man_src has _pkcs11-destroy' {
    assert "$msrc/_pkcs11-destroy" is_file
}

@test 'man_src has _pkcs11-keygen' {
    assert "$msrc/_pkcs11-keygen" is_file
}

@test 'man_src has _pkcs11-list' {
    assert "$msrc/_pkcs11-list" is_file
}

@test 'man_src has _pkcs11-tokens' {
    assert "$msrc/_pkcs11-tokens" is_file
}

@test 'man_src has _pkfix-helper' {
    assert "$msrc/_pkfix-helper" is_file
}

@test 'man_src has _pkg-static' {
    assert "$msrc/_pkg-static" is_file
}

@test 'man_src has _pktopbm' {
    assert "$msrc/_pktopbm" is_file
}

@test 'man_src has _pktsetup' {
    assert "$msrc/_pktsetup" is_file
}

@test 'man_src has _pl' {
    assert "$msrc/_pl" is_file
}

@test 'man_src has _plasmapkg' {
    assert "$msrc/_plasmapkg" is_file
}

@test 'man_src has _plocate' {
    assert "$msrc/_plocate" is_file
}

@test 'man_src has _plocate-build' {
    assert "$msrc/_plocate-build" is_file
}

@test 'man_src has _plog' {
    assert "$msrc/_plog" is_file
}

@test 'man_src has _plugctl' {
    assert "$msrc/_plugctl" is_file
}

@test 'man_src has _pluginkit' {
    assert "$msrc/_pluginkit" is_file
}

@test 'man_src has _pm-hibernate' {
    assert "$msrc/_pm-hibernate" is_file
}

@test 'man_src has _pm-is-supported' {
    assert "$msrc/_pm-is-supported" is_file
}

@test 'man_src has _pm-powersave' {
    assert "$msrc/_pm-powersave" is_file
}

@test 'man_src has _pm-suspend' {
    assert "$msrc/_pm-suspend" is_file
}

@test 'man_src has _pm-suspend-hybrid' {
    assert "$msrc/_pm-suspend-hybrid" is_file
}

@test 'man_src has _pmafm' {
    assert "$msrc/_pmafm" is_file
}

@test 'man_src has _pmcannotate' {
    assert "$msrc/_pmcannotate" is_file
}

@test 'man_src has _pmccontrol' {
    assert "$msrc/_pmccontrol" is_file
}

@test 'man_src has _pmchart' {
    assert "$msrc/_pmchart" is_file
}

@test 'man_src has _pmclient' {
    assert "$msrc/_pmclient" is_file
}

@test 'man_src has _pmcollectl' {
    assert "$msrc/_pmcollectl" is_file
}

@test 'man_src has _pmconfirm' {
    assert "$msrc/_pmconfirm" is_file
}

@test 'man_src has _pmcstudy' {
    assert "$msrc/_pmcstudy" is_file
}

@test 'man_src has _pmdbg' {
    assert "$msrc/_pmdbg" is_file
}

@test 'man_src has _pmdumplog' {
    assert "$msrc/_pmdumplog" is_file
}

@test 'man_src has _pmdumptext' {
    assert "$msrc/_pmdumptext" is_file
}

@test 'man_src has _pmerr' {
    assert "$msrc/_pmerr" is_file
}

@test 'man_src has _pmie' {
    assert "$msrc/_pmie" is_file
}

@test 'man_src has _pmie2col' {
    assert "$msrc/_pmie2col" is_file
}

@test 'man_src has _pmiostat' {
    assert "$msrc/_pmiostat" is_file
}

@test 'man_src has _pmix_info' {
    assert "$msrc/_pmix_info" is_file
}

@test 'man_src has _pmlogcheck' {
    assert "$msrc/_pmlogcheck" is_file
}

@test 'man_src has _pmlogdump' {
    assert "$msrc/_pmlogdump" is_file
}

@test 'man_src has _pmloglabel' {
    assert "$msrc/_pmloglabel" is_file
}

@test 'man_src has _pmlogsummary' {
    assert "$msrc/_pmlogsummary" is_file
}

@test 'man_src has _pmmessage' {
    assert "$msrc/_pmmessage" is_file
}

@test 'man_src has _pmprobe' {
    assert "$msrc/_pmprobe" is_file
}

@test 'man_src has _pmquery' {
    assert "$msrc/_pmquery" is_file
}

@test 'man_src has _pmrepconf' {
    assert "$msrc/_pmrepconf" is_file
}

@test 'man_src has _pmsearch' {
    assert "$msrc/_pmsearch" is_file
}

@test 'man_src has _pmstat' {
    assert "$msrc/_pmstat" is_file
}

@test 'man_src has _pmstore' {
    assert "$msrc/_pmstore" is_file
}

@test 'man_src has _pmtime' {
    assert "$msrc/_pmtime" is_file
}

@test 'man_src has _pmval' {
    assert "$msrc/_pmval" is_file
}

@test 'man_src has _pmxchords' {
    assert "$msrc/_pmxchords" is_file
}

@test 'man_src has _pngtopam' {
    assert "$msrc/_pngtopam" is_file
}

@test 'man_src has _pngtopnm' {
    assert "$msrc/_pngtopnm" is_file
}

@test 'man_src has _pnmalias' {
    assert "$msrc/_pnmalias" is_file
}

@test 'man_src has _pnmarith' {
    assert "$msrc/_pnmarith" is_file
}

@test 'man_src has _pnmcat' {
    assert "$msrc/_pnmcat" is_file
}

@test 'man_src has _pnmcolormap' {
    assert "$msrc/_pnmcolormap" is_file
}

@test 'man_src has _pnmcomp' {
    assert "$msrc/_pnmcomp" is_file
}

@test 'man_src has _pnmconvol' {
    assert "$msrc/_pnmconvol" is_file
}

@test 'man_src has _pnmcrop' {
    assert "$msrc/_pnmcrop" is_file
}

@test 'man_src has _pnmcut' {
    assert "$msrc/_pnmcut" is_file
}

@test 'man_src has _pnmfile' {
    assert "$msrc/_pnmfile" is_file
}

@test 'man_src has _pnmflip' {
    assert "$msrc/_pnmflip" is_file
}

@test 'man_src has _pnmgamma' {
    assert "$msrc/_pnmgamma" is_file
}

@test 'man_src has _pnmhisteq' {
    assert "$msrc/_pnmhisteq" is_file
}

@test 'man_src has _pnmhistmap' {
    assert "$msrc/_pnmhistmap" is_file
}

@test 'man_src has _pnmindex' {
    assert "$msrc/_pnmindex" is_file
}

@test 'man_src has _pnminterp' {
    assert "$msrc/_pnminterp" is_file
}

@test 'man_src has _pnmmargin' {
    assert "$msrc/_pnmmargin" is_file
}

@test 'man_src has _pnmmercator' {
    assert "$msrc/_pnmmercator" is_file
}

@test 'man_src has _pnmmontage' {
    assert "$msrc/_pnmmontage" is_file
}

@test 'man_src has _pnmnorm' {
    assert "$msrc/_pnmnorm" is_file
}

@test 'man_src has _pnmpad' {
    assert "$msrc/_pnmpad" is_file
}

@test 'man_src has _pnmpaste' {
    assert "$msrc/_pnmpaste" is_file
}

@test 'man_src has _pnmpsnr' {
    assert "$msrc/_pnmpsnr" is_file
}

@test 'man_src has _pnmquantall' {
    assert "$msrc/_pnmquantall" is_file
}

@test 'man_src has _pnmremap' {
    assert "$msrc/_pnmremap" is_file
}

@test 'man_src has _pnmrotate' {
    assert "$msrc/_pnmrotate" is_file
}

@test 'man_src has _pnmscale' {
    assert "$msrc/_pnmscale" is_file
}

@test 'man_src has _pnmscalefixed' {
    assert "$msrc/_pnmscalefixed" is_file
}

@test 'man_src has _pnmshear' {
    assert "$msrc/_pnmshear" is_file
}

@test 'man_src has _pnmsmooth' {
    assert "$msrc/_pnmsmooth" is_file
}

@test 'man_src has _pnmstitch' {
    assert "$msrc/_pnmstitch" is_file
}

@test 'man_src has _pnmtoddif' {
    assert "$msrc/_pnmtoddif" is_file
}

@test 'man_src has _pnmtofits' {
    assert "$msrc/_pnmtofits" is_file
}

@test 'man_src has _pnmtojbig' {
    assert "$msrc/_pnmtojbig" is_file
}

@test 'man_src has _pnmtojpeg' {
    assert "$msrc/_pnmtojpeg" is_file
}

@test 'man_src has _pnmtopalm' {
    assert "$msrc/_pnmtopalm" is_file
}

@test 'man_src has _pnmtopclxl' {
    assert "$msrc/_pnmtopclxl" is_file
}

@test 'man_src has _pnmtoplainpnm' {
    assert "$msrc/_pnmtoplainpnm" is_file
}

@test 'man_src has _pnmtopng' {
    assert "$msrc/_pnmtopng" is_file
}

@test 'man_src has _pnmtops' {
    assert "$msrc/_pnmtops" is_file
}

@test 'man_src has _pnmtorast' {
    assert "$msrc/_pnmtorast" is_file
}

@test 'man_src has _pnmtorle' {
    assert "$msrc/_pnmtorle" is_file
}

@test 'man_src has _pnmtosgi' {
    assert "$msrc/_pnmtosgi" is_file
}

@test 'man_src has _pnmtotiff' {
    assert "$msrc/_pnmtotiff" is_file
}

@test 'man_src has _pnmtotiffcmyk' {
    assert "$msrc/_pnmtotiffcmyk" is_file
}

@test 'man_src has _pnmtoxwd' {
    assert "$msrc/_pnmtoxwd" is_file
}

@test 'man_src has _pnuke-2.7' {
    assert "$msrc/_pnuke-2.7" is_file
}

@test 'man_src has _pod2text5.28' {
    assert "$msrc/_pod2text5.28" is_file
}

@test 'man_src has _pod2text5.30' {
    assert "$msrc/_pod2text5.30" is_file
}

@test 'man_src has _pod2text5.34' {
    assert "$msrc/_pod2text5.34" is_file
}

@test 'man_src has _podebconf-display-po' {
    assert "$msrc/_podebconf-display-po" is_file
}

@test 'man_src has _policyeditor.itweb' {
    assert "$msrc/_policyeditor.itweb" is_file
}

@test 'man_src has _polkit-action' {
    assert "$msrc/_polkit-action" is_file
}

@test 'man_src has _polkit-config-file-validate' {
    assert "$msrc/_polkit-config-file-validate" is_file
}

@test 'man_src has _pollinate' {
    assert "$msrc/_pollinate" is_file
}

@test 'man_src has _ponysay-tool' {
    assert "$msrc/_ponysay-tool" is_file
}

@test 'man_src has _portablectl' {
    assert "$msrc/_portablectl" is_file
}

@test 'man_src has _post-grohtml' {
    assert "$msrc/_post-grohtml" is_file
}

@test 'man_src has _postalias' {
    assert "$msrc/_postalias" is_file
}

@test 'man_src has _postcat' {
    assert "$msrc/_postcat" is_file
}

@test 'man_src has _postconf' {
    assert "$msrc/_postconf" is_file
}

@test 'man_src has _postdrop' {
    assert "$msrc/_postdrop" is_file
}

@test 'man_src has _postfix' {
    assert "$msrc/_postfix" is_file
}

@test 'man_src has _postkick' {
    assert "$msrc/_postkick" is_file
}

@test 'man_src has _postlock' {
    assert "$msrc/_postlock" is_file
}

@test 'man_src has _postlog' {
    assert "$msrc/_postlog" is_file
}

@test 'man_src has _postmap' {
    assert "$msrc/_postmap" is_file
}

@test 'man_src has _postmulti' {
    assert "$msrc/_postmulti" is_file
}

@test 'man_src has _postqueue' {
    assert "$msrc/_postqueue" is_file
}

@test 'man_src has _posttls-finger' {
    assert "$msrc/_posttls-finger" is_file
}

@test 'man_src has _pp' {
    assert "$msrc/_pp" is_file
}

@test 'man_src has _pp-trace-3.5' {
    assert "$msrc/_pp-trace-3.5" is_file
}

@test 'man_src has _pp5.18' {
    assert "$msrc/_pp5.18" is_file
}

@test 'man_src has _ppm3d' {
    assert "$msrc/_ppm3d" is_file
}

@test 'man_src has _ppmbrighten' {
    assert "$msrc/_ppmbrighten" is_file
}

@test 'man_src has _ppmchange' {
    assert "$msrc/_ppmchange" is_file
}

@test 'man_src has _ppmcheckpdf' {
    assert "$msrc/_ppmcheckpdf" is_file
}

@test 'man_src has _ppmcie' {
    assert "$msrc/_ppmcie" is_file
}

@test 'man_src has _ppmcolormask' {
    assert "$msrc/_ppmcolormask" is_file
}

@test 'man_src has _ppmcolors' {
    assert "$msrc/_ppmcolors" is_file
}

@test 'man_src has _ppmdist' {
    assert "$msrc/_ppmdist" is_file
}

@test 'man_src has _ppmdither' {
    assert "$msrc/_ppmdither" is_file
}

@test 'man_src has _ppmdraw' {
    assert "$msrc/_ppmdraw" is_file
}

@test 'man_src has _ppmfade' {
    assert "$msrc/_ppmfade" is_file
}

@test 'man_src has _ppmforge' {
    assert "$msrc/_ppmforge" is_file
}

@test 'man_src has _ppmglobe' {
    assert "$msrc/_ppmglobe" is_file
}

@test 'man_src has _ppmhist' {
    assert "$msrc/_ppmhist" is_file
}

@test 'man_src has _ppmlabel' {
    assert "$msrc/_ppmlabel" is_file
}

@test 'man_src has _ppmmake' {
    assert "$msrc/_ppmmake" is_file
}

@test 'man_src has _ppmnorm' {
    assert "$msrc/_ppmnorm" is_file
}

@test 'man_src has _ppmntsc' {
    assert "$msrc/_ppmntsc" is_file
}

@test 'man_src has _ppmpat' {
    assert "$msrc/_ppmpat" is_file
}

@test 'man_src has _ppmquant' {
    assert "$msrc/_ppmquant" is_file
}

@test 'man_src has _ppmquantall' {
    assert "$msrc/_ppmquantall" is_file
}

@test 'man_src has _ppmqvga' {
    assert "$msrc/_ppmqvga" is_file
}

@test 'man_src has _ppmrainbow' {
    assert "$msrc/_ppmrainbow" is_file
}

@test 'man_src has _ppmrough' {
    assert "$msrc/_ppmrough" is_file
}

@test 'man_src has _ppmshadow' {
    assert "$msrc/_ppmshadow" is_file
}

@test 'man_src has _ppmtoacad' {
    assert "$msrc/_ppmtoacad" is_file
}

@test 'man_src has _ppmtoarbtxt' {
    assert "$msrc/_ppmtoarbtxt" is_file
}

@test 'man_src has _ppmtoascii' {
    assert "$msrc/_ppmtoascii" is_file
}

@test 'man_src has _ppmtobmp' {
    assert "$msrc/_ppmtobmp" is_file
}

@test 'man_src has _ppmtogif' {
    assert "$msrc/_ppmtogif" is_file
}

@test 'man_src has _ppmtoicr' {
    assert "$msrc/_ppmtoicr" is_file
}

@test 'man_src has _ppmtoilbm' {
    assert "$msrc/_ppmtoilbm" is_file
}

@test 'man_src has _ppmtojpeg' {
    assert "$msrc/_ppmtojpeg" is_file
}

@test 'man_src has _ppmtolj' {
    assert "$msrc/_ppmtolj" is_file
}

@test 'man_src has _ppmtomitsu' {
    assert "$msrc/_ppmtomitsu" is_file
}

@test 'man_src has _ppmtopcx' {
    assert "$msrc/_ppmtopcx" is_file
}

@test 'man_src has _ppmtopj' {
    assert "$msrc/_ppmtopj" is_file
}

@test 'man_src has _ppmtopjxl' {
    assert "$msrc/_ppmtopjxl" is_file
}

@test 'man_src has _ppmtopuzz' {
    assert "$msrc/_ppmtopuzz" is_file
}

@test 'man_src has _ppmtosixel' {
    assert "$msrc/_ppmtosixel" is_file
}

@test 'man_src has _ppmtospu' {
    assert "$msrc/_ppmtospu" is_file
}

@test 'man_src has _ppmtotga' {
    assert "$msrc/_ppmtotga" is_file
}

@test 'man_src has _ppmtouil' {
    assert "$msrc/_ppmtouil" is_file
}

@test 'man_src has _ppmtowinicon' {
    assert "$msrc/_ppmtowinicon" is_file
}

@test 'man_src has _ppmtoxpm' {
    assert "$msrc/_ppmtoxpm" is_file
}

@test 'man_src has _ppp' {
    assert "$msrc/_ppp" is_file
}

@test 'man_src has _pppdump' {
    assert "$msrc/_pppdump" is_file
}

@test 'man_src has _pppoe-discovery' {
    assert "$msrc/_pppoe-discovery" is_file
}

@test 'man_src has _pppoeconf' {
    assert "$msrc/_pppoeconf" is_file
}

@test 'man_src has _pppstats' {
    assert "$msrc/_pppstats" is_file
}

@test 'man_src has _praliases' {
    assert "$msrc/_praliases" is_file
}

@test 'man_src has _praudit' {
    assert "$msrc/_praudit" is_file
}

@test 'man_src has _prequest3' {
    assert "$msrc/_prequest3" is_file
}

@test 'man_src has _presage_demo' {
    assert "$msrc/_presage_demo" is_file
}

@test 'man_src has _presage_demo_text' {
    assert "$msrc/_presage_demo_text" is_file
}

@test 'man_src has _presage_simulator' {
    assert "$msrc/_presage_simulator" is_file
}

@test 'man_src has _prezip-bin' {
    assert "$msrc/_prezip-bin" is_file
}

@test 'man_src has _prichunkpng' {
    assert "$msrc/_prichunkpng" is_file
}

@test 'man_src has _priditherpng' {
    assert "$msrc/_priditherpng" is_file
}

@test 'man_src has _priforgepng' {
    assert "$msrc/_priforgepng" is_file
}

@test 'man_src has _prigreypng' {
    assert "$msrc/_prigreypng" is_file
}

@test 'man_src has _printerbanner' {
    assert "$msrc/_printerbanner" is_file
}

@test 'man_src has _printf_gettext' {
    assert "$msrc/_printf_gettext" is_file
}

@test 'man_src has _printf_ngettext' {
    assert "$msrc/_printf_ngettext" is_file
}

@test 'man_src has _pripalpng' {
    assert "$msrc/_pripalpng" is_file
}

@test 'man_src has _pripamtopng' {
    assert "$msrc/_pripamtopng" is_file
}

@test 'man_src has _pripnglsch' {
    assert "$msrc/_pripnglsch" is_file
}

@test 'man_src has _pripngtopam' {
    assert "$msrc/_pripngtopam" is_file
}

@test 'man_src has _priweavepng' {
    assert "$msrc/_priweavepng" is_file
}

@test 'man_src has _prl_convert' {
    assert "$msrc/_prl_convert" is_file
}

@test 'man_src has _prlcopy' {
    assert "$msrc/_prlcopy" is_file
}

@test 'man_src has _prlsrvctl' {
    assert "$msrc/_prlsrvctl" is_file
}

@test 'man_src has _proj' {
    assert "$msrc/_proj" is_file
}

@test 'man_src has _projinfo' {
    assert "$msrc/_projinfo" is_file
}

@test 'man_src has _projsync' {
    assert "$msrc/_projsync" is_file
}

@test 'man_src has _protect' {
    assert "$msrc/_protect" is_file
}

@test 'man_src has _proutes3' {
    assert "$msrc/_proutes3" is_file
}

@test 'man_src has _prsync-2.7' {
    assert "$msrc/_prsync-2.7" is_file
}

@test 'man_src has _ps2pk' {
    assert "$msrc/_ps2pk" is_file
}

@test 'man_src has _pscp-2.7' {
    assert "$msrc/_pscp-2.7" is_file
}

@test 'man_src has _pscp.pssh' {
    assert "$msrc/_pscp.pssh" is_file
}

@test 'man_src has _psed' {
    assert "$msrc/_psed" is_file
}

@test 'man_src has _psed5.18' {
    assert "$msrc/_psed5.18" is_file
}

@test 'man_src has _pserve3' {
    assert "$msrc/_pserve3" is_file
}

@test 'man_src has _pshell3' {
    assert "$msrc/_pshell3" is_file
}

@test 'man_src has _psjoin' {
    assert "$msrc/_psjoin" is_file
}

@test 'man_src has _psl-make-dafsa' {
    assert "$msrc/_psl-make-dafsa" is_file
}

@test 'man_src has _pslurp-2.7' {
    assert "$msrc/_pslurp-2.7" is_file
}

@test 'man_src has _psm' {
    assert "$msrc/_psm" is_file
}

@test 'man_src has _psorder' {
    assert "$msrc/_psorder" is_file
}

@test 'man_src has _pspell-config' {
    assert "$msrc/_pspell-config" is_file
}

@test 'man_src has _pssh-2.7' {
    assert "$msrc/_pssh-2.7" is_file
}

@test 'man_src has _pstat' {
    assert "$msrc/_pstat" is_file
}

@test 'man_src has _pstopdf' {
    assert "$msrc/_pstopdf" is_file
}

@test 'man_src has _pstopnm' {
    assert "$msrc/_pstopnm" is_file
}

@test 'man_src has _ptargrep5.28' {
    assert "$msrc/_ptargrep5.28" is_file
}

@test 'man_src has _ptargrep5.30' {
    assert "$msrc/_ptargrep5.30" is_file
}

@test 'man_src has _ptargrep5.34' {
    assert "$msrc/_ptargrep5.34" is_file
}

@test 'man_src has _ptekf' {
    assert "$msrc/_ptekf" is_file
}

@test 'man_src has _ptweens3' {
    assert "$msrc/_ptweens3" is_file
}

@test 'man_src has _purgestat' {
    assert "$msrc/_purgestat" is_file
}

@test 'man_src has _purifyeps' {
    assert "$msrc/_purifyeps" is_file
}

@test 'man_src has _pvck' {
    assert "$msrc/_pvck" is_file
}

@test 'man_src has _pvcreate' {
    assert "$msrc/_pvcreate" is_file
}

@test 'man_src has _pvdisplay' {
    assert "$msrc/_pvdisplay" is_file
}

@test 'man_src has _pviews3' {
    assert "$msrc/_pviews3" is_file
}

@test 'man_src has _pvmove' {
    assert "$msrc/_pvmove" is_file
}

@test 'man_src has _pvremove' {
    assert "$msrc/_pvremove" is_file
}

@test 'man_src has _pvresize' {
    assert "$msrc/_pvresize" is_file
}

@test 'man_src has _pvs' {
    assert "$msrc/_pvs" is_file
}

@test 'man_src has _pvscan' {
    assert "$msrc/_pvscan" is_file
}

@test 'man_src has _pw' {
    assert "$msrc/_pw" is_file
}

@test 'man_src has _pw-config' {
    assert "$msrc/_pw-config" is_file
}

@test 'man_src has _pw-jack' {
    assert "$msrc/_pw-jack" is_file
}

@test 'man_src has _pwd_mkdb' {
    assert "$msrc/_pwd_mkdb" is_file
}

@test 'man_src has _pwsh' {
    assert "$msrc/_pwsh" is_file
}

@test 'man_src has _py3rsa-decrypt' {
    assert "$msrc/_py3rsa-decrypt" is_file
}

@test 'man_src has _py3smi' {
    assert "$msrc/_py3smi" is_file
}

@test 'man_src has _pydoc' {
    assert "$msrc/_pydoc" is_file
}

@test 'man_src has _pydoc2.7' {
    assert "$msrc/_pydoc2.7" is_file
}

@test 'man_src has _pyfiglet' {
    assert "$msrc/_pyfiglet" is_file
}

@test 'man_src has _pygettext.py' {
    assert "$msrc/_pygettext.py" is_file
}

@test 'man_src has _pygettext3.10' {
    assert "$msrc/_pygettext3.10" is_file
}

@test 'man_src has _pygettext3.11' {
    assert "$msrc/_pygettext3.11" is_file
}

@test 'man_src has _pygettext3.4' {
    assert "$msrc/_pygettext3.4" is_file
}

@test 'man_src has _pygettext3.8' {
    assert "$msrc/_pygettext3.8" is_file
}

@test 'man_src has _pygettext3.9.py' {
    assert "$msrc/_pygettext3.9.py" is_file
}

@test 'man_src has _pyjwt3' {
    assert "$msrc/_pyjwt3" is_file
}

@test 'man_src has _pylupdate5' {
    assert "$msrc/_pylupdate5" is_file
}

@test 'man_src has _pypy' {
    assert "$msrc/_pypy" is_file
}

@test 'man_src has _pyside2-uic' {
    assert "$msrc/_pyside2-uic" is_file
}

@test 'man_src has _python-config' {
    assert "$msrc/_python-config" is_file
}

@test 'man_src has _python-dotenv' {
    assert "$msrc/_python-dotenv" is_file
}

@test 'man_src has _python2-config' {
    assert "$msrc/_python2-config" is_file
}

@test 'man_src has _python2.7-config' {
    assert "$msrc/_python2.7-config" is_file
}

@test 'man_src has _python3-config' {
    assert "$msrc/_python3-config" is_file
}

@test 'man_src has _python3.10-config' {
    assert "$msrc/_python3.10-config" is_file
}

@test 'man_src has _python3.11' {
    assert "$msrc/_python3.11" is_file
}

@test 'man_src has _python3.12' {
    assert "$msrc/_python3.12" is_file
}

@test 'man_src has _python3.13' {
    assert "$msrc/_python3.13" is_file
}

@test 'man_src has _python3.4-config' {
    assert "$msrc/_python3.4-config" is_file
}

@test 'man_src has _python3.4m-config' {
    assert "$msrc/_python3.4m-config" is_file
}

@test 'man_src has _python3.6-config' {
    assert "$msrc/_python3.6-config" is_file
}

@test 'man_src has _python3.6m-config' {
    assert "$msrc/_python3.6m-config" is_file
}

@test 'man_src has _python3.7-config' {
    assert "$msrc/_python3.7-config" is_file
}

@test 'man_src has _python3.7m-config' {
    assert "$msrc/_python3.7m-config" is_file
}

@test 'man_src has _python3.8' {
    assert "$msrc/_python3.8" is_file
}

@test 'man_src has _python3.8-config' {
    assert "$msrc/_python3.8-config" is_file
}

@test 'man_src has _python3.9-config' {
    assert "$msrc/_python3.9-config" is_file
}

@test 'man_src has _python3m-config' {
    assert "$msrc/_python3m-config" is_file
}

@test 'man_src has _pythran' {
    assert "$msrc/_pythran" is_file
}

@test 'man_src has _pythran-config' {
    assert "$msrc/_pythran-config" is_file
}

@test 'man_src has _qalc' {
    assert "$msrc/_qalc" is_file
}

@test 'man_src has _qcatool-qt5' {
    assert "$msrc/_qcatool-qt5" is_file
}

@test 'man_src has _qemu-edid' {
    assert "$msrc/_qemu-edid" is_file
}

@test 'man_src has _qemu-make-debian-root' {
    assert "$msrc/_qemu-make-debian-root" is_file
}

@test 'man_src has _qemu-storage-daemon' {
    assert "$msrc/_qemu-storage-daemon" is_file
}

@test 'man_src has _qemu-trace-stap' {
    assert "$msrc/_qemu-trace-stap" is_file
}

@test 'man_src has _qjackctl' {
    assert "$msrc/_qjackctl" is_file
}

@test 'man_src has _qmqp-sink' {
    assert "$msrc/_qmqp-sink" is_file
}

@test 'man_src has _qmqp-source' {
    assert "$msrc/_qmqp-source" is_file
}

@test 'man_src has _qshape' {
    assert "$msrc/_qshape" is_file
}

@test 'man_src has _qtchooser' {
    assert "$msrc/_qtchooser" is_file
}

@test 'man_src has _qterminal' {
    assert "$msrc/_qterminal" is_file
}

@test 'man_src has _qtmodernizer' {
    assert "$msrc/_qtmodernizer" is_file
}

@test 'man_src has _quot' {
    assert "$msrc/_quot" is_file
}

@test 'man_src has _qv4l2' {
    assert "$msrc/_qv4l2" is_file
}

@test 'man_src has _qvidcap' {
    assert "$msrc/_qvidcap" is_file
}

@test 'man_src has _r2pm' {
    assert "$msrc/_r2pm" is_file
}

@test 'man_src has _r2r' {
    assert "$msrc/_r2r" is_file
}

@test 'man_src has _racc2y' {
    assert "$msrc/_racc2y" is_file
}

@test 'man_src has _radcrypt' {
    assert "$msrc/_radcrypt" is_file
}

@test 'man_src has _raddebug' {
    assert "$msrc/_raddebug" is_file
}

@test 'man_src has _radvdump' {
    assert "$msrc/_radvdump" is_file
}

@test 'man_src has _rake2.1' {
    assert "$msrc/_rake2.1" is_file
}

@test 'man_src has _ranger' {
    assert "$msrc/_ranger" is_file
}

@test 'man_src has _rarp' {
    assert "$msrc/_rarp" is_file
}

@test 'man_src has _rarpd' {
    assert "$msrc/_rarpd" is_file
}

@test 'man_src has _rasqal-config' {
    assert "$msrc/_rasqal-config" is_file
}

@test 'man_src has _rasterizer' {
    assert "$msrc/_rasterizer" is_file
}

@test 'man_src has _rasttopnm' {
    assert "$msrc/_rasttopnm" is_file
}

@test 'man_src has _ravc2' {
    assert "$msrc/_ravc2" is_file
}

@test 'man_src has _rawtopgm' {
    assert "$msrc/_rawtopgm" is_file
}

@test 'man_src has _rawtoppm' {
    assert "$msrc/_rawtoppm" is_file
}

@test 'man_src has _rcorder' {
    assert "$msrc/_rcorder" is_file
}

@test 'man_src has _rcsclean' {
    assert "$msrc/_rcsclean" is_file
}

@test 'man_src has _rcsfreeze' {
    assert "$msrc/_rcsfreeze" is_file
}

@test 'man_src has _rcsmerge' {
    assert "$msrc/_rcsmerge" is_file
}

@test 'man_src has _rctl' {
    assert "$msrc/_rctl" is_file
}

@test 'man_src has _rdebsums' {
    assert "$msrc/_rdebsums" is_file
}

@test 'man_src has _rdfdump' {
    assert "$msrc/_rdfdump" is_file
}

@test 'man_src has _rdiffdir' {
    assert "$msrc/_rdiffdir" is_file
}

@test 'man_src has _rdisc' {
    assert "$msrc/_rdisc" is_file
}

@test 'man_src has _rdist' {
    assert "$msrc/_rdist" is_file
}

@test 'man_src has _rdistd' {
    assert "$msrc/_rdistd" is_file
}

@test 'man_src has _rdma' {
    assert "$msrc/_rdma" is_file
}

@test 'man_src has _rdma-ndd' {
    assert "$msrc/_rdma-ndd" is_file
}

@test 'man_src has _rdoc2.1' {
    assert "$msrc/_rdoc2.1" is_file
}

@test 'man_src has _rdoc2.7' {
    assert "$msrc/_rdoc2.7" is_file
}

@test 'man_src has _rdump' {
    assert "$msrc/_rdump" is_file
}

@test 'man_src has _re2c' {
    assert "$msrc/_re2c" is_file
}

@test 'man_src has _re2go' {
    assert "$msrc/_re2go" is_file
}

@test 'man_src has _re2rust' {
    assert "$msrc/_re2rust" is_file
}

@test 'man_src has _realm' {
    assert "$msrc/_realm" is_file
}

@test 'man_src has _rearj' {
    assert "$msrc/_rearj" is_file
}

@test 'man_src has _rebase' {
    assert "$msrc/_rebase" is_file
}

@test 'man_src has _rebuild-jar-repository' {
    assert "$msrc/_rebuild-jar-repository" is_file
}

@test 'man_src has _recon-web' {
    assert "$msrc/_recon-web" is_file
}

@test 'man_src has _recountdiff' {
    assert "$msrc/_recountdiff" is_file
}

@test 'man_src has _recoverdisk' {
    assert "$msrc/_recoverdisk" is_file
}

@test 'man_src has _rediff' {
    assert "$msrc/_rediff" is_file
}

@test 'man_src has _redis-check-aof' {
    assert "$msrc/_redis-check-aof" is_file
}

@test 'man_src has _redis-sentinel' {
    assert "$msrc/_redis-sentinel" is_file
}

@test 'man_src has _redis-server' {
    assert "$msrc/_redis-server" is_file
}

@test 'man_src has _redland-config' {
    assert "$msrc/_redland-config" is_file
}

@test 'man_src has _redo_prebinding' {
    assert "$msrc/_redo_prebinding" is_file
}

@test 'man_src has _redshift-gtk' {
    assert "$msrc/_redshift-gtk" is_file
}

@test 'man_src has _ree' {
    assert "$msrc/_ree" is_file
}

@test 'man_src has _refer' {
    assert "$msrc/_refer" is_file
}

@test 'man_src has _regedit' {
    assert "$msrc/_regedit" is_file
}

@test 'man_src has _regedit-stable' {
    assert "$msrc/_regedit-stable" is_file
}

@test 'man_src has _regexp-assemble' {
    assert "$msrc/_regexp-assemble" is_file
}

@test 'man_src has _regfinfo' {
    assert "$msrc/_regfinfo" is_file
}

@test 'man_src has _register-python-argcomplete3' {
    assert "$msrc/_register-python-argcomplete3" is_file
}

@test 'man_src has _reject' {
    assert "$msrc/_reject" is_file
}

@test 'man_src has _remove-duplicates' {
    assert "$msrc/_remove-duplicates" is_file
}

@test 'man_src has _rendercheck' {
    assert "$msrc/_rendercheck" is_file
}

@test 'man_src has _replace' {
    assert "$msrc/_replace" is_file
}

@test 'man_src has _repo-add' {
    assert "$msrc/_repo-add" is_file
}

@test 'man_src has _repo-graph' {
    assert "$msrc/_repo-graph" is_file
}

@test 'man_src has _repo-remove' {
    assert "$msrc/_repo-remove" is_file
}

@test 'man_src has _repo-rss' {
    assert "$msrc/_repo-rss" is_file
}

@test 'man_src has _repoclosure' {
    assert "$msrc/_repoclosure" is_file
}

@test 'man_src has _repomanage' {
    assert "$msrc/_repomanage" is_file
}

@test 'man_src has _repoquery' {
    assert "$msrc/_repoquery" is_file
}

@test 'man_src has _repstopdf' {
    assert "$msrc/_repstopdf" is_file
}

@test 'man_src has _request-key' {
    assert "$msrc/_request-key" is_file
}

@test 'man_src has _resize' {
    assert "$msrc/_resize" is_file
}

@test 'man_src has _resize.f2fs' {
    assert "$msrc/_resize.f2fs" is_file
}

@test 'man_src has _resize2fs' {
    assert "$msrc/_resize2fs" is_file
}

@test 'man_src has _resize_reiserfs' {
    assert "$msrc/_resize_reiserfs" is_file
}

@test 'man_src has _resizecons' {
    assert "$msrc/_resizecons" is_file
}

@test 'man_src has _resizewin' {
    assert "$msrc/_resizewin" is_file
}

@test 'man_src has _restfulHarvest' {
    assert "$msrc/_restfulHarvest" is_file
}

@test 'man_src has _restore' {
    assert "$msrc/_restore" is_file
}

@test 'man_src has _restorecon' {
    assert "$msrc/_restorecon" is_file
}

@test 'man_src has _restorefont' {
    assert "$msrc/_restorefont" is_file
}

@test 'man_src has _restoretextmode' {
    assert "$msrc/_restoretextmode" is_file
}

@test 'man_src has _rhino-debugger' {
    assert "$msrc/_rhino-debugger" is_file
}

@test 'man_src has _rhino-jsc' {
    assert "$msrc/_rhino-jsc" is_file
}

@test 'man_src has _ri2.1' {
    assert "$msrc/_ri2.1" is_file
}

@test 'man_src has _ri2.7' {
    assert "$msrc/_ri2.7" is_file
}

@test 'man_src has _ristretto' {
    assert "$msrc/_ristretto" is_file
}

@test 'man_src has _rletopnm' {
    assert "$msrc/_rletopnm" is_file
}

@test 'man_src has _rlog' {
    assert "$msrc/_rlog" is_file
}

@test 'man_src has _rlogind' {
    assert "$msrc/_rlogind" is_file
}

@test 'man_src has _rmail' {
    assert "$msrc/_rmail" is_file
}

@test 'man_src has _rmcp_ping' {
    assert "$msrc/_rmcp_ping" is_file
}

@test 'man_src has _rmextattr' {
    assert "$msrc/_rmextattr" is_file
}

@test 'man_src has _rmuser' {
    assert "$msrc/_rmuser" is_file
}

@test 'man_src has _rndc' {
    assert "$msrc/_rndc" is_file
}

@test 'man_src has _roman' {
    assert "$msrc/_roman" is_file
}

@test 'man_src has _rotatelogs2' {
    assert "$msrc/_rotatelogs2" is_file
}

@test 'man_src has _route6d' {
    assert "$msrc/_route6d" is_file
}

@test 'man_src has _routed' {
    assert "$msrc/_routed" is_file
}

@test 'man_src has _routel' {
    assert "$msrc/_routel" is_file
}

@test 'man_src has _rpc.gssd' {
    assert "$msrc/_rpc.gssd" is_file
}

@test 'man_src has _rpc.idmapd' {
    assert "$msrc/_rpc.idmapd" is_file
}

@test 'man_src has _rpc.lockd' {
    assert "$msrc/_rpc.lockd" is_file
}

@test 'man_src has _rpc.mountd' {
    assert "$msrc/_rpc.mountd" is_file
}

@test 'man_src has _rpc.nfsd' {
    assert "$msrc/_rpc.nfsd" is_file
}

@test 'man_src has _rpc.svcgssd' {
    assert "$msrc/_rpc.svcgssd" is_file
}

@test 'man_src has _rpc.umntall' {
    assert "$msrc/_rpc.umntall" is_file
}

@test 'man_src has _rpc.yppasswdd' {
    assert "$msrc/_rpc.yppasswdd" is_file
}

@test 'man_src has _rpc.ypxfrd' {
    assert "$msrc/_rpc.ypxfrd" is_file
}

@test 'man_src has _rpcbind' {
    assert "$msrc/_rpcbind" is_file
}

@test 'man_src has _rpcdebug' {
    assert "$msrc/_rpcdebug" is_file
}

@test 'man_src has _rpcgen-tirpc' {
    assert "$msrc/_rpcgen-tirpc" is_file
}

@test 'man_src has _rpdump' {
    assert "$msrc/_rpdump" is_file
}

@test 'man_src has _rpload' {
    assert "$msrc/_rpload" is_file
}

@test 'man_src has _rpm2archive' {
    assert "$msrc/_rpm2archive" is_file
}

@test 'man_src has _rpms2solv' {
    assert "$msrc/_rpms2solv" is_file
}

@test 'man_src has _rq' {
    assert "$msrc/_rq" is_file
}

@test 'man_src has _rqinfo' {
    assert "$msrc/_rqinfo" is_file
}

@test 'man_src has _rqworker' {
    assert "$msrc/_rqworker" is_file
}

@test 'man_src has _rrenumd' {
    assert "$msrc/_rrenumd" is_file
}

@test 'man_src has _rrestore' {
    assert "$msrc/_rrestore" is_file
}

@test 'man_src has _rrsync' {
    assert "$msrc/_rrsync" is_file
}

@test 'man_src has _rs' {
    assert "$msrc/_rs" is_file
}

@test 'man_src has _rshd' {
    assert "$msrc/_rshd" is_file
}

@test 'man_src has _rsmtp' {
    assert "$msrc/_rsmtp" is_file
}

@test 'man_src has _rstartd' {
    assert "$msrc/_rstartd" is_file
}

@test 'man_src has _rsync-ssl' {
    assert "$msrc/_rsync-ssl" is_file
}

@test 'man_src has _rsyslogd' {
    assert "$msrc/_rsyslogd" is_file
}

@test 'man_src has _rtacct' {
    assert "$msrc/_rtacct" is_file
}

@test 'man_src has _rtadvctl' {
    assert "$msrc/_rtadvctl" is_file
}

@test 'man_src has _rtadvd' {
    assert "$msrc/_rtadvd" is_file
}

@test 'man_src has _rtl_adsb' {
    assert "$msrc/_rtl_adsb" is_file
}

@test 'man_src has _rtl_biast' {
    assert "$msrc/_rtl_biast" is_file
}

@test 'man_src has _rtl_eeprom' {
    assert "$msrc/_rtl_eeprom" is_file
}

@test 'man_src has _rtl_sdr' {
    assert "$msrc/_rtl_sdr" is_file
}

@test 'man_src has _rtl_tcp' {
    assert "$msrc/_rtl_tcp" is_file
}

@test 'man_src has _rtl_test' {
    assert "$msrc/_rtl_test" is_file
}

@test 'man_src has _rtmon' {
    assert "$msrc/_rtmon" is_file
}

@test 'man_src has _rtmpsrv' {
    assert "$msrc/_rtmpsrv" is_file
}

@test 'man_src has _rtmpsuck' {
    assert "$msrc/_rtmpsuck" is_file
}

@test 'man_src has _rtpr' {
    assert "$msrc/_rtpr" is_file
}

@test 'man_src has _rtquery' {
    assert "$msrc/_rtquery" is_file
}

@test 'man_src has _rtsol' {
    assert "$msrc/_rtsol" is_file
}

@test 'man_src has _rtsold' {
    assert "$msrc/_rtsold" is_file
}

@test 'man_src has _rubikrotation' {
    assert "$msrc/_rubikrotation" is_file
}

@test 'man_src has _ruby2.1' {
    assert "$msrc/_ruby2.1" is_file
}

@test 'man_src has _ruby2.7' {
    assert "$msrc/_ruby2.7" is_file
}

@test 'man_src has _run-mailcap' {
    assert "$msrc/_run-mailcap" is_file
}

@test 'man_src has _run_erl' {
    assert "$msrc/_run_erl" is_file
}

@test 'man_src has _runq' {
    assert "$msrc/_runq" is_file
}

@test 'man_src has _runtexfile' {
    assert "$msrc/_runtexfile" is_file
}

@test 'man_src has _runxlrd' {
    assert "$msrc/_runxlrd" is_file
}

@test 'man_src has _ruptime' {
    assert "$msrc/_ruptime" is_file
}

@test 'man_src has _rusers' {
    assert "$msrc/_rusers" is_file
}

@test 'man_src has _rwhod' {
    assert "$msrc/_rwhod" is_file
}

@test 'man_src has _rxvt-unicode' {
    assert "$msrc/_rxvt-unicode" is_file
}

@test 'man_src has _rz-asm' {
    assert "$msrc/_rz-asm" is_file
}

@test 'man_src has _rz-find' {
    assert "$msrc/_rz-find" is_file
}

@test 'man_src has _rz-sign' {
    assert "$msrc/_rz-sign" is_file
}

@test 'man_src has _rz-test' {
    assert "$msrc/_rz-test" is_file
}

@test 'man_src has _s-nail' {
    assert "$msrc/_s-nail" is_file
}

@test 'man_src has _s2p' {
    assert "$msrc/_s2p" is_file
}

@test 'man_src has _s2p5.18' {
    assert "$msrc/_s2p5.18" is_file
}

@test 'man_src has _s3fs' {
    assert "$msrc/_s3fs" is_file
}

@test 'man_src has _sa' {
    assert "$msrc/_sa" is_file
}

@test 'man_src has _sacct' {
    assert "$msrc/_sacct" is_file
}

@test 'man_src has _sadf' {
    assert "$msrc/_sadf" is_file
}

@test 'man_src has _salt' {
    assert "$msrc/_salt" is_file
}

@test 'man_src has _salt-api' {
    assert "$msrc/_salt-api" is_file
}

@test 'man_src has _salt-call' {
    assert "$msrc/_salt-call" is_file
}

@test 'man_src has _salt-cloud' {
    assert "$msrc/_salt-cloud" is_file
}

@test 'man_src has _salt-cp' {
    assert "$msrc/_salt-cp" is_file
}

@test 'man_src has _salt-key' {
    assert "$msrc/_salt-key" is_file
}

@test 'man_src has _salt-master' {
    assert "$msrc/_salt-master" is_file
}

@test 'man_src has _salt-minion' {
    assert "$msrc/_salt-minion" is_file
}

@test 'man_src has _salt-proxy' {
    assert "$msrc/_salt-proxy" is_file
}

@test 'man_src has _salt-run' {
    assert "$msrc/_salt-run" is_file
}

@test 'man_src has _salt-ssh' {
    assert "$msrc/_salt-ssh" is_file
}

@test 'man_src has _salt-syndic' {
    assert "$msrc/_salt-syndic" is_file
}

@test 'man_src has _samba' {
    assert "$msrc/_samba" is_file
}

@test 'man_src has _samba-log-parser' {
    assert "$msrc/_samba-log-parser" is_file
}

@test 'man_src has _samba_downgrade_db' {
    assert "$msrc/_samba_downgrade_db" is_file
}

@test 'man_src has _samunlock' {
    assert "$msrc/_samunlock" is_file
}

@test 'man_src has _sandbox' {
    assert "$msrc/_sandbox" is_file
}

@test 'man_src has _saquery' {
    assert "$msrc/_saquery" is_file
}

@test 'man_src has _saxon-xslt' {
    assert "$msrc/_saxon-xslt" is_file
}

@test 'man_src has _sc_auth' {
    assert "$msrc/_sc_auth" is_file
}

@test 'man_src has _scaladoc' {
    assert "$msrc/_scaladoc" is_file
}

@test 'man_src has _scalap' {
    assert "$msrc/_scalap" is_file
}

@test 'man_src has _scalar' {
    assert "$msrc/_scalar" is_file
}

@test 'man_src has _scan-build' {
    assert "$msrc/_scan-build" is_file
}

@test 'man_src has _scan-build-3.5' {
    assert "$msrc/_scan-build-3.5" is_file
}

@test 'man_src has _scan-view-3.5' {
    assert "$msrc/_scan-view-3.5" is_file
}

@test 'man_src has _scandeps.pl' {
    assert "$msrc/_scandeps.pl" is_file
}

@test 'man_src has _scanimage' {
    assert "$msrc/_scanimage" is_file
}

@test 'man_src has _scapy2' {
    assert "$msrc/_scapy2" is_file
}

@test 'man_src has _scapy3' {
    assert "$msrc/_scapy3" is_file
}

@test 'man_src has _sccmap' {
    assert "$msrc/_sccmap" is_file
}

@test 'man_src has _scmp_sys_resolver' {
    assert "$msrc/_scmp_sys_resolver" is_file
}

@test 'man_src has _screenfetch' {
    assert "$msrc/_screenfetch" is_file
}

@test 'man_src has _scriptlive' {
    assert "$msrc/_scriptlive" is_file
}

@test 'man_src has _scrontab' {
    assert "$msrc/_scrontab" is_file
}

@test 'man_src has _scsynth' {
    assert "$msrc/_scsynth" is_file
}

@test 'man_src has _sddm' {
    assert "$msrc/_sddm" is_file
}

@test 'man_src has _sddm-greeter' {
    assert "$msrc/_sddm-greeter" is_file
}

@test 'man_src has _sdp' {
    assert "$msrc/_sdp" is_file
}

@test 'man_src has _secret-tool' {
    assert "$msrc/_secret-tool" is_file
}

@test 'man_src has _secutil' {
    assert "$msrc/_secutil" is_file
}

@test 'man_src has _see' {
    assert "$msrc/_see" is_file
}

@test 'man_src has _segedit' {
    assert "$msrc/_segedit" is_file
}

@test 'man_src has _selinuxconlist' {
    assert "$msrc/_selinuxconlist" is_file
}

@test 'man_src has _selinuxdefcon' {
    assert "$msrc/_selinuxdefcon" is_file
}

@test 'man_src has _semanage' {
    assert "$msrc/_semanage" is_file
}

@test 'man_src has _semodule_expand' {
    assert "$msrc/_semodule_expand" is_file
}

@test 'man_src has _semodule_link' {
    assert "$msrc/_semodule_link" is_file
}

@test 'man_src has _sendemail' {
    assert "$msrc/_sendemail" is_file
}

@test 'man_src has _sendmail' {
    assert "$msrc/_sendmail" is_file
}

@test 'man_src has _sendmail.postfix' {
    assert "$msrc/_sendmail.postfix" is_file
}

@test 'man_src has _sense_csv' {
    assert "$msrc/_sense_csv" is_file
}

@test 'man_src has _sense_play' {
    assert "$msrc/_sense_play" is_file
}

@test 'man_src has _sense_rec' {
    assert "$msrc/_sense_rec" is_file
}

@test 'man_src has _sensord' {
    assert "$msrc/_sensord" is_file
}

@test 'man_src has _sensors-detect' {
    assert "$msrc/_sensors-detect" is_file
}

@test 'man_src has _sensortag' {
    assert "$msrc/_sensortag" is_file
}

@test 'man_src has _sepolgen' {
    assert "$msrc/_sepolgen" is_file
}

@test 'man_src has _sepolicy' {
    assert "$msrc/_sepolicy" is_file
}

@test 'man_src has _serdi' {
    assert "$msrc/_serdi" is_file
}

@test 'man_src has _servertool' {
    assert "$msrc/_servertool" is_file
}

@test 'man_src has _services_mkdb' {
    assert "$msrc/_services_mkdb" is_file
}

@test 'man_src has _sessreg' {
    assert "$msrc/_sessreg" is_file
}

@test 'man_src has _sesutil' {
    assert "$msrc/_sesutil" is_file
}

@test 'man_src has _setctsid' {
    assert "$msrc/_setctsid" is_file
}

@test 'man_src has _setextattr' {
    assert "$msrc/_setextattr" is_file
}

@test 'man_src has _setfiles' {
    assert "$msrc/_setfiles" is_file
}

@test 'man_src has _setfmac' {
    assert "$msrc/_setfmac" is_file
}

@test 'man_src has _setfsmac' {
    assert "$msrc/_setfsmac" is_file
}

@test 'man_src has _setkey' {
    assert "$msrc/_setkey" is_file
}

@test 'man_src has _setleds' {
    assert "$msrc/_setleds" is_file
}

@test 'man_src has _setmetamode' {
    assert "$msrc/_setmetamode" is_file
}

@test 'man_src has _setpgid' {
    assert "$msrc/_setpgid" is_file
}

@test 'man_src has _setreg' {
    assert "$msrc/_setreg" is_file
}

@test 'man_src has _setserial' {
    assert "$msrc/_setserial" is_file
}

@test 'man_src has _setxkbmap' {
    assert "$msrc/_setxkbmap" is_file
}

@test 'man_src has _sgen' {
    assert "$msrc/_sgen" is_file
}

@test 'man_src has _sgitopnm' {
    assert "$msrc/_sgitopnm" is_file
}

@test 'man_src has _sgpio' {
    assert "$msrc/_sgpio" is_file
}

@test 'man_src has _sh.distrib' {
    assert "$msrc/_sh.distrib" is_file
}

@test 'man_src has _sha224' {
    assert "$msrc/_sha224" is_file
}

@test 'man_src has _shell-quote' {
    assert "$msrc/_shell-quote" is_file
}

@test 'man_src has _shiboken2' {
    assert "$msrc/_shiboken2" is_file
}

@test 'man_src has _shortcuts' {
    assert "$msrc/_shortcuts" is_file
}

@test 'man_src has _shout' {
    assert "$msrc/_shout" is_file
}

@test 'man_src has _show-changed-rco' {
    assert "$msrc/_show-changed-rco" is_file
}

@test 'man_src has _showfont' {
    assert "$msrc/_showfont" is_file
}

@test 'man_src has _siggen' {
    assert "$msrc/_siggen" is_file
}

@test 'man_src has _signcode' {
    assert "$msrc/_signcode" is_file
}

@test 'man_src has _signtool' {
    assert "$msrc/_signtool" is_file
}

@test 'man_src has _sirikali' {
    assert "$msrc/_sirikali" is_file
}

@test 'man_src has _size-classic' {
    assert "$msrc/_size-classic" is_file
}

@test 'man_src has _sl' {
    assert "$msrc/_sl" is_file
}

@test 'man_src has _sl-h' {
    assert "$msrc/_sl-h" is_file
}

@test 'man_src has _slapadd' {
    assert "$msrc/_slapadd" is_file
}

@test 'man_src has _slapauth' {
    assert "$msrc/_slapauth" is_file
}

@test 'man_src has _slapcat' {
    assert "$msrc/_slapcat" is_file
}

@test 'man_src has _slapdn' {
    assert "$msrc/_slapdn" is_file
}

@test 'man_src has _slapindex' {
    assert "$msrc/_slapindex" is_file
}

@test 'man_src has _slapschema' {
    assert "$msrc/_slapschema" is_file
}

@test 'man_src has _slaptest' {
    assert "$msrc/_slaptest" is_file
}

@test 'man_src has _sldtoppm' {
    assert "$msrc/_sldtoppm" is_file
}

@test 'man_src has _slick-greeter' {
    assert "$msrc/_slick-greeter" is_file
}

@test 'man_src has _slirp4netns' {
    assert "$msrc/_slirp4netns" is_file
}

@test 'man_src has _sload.f2fs' {
    assert "$msrc/_sload.f2fs" is_file
}

@test 'man_src has _slock' {
    assert "$msrc/_slock" is_file
}

@test 'man_src has _slogkey' {
    assert "$msrc/_slogkey" is_file
}

@test 'man_src has _slogverify' {
    assert "$msrc/_slogverify" is_file
}

@test 'man_src has _sm-notify' {
    assert "$msrc/_sm-notify" is_file
}

@test 'man_src has _smart_agetty' {
    assert "$msrc/_smart_agetty" is_file
}

@test 'man_src has _smb2-quota' {
    assert "$msrc/_smb2-quota" is_file
}

@test 'man_src has _smbd' {
    assert "$msrc/_smbd" is_file
}

@test 'man_src has _smbencrypt' {
    assert "$msrc/_smbencrypt" is_file
}

@test 'man_src has _smbinfo' {
    assert "$msrc/_smbinfo" is_file
}

@test 'man_src has _smbmap' {
    assert "$msrc/_smbmap" is_file
}

@test 'man_src has _smbmsg' {
    assert "$msrc/_smbmsg" is_file
}

@test 'man_src has _smbutil' {
    assert "$msrc/_smbutil" is_file
}

@test 'man_src has _sminfo' {
    assert "$msrc/_sminfo" is_file
}

@test 'man_src has _smpdump' {
    assert "$msrc/_smpdump" is_file
}

@test 'man_src has _smplayer' {
    assert "$msrc/_smplayer" is_file
}

@test 'man_src has _smpquery' {
    assert "$msrc/_smpquery" is_file
}

@test 'man_src has _smproxy' {
    assert "$msrc/_smproxy" is_file
}

@test 'man_src has _smtp-sink' {
    assert "$msrc/_smtp-sink" is_file
}

@test 'man_src has _smtp-source' {
    assert "$msrc/_smtp-source" is_file
}

@test 'man_src has _snap' {
    assert "$msrc/_snap" is_file
}

@test 'man_src has _snapinfo' {
    assert "$msrc/_snapinfo" is_file
}

@test 'man_src has _sndfile-info' {
    assert "$msrc/_sndfile-info" is_file
}

@test 'man_src has _snfsdefrag' {
    assert "$msrc/_snfsdefrag" is_file
}

@test 'man_src has _snmpcheck' {
    assert "$msrc/_snmpcheck" is_file
}

@test 'man_src has _snmpnetstat' {
    assert "$msrc/_snmpnetstat" is_file
}

@test 'man_src has _snquota' {
    assert "$msrc/_snquota" is_file
}

@test 'man_src has _sntpd' {
    assert "$msrc/_sntpd" is_file
}

@test 'man_src has _soapsuds' {
    assert "$msrc/_soapsuds" is_file
}

@test 'man_src has _socat1' {
    assert "$msrc/_socat1" is_file
}

@test 'man_src has _soelim' {
    assert "$msrc/_soelim" is_file
}

@test 'man_src has _solterm' {
    assert "$msrc/_solterm" is_file
}

@test 'man_src has _sord_validate' {
    assert "$msrc/_sord_validate" is_file
}

@test 'man_src has _sordi' {
    assert "$msrc/_sordi" is_file
}

@test 'man_src has _sos' {
    assert "$msrc/_sos" is_file
}

@test 'man_src has _source-highlight' {
    assert "$msrc/_source-highlight" is_file
}

@test 'man_src has _spax' {
    assert "$msrc/_spax" is_file
}

@test 'man_src has _spctl' {
    assert "$msrc/_spctl" is_file
}

@test 'man_src has _speak-ng' {
    assert "$msrc/_speak-ng" is_file
}

@test 'man_src has _spectool_curses' {
    assert "$msrc/_spectool_curses" is_file
}

@test 'man_src has _spectool_net' {
    assert "$msrc/_spectool_net" is_file
}

@test 'man_src has _speed' {
    assert "$msrc/_speed" is_file
}

@test 'man_src has _spellintian' {
    assert "$msrc/_spellintian" is_file
}

@test 'man_src has _spix' {
    assert "$msrc/_spix" is_file
}

@test 'man_src has _split-file' {
    assert "$msrc/_split-file" is_file
}

@test 'man_src has _spm' {
    assert "$msrc/_spm" is_file
}

@test 'man_src has _sponge' {
    assert "$msrc/_sponge" is_file
}

@test 'man_src has _spottopgm' {
    assert "$msrc/_spottopgm" is_file
}

@test 'man_src has _spray' {
    assert "$msrc/_spray" is_file
}

@test 'man_src has _sprop' {
    assert "$msrc/_sprop" is_file
}

@test 'man_src has _sqfscat' {
    assert "$msrc/_sqfscat" is_file
}

@test 'man_src has _sqfstar' {
    assert "$msrc/_sqfstar" is_file
}

@test 'man_src has _sql' {
    assert "$msrc/_sql" is_file
}

@test 'man_src has _sqldict' {
    assert "$msrc/_sqldict" is_file
}

@test 'man_src has _sqlsharp' {
    assert "$msrc/_sqlsharp" is_file
}

@test 'man_src has _squid' {
    assert "$msrc/_squid" is_file
}

@test 'man_src has _sreport' {
    assert "$msrc/_sreport" is_file
}

@test 'man_src has _srftopam' {
    assert "$msrc/_srftopam" is_file
}

@test 'man_src has _ssadump' {
    assert "$msrc/_ssadump" is_file
}

@test 'man_src has _ssh-keyscan' {
    assert "$msrc/_ssh-keyscan" is_file
}

@test 'man_src has _sshd' {
    assert "$msrc/_sshd" is_file
}

@test 'man_src has _sshmitm' {
    assert "$msrc/_sshmitm" is_file
}

@test 'man_src has _sshow' {
    assert "$msrc/_sshow" is_file
}

@test 'man_src has _sshvnc' {
    assert "$msrc/_sshvnc" is_file
}

@test 'man_src has _ssldump' {
    assert "$msrc/_ssldump" is_file
}

@test 'man_src has _sslscan' {
    assert "$msrc/_sslscan" is_file
}

@test 'man_src has _sso_util' {
    assert "$msrc/_sso_util" is_file
}

@test 'man_src has _stap' {
    assert "$msrc/_stap" is_file
}

@test 'man_src has _stap-merge' {
    assert "$msrc/_stap-merge" is_file
}

@test 'man_src has _stapbpf' {
    assert "$msrc/_stapbpf" is_file
}

@test 'man_src has _stapler' {
    assert "$msrc/_stapler" is_file
}

@test 'man_src has _staprun' {
    assert "$msrc/_staprun" is_file
}

@test 'man_src has _stapsh' {
    assert "$msrc/_stapsh" is_file
}

@test 'man_src has _startx' {
    assert "$msrc/_startx" is_file
}

@test 'man_src has _stest' {
    assert "$msrc/_stest" is_file
}

@test 'man_src has _stone' {
    assert "$msrc/_stone" is_file
}

@test 'man_src has _stone-py' {
    assert "$msrc/_stone-py" is_file
}

@test 'man_src has _strace-log-merge' {
    assert "$msrc/_strace-log-merge" is_file
}

@test 'man_src has _strfile' {
    assert "$msrc/_strfile" is_file
}

@test 'man_src has _stunnel' {
    assert "$msrc/_stunnel" is_file
}

@test 'man_src has _stunnel3' {
    assert "$msrc/_stunnel3" is_file
}

@test 'man_src has _stunnel4' {
    assert "$msrc/_stunnel4" is_file
}

@test 'man_src has _stz' {
    assert "$msrc/_stz" is_file
}

@test 'man_src has _sucrack' {
    assert "$msrc/_sucrack" is_file
}

@test 'man_src has _sudo_logsrvd' {
    assert "$msrc/_sudo_logsrvd" is_file
}

@test 'man_src has _sudo_sendlog' {
    assert "$msrc/_sudo_sendlog" is_file
}

@test 'man_src has _suexec' {
    assert "$msrc/_suexec" is_file
}

@test 'man_src has _suexec2' {
    assert "$msrc/_suexec2" is_file
}

@test 'man_src has _supportconfig' {
    assert "$msrc/_supportconfig" is_file
}

@test 'man_src has _susepaste' {
    assert "$msrc/_susepaste" is_file
}

@test 'man_src has _susepaste-screenshot' {
    assert "$msrc/_susepaste-screenshot" is_file
}

@test 'man_src has _svcrash' {
    assert "$msrc/_svcrash" is_file
}

@test 'man_src has _svgpp' {
    assert "$msrc/_svgpp" is_file
}

@test 'man_src has _svgtopam' {
    assert "$msrc/_svgtopam" is_file
}

@test 'man_src has _swapctl' {
    assert "$msrc/_swapctl" is_file
}

@test 'man_src has _swapinfo' {
    assert "$msrc/_swapinfo" is_file
}

@test 'man_src has _swig3.0' {
    assert "$msrc/_swig3.0" is_file
}

@test 'man_src has _swipl-ld' {
    assert "$msrc/_swipl-ld" is_file
}

@test 'man_src has _swtpm' {
    assert "$msrc/_swtpm" is_file
}

@test 'man_src has _swtpm_bios' {
    assert "$msrc/_swtpm_bios" is_file
}

@test 'man_src has _swtpm_cert' {
    assert "$msrc/_swtpm_cert" is_file
}

@test 'man_src has _swtpm_ioctl' {
    assert "$msrc/_swtpm_ioctl" is_file
}

@test 'man_src has _swtpm_localca' {
    assert "$msrc/_swtpm_localca" is_file
}

@test 'man_src has _swtpm_setup' {
    assert "$msrc/_swtpm_setup" is_file
}

@test 'man_src has _sxpm' {
    assert "$msrc/_sxpm" is_file
}

@test 'man_src has _symbols' {
    assert "$msrc/_symbols" is_file
}

@test 'man_src has _sync-available' {
    assert "$msrc/_sync-available" is_file
}

@test 'man_src has _sysdiagnose' {
    assert "$msrc/_sysdiagnose" is_file
}

@test 'man_src has _syslinux-legacy' {
    assert "$msrc/_syslinux-legacy" is_file
}

@test 'man_src has _syslog-ng-ctl' {
    assert "$msrc/_syslog-ng-ctl" is_file
}

@test 'man_src has _syslogd' {
    assert "$msrc/_syslogd" is_file
}

@test 'man_src has _system-config-printer-applet' {
    assert "$msrc/_system-config-printer-applet" is_file
}

@test 'man_src has _systemd' {
    assert "$msrc/_systemd" is_file
}

@test 'man_src has _systemd-ac-power' {
    assert "$msrc/_systemd-ac-power" is_file
}

@test 'man_src has _systemd-confext' {
    assert "$msrc/_systemd-confext" is_file
}

@test 'man_src has _systemd-creds' {
    assert "$msrc/_systemd-creds" is_file
}

@test 'man_src has _systemd-cryptenroll' {
    assert "$msrc/_systemd-cryptenroll" is_file
}

@test 'man_src has _systemd-dissect' {
    assert "$msrc/_systemd-dissect" is_file
}

@test 'man_src has _systemd-nspawn' {
    assert "$msrc/_systemd-nspawn" is_file
}

@test 'man_src has _systemd-repart' {
    assert "$msrc/_systemd-repart" is_file
}

@test 'man_src has _systemd-sysext' {
    assert "$msrc/_systemd-sysext" is_file
}

@test 'man_src has _systemd-vmspawn' {
    assert "$msrc/_systemd-vmspawn" is_file
}

@test 'man_src has _systemkeychain' {
    assert "$msrc/_systemkeychain" is_file
}

@test 'man_src has _systemsetup' {
    assert "$msrc/_systemsetup" is_file
}

@test 'man_src has _tabbed' {
    assert "$msrc/_tabbed" is_file
}

@test 'man_src has _tack' {
    assert "$msrc/_tack" is_file
}

@test 'man_src has _tagscmd' {
    assert "$msrc/_tagscmd" is_file
}

@test 'man_src has _talkd' {
    assert "$msrc/_talkd" is_file
}

@test 'man_src has _tapestat' {
    assert "$msrc/_tapestat" is_file
}

@test 'man_src has _tapi' {
    assert "$msrc/_tapi" is_file
}

@test 'man_src has _tapi-analyze' {
    assert "$msrc/_tapi-analyze" is_file
}

@test 'man_src has _taskpolicy' {
    assert "$msrc/_taskpolicy" is_file
}

@test 'man_src has _tbl' {
    assert "$msrc/_tbl" is_file
}

@test 'man_src has _tcamgr' {
    assert "$msrc/_tcamgr" is_file
}

@test 'man_src has _tcbmgr' {
    assert "$msrc/_tcbmgr" is_file
}

@test 'man_src has _tcbmttest' {
    assert "$msrc/_tcbmttest" is_file
}

@test 'man_src has _tcbtest' {
    assert "$msrc/_tcbtest" is_file
}

@test 'man_src has _tcfmgr' {
    assert "$msrc/_tcfmgr" is_file
}

@test 'man_src has _tcfmttest' {
    assert "$msrc/_tcfmttest" is_file
}

@test 'man_src has _tcftest' {
    assert "$msrc/_tcftest" is_file
}

@test 'man_src has _tchmgr' {
    assert "$msrc/_tchmgr" is_file
}

@test 'man_src has _tchmttest' {
    assert "$msrc/_tchmttest" is_file
}

@test 'man_src has _tchtest' {
    assert "$msrc/_tchtest" is_file
}

@test 'man_src has _tcopy' {
    assert "$msrc/_tcopy" is_file
}

@test 'man_src has _tcpick' {
    assert "$msrc/_tcpick" is_file
}

@test 'man_src has _tcpkill' {
    assert "$msrc/_tcpkill" is_file
}

@test 'man_src has _tcpnice' {
    assert "$msrc/_tcpnice" is_file
}

@test 'man_src has _tcpslice' {
    assert "$msrc/_tcpslice" is_file
}

@test 'man_src has _tcptraceroute.db' {
    assert "$msrc/_tcptraceroute.db" is_file
}

@test 'man_src has _tcptrack' {
    assert "$msrc/_tcptrack" is_file
}

@test 'man_src has _tctmgr' {
    assert "$msrc/_tctmgr" is_file
}

@test 'man_src has _tctmttest' {
    assert "$msrc/_tctmttest" is_file
}

@test 'man_src has _tcttest' {
    assert "$msrc/_tcttest" is_file
}

@test 'man_src has _tcucodec' {
    assert "$msrc/_tcucodec" is_file
}

@test 'man_src has _tcumttest' {
    assert "$msrc/_tcumttest" is_file
}

@test 'man_src has _tcutest' {
    assert "$msrc/_tcutest" is_file
}

@test 'man_src has _tdbtool' {
    assert "$msrc/_tdbtool" is_file
}

@test 'man_src has _teamd' {
    assert "$msrc/_teamd" is_file
}

@test 'man_src has _telnet.netkit' {
    assert "$msrc/_telnet.netkit" is_file
}

@test 'man_src has _telnetd' {
    assert "$msrc/_telnetd" is_file
}

@test 'man_src has _teredo-mire' {
    assert "$msrc/_teredo-mire" is_file
}

@test 'man_src has _termit' {
    assert "$msrc/_termit" is_file
}

@test 'man_src has _testament' {
    assert "$msrc/_testament" is_file
}

@test 'man_src has _testrb' {
    assert "$msrc/_testrb" is_file
}

@test 'man_src has _testrb2.1' {
    assert "$msrc/_testrb2.1" is_file
}

@test 'man_src has _testsolv' {
    assert "$msrc/_testsolv" is_file
}

@test 'man_src has _texconfig' {
    assert "$msrc/_texconfig" is_file
}

@test 'man_src has _texconfig-sys' {
    assert "$msrc/_texconfig-sys" is_file
}

@test 'man_src has _texdiff' {
    assert "$msrc/_texdiff" is_file
}

@test 'man_src has _texdirflatten' {
    assert "$msrc/_texdirflatten" is_file
}

@test 'man_src has _texdoctk' {
    assert "$msrc/_texdoctk" is_file
}

@test 'man_src has _texexec' {
    assert "$msrc/_texexec" is_file
}

@test 'man_src has _texfindpkg' {
    assert "$msrc/_texfindpkg" is_file
}

@test 'man_src has _texfot' {
    assert "$msrc/_texfot" is_file
}

@test 'man_src has _texindy' {
    assert "$msrc/_texindy" is_file
}

@test 'man_src has _texlogsieve' {
    assert "$msrc/_texlogsieve" is_file
}

@test 'man_src has _texmfstart' {
    assert "$msrc/_texmfstart" is_file
}

@test 'man_src has _texprof' {
    assert "$msrc/_texprof" is_file
}

@test 'man_src has _texprofile' {
    assert "$msrc/_texprofile" is_file
}

@test 'man_src has _text2ngram' {
    assert "$msrc/_text2ngram" is_file
}

@test 'man_src has _text2wave' {
    assert "$msrc/_text2wave" is_file
}

@test 'man_src has _textestvis' {
    assert "$msrc/_textestvis" is_file
}

@test 'man_src has _tfmtodit' {
    assert "$msrc/_tfmtodit" is_file
}

@test 'man_src has _tgatoppm' {
    assert "$msrc/_tgatoppm" is_file
}

@test 'man_src has _th-cmd' {
    assert "$msrc/_th-cmd" is_file
}

@test 'man_src has _theme' {
    assert "$msrc/_theme" is_file
}

@test 'man_src has _thin_check' {
    assert "$msrc/_thin_check" is_file
}

@test 'man_src has _thin_delta' {
    assert "$msrc/_thin_delta" is_file
}

@test 'man_src has _thin_dump' {
    assert "$msrc/_thin_dump" is_file
}

@test 'man_src has _thin_ls' {
    assert "$msrc/_thin_ls" is_file
}

@test 'man_src has _thin_metadata_pack' {
    assert "$msrc/_thin_metadata_pack" is_file
}

@test 'man_src has _thin_metadata_unpack' {
    assert "$msrc/_thin_metadata_unpack" is_file
}

@test 'man_src has _thin_repair' {
    assert "$msrc/_thin_repair" is_file
}

@test 'man_src has _thin_restore' {
    assert "$msrc/_thin_restore" is_file
}

@test 'man_src has _thin_rmap' {
    assert "$msrc/_thin_rmap" is_file
}

@test 'man_src has _thin_trim' {
    assert "$msrc/_thin_trim" is_file
}

@test 'man_src has _thingy52' {
    assert "$msrc/_thingy52" is_file
}

@test 'man_src has _thinkjettopbm' {
    assert "$msrc/_thinkjettopbm" is_file
}

@test 'man_src has _thunar-volman' {
    assert "$msrc/_thunar-volman" is_file
}

@test 'man_src has _thunar-volman-settings' {
    assert "$msrc/_thunar-volman-settings" is_file
}

@test 'man_src has _tie' {
    assert "$msrc/_tie" is_file
}

@test 'man_src has _tiff2icns' {
    assert "$msrc/_tiff2icns" is_file
}

@test 'man_src has _tiffdump' {
    assert "$msrc/_tiffdump" is_file
}

@test 'man_src has _tiffgt' {
    assert "$msrc/_tiffgt" is_file
}

@test 'man_src has _tifftopnm' {
    assert "$msrc/_tifftopnm" is_file
}

@test 'man_src has _tightvncpasswd' {
    assert "$msrc/_tightvncpasswd" is_file
}

@test 'man_src has _tikztosvg' {
    assert "$msrc/_tikztosvg" is_file
}

@test 'man_src has _timed' {
    assert "$msrc/_timed" is_file
}

@test 'man_src has _timelimit' {
    assert "$msrc/_timelimit" is_file
}

@test 'man_src has _timelord' {
    assert "$msrc/_timelord" is_file
}

@test 'man_src has _timidity' {
    assert "$msrc/_timidity" is_file
}

@test 'man_src has _tip' {
    assert "$msrc/_tip" is_file
}

@test 'man_src has _tlcockpit' {
    assert "$msrc/_tlcockpit" is_file
}

@test 'man_src has _tlp-stat' {
    assert "$msrc/_tlp-stat" is_file
}

@test 'man_src has _tmutil' {
    assert "$msrc/_tmutil" is_file
}

@test 'man_src has _tnameserv' {
    assert "$msrc/_tnameserv" is_file
}

@test 'man_src has _tnftp' {
    assert "$msrc/_tnftp" is_file
}

@test 'man_src has _toc2cddb' {
    assert "$msrc/_toc2cddb" is_file
}

@test 'man_src has _toc2cue' {
    assert "$msrc/_toc2cue" is_file
}

@test 'man_src has _toe' {
    assert "$msrc/_toe" is_file
}

@test 'man_src has _top' {
    assert "$msrc/_top" is_file
}

@test 'man_src has _tops' {
    assert "$msrc/_tops" is_file
}

@test 'man_src has _tor' {
    assert "$msrc/_tor" is_file
}

@test 'man_src has _tor-gencert' {
    assert "$msrc/_tor-gencert" is_file
}

@test 'man_src has _tor-resolve' {
    assert "$msrc/_tor-resolve" is_file
}

@test 'man_src has _tpm2' {
    assert "$msrc/_tpm2" is_file
}

@test 'man_src has _tpm2-abrmd' {
    assert "$msrc/_tpm2-abrmd" is_file
}

@test 'man_src has _tpm2_activatecredential' {
    assert "$msrc/_tpm2_activatecredential" is_file
}

@test 'man_src has _tpm2_certify' {
    assert "$msrc/_tpm2_certify" is_file
}

@test 'man_src has _tpm2_certifyX509certutil' {
    assert "$msrc/_tpm2_certifyX509certutil" is_file
}

@test 'man_src has _tpm2_certifycreation' {
    assert "$msrc/_tpm2_certifycreation" is_file
}

@test 'man_src has _tpm2_changeauth' {
    assert "$msrc/_tpm2_changeauth" is_file
}

@test 'man_src has _tpm2_changeeps' {
    assert "$msrc/_tpm2_changeeps" is_file
}

@test 'man_src has _tpm2_changepps' {
    assert "$msrc/_tpm2_changepps" is_file
}

@test 'man_src has _tpm2_checkquote' {
    assert "$msrc/_tpm2_checkquote" is_file
}

@test 'man_src has _tpm2_clear' {
    assert "$msrc/_tpm2_clear" is_file
}

@test 'man_src has _tpm2_clearcontrol' {
    assert "$msrc/_tpm2_clearcontrol" is_file
}

@test 'man_src has _tpm2_clockrateadjust' {
    assert "$msrc/_tpm2_clockrateadjust" is_file
}

@test 'man_src has _tpm2_commit' {
    assert "$msrc/_tpm2_commit" is_file
}

@test 'man_src has _tpm2_createak' {
    assert "$msrc/_tpm2_createak" is_file
}

@test 'man_src has _tpm2_createpolicy' {
    assert "$msrc/_tpm2_createpolicy" is_file
}

@test 'man_src has _tpm2_createprimary' {
    assert "$msrc/_tpm2_createprimary" is_file
}

@test 'man_src has _tpm2_dictionarylockout' {
    assert "$msrc/_tpm2_dictionarylockout" is_file
}

@test 'man_src has _tpm2_duplicate' {
    assert "$msrc/_tpm2_duplicate" is_file
}

@test 'man_src has _tpm2_ecdhkeygen' {
    assert "$msrc/_tpm2_ecdhkeygen" is_file
}

@test 'man_src has _tpm2_ecdhzgen' {
    assert "$msrc/_tpm2_ecdhzgen" is_file
}

@test 'man_src has _tpm2_ecephemeral' {
    assert "$msrc/_tpm2_ecephemeral" is_file
}

@test 'man_src has _tpm2_encodeobject' {
    assert "$msrc/_tpm2_encodeobject" is_file
}

@test 'man_src has _tpm2_encryptdecrypt' {
    assert "$msrc/_tpm2_encryptdecrypt" is_file
}

@test 'man_src has _tpm2_eventlog' {
    assert "$msrc/_tpm2_eventlog" is_file
}

@test 'man_src has _tpm2_evictcontrol' {
    assert "$msrc/_tpm2_evictcontrol" is_file
}

@test 'man_src has _tpm2_flushcontext' {
    assert "$msrc/_tpm2_flushcontext" is_file
}

@test 'man_src has _tpm2_getcap' {
    assert "$msrc/_tpm2_getcap" is_file
}

@test 'man_src has _tpm2_getcommandauditdigest' {
    assert "$msrc/_tpm2_getcommandauditdigest" is_file
}

@test 'man_src has _tpm2_geteccparameters' {
    assert "$msrc/_tpm2_geteccparameters" is_file
}

@test 'man_src has _tpm2_getekcertificate' {
    assert "$msrc/_tpm2_getekcertificate" is_file
}

@test 'man_src has _tpm2_getmanufec' {
    assert "$msrc/_tpm2_getmanufec" is_file
}

@test 'man_src has _tpm2_getpolicydigest' {
    assert "$msrc/_tpm2_getpolicydigest" is_file
}

@test 'man_src has _tpm2_getpubak' {
    assert "$msrc/_tpm2_getpubak" is_file
}

@test 'man_src has _tpm2_getpubek' {
    assert "$msrc/_tpm2_getpubek" is_file
}

@test 'man_src has _tpm2_getsessionauditdigest' {
    assert "$msrc/_tpm2_getsessionauditdigest" is_file
}

@test 'man_src has _tpm2_gettestresult' {
    assert "$msrc/_tpm2_gettestresult" is_file
}

@test 'man_src has _tpm2_gettime' {
    assert "$msrc/_tpm2_gettime" is_file
}

@test 'man_src has _tpm2_hash' {
    assert "$msrc/_tpm2_hash" is_file
}

@test 'man_src has _tpm2_hierarchycontrol' {
    assert "$msrc/_tpm2_hierarchycontrol" is_file
}

@test 'man_src has _tpm2_hmac' {
    assert "$msrc/_tpm2_hmac" is_file
}

@test 'man_src has _tpm2_incrementalselftest' {
    assert "$msrc/_tpm2_incrementalselftest" is_file
}

@test 'man_src has _tpm2_listpersistent' {
    assert "$msrc/_tpm2_listpersistent" is_file
}

@test 'man_src has _tpm2_load' {
    assert "$msrc/_tpm2_load" is_file
}

@test 'man_src has _tpm2_loadexternal' {
    assert "$msrc/_tpm2_loadexternal" is_file
}

@test 'man_src has _tpm2_makecredential' {
    assert "$msrc/_tpm2_makecredential" is_file
}

@test 'man_src has _tpm2_nvcertify' {
    assert "$msrc/_tpm2_nvcertify" is_file
}

@test 'man_src has _tpm2_nvdefine' {
    assert "$msrc/_tpm2_nvdefine" is_file
}

@test 'man_src has _tpm2_nvextend' {
    assert "$msrc/_tpm2_nvextend" is_file
}

@test 'man_src has _tpm2_nvincrement' {
    assert "$msrc/_tpm2_nvincrement" is_file
}

@test 'man_src has _tpm2_nvlist' {
    assert "$msrc/_tpm2_nvlist" is_file
}

@test 'man_src has _tpm2_nvread' {
    assert "$msrc/_tpm2_nvread" is_file
}

@test 'man_src has _tpm2_nvreadlock' {
    assert "$msrc/_tpm2_nvreadlock" is_file
}

@test 'man_src has _tpm2_nvreadpublic' {
    assert "$msrc/_tpm2_nvreadpublic" is_file
}

@test 'man_src has _tpm2_nvrelease' {
    assert "$msrc/_tpm2_nvrelease" is_file
}

@test 'man_src has _tpm2_nvsetbits' {
    assert "$msrc/_tpm2_nvsetbits" is_file
}

@test 'man_src has _tpm2_nvundefine' {
    assert "$msrc/_tpm2_nvundefine" is_file
}

@test 'man_src has _tpm2_nvwrite' {
    assert "$msrc/_tpm2_nvwrite" is_file
}

@test 'man_src has _tpm2_nvwritelock' {
    assert "$msrc/_tpm2_nvwritelock" is_file
}

@test 'man_src has _tpm2_pcrallocate' {
    assert "$msrc/_tpm2_pcrallocate" is_file
}

@test 'man_src has _tpm2_pcrevent' {
    assert "$msrc/_tpm2_pcrevent" is_file
}

@test 'man_src has _tpm2_pcrextend' {
    assert "$msrc/_tpm2_pcrextend" is_file
}

@test 'man_src has _tpm2_pcrlist' {
    assert "$msrc/_tpm2_pcrlist" is_file
}

@test 'man_src has _tpm2_pcrread' {
    assert "$msrc/_tpm2_pcrread" is_file
}

@test 'man_src has _tpm2_pcrreset' {
    assert "$msrc/_tpm2_pcrreset" is_file
}

@test 'man_src has _tpm2_policyauthorize' {
    assert "$msrc/_tpm2_policyauthorize" is_file
}

@test 'man_src has _tpm2_policyauthorizenv' {
    assert "$msrc/_tpm2_policyauthorizenv" is_file
}

@test 'man_src has _tpm2_policyauthvalue' {
    assert "$msrc/_tpm2_policyauthvalue" is_file
}

@test 'man_src has _tpm2_policycommandcode' {
    assert "$msrc/_tpm2_policycommandcode" is_file
}

@test 'man_src has _tpm2_policycountertimer' {
    assert "$msrc/_tpm2_policycountertimer" is_file
}

@test 'man_src has _tpm2_policycphash' {
    assert "$msrc/_tpm2_policycphash" is_file
}

@test 'man_src has _tpm2_policyduplicationselect' {
    assert "$msrc/_tpm2_policyduplicationselect" is_file
}

@test 'man_src has _tpm2_policylocality' {
    assert "$msrc/_tpm2_policylocality" is_file
}

@test 'man_src has _tpm2_policynamehash' {
    assert "$msrc/_tpm2_policynamehash" is_file
}

@test 'man_src has _tpm2_policynv' {
    assert "$msrc/_tpm2_policynv" is_file
}

@test 'man_src has _tpm2_policynvwritten' {
    assert "$msrc/_tpm2_policynvwritten" is_file
}

@test 'man_src has _tpm2_policyor' {
    assert "$msrc/_tpm2_policyor" is_file
}

@test 'man_src has _tpm2_policypassword' {
    assert "$msrc/_tpm2_policypassword" is_file
}

@test 'man_src has _tpm2_policypcr' {
    assert "$msrc/_tpm2_policypcr" is_file
}

@test 'man_src has _tpm2_policyrestart' {
    assert "$msrc/_tpm2_policyrestart" is_file
}

@test 'man_src has _tpm2_policysecret' {
    assert "$msrc/_tpm2_policysecret" is_file
}

@test 'man_src has _tpm2_policysigned' {
    assert "$msrc/_tpm2_policysigned" is_file
}

@test 'man_src has _tpm2_policytemplate' {
    assert "$msrc/_tpm2_policytemplate" is_file
}

@test 'man_src has _tpm2_policyticket' {
    assert "$msrc/_tpm2_policyticket" is_file
}

@test 'man_src has _tpm2_print' {
    assert "$msrc/_tpm2_print" is_file
}

@test 'man_src has _tpm2_quote' {
    assert "$msrc/_tpm2_quote" is_file
}

@test 'man_src has _tpm2_rc_decode' {
    assert "$msrc/_tpm2_rc_decode" is_file
}

@test 'man_src has _tpm2_readclock' {
    assert "$msrc/_tpm2_readclock" is_file
}

@test 'man_src has _tpm2_readpublic' {
    assert "$msrc/_tpm2_readpublic" is_file
}

@test 'man_src has _tpm2_rsadecrypt' {
    assert "$msrc/_tpm2_rsadecrypt" is_file
}

@test 'man_src has _tpm2_rsaencrypt' {
    assert "$msrc/_tpm2_rsaencrypt" is_file
}

@test 'man_src has _tpm2_sessionconfig' {
    assert "$msrc/_tpm2_sessionconfig" is_file
}

@test 'man_src has _tpm2_setclock' {
    assert "$msrc/_tpm2_setclock" is_file
}

@test 'man_src has _tpm2_setcommandauditstatus' {
    assert "$msrc/_tpm2_setcommandauditstatus" is_file
}

@test 'man_src has _tpm2_setprimarypolicy' {
    assert "$msrc/_tpm2_setprimarypolicy" is_file
}

@test 'man_src has _tpm2_shutdown' {
    assert "$msrc/_tpm2_shutdown" is_file
}

@test 'man_src has _tpm2_sign' {
    assert "$msrc/_tpm2_sign" is_file
}

@test 'man_src has _tpm2_startauthsession' {
    assert "$msrc/_tpm2_startauthsession" is_file
}

@test 'man_src has _tpm2_startup' {
    assert "$msrc/_tpm2_startup" is_file
}

@test 'man_src has _tpm2_takeownership' {
    assert "$msrc/_tpm2_takeownership" is_file
}

@test 'man_src has _tpm2_testparms' {
    assert "$msrc/_tpm2_testparms" is_file
}

@test 'man_src has _tpm2_tr_encode' {
    assert "$msrc/_tpm2_tr_encode" is_file
}

@test 'man_src has _tpm2_unseal' {
    assert "$msrc/_tpm2_unseal" is_file
}

@test 'man_src has _tpm2_verifysignature' {
    assert "$msrc/_tpm2_verifysignature" is_file
}

@test 'man_src has _tpm2_zgen2phase' {
    assert "$msrc/_tpm2_zgen2phase" is_file
}

@test 'man_src has _trace-summary' {
    assert "$msrc/_trace-summary" is_file
}

@test 'man_src has _traceproto' {
    assert "$msrc/_traceproto" is_file
}

@test 'man_src has _traceproto.db' {
    assert "$msrc/_traceproto.db" is_file
}

@test 'man_src has _traceroute-nanog' {
    assert "$msrc/_traceroute-nanog" is_file
}

@test 'man_src has _tracker3-daemon' {
    assert "$msrc/_tracker3-daemon" is_file
}

@test 'man_src has _tracker3-endpoint' {
    assert "$msrc/_tracker3-endpoint" is_file
}

@test 'man_src has _tracker3-export' {
    assert "$msrc/_tracker3-export" is_file
}

@test 'man_src has _tracker3-extract' {
    assert "$msrc/_tracker3-extract" is_file
}

@test 'man_src has _tracker3-info' {
    assert "$msrc/_tracker3-info" is_file
}

@test 'man_src has _tracker3-reset' {
    assert "$msrc/_tracker3-reset" is_file
}

@test 'man_src has _tracker3-search' {
    assert "$msrc/_tracker3-search" is_file
}

@test 'man_src has _tracker3-sparql' {
    assert "$msrc/_tracker3-sparql" is_file
}

@test 'man_src has _tracker3-sql' {
    assert "$msrc/_tracker3-sql" is_file
}

@test 'man_src has _tracker3-status' {
    assert "$msrc/_tracker3-status" is_file
}

@test 'man_src has _tracker3-tag' {
    assert "$msrc/_tracker3-tag" is_file
}

@test 'man_src has _transicc' {
    assert "$msrc/_transicc" is_file
}

@test 'man_src has _tred' {
    assert "$msrc/_tred" is_file
}

@test 'man_src has _trial3' {
    assert "$msrc/_trial3" is_file
}

@test 'man_src has _trietool' {
    assert "$msrc/_trietool" is_file
}

@test 'man_src has _trietool-0.2' {
    assert "$msrc/_trietool-0.2" is_file
}

@test 'man_src has _tripwire' {
    assert "$msrc/_tripwire" is_file
}

@test 'man_src has _trpt' {
    assert "$msrc/_trpt" is_file
}

@test 'man_src has _trust' {
    assert "$msrc/_trust" is_file
}

@test 'man_src has _ts_calibrate' {
    assert "$msrc/_ts_calibrate" is_file
}

@test 'man_src has _ts_print_mt' {
    assert "$msrc/_ts_print_mt" is_file
}

@test 'man_src has _ts_test' {
    assert "$msrc/_ts_test" is_file
}

@test 'man_src has _ts_test_mt' {
    assert "$msrc/_ts_test_mt" is_file
}

@test 'man_src has _ts_uinput' {
    assert "$msrc/_ts_uinput" is_file
}

@test 'man_src has _ts_verify' {
    assert "$msrc/_ts_verify" is_file
}

@test 'man_src has _tss2_authorizepolicy' {
    assert "$msrc/_tss2_authorizepolicy" is_file
}

@test 'man_src has _tss2_changeauth' {
    assert "$msrc/_tss2_changeauth" is_file
}

@test 'man_src has _tss2_createkey' {
    assert "$msrc/_tss2_createkey" is_file
}

@test 'man_src has _tss2_createnv' {
    assert "$msrc/_tss2_createnv" is_file
}

@test 'man_src has _tss2_createseal' {
    assert "$msrc/_tss2_createseal" is_file
}

@test 'man_src has _tss2_decrypt' {
    assert "$msrc/_tss2_decrypt" is_file
}

@test 'man_src has _tss2_delete' {
    assert "$msrc/_tss2_delete" is_file
}

@test 'man_src has _tss2_encrypt' {
    assert "$msrc/_tss2_encrypt" is_file
}

@test 'man_src has _tss2_exportkey' {
    assert "$msrc/_tss2_exportkey" is_file
}

@test 'man_src has _tss2_exportpolicy' {
    assert "$msrc/_tss2_exportpolicy" is_file
}

@test 'man_src has _tss2_getappdata' {
    assert "$msrc/_tss2_getappdata" is_file
}

@test 'man_src has _tss2_getcertificate' {
    assert "$msrc/_tss2_getcertificate" is_file
}

@test 'man_src has _tss2_getdescription' {
    assert "$msrc/_tss2_getdescription" is_file
}

@test 'man_src has _tss2_getinfo' {
    assert "$msrc/_tss2_getinfo" is_file
}

@test 'man_src has _tss2_getplatformcertificates' {
    assert "$msrc/_tss2_getplatformcertificates" is_file
}

@test 'man_src has _tss2_getrandom' {
    assert "$msrc/_tss2_getrandom" is_file
}

@test 'man_src has _tss2_gettpm2object' {
    assert "$msrc/_tss2_gettpm2object" is_file
}

@test 'man_src has _tss2_gettpmblobs' {
    assert "$msrc/_tss2_gettpmblobs" is_file
}

@test 'man_src has _tss2_import' {
    assert "$msrc/_tss2_import" is_file
}

@test 'man_src has _tss2_list' {
    assert "$msrc/_tss2_list" is_file
}

@test 'man_src has _tss2_nvextend' {
    assert "$msrc/_tss2_nvextend" is_file
}

@test 'man_src has _tss2_nvincrement' {
    assert "$msrc/_tss2_nvincrement" is_file
}

@test 'man_src has _tss2_nvread' {
    assert "$msrc/_tss2_nvread" is_file
}

@test 'man_src has _tss2_nvsetbits' {
    assert "$msrc/_tss2_nvsetbits" is_file
}

@test 'man_src has _tss2_nvwrite' {
    assert "$msrc/_tss2_nvwrite" is_file
}

@test 'man_src has _tss2_pcrextend' {
    assert "$msrc/_tss2_pcrextend" is_file
}

@test 'man_src has _tss2_pcrread' {
    assert "$msrc/_tss2_pcrread" is_file
}

@test 'man_src has _tss2_provision' {
    assert "$msrc/_tss2_provision" is_file
}

@test 'man_src has _tss2_quote' {
    assert "$msrc/_tss2_quote" is_file
}

@test 'man_src has _tss2_setappdata' {
    assert "$msrc/_tss2_setappdata" is_file
}

@test 'man_src has _tss2_setcertificate' {
    assert "$msrc/_tss2_setcertificate" is_file
}

@test 'man_src has _tss2_setdescription' {
    assert "$msrc/_tss2_setdescription" is_file
}

@test 'man_src has _tss2_sign' {
    assert "$msrc/_tss2_sign" is_file
}

@test 'man_src has _tss2_unseal' {
    assert "$msrc/_tss2_unseal" is_file
}

@test 'man_src has _tss2_verifyquote' {
    assert "$msrc/_tss2_verifyquote" is_file
}

@test 'man_src has _tss2_verifysignature' {
    assert "$msrc/_tss2_verifysignature" is_file
}

@test 'man_src has _tss2_writeauthorizenv' {
    assert "$msrc/_tss2_writeauthorizenv" is_file
}

@test 'man_src has _tsvnc' {
    assert "$msrc/_tsvnc" is_file
}

@test 'man_src has _ttf2svg' {
    assert "$msrc/_ttf2svg" is_file
}

@test 'man_src has _ttfdump' {
    assert "$msrc/_ttfdump" is_file
}

@test 'man_src has _ttx' {
    assert "$msrc/_ttx" is_file
}

@test 'man_src has _ttystudio' {
    assert "$msrc/_ttystudio" is_file
}

@test 'man_src has _tune.exfat' {
    assert "$msrc/_tune.exfat" is_file
}

@test 'man_src has _tuned' {
    assert "$msrc/_tuned" is_file
}

@test 'man_src has _tuned-adm' {
    assert "$msrc/_tuned-adm" is_file
}

@test 'man_src has _tunefs' {
    assert "$msrc/_tunefs" is_file
}

@test 'man_src has _tunefs.reiserfs' {
    assert "$msrc/_tunefs.reiserfs" is_file
}

@test 'man_src has _twill-refsort' {
    assert "$msrc/_twill-refsort" is_file
}

@test 'man_src has _twistd3' {
    assert "$msrc/_twistd3" is_file
}

@test 'man_src has _twm' {
    assert "$msrc/_twm" is_file
}

@test 'man_src has _typog-grep' {
    assert "$msrc/_typog-grep" is_file
}

@test 'man_src has _tzsetup' {
    assert "$msrc/_tzsetup" is_file
}

@test 'man_src has _u2boat' {
    assert "$msrc/_u2boat" is_file
}

@test 'man_src has _u2streamer' {
    assert "$msrc/_u2streamer" is_file
}

@test 'man_src has _uathload' {
    assert "$msrc/_uathload" is_file
}

@test 'man_src has _ubuntu-distro-info' {
    assert "$msrc/_ubuntu-distro-info" is_file
}

@test 'man_src has _uchardet' {
    assert "$msrc/_uchardet" is_file
}

@test 'man_src has _uclampset' {
    assert "$msrc/_uclampset" is_file
}

@test 'man_src has _ucs2any' {
    assert "$msrc/_ucs2any" is_file
}

@test 'man_src has _ucx_info' {
    assert "$msrc/_ucx_info" is_file
}

@test 'man_src has _ucx_perftest' {
    assert "$msrc/_ucx_perftest" is_file
}

@test 'man_src has _ucx_read_profile' {
    assert "$msrc/_ucx_read_profile" is_file
}

@test 'man_src has _udevadm' {
    assert "$msrc/_udevadm" is_file
}

@test 'man_src has _udfinfo' {
    assert "$msrc/_udfinfo" is_file
}

@test 'man_src has _uefisign' {
    assert "$msrc/_uefisign" is_file
}

@test 'man_src has _uhd_siggen' {
    assert "$msrc/_uhd_siggen" is_file
}

@test 'man_src has _uhsoctl' {
    assert "$msrc/_uhsoctl" is_file
}

@test 'man_src has _umax_pp' {
    assert "$msrc/_umax_pp" is_file
}

@test 'man_src has _umount.nilfs2' {
    assert "$msrc/_umount.nilfs2" is_file
}

@test 'man_src has _unconfined' {
    assert "$msrc/_unconfined" is_file
}

@test 'man_src has _unhide' {
    assert "$msrc/_unhide" is_file
}

@test 'man_src has _unhide-linux' {
    assert "$msrc/_unhide-linux" is_file
}

@test 'man_src has _unhide-posix' {
    assert "$msrc/_unhide-posix" is_file
}

@test 'man_src has _unhide-tcp' {
    assert "$msrc/_unhide-tcp" is_file
}

@test 'man_src has _unhide_rb' {
    assert "$msrc/_unhide_rb" is_file
}

@test 'man_src has _unifdefall' {
    assert "$msrc/_unifdefall" is_file
}

@test 'man_src has _unity-control-center' {
    assert "$msrc/_unity-control-center" is_file
}

@test 'man_src has _unixcmd' {
    assert "$msrc/_unixcmd" is_file
}

@test 'man_src has _unrar-nonfree' {
    assert "$msrc/_unrar-nonfree" is_file
}

@test 'man_src has _unstr' {
    assert "$msrc/_unstr" is_file
}

@test 'man_src has _unvis' {
    assert "$msrc/_unvis" is_file
}

@test 'man_src has _unzipsfx' {
    assert "$msrc/_unzipsfx" is_file
}

@test 'man_src has _update-ca-trust' {
    assert "$msrc/_update-ca-trust" is_file
}

@test 'man_src has _update-command-not-found' {
    assert "$msrc/_update-command-not-found" is_file
}

@test 'man_src has _update-crypto-policies' {
    assert "$msrc/_update-crypto-policies" is_file
}

@test 'man_src has _update-exim4.conf' {
    assert "$msrc/_update-exim4.conf" is_file
}

@test 'man_src has _update-exim4.conf.template' {
    assert "$msrc/_update-exim4.conf.template" is_file
}

@test 'man_src has _update-exim4defaults' {
    assert "$msrc/_update-exim4defaults" is_file
}

@test 'man_src has _update-ieee-data' {
    assert "$msrc/_update-ieee-data" is_file
}

@test 'man_src has _update-info-dir' {
    assert "$msrc/_update-info-dir" is_file
}

@test 'man_src has _update-manager' {
    assert "$msrc/_update-manager" is_file
}

@test 'man_src has _update-mime' {
    assert "$msrc/_update-mime" is_file
}

@test 'man_src has _update-mime-database' {
    assert "$msrc/_update-mime-database" is_file
}

@test 'man_src has _update-pciids' {
    assert "$msrc/_update-pciids" is_file
}

@test 'man_src has _update-python-modules' {
    assert "$msrc/_update-python-modules" is_file
}

@test 'man_src has _update-shells' {
    assert "$msrc/_update-shells" is_file
}

@test 'man_src has _update-texmf' {
    assert "$msrc/_update-texmf" is_file
}

@test 'man_src has _update-tl-stacked-conffile' {
    assert "$msrc/_update-tl-stacked-conffile" is_file
}

@test 'man_src has _update-usbids' {
    assert "$msrc/_update-usbids" is_file
}

@test 'man_src has _update-xml-catalog' {
    assert "$msrc/_update-xml-catalog" is_file
}

@test 'man_src has _update_dyld_shared_cache' {
    assert "$msrc/_update_dyld_shared_cache" is_file
}

@test 'man_src has _updatedb.findutils' {
    assert "$msrc/_updatedb.findutils" is_file
}

@test 'man_src has _updatedb.plocate' {
    assert "$msrc/_updatedb.plocate" is_file
}

@test 'man_src has _updpkgsums' {
    assert "$msrc/_updpkgsums" is_file
}

@test 'man_src has _urlscan' {
    assert "$msrc/_urlscan" is_file
}

@test 'man_src has _urlsnarf' {
    assert "$msrc/_urlsnarf" is_file
}

@test 'man_src has _urxvtd' {
    assert "$msrc/_urxvtd" is_file
}

@test 'man_src has _usbconfig' {
    assert "$msrc/_usbconfig" is_file
}

@test 'man_src has _usbhidaction' {
    assert "$msrc/_usbhidaction" is_file
}

@test 'man_src has _usbhidctl' {
    assert "$msrc/_usbhidctl" is_file
}

@test 'man_src has _userdbctl' {
    assert "$msrc/_userdbctl" is_file
}

@test 'man_src has _userhelper' {
    assert "$msrc/_userhelper" is_file
}

@test 'man_src has _users' {
    assert "$msrc/_users" is_file
}

@test 'man_src has _vacation' {
    assert "$msrc/_vacation" is_file
}

@test 'man_src has _vala-gen-introspect' {
    assert "$msrc/_vala-gen-introspect" is_file
}

@test 'man_src has _vala-gen-introspect-0.40' {
    assert "$msrc/_vala-gen-introspect-0.40" is_file
}

@test 'man_src has _vala-gen-introspect-0.44' {
    assert "$msrc/_vala-gen-introspect-0.44" is_file
}

@test 'man_src has _vala-gen-introspect-0.46' {
    assert "$msrc/_vala-gen-introspect-0.46" is_file
}

@test 'man_src has _vala-gen-introspect-0.48' {
    assert "$msrc/_vala-gen-introspect-0.48" is_file
}

@test 'man_src has _vala-gen-introspect-0.50' {
    assert "$msrc/_vala-gen-introspect-0.50" is_file
}

@test 'man_src has _vala-gen-introspect-0.54' {
    assert "$msrc/_vala-gen-introspect-0.54" is_file
}

@test 'man_src has _vala-gen-introspect-0.56' {
    assert "$msrc/_vala-gen-introspect-0.56" is_file
}

@test 'man_src has _valac-0.46' {
    assert "$msrc/_valac-0.46" is_file
}

@test 'man_src has _valac-0.48' {
    assert "$msrc/_valac-0.48" is_file
}

@test 'man_src has _valac-0.50' {
    assert "$msrc/_valac-0.50" is_file
}

@test 'man_src has _valac-0.54' {
    assert "$msrc/_valac-0.54" is_file
}

@test 'man_src has _valadoc-0.46' {
    assert "$msrc/_valadoc-0.46" is_file
}

@test 'man_src has _valadoc-0.48' {
    assert "$msrc/_valadoc-0.48" is_file
}

@test 'man_src has _valadoc-0.50' {
    assert "$msrc/_valadoc-0.50" is_file
}

@test 'man_src has _valadoc-0.54' {
    assert "$msrc/_valadoc-0.54" is_file
}

@test 'man_src has _valgrind.bin' {
    assert "$msrc/_valgrind.bin" is_file
}

@test 'man_src has _vapigen-0.46' {
    assert "$msrc/_vapigen-0.46" is_file
}

@test 'man_src has _vapigen-0.50' {
    assert "$msrc/_vapigen-0.50" is_file
}

@test 'man_src has _vapigen-0.54' {
    assert "$msrc/_vapigen-0.54" is_file
}

@test 'man_src has _vbnc' {
    assert "$msrc/_vbnc" is_file
}

@test 'man_src has _vde_autolink' {
    assert "$msrc/_vde_autolink" is_file
}

@test 'man_src has _vde_over_ns' {
    assert "$msrc/_vde_over_ns" is_file
}

@test 'man_src has _vde_pcapplug' {
    assert "$msrc/_vde_pcapplug" is_file
}

@test 'man_src has _vde_plug' {
    assert "$msrc/_vde_plug" is_file
}

@test 'man_src has _vde_plug2tap' {
    assert "$msrc/_vde_plug2tap" is_file
}

@test 'man_src has _vde_router' {
    assert "$msrc/_vde_router" is_file
}

@test 'man_src has _vde_switch' {
    assert "$msrc/_vde_switch" is_file
}

@test 'man_src has _vdecmd' {
    assert "$msrc/_vdecmd" is_file
}

@test 'man_src has _vdptool' {
    assert "$msrc/_vdptool" is_file
}

@test 'man_src has _vendstat' {
    assert "$msrc/_vendstat" is_file
}

@test 'man_src has _vercmp' {
    assert "$msrc/_vercmp" is_file
}

@test 'man_src has _verify-uselistorder-10' {
    assert "$msrc/_verify-uselistorder-10" is_file
}

@test 'man_src has _verify-uselistorder-11' {
    assert "$msrc/_verify-uselistorder-11" is_file
}

@test 'man_src has _verifytree' {
    assert "$msrc/_verifytree" is_file
}

@test 'man_src has _vgcfgbackup' {
    assert "$msrc/_vgcfgbackup" is_file
}

@test 'man_src has _vgcfgrestore' {
    assert "$msrc/_vgcfgrestore" is_file
}

@test 'man_src has _vgck' {
    assert "$msrc/_vgck" is_file
}

@test 'man_src has _vgconvert' {
    assert "$msrc/_vgconvert" is_file
}

@test 'man_src has _vgcreate' {
    assert "$msrc/_vgcreate" is_file
}

@test 'man_src has _vgdisplay' {
    assert "$msrc/_vgdisplay" is_file
}

@test 'man_src has _vgexport' {
    assert "$msrc/_vgexport" is_file
}

@test 'man_src has _vgextend' {
    assert "$msrc/_vgextend" is_file
}

@test 'man_src has _vgimport' {
    assert "$msrc/_vgimport" is_file
}

@test 'man_src has _vgimportclone' {
    assert "$msrc/_vgimportclone" is_file
}

@test 'man_src has _vgimportdevices' {
    assert "$msrc/_vgimportdevices" is_file
}

@test 'man_src has _vgmerge' {
    assert "$msrc/_vgmerge" is_file
}

@test 'man_src has _vgmknodes' {
    assert "$msrc/_vgmknodes" is_file
}

@test 'man_src has _vgreduce' {
    assert "$msrc/_vgreduce" is_file
}

@test 'man_src has _vgremove' {
    assert "$msrc/_vgremove" is_file
}

@test 'man_src has _vgrename' {
    assert "$msrc/_vgrename" is_file
}

@test 'man_src has _vgrind' {
    assert "$msrc/_vgrind" is_file
}

@test 'man_src has _vgs' {
    assert "$msrc/_vgs" is_file
}

@test 'man_src has _vgscan' {
    assert "$msrc/_vgscan" is_file
}

@test 'man_src has _vgsplit' {
    assert "$msrc/_vgsplit" is_file
}

@test 'man_src has _vidcontrol' {
    assert "$msrc/_vidcontrol" is_file
}

@test 'man_src has _vidfont' {
    assert "$msrc/_vidfont" is_file
}

@test 'man_src has _vidir' {
    assert "$msrc/_vidir" is_file
}

@test 'man_src has _vimtutor' {
    assert "$msrc/_vimtutor" is_file
}

@test 'man_src has _virt-pki-query-dn' {
    assert "$msrc/_virt-pki-query-dn" is_file
}

@test 'man_src has _virt-qemu-run' {
    assert "$msrc/_virt-qemu-run" is_file
}

@test 'man_src has _virt-ssh-helper' {
    assert "$msrc/_virt-ssh-helper" is_file
}

@test 'man_src has _virtinterfaced' {
    assert "$msrc/_virtinterfaced" is_file
}

@test 'man_src has _virtnetworkd' {
    assert "$msrc/_virtnetworkd" is_file
}

@test 'man_src has _virtnodedevd' {
    assert "$msrc/_virtnodedevd" is_file
}

@test 'man_src has _virtnwfilterd' {
    assert "$msrc/_virtnwfilterd" is_file
}

@test 'man_src has _virtproxyd' {
    assert "$msrc/_virtproxyd" is_file
}

@test 'man_src has _virtqemud' {
    assert "$msrc/_virtqemud" is_file
}

@test 'man_src has _virtsecretd' {
    assert "$msrc/_virtsecretd" is_file
}

@test 'man_src has _virtstoraged' {
    assert "$msrc/_virtstoraged" is_file
}

@test 'man_src has _vis' {
    assert "$msrc/_vis" is_file
}

@test 'man_src has _vncconfig' {
    assert "$msrc/_vncconfig" is_file
}

@test 'man_src has _vncpasswd' {
    assert "$msrc/_vncpasswd" is_file
}

@test 'man_src has _vncviewer-tigervnc' {
    assert "$msrc/_vncviewer-tigervnc" is_file
}

@test 'man_src has _volatility' {
    assert "$msrc/_volatility" is_file
}

@test 'man_src has _volume_key' {
    assert "$msrc/_volume_key" is_file
}

@test 'man_src has _vpnc-disconnect' {
    assert "$msrc/_vpnc-disconnect" is_file
}

@test 'man_src has _vpnd' {
    assert "$msrc/_vpnd" is_file
}

@test 'man_src has _vshadowinfo' {
    assert "$msrc/_vshadowinfo" is_file
}

@test 'man_src has _vshadowmount' {
    assert "$msrc/_vshadowmount" is_file
}

@test 'man_src has _vtfontcvt' {
    assert "$msrc/_vtfontcvt" is_file
}

@test 'man_src has _vtool' {
    assert "$msrc/_vtool" is_file
}

@test 'man_src has _vwebp' {
    assert "$msrc/_vwebp" is_file
}

@test 'man_src has _w3mman' {
    assert "$msrc/_w3mman" is_file
}

@test 'man_src has _waitpid' {
    assert "$msrc/_waitpid" is_file
}

@test 'man_src has _wapiti' {
    assert "$msrc/_wapiti" is_file
}

@test 'man_src has _wapiti-getcookie' {
    assert "$msrc/_wapiti-getcookie" is_file
}

@test 'man_src has _watchdogd' {
    assert "$msrc/_watchdogd" is_file
}

@test 'man_src has _wcurl' {
    assert "$msrc/_wcurl" is_file
}

@test 'man_src has _weakpass_edit' {
    assert "$msrc/_weakpass_edit" is_file
}

@test 'man_src has _webmitm' {
    assert "$msrc/_webmitm" is_file
}

@test 'man_src has _webpinfo' {
    assert "$msrc/_webpinfo" is_file
}

@test 'man_src has _webpmux' {
    assert "$msrc/_webpmux" is_file
}

@test 'man_src has _webquiz' {
    assert "$msrc/_webquiz" is_file
}

@test 'man_src has _websploit' {
    assert "$msrc/_websploit" is_file
}

@test 'man_src has _webspy' {
    assert "$msrc/_webspy" is_file
}

@test 'man_src has _whatis.man-db' {
    assert "$msrc/_whatis.man-db" is_file
}

@test 'man_src has _which.debianutils' {
    assert "$msrc/_which.debianutils" is_file
}

@test 'man_src has _wine' {
    assert "$msrc/_wine" is_file
}

@test 'man_src has _wine-stable' {
    assert "$msrc/_wine-stable" is_file
}

@test 'man_src has _wine64' {
    assert "$msrc/_wine64" is_file
}

@test 'man_src has _wine64-stable' {
    assert "$msrc/_wine64-stable" is_file
}

@test 'man_src has _wineconsole-stable' {
    assert "$msrc/_wineconsole-stable" is_file
}

@test 'man_src has _winedbg' {
    assert "$msrc/_winedbg" is_file
}

@test 'man_src has _winedbg-stable' {
    assert "$msrc/_winedbg-stable" is_file
}

@test 'man_src has _winicontopam' {
    assert "$msrc/_winicontopam" is_file
}

@test 'man_src has _winicontoppm' {
    assert "$msrc/_winicontoppm" is_file
}

@test 'man_src has _winpr-hash' {
    assert "$msrc/_winpr-hash" is_file
}

@test 'man_src has _wirefilter' {
    assert "$msrc/_wirefilter" is_file
}

@test 'man_src has _wireshark' {
    assert "$msrc/_wireshark" is_file
}

@test 'man_src has _wolfram' {
    assert "$msrc/_wolfram" is_file
}

@test 'man_src has _wolframscript' {
    assert "$msrc/_wolframscript" is_file
}

@test 'man_src has _word-list-compress' {
    assert "$msrc/_word-list-compress" is_file
}

@test 'man_src has _wpscan' {
    assert "$msrc/_wpscan" is_file
}

@test 'man_src has _write.ul' {
    assert "$msrc/_write.ul" is_file
}

@test 'man_src has _wsdd' {
    assert "$msrc/_wsdd" is_file
}

@test 'man_src has _wsdl' {
    assert "$msrc/_wsdl" is_file
}

@test 'man_src has _wspsearch' {
    assert "$msrc/_wspsearch" is_file
}

@test 'man_src has _x0vncserver' {
    assert "$msrc/_x0vncserver" is_file
}

@test 'man_src has _x11perfcomp' {
    assert "$msrc/_x11perfcomp" is_file
}

@test 'man_src has _x11vnc' {
    assert "$msrc/_x11vnc" is_file
}

@test 'man_src has _x2x' {
    assert "$msrc/_x2x" is_file
}

@test 'man_src has _xarchiver' {
    assert "$msrc/_xarchiver" is_file
}

@test 'man_src has _xasy' {
    assert "$msrc/_xasy" is_file
}

@test 'man_src has _xbsh' {
    assert "$msrc/_xbsh" is_file
}

@test 'man_src has _xcalc' {
    assert "$msrc/_xcalc" is_file
}

@test 'man_src has _xcape' {
    assert "$msrc/_xcape" is_file
}

@test 'man_src has _xclip-copyfile' {
    assert "$msrc/_xclip-copyfile" is_file
}

@test 'man_src has _xclip-cutfile' {
    assert "$msrc/_xclip-cutfile" is_file
}

@test 'man_src has _xclip-pastefile' {
    assert "$msrc/_xclip-pastefile" is_file
}

@test 'man_src has _xclipboard' {
    assert "$msrc/_xclipboard" is_file
}

@test 'man_src has _xclock' {
    assert "$msrc/_xclock" is_file
}

@test 'man_src has _xcodebuild' {
    assert "$msrc/_xcodebuild" is_file
}

@test 'man_src has _xconsole' {
    assert "$msrc/_xconsole" is_file
}

@test 'man_src has _xcscontrol' {
    assert "$msrc/_xcscontrol" is_file
}

@test 'man_src has _xctrace' {
    assert "$msrc/_xctrace" is_file
}

@test 'man_src has _xcutsel' {
    assert "$msrc/_xcutsel" is_file
}

@test 'man_src has _xdelta3' {
    assert "$msrc/_xdelta3" is_file
}

@test 'man_src has _xdg-dbus-proxy' {
    assert "$msrc/_xdg-dbus-proxy" is_file
}

@test 'man_src has _xdg-desktop-icon' {
    assert "$msrc/_xdg-desktop-icon" is_file
}

@test 'man_src has _xdg-desktop-menu' {
    assert "$msrc/_xdg-desktop-menu" is_file
}

@test 'man_src has _xdg-email' {
    assert "$msrc/_xdg-email" is_file
}

@test 'man_src has _xdg-icon-resource' {
    assert "$msrc/_xdg-icon-resource" is_file
}

@test 'man_src has _xdg-mime' {
    assert "$msrc/_xdg-mime" is_file
}

@test 'man_src has _xdg-open' {
    assert "$msrc/_xdg-open" is_file
}

@test 'man_src has _xdg-screensaver' {
    assert "$msrc/_xdg-screensaver" is_file
}

@test 'man_src has _xdg-settings' {
    assert "$msrc/_xdg-settings" is_file
}

@test 'man_src has _xdg-su' {
    assert "$msrc/_xdg-su" is_file
}

@test 'man_src has _xdg-terminal' {
    assert "$msrc/_xdg-terminal" is_file
}

@test 'man_src has _xdg-user-dirs-update' {
    assert "$msrc/_xdg-user-dirs-update" is_file
}

@test 'man_src has _xditview' {
    assert "$msrc/_xditview" is_file
}

@test 'man_src has _xdm' {
    assert "$msrc/_xdm" is_file
}

@test 'man_src has _xdpr' {
    assert "$msrc/_xdpr" is_file
}

@test 'man_src has _xdriinfo' {
    assert "$msrc/_xdriinfo" is_file
}

@test 'man_src has _xedit' {
    assert "$msrc/_xedit" is_file
}

@test 'man_src has _xeyes' {
    assert "$msrc/_xeyes" is_file
}

@test 'man_src has _xfce4-accessibility-settings' {
    assert "$msrc/_xfce4-accessibility-settings" is_file
}

@test 'man_src has _xfce4-appearance-settings' {
    assert "$msrc/_xfce4-appearance-settings" is_file
}

@test 'man_src has _xfce4-appfinder' {
    assert "$msrc/_xfce4-appfinder" is_file
}

@test 'man_src has _xfce4-display-settings' {
    assert "$msrc/_xfce4-display-settings" is_file
}

@test 'man_src has _xfce4-keyboard-settings' {
    assert "$msrc/_xfce4-keyboard-settings" is_file
}

@test 'man_src has _xfce4-kiosk-query' {
    assert "$msrc/_xfce4-kiosk-query" is_file
}

@test 'man_src has _xfce4-mime-settings' {
    assert "$msrc/_xfce4-mime-settings" is_file
}

@test 'man_src has _xfce4-mouse-settings' {
    assert "$msrc/_xfce4-mouse-settings" is_file
}

@test 'man_src has _xfce4-notifyd-config' {
    assert "$msrc/_xfce4-notifyd-config" is_file
}

@test 'man_src has _xfce4-panel' {
    assert "$msrc/_xfce4-panel" is_file
}

@test 'man_src has _xfce4-popup-places' {
    assert "$msrc/_xfce4-popup-places" is_file
}

@test 'man_src has _xfce4-popup-whiskermenu' {
    assert "$msrc/_xfce4-popup-whiskermenu" is_file
}

@test 'man_src has _xfce4-power-manager' {
    assert "$msrc/_xfce4-power-manager" is_file
}

@test 'man_src has _xfce4-power-manager-settings' {
    assert "$msrc/_xfce4-power-manager-settings" is_file
}

@test 'man_src has _xfce4-screenshooter' {
    assert "$msrc/_xfce4-screenshooter" is_file
}

@test 'man_src has _xfce4-sensors' {
    assert "$msrc/_xfce4-sensors" is_file
}

@test 'man_src has _xfce4-session' {
    assert "$msrc/_xfce4-session" is_file
}

@test 'man_src has _xfce4-session-logout' {
    assert "$msrc/_xfce4-session-logout" is_file
}

@test 'man_src has _xfce4-session-settings' {
    assert "$msrc/_xfce4-session-settings" is_file
}

@test 'man_src has _xfce4-settings-editor' {
    assert "$msrc/_xfce4-settings-editor" is_file
}

@test 'man_src has _xfce4-settings-manager' {
    assert "$msrc/_xfce4-settings-manager" is_file
}

@test 'man_src has _xfconf-query' {
    assert "$msrc/_xfconf-query" is_file
}

@test 'man_src has _xfdesktop' {
    assert "$msrc/_xfdesktop" is_file
}

@test 'man_src has _xfdesktop-settings' {
    assert "$msrc/_xfdesktop-settings" is_file
}

@test 'man_src has _xfpm-power-backlight-helper' {
    assert "$msrc/_xfpm-power-backlight-helper" is_file
}

@test 'man_src has _xfrun4' {
    assert "$msrc/_xfrun4" is_file
}

@test 'man_src has _xfs' {
    assert "$msrc/_xfs" is_file
}

@test 'man_src has _xfs_admin' {
    assert "$msrc/_xfs_admin" is_file
}

@test 'man_src has _xfs_bmap' {
    assert "$msrc/_xfs_bmap" is_file
}

@test 'man_src has _xfs_copy' {
    assert "$msrc/_xfs_copy" is_file
}

@test 'man_src has _xfs_db' {
    assert "$msrc/_xfs_db" is_file
}

@test 'man_src has _xfs_freeze' {
    assert "$msrc/_xfs_freeze" is_file
}

@test 'man_src has _xfs_info' {
    assert "$msrc/_xfs_info" is_file
}

@test 'man_src has _xfs_io' {
    assert "$msrc/_xfs_io" is_file
}

@test 'man_src has _xfs_mdrestore' {
    assert "$msrc/_xfs_mdrestore" is_file
}

@test 'man_src has _xfs_metadump' {
    assert "$msrc/_xfs_metadump" is_file
}

@test 'man_src has _xfs_mkfile' {
    assert "$msrc/_xfs_mkfile" is_file
}

@test 'man_src has _xfs_ncheck' {
    assert "$msrc/_xfs_ncheck" is_file
}

@test 'man_src has _xfs_quota' {
    assert "$msrc/_xfs_quota" is_file
}

@test 'man_src has _xfs_rtcp' {
    assert "$msrc/_xfs_rtcp" is_file
}

@test 'man_src has _xfs_spaceman' {
    assert "$msrc/_xfs_spaceman" is_file
}

@test 'man_src has _xfsdump' {
    assert "$msrc/_xfsdump" is_file
}

@test 'man_src has _xfsettingsd' {
    assert "$msrc/_xfsettingsd" is_file
}

@test 'man_src has _xfsinfo' {
    assert "$msrc/_xfsinfo" is_file
}

@test 'man_src has _xfsinvutil' {
    assert "$msrc/_xfsinvutil" is_file
}

@test 'man_src has _xfsrestore' {
    assert "$msrc/_xfsrestore" is_file
}

@test 'man_src has _xfwm4' {
    assert "$msrc/_xfwm4" is_file
}

@test 'man_src has _xfwm4-settings' {
    assert "$msrc/_xfwm4-settings" is_file
}

@test 'man_src has _xfwm4-tweaks-settings' {
    assert "$msrc/_xfwm4-tweaks-settings" is_file
}

@test 'man_src has _xfwm4-workspace-settings' {
    assert "$msrc/_xfwm4-workspace-settings" is_file
}

@test 'man_src has _xiccd' {
    assert "$msrc/_xiccd" is_file
}

@test 'man_src has _ximtoppm' {
    assert "$msrc/_ximtoppm" is_file
}

@test 'man_src has _xindy' {
    assert "$msrc/_xindy" is_file
}

@test 'man_src has _xinetd' {
    assert "$msrc/_xinetd" is_file
}

@test 'man_src has _xinit' {
    assert "$msrc/_xinit" is_file
}

@test 'man_src has _xkbbell' {
    assert "$msrc/_xkbbell" is_file
}

@test 'man_src has _xkbvleds' {
    assert "$msrc/_xkbvleds" is_file
}

@test 'man_src has _xkbwatch' {
    assert "$msrc/_xkbwatch" is_file
}

@test 'man_src has _xl2tpd' {
    assert "$msrc/_xl2tpd" is_file
}

@test 'man_src has _xlinks' {
    assert "$msrc/_xlinks" is_file
}

@test 'man_src has _xlogo' {
    assert "$msrc/_xlogo" is_file
}

@test 'man_src has _xlsclients' {
    assert "$msrc/_xlsclients" is_file
}

@test 'man_src has _xmag' {
    assert "$msrc/_xmag" is_file
}

@test 'man_src has _xmessage' {
    assert "$msrc/_xmessage" is_file
}

@test 'man_src has _xmh' {
    assert "$msrc/_xmh" is_file
}

@test 'man_src has _xml-resolver' {
    assert "$msrc/_xml-resolver" is_file
}

@test 'man_src has _xml-xparse' {
    assert "$msrc/_xml-xparse" is_file
}

@test 'man_src has _xml-xread' {
    assert "$msrc/_xml-xread" is_file
}

@test 'man_src has _xml_grep' {
    assert "$msrc/_xml_grep" is_file
}

@test 'man_src has _xml_merge' {
    assert "$msrc/_xml_merge" is_file
}

@test 'man_src has _xml_pp' {
    assert "$msrc/_xml_pp" is_file
}

@test 'man_src has _xml_spellcheck' {
    assert "$msrc/_xml_spellcheck" is_file
}

@test 'man_src has _xml_split' {
    assert "$msrc/_xml_split" is_file
}

@test 'man_src has _xmlsec1-config' {
    assert "$msrc/_xmlsec1-config" is_file
}

@test 'man_src has _xmlto' {
    assert "$msrc/_xmlto" is_file
}

@test 'man_src has _xmlwf' {
    assert "$msrc/_xmlwf" is_file
}

@test 'man_src has _xpl2gpl' {
    assert "$msrc/_xpl2gpl" is_file
}

@test 'man_src has _xpmtoppm' {
    assert "$msrc/_xpmtoppm" is_file
}

@test 'man_src has _xsanctl' {
    assert "$msrc/_xsanctl" is_file
}

@test 'man_src has _xscope' {
    assert "$msrc/_xscope" is_file
}

@test 'man_src has _xsetpointer' {
    assert "$msrc/_xsetpointer" is_file
}

@test 'man_src has _xsm' {
    assert "$msrc/_xsm" is_file
}

@test 'man_src has _xssstate' {
    assert "$msrc/_xssstate" is_file
}

@test 'man_src has _xstr' {
    assert "$msrc/_xstr" is_file
}

@test 'man_src has _xsubpp' {
    assert "$msrc/_xsubpp" is_file
}

@test 'man_src has _xsubpp5.18' {
    assert "$msrc/_xsubpp5.18" is_file
}

@test 'man_src has _xsubpp5.28' {
    assert "$msrc/_xsubpp5.28" is_file
}

@test 'man_src has _xsubpp5.30' {
    assert "$msrc/_xsubpp5.30" is_file
}

@test 'man_src has _xsubpp5.34' {
    assert "$msrc/_xsubpp5.34" is_file
}

@test 'man_src has _xtotroff' {
    assert "$msrc/_xtotroff" is_file
}

@test 'man_src has _xvinfo' {
    assert "$msrc/_xvinfo" is_file
}

@test 'man_src has _xvkbd' {
    assert "$msrc/_xvkbd" is_file
}

@test 'man_src has _xwdtopnm' {
    assert "$msrc/_xwdtopnm" is_file
}

@test 'man_src has _xxdiff' {
    assert "$msrc/_xxdiff" is_file
}

@test 'man_src has _xxh128sum' {
    assert "$msrc/_xxh128sum" is_file
}

@test 'man_src has _xxh32sum' {
    assert "$msrc/_xxh32sum" is_file
}

@test 'man_src has _xxh3sum' {
    assert "$msrc/_xxh3sum" is_file
}

@test 'man_src has _xxh64sum' {
    assert "$msrc/_xxh64sum" is_file
}

@test 'man_src has _xxhsum' {
    assert "$msrc/_xxhsum" is_file
}

@test 'man_src has _xzcmp' {
    assert "$msrc/_xzcmp" is_file
}

@test 'man_src has _xzdiff' {
    assert "$msrc/_xzdiff" is_file
}

@test 'man_src has _xzegrep' {
    assert "$msrc/_xzegrep" is_file
}

@test 'man_src has _xzfgrep' {
    assert "$msrc/_xzfgrep" is_file
}

@test 'man_src has _xzgrep' {
    assert "$msrc/_xzgrep" is_file
}

@test 'man_src has _y2racc' {
    assert "$msrc/_y2racc" is_file
}

@test 'man_src has _yaml-bench-10' {
    assert "$msrc/_yaml-bench-10" is_file
}

@test 'man_src has _yaml-bench-11' {
    assert "$msrc/_yaml-bench-11" is_file
}

@test 'man_src has _yaml2obj-10' {
    assert "$msrc/_yaml2obj-10" is_file
}

@test 'man_src has _yaml2obj-11' {
    assert "$msrc/_yaml2obj-11" is_file
}

@test 'man_src has _yapp' {
    assert "$msrc/_yapp" is_file
}

@test 'man_src has _yapp5.34' {
    assert "$msrc/_yapp5.34" is_file
}

@test 'man_src has _yasat' {
    assert "$msrc/_yasat" is_file
}

@test 'man_src has _yp_mkdb' {
    assert "$msrc/_yp_mkdb" is_file
}

@test 'man_src has _ypchpass' {
    assert "$msrc/_ypchpass" is_file
}

@test 'man_src has _ypinit' {
    assert "$msrc/_ypinit" is_file
}

@test 'man_src has _ypldap' {
    assert "$msrc/_ypldap" is_file
}

@test 'man_src has _yum-builddep' {
    assert "$msrc/_yum-builddep" is_file
}

@test 'man_src has _yum-config-manager' {
    assert "$msrc/_yum-config-manager" is_file
}

@test 'man_src has _yum-debug-restore' {
    assert "$msrc/_yum-debug-restore" is_file
}

@test 'man_src has _yum-groups-manager' {
    assert "$msrc/_yum-groups-manager" is_file
}

@test 'man_src has _yumdownloader' {
    assert "$msrc/_yumdownloader" is_file
}

@test 'man_src has _yuvsplittoppm' {
    assert "$msrc/_yuvsplittoppm" is_file
}

@test 'man_src has _zabbix-java-gateway.jar' {
    assert "$msrc/_zabbix-java-gateway.jar" is_file
}

@test 'man_src has _zabbix_js' {
    assert "$msrc/_zabbix_js" is_file
}

@test 'man_src has _zblacklist' {
    assert "$msrc/_zblacklist" is_file
}

@test 'man_src has _zeek-cut' {
    assert "$msrc/_zeek-cut" is_file
}

@test 'man_src has _zeisstopnm' {
    assert "$msrc/_zeisstopnm" is_file
}

@test 'man_src has _zerofree' {
    assert "$msrc/_zerofree" is_file
}

@test 'man_src has _zfsd' {
    assert "$msrc/_zfsd" is_file
}

@test 'man_src has _zlib_decompress' {
    assert "$msrc/_zlib_decompress" is_file
}

@test 'man_src has _zonectl' {
    assert "$msrc/_zonectl" is_file
}

@test 'man_src has _zresample' {
    assert "$msrc/_zresample" is_file
}

@test 'man_src has _zretune' {
    assert "$msrc/_zretune" is_file
}

@test 'man_src has _zsoelim' {
    assert "$msrc/_zsoelim" is_file
}

@test 'man_src has _ztee' {
    assert "$msrc/_ztee" is_file
}

@test 'man_src has _zuluCrypt-cli' {
    assert "$msrc/_zuluCrypt-cli" is_file
}

@test 'man_src has _zvbi-atsc-cc' {
    assert "$msrc/_zvbi-atsc-cc" is_file
}

@test 'man_src has _zvbi-chains' {
    assert "$msrc/_zvbi-chains" is_file
}

@test 'man_src has _zvbid' {
    assert "$msrc/_zvbid" is_file
}

@test 'man_src has _zypp-CheckAccessDeleted' {
    assert "$msrc/_zypp-CheckAccessDeleted" is_file
}

@test 'man_src has _zypp-NameReqPrv' {
    assert "$msrc/_zypp-NameReqPrv" is_file
}

@test 'man_src has _zypper-log' {
    assert "$msrc/_zypper-log" is_file
}

