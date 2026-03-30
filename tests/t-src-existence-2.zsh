#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Additional existence tests for src/ completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*"
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    src="$pluginDir/src"
}

# ─── File existence tests ───────────────────────────────────────────────────

@test 'src has _%{fc_name}' {
    assert "$src/_%{fc_name}" is_file
}

@test 'src has _2to3' {
    assert "$src/_2to3" is_file
}

@test 'src has _2to3-' {
    assert "$src/_2to3-" is_file
}

@test 'src has _2to3-2' {
    assert "$src/_2to3-2" is_file
}

@test 'src has _2to3-2.7' {
    assert "$src/_2to3-2.7" is_file
}

@test 'src has _2to3-3' {
    assert "$src/_2to3-3" is_file
}

@test 'src has _2to3-3.10' {
    assert "$src/_2to3-3.10" is_file
}

@test 'src has _2to3-3.11' {
    assert "$src/_2to3-3.11" is_file
}

@test 'src has _2to3-3.12' {
    assert "$src/_2to3-3.12" is_file
}

@test 'src has _2to3-3.5' {
    assert "$src/_2to3-3.5" is_file
}

@test 'src has _2to3-3.6' {
    assert "$src/_2to3-3.6" is_file
}

@test 'src has _2to3-3.7' {
    assert "$src/_2to3-3.7" is_file
}

@test 'src has _2to3-3.8' {
    assert "$src/_2to3-3.8" is_file
}

@test 'src has _2to3-3.9' {
    assert "$src/_2to3-3.9" is_file
}

@test 'src has _4channels' {
    assert "$src/_4channels" is_file
}

@test 'src has _AssetCacheManagerUtil' {
    assert "$src/_AssetCacheManagerUtil" is_file
}

@test 'src has _Assistant' {
    assert "$src/_Assistant" is_file
}

@test 'src has _BlindElephant.py' {
    assert "$src/_BlindElephant.py" is_file
}

@test 'src has _BlueTool' {
    assert "$src/_BlueTool" is_file
}

@test 'src has _CC' {
    assert "$src/_CC" is_file
}

@test 'src has _CPU_Stresser.sh' {
    assert "$src/_CPU_Stresser.sh" is_file
}

@test 'src has _ChAP.py' {
    assert "$src/_ChAP.py" is_file
}

@test 'src has _Cutter' {
    assert "$src/_Cutter" is_file
}

@test 'src has _DevToolsSecurity' {
    assert "$src/_DevToolsSecurity" is_file
}

@test 'src has _DirectoryService' {
    assert "$src/_DirectoryService" is_file
}

@test 'src has _FileCheck' {
    assert "$src/_FileCheck" is_file
}

@test 'src has _FileCheck-13' {
    assert "$src/_FileCheck-13" is_file
}

@test 'src has _FileCheck-16' {
    assert "$src/_FileCheck-16" is_file
}

@test 'src has _FileCheck-17' {
    assert "$src/_FileCheck-17" is_file
}

@test 'src has _FileCheck-19' {
    assert "$src/_FileCheck-19" is_file
}

@test 'src has _FileCheck-9' {
    assert "$src/_FileCheck-9" is_file
}

@test 'src has _FileCheck12' {
    assert "$src/_FileCheck12" is_file
}

@test 'src has _FileCheck60' {
    assert "$src/_FileCheck60" is_file
}

@test 'src has _GET' {
    assert "$src/_GET" is_file
}

@test 'src has _GenPat' {
    assert "$src/_GenPat" is_file
}

@test 'src has _IOMFB_FDR_Loader' {
    assert "$src/_IOMFB_FDR_Loader" is_file
}

@test 'src has _IOSDebug' {
    assert "$src/_IOSDebug" is_file
}

@test 'src has _JxrDecApp' {
    assert "$src/_JxrDecApp" is_file
}

@test 'src has _JxrEncApp' {
    assert "$src/_JxrEncApp" is_file
}

@test 'src has _KernelEventAgent' {
    assert "$src/_KernelEventAgent" is_file
}

@test 'src has _MiniBrowser-4' {
    assert "$src/_MiniBrowser-4" is_file
}

@test 'src has _ModemManager' {
    assert "$src/_ModemManager" is_file
}

@test 'src has _NetworkManager' {
    assert "$src/_NetworkManager" is_file
}

@test 'src has _POST' {
    assert "$src/_POST" is_file
}

@test 'src has _QOwnNotes' {
    assert "$src/_QOwnNotes" is_file
}

@test 'src has _R' {
    assert "$src/_R" is_file
}

@test 'src has _Rscript' {
    assert "$src/_Rscript" is_file
}

@test 'src has _SafeEjectGPU' {
    assert "$src/_SafeEjectGPU" is_file
}

@test 'src has _SetFile' {
    assert "$src/_SetFile" is_file
}

@test 'src has _ShimCacheParser.py' {
    assert "$src/_ShimCacheParser.py" is_file
}

@test 'src has _SplitForks' {
    assert "$src/_SplitForks" is_file
}

@test 'src has _SvtAv1EncApp' {
    assert "$src/_SvtAv1EncApp" is_file
}

@test 'src has _Thunar' {
    assert "$src/_Thunar" is_file
}

@test 'src has _VBoxAudioTest' {
    assert "$src/_VBoxAudioTest" is_file
}

@test 'src has _VBoxAutostart' {
    assert "$src/_VBoxAutostart" is_file
}

@test 'src has _VBoxBalloonCtrl' {
    assert "$src/_VBoxBalloonCtrl" is_file
}

@test 'src has _VBoxBugReport' {
    assert "$src/_VBoxBugReport" is_file
}

@test 'src has _VBoxClient' {
    assert "$src/_VBoxClient" is_file
}

@test 'src has _VBoxDTrace' {
    assert "$src/_VBoxDTrace" is_file
}

@test 'src has _VBoxVRDP' {
    assert "$src/_VBoxVRDP" is_file
}

@test 'src has _VGAuthService' {
    assert "$src/_VGAuthService" is_file
}

@test 'src has _VirtualBoxVM' {
    assert "$src/_VirtualBoxVM" is_file
}

@test 'src has _WP8_AppPerms.py' {
    assert "$src/_WP8_AppPerms.py" is_file
}

@test 'src has _WebKitWebDriver' {
    assert "$src/_WebKitWebDriver" is_file
}

@test 'src has _X' {
    assert "$src/_X" is_file
}

@test 'src has _Xdmx' {
    assert "$src/_Xdmx" is_file
}

@test 'src has _Xephyr' {
    assert "$src/_Xephyr" is_file
}

@test 'src has _Xfake' {
    assert "$src/_Xfake" is_file
}

@test 'src has _Xnest' {
    assert "$src/_Xnest" is_file
}

@test 'src has _Xorg' {
    assert "$src/_Xorg" is_file
}

@test 'src has _Xtightvnc' {
    assert "$src/_Xtightvnc" is_file
}

@test 'src has _Xvfb' {
    assert "$src/_Xvfb" is_file
}

@test 'src has _Xvnc' {
    assert "$src/_Xvnc" is_file
}

@test 'src has _Xwayland' {
    assert "$src/_Xwayland" is_file
}

@test 'src has __mocha' {
    assert "$src/__mocha" is_file
}

@test 'src has _a2boot' {
    assert "$src/_a2boot" is_file
}

@test 'src has _a2disconf' {
    assert "$src/_a2disconf" is_file
}

@test 'src has _a2ping' {
    assert "$src/_a2ping" is_file
}

@test 'src has _a2ps' {
    assert "$src/_a2ps" is_file
}

@test 'src has _a2query' {
    assert "$src/_a2query" is_file
}

@test 'src has _a2x' {
    assert "$src/_a2x" is_file
}

@test 'src has _a2x.py' {
    assert "$src/_a2x.py" is_file
}

@test 'src has _a52dec' {
    assert "$src/_a52dec" is_file
}

@test 'src has _a5toa4' {
    assert "$src/_a5toa4" is_file
}

@test 'src has _a68g' {
    assert "$src/_a68g" is_file
}

@test 'src has _aa-audit' {
    assert "$src/_aa-audit" is_file
}

@test 'src has _aa-autodep' {
    assert "$src/_aa-autodep" is_file
}

@test 'src has _aa-cleanprof' {
    assert "$src/_aa-cleanprof" is_file
}

@test 'src has _aa-complain' {
    assert "$src/_aa-complain" is_file
}

@test 'src has _aa-decode' {
    assert "$src/_aa-decode" is_file
}

@test 'src has _aa-disable' {
    assert "$src/_aa-disable" is_file
}

@test 'src has _aa-enabled' {
    assert "$src/_aa-enabled" is_file
}

@test 'src has _aa-enforce' {
    assert "$src/_aa-enforce" is_file
}

@test 'src has _aa-exec' {
    assert "$src/_aa-exec" is_file
}

@test 'src has _aa-genprof' {
    assert "$src/_aa-genprof" is_file
}

@test 'src has _aa-logprof' {
    assert "$src/_aa-logprof" is_file
}

@test 'src has _aa-mergeprof' {
    assert "$src/_aa-mergeprof" is_file
}

@test 'src has _aa-notify' {
    assert "$src/_aa-notify" is_file
}

@test 'src has _aa-remove-unknown' {
    assert "$src/_aa-remove-unknown" is_file
}

@test 'src has _aa-status' {
    assert "$src/_aa-status" is_file
}

@test 'src has _aa-unconfined' {
    assert "$src/_aa-unconfined" is_file
}

@test 'src has _aa-update-browser' {
    assert "$src/_aa-update-browser" is_file
}

@test 'src has _aafire' {
    assert "$src/_aafire" is_file
}

@test 'src has _aaflip' {
    assert "$src/_aaflip" is_file
}

@test 'src has _aainfo' {
    assert "$src/_aainfo" is_file
}

@test 'src has _aapt' {
    assert "$src/_aapt" is_file
}

@test 'src has _aasavefont' {
    assert "$src/_aasavefont" is_file
}

@test 'src has _aatest' {
    assert "$src/_aatest" is_file
}

@test 'src has _abrt' {
    assert "$src/_abrt" is_file
}

@test 'src has _abrt-action-analyze-backtrace' {
    assert "$src/_abrt-action-analyze-backtrace" is_file
}

@test 'src has _abrt-action-analyze-c' {
    assert "$src/_abrt-action-analyze-c" is_file
}

@test 'src has _abrt-action-analyze-java' {
    assert "$src/_abrt-action-analyze-java" is_file
}

@test 'src has _abrt-action-analyze-oops' {
    assert "$src/_abrt-action-analyze-oops" is_file
}

@test 'src has _abrt-action-analyze-python' {
    assert "$src/_abrt-action-analyze-python" is_file
}

@test 'src has _abrt-action-analyze-xorg' {
    assert "$src/_abrt-action-analyze-xorg" is_file
}

@test 'src has _abrt-action-find-bodhi-update' {
    assert "$src/_abrt-action-find-bodhi-update" is_file
}

@test 'src has _abrt-action-generate-backtrace' {
    assert "$src/_abrt-action-generate-backtrace" is_file
}

@test 'src has _abrt-action-generate-core-backtrace' {
    assert "$src/_abrt-action-generate-core-backtrace" is_file
}

@test 'src has _abrt-action-install-debuginfo' {
    assert "$src/_abrt-action-install-debuginfo" is_file
}

@test 'src has _abrt-action-notify' {
    assert "$src/_abrt-action-notify" is_file
}

@test 'src has _abrt-action-perform-ccpp-analysis' {
    assert "$src/_abrt-action-perform-ccpp-analysis" is_file
}

@test 'src has _abrt-action-save-package-data' {
    assert "$src/_abrt-action-save-package-data" is_file
}

@test 'src has _abrt-action-trim-files' {
    assert "$src/_abrt-action-trim-files" is_file
}

@test 'src has _abrt-auto-reporting' {
    assert "$src/_abrt-auto-reporting" is_file
}

@test 'src has _abrt-bodhi' {
    assert "$src/_abrt-bodhi" is_file
}

@test 'src has _abrt-configuration' {
    assert "$src/_abrt-configuration" is_file
}

@test 'src has _abrt-dbus' {
    assert "$src/_abrt-dbus" is_file
}

@test 'src has _abrt-dump-journal-core' {
    assert "$src/_abrt-dump-journal-core" is_file
}

@test 'src has _abrt-dump-journal-oops' {
    assert "$src/_abrt-dump-journal-oops" is_file
}

@test 'src has _abrt-dump-journal-xorg' {
    assert "$src/_abrt-dump-journal-xorg" is_file
}

@test 'src has _abrt-dump-oops' {
    assert "$src/_abrt-dump-oops" is_file
}

@test 'src has _abrt-dump-xorg' {
    assert "$src/_abrt-dump-xorg" is_file
}

@test 'src has _abrt-handle-upload' {
    assert "$src/_abrt-handle-upload" is_file
}

@test 'src has _abrt-harvest-vmcore' {
    assert "$src/_abrt-harvest-vmcore" is_file
}

@test 'src has _abrt-merge-pstoreoops' {
    assert "$src/_abrt-merge-pstoreoops" is_file
}

@test 'src has _abrt-retrace-client' {
    assert "$src/_abrt-retrace-client" is_file
}

@test 'src has _abrt-server' {
    assert "$src/_abrt-server" is_file
}

@test 'src has _abrt-watch-log' {
    assert "$src/_abrt-watch-log" is_file
}

@test 'src has _abrtd' {
    assert "$src/_abrtd" is_file
}

@test 'src has _abw2html' {
    assert "$src/_abw2html" is_file
}

@test 'src has _abw2raw' {
    assert "$src/_abw2raw" is_file
}

@test 'src has _abw2text' {
    assert "$src/_abw2text" is_file
}

@test 'src has _ac' {
    assert "$src/_ac" is_file
}

@test 'src has _acccheck' {
    assert "$src/_acccheck" is_file
}

@test 'src has _accessdb' {
    assert "$src/_accessdb" is_file
}

@test 'src has _accton' {
    assert "$src/_accton" is_file
}

@test 'src has _ace' {
    assert "$src/_ace" is_file
}

@test 'src has _aclocal' {
    assert "$src/_aclocal" is_file
}

@test 'src has _aclocal-1.13' {
    assert "$src/_aclocal-1.13" is_file
}

@test 'src has _aclocal-1.15' {
    assert "$src/_aclocal-1.15" is_file
}

@test 'src has _aclocal-1.16' {
    assert "$src/_aclocal-1.16" is_file
}

@test 'src has _aclocal-1.17' {
    assert "$src/_aclocal-1.17" is_file
}

@test 'src has _aconnect' {
    assert "$src/_aconnect" is_file
}

@test 'src has _acpi_listen' {
    assert "$src/_acpi_listen" is_file
}

@test 'src has _acpid' {
    assert "$src/_acpid" is_file
}

@test 'src has _actionhero' {
    assert "$src/_actionhero" is_file
}

@test 'src has _activate' {
    assert "$src/_activate" is_file
}

@test 'src has _activate-global-python-argcomplete' {
    assert "$src/_activate-global-python-argcomplete" is_file
}

@test 'src has _activate-global-python-argcomplete3' {
    assert "$src/_activate-global-python-argcomplete3" is_file
}

@test 'src has _activity-log-manager' {
    assert "$src/_activity-log-manager" is_file
}

@test 'src has _acyclic' {
    assert "$src/_acyclic" is_file
}

@test 'src has _add-apt-repository' {
    assert "$src/_add-apt-repository" is_file
}

@test 'src has _addgroup' {
    assert "$src/_addgroup" is_file
}

@test 'src has _addpart' {
    assert "$src/_addpart" is_file
}

@test 'src has _addr2line' {
    assert "$src/_addr2line" is_file
}

@test 'src has _adduser' {
    assert "$src/_adduser" is_file
}

@test 'src has _adhocfilelist' {
    assert "$src/_adhocfilelist" is_file
}

@test 'src has _adjtimex' {
    assert "$src/_adjtimex" is_file
}

@test 'src has _adnsheloex' {
    assert "$src/_adnsheloex" is_file
}

@test 'src has _adnshost' {
    assert "$src/_adnshost" is_file
}

@test 'src has _adnslogres' {
    assert "$src/_adnslogres" is_file
}

@test 'src has _adnsresfilter' {
    assert "$src/_adnsresfilter" is_file
}

@test 'src has _advtest' {
    assert "$src/_advtest" is_file
}

@test 'src has _adwaita-1-demo' {
    assert "$src/_adwaita-1-demo" is_file
}

@test 'src has _aec' {
    assert "$src/_aec" is_file
}

@test 'src has _aeskeyfind' {
    assert "$src/_aeskeyfind" is_file
}

@test 'src has _afclip' {
    assert "$src/_afclip" is_file
}

@test 'src has _afconvert' {
    assert "$src/_afconvert" is_file
}

@test 'src has _affcat' {
    assert "$src/_affcat" is_file
}

@test 'src has _affcompare' {
    assert "$src/_affcompare" is_file
}

@test 'src has _affcopy' {
    assert "$src/_affcopy" is_file
}

@test 'src has _affcrypto' {
    assert "$src/_affcrypto" is_file
}

@test 'src has _affdiskprint' {
    assert "$src/_affdiskprint" is_file
}

@test 'src has _affinfo' {
    assert "$src/_affinfo" is_file
}

@test 'src has _affix' {
    assert "$src/_affix" is_file
}

@test 'src has _affsegment' {
    assert "$src/_affsegment" is_file
}

@test 'src has _affsign' {
    assert "$src/_affsign" is_file
}

@test 'src has _affstats' {
    assert "$src/_affstats" is_file
}

@test 'src has _affuse' {
    assert "$src/_affuse" is_file
}

@test 'src has _affverify' {
    assert "$src/_affverify" is_file
}

@test 'src has _affxml' {
    assert "$src/_affxml" is_file
}

@test 'src has _afhash' {
    assert "$src/_afhash" is_file
}

@test 'src has _afida' {
    assert "$src/_afida" is_file
}

@test 'src has _afktool' {
    assert "$src/_afktool" is_file
}

@test 'src has _afl-analyze' {
    assert "$src/_afl-analyze" is_file
}

@test 'src has _afl-clang' {
    assert "$src/_afl-clang" is_file
}

@test 'src has _afl-clang++' {
    assert "$src/_afl-clang++" is_file
}

@test 'src has _afl-clang-fast' {
    assert "$src/_afl-clang-fast" is_file
}

@test 'src has _afl-clang-fast++' {
    assert "$src/_afl-clang-fast++" is_file
}

@test 'src has _afl-fuzz' {
    assert "$src/_afl-fuzz" is_file
}

@test 'src has _afl-g++' {
    assert "$src/_afl-g++" is_file
}

@test 'src has _afl-gcc' {
    assert "$src/_afl-gcc" is_file
}

@test 'src has _afl-showmap' {
    assert "$src/_afl-showmap" is_file
}

@test 'src has _afl-tmin' {
    assert "$src/_afl-tmin" is_file
}

@test 'src has _afl-whatsup' {
    assert "$src/_afl-whatsup" is_file
}

@test 'src has _afm2afm' {
    assert "$src/_afm2afm" is_file
}

@test 'src has _afm2pl' {
    assert "$src/_afm2pl" is_file
}

@test 'src has _afm2tfm' {
    assert "$src/_afm2tfm" is_file
}

@test 'src has _afpcmd' {
    assert "$src/_afpcmd" is_file
}

@test 'src has _aften' {
    assert "$src/_aften" is_file
}

@test 'src has _afterglow.pl' {
    assert "$src/_afterglow.pl" is_file
}

@test 'src has _afterglow.pl.bak' {
    assert "$src/_afterglow.pl.bak" is_file
}

@test 'src has _agentxtrap' {
    assert "$src/_agentxtrap" is_file
}

@test 'src has _agetty' {
    assert "$src/_agetty" is_file
}

@test 'src has _airbase-ng' {
    assert "$src/_airbase-ng" is_file
}

@test 'src has _aircrack-ng' {
    assert "$src/_aircrack-ng" is_file
}

@test 'src has _airdecap-ng' {
    assert "$src/_airdecap-ng" is_file
}

@test 'src has _airdecloak-ng' {
    assert "$src/_airdecloak-ng" is_file
}

@test 'src has _aireplay-ng' {
    assert "$src/_aireplay-ng" is_file
}

@test 'src has _airodump-ng' {
    assert "$src/_airodump-ng" is_file
}

@test 'src has _airolib-ng' {
    assert "$src/_airolib-ng" is_file
}

@test 'src has _airscan-discover' {
    assert "$src/_airscan-discover" is_file
}

@test 'src has _airserv-ng' {
    assert "$src/_airserv-ng" is_file
}

@test 'src has _airtun-ng' {
    assert "$src/_airtun-ng" is_file
}

@test 'src has _airventriloquist-ng' {
    assert "$src/_airventriloquist-ng" is_file
}

@test 'src has _aix2john' {
    assert "$src/_aix2john" is_file
}

@test 'src has _aj' {
    assert "$src/_aj" is_file
}

@test 'src has _aj5' {
    assert "$src/_aj5" is_file
}

@test 'src has _alder' {
    assert "$src/_alder" is_file
}

@test 'src has _aleph' {
    assert "$src/_aleph" is_file
}

@test 'src has _alien' {
    assert "$src/_alien" is_file
}

@test 'src has _alsa-info' {
    assert "$src/_alsa-info" is_file
}

@test 'src has _alsa-info.sh' {
    assert "$src/_alsa-info.sh" is_file
}

@test 'src has _alsa_out' {
    assert "$src/_alsa_out" is_file
}

@test 'src has _alsabat' {
    assert "$src/_alsabat" is_file
}

@test 'src has _alsaconf' {
    assert "$src/_alsaconf" is_file
}

@test 'src has _alsactl' {
    assert "$src/_alsactl" is_file
}

@test 'src has _alsaloop' {
    assert "$src/_alsaloop" is_file
}

@test 'src has _alsatplg' {
    assert "$src/_alsatplg" is_file
}

@test 'src has _alsaucm' {
    assert "$src/_alsaucm" is_file
}

@test 'src has _alt-java' {
    assert "$src/_alt-java" is_file
}

@test 'src has _alternatives' {
    assert "$src/_alternatives" is_file
}

@test 'src has _amap' {
    assert "$src/_amap" is_file
}

@test 'src has _amap6' {
    assert "$src/_amap6" is_file
}

@test 'src has _amapcrap' {
    assert "$src/_amapcrap" is_file
}

@test 'src has _amazon-ssm-agent' {
    assert "$src/_amazon-ssm-agent" is_file
}

@test 'src has _amcache.py' {
    assert "$src/_amcache.py" is_file
}

@test 'src has _amcache.py.bak' {
    assert "$src/_amcache.py.bak" is_file
}

@test 'src has _amidi' {
    assert "$src/_amidi" is_file
}

@test 'src has _amixer' {
    assert "$src/_amixer" is_file
}

@test 'src has _amm' {
    assert "$src/_amm" is_file
}

@test 'src has _amstex' {
    assert "$src/_amstex" is_file
}

@test 'src has _anaconda' {
    assert "$src/_anaconda" is_file
}

@test 'src has _anaconda-navigator' {
    assert "$src/_anaconda-navigator" is_file
}

@test 'src has _anacron' {
    assert "$src/_anacron" is_file
}

@test 'src has _analog' {
    assert "$src/_analog" is_file
}

@test 'src has _analyzeMFT.py' {
    assert "$src/_analyzeMFT.py" is_file
}

@test 'src has _andotp2john' {
    assert "$src/_andotp2john" is_file
}

@test 'src has _androiddeployqt' {
    assert "$src/_androiddeployqt" is_file
}

@test 'src has _androiddeployqt6' {
    assert "$src/_androiddeployqt6" is_file
}

@test 'src has _androiddump' {
    assert "$src/_androiddump" is_file
}

@test 'src has _androidtestrunner' {
    assert "$src/_androidtestrunner" is_file
}

@test 'src has _animalsay' {
    assert "$src/_animalsay" is_file
}

@test 'src has _animate-im6' {
    assert "$src/_animate-im6" is_file
}

@test 'src has _animate-im6.q16' {
    assert "$src/_animate-im6.q16" is_file
}

@test 'src has _ansible-test' {
    assert "$src/_ansible-test" is_file
}

@test 'src has _antRun' {
    assert "$src/_antRun" is_file
}

@test 'src has _any2djvu' {
    assert "$src/_any2djvu" is_file
}

@test 'src has _aomdec' {
    assert "$src/_aomdec" is_file
}

@test 'src has _aomenc' {
    assert "$src/_aomenc" is_file
}

@test 'src has _aoss' {
    assert "$src/_aoss" is_file
}

@test 'src has _aot-compile' {
    assert "$src/_aot-compile" is_file
}

@test 'src has _apache2' {
    assert "$src/_apache2" is_file
}

@test 'src has _apachectl' {
    assert "$src/_apachectl" is_file
}

@test 'src has _apfs_hfs_convert' {
    assert "$src/_apfs_hfs_convert" is_file
}

@test 'src has _apg' {
    assert "$src/_apg" is_file
}

@test 'src has _apgbfm' {
    assert "$src/_apgbfm" is_file
}

@test 'src has _apktool' {
    assert "$src/_apktool" is_file
}

@test 'src has _aplay' {
    assert "$src/_aplay" is_file
}

@test 'src has _aplaymidi' {
    assert "$src/_aplaymidi" is_file
}

@test 'src has _app-sso' {
    assert "$src/_app-sso" is_file
}

@test 'src has _apparmor_parser' {
    assert "$src/_apparmor_parser" is_file
}

@test 'src has _apparmor_status' {
    assert "$src/_apparmor_status" is_file
}

@test 'src has _apple_dump' {
    assert "$src/_apple_dump" is_file
}

@test 'src has _applesingle' {
    assert "$src/_applesingle" is_file
}

@test 'src has _applycal' {
    assert "$src/_applycal" is_file
}

@test 'src has _apport-bug' {
    assert "$src/_apport-bug" is_file
}

@test 'src has _apport-cli' {
    assert "$src/_apport-cli" is_file
}

@test 'src has _appres' {
    assert "$src/_appres" is_file
}

@test 'src has _appstream-builder' {
    assert "$src/_appstream-builder" is_file
}

@test 'src has _appstream-compose' {
    assert "$src/_appstream-compose" is_file
}

@test 'src has _appstream-util' {
    assert "$src/_appstream-util" is_file
}

@test 'src has _appstreamcli' {
    assert "$src/_appstreamcli" is_file
}

@test 'src has _apr-1-config' {
    assert "$src/_apr-1-config" is_file
}

@test 'src has _aprofutil' {
    assert "$src/_aprofutil" is_file
}

@test 'src has _apropos' {
    assert "$src/_apropos" is_file
}

@test 'src has _apropos.man-db' {
    assert "$src/_apropos.man-db" is_file
}

@test 'src has _apt-add-repository' {
    assert "$src/_apt-add-repository" is_file
}

@test 'src has _apt-clone' {
    assert "$src/_apt-clone" is_file
}

@test 'src has _apt-ftparchive' {
    assert "$src/_apt-ftparchive" is_file
}

@test 'src has _aptd' {
    assert "$src/_aptd" is_file
}

@test 'src has _aptdcon' {
    assert "$src/_aptdcon" is_file
}

@test 'src has _aptitude-create-state-bundle' {
    assert "$src/_aptitude-create-state-bundle" is_file
}

@test 'src has _aptitude-curses' {
    assert "$src/_aptitude-curses" is_file
}

@test 'src has _aptitude-run-state-bundle' {
    assert "$src/_aptitude-run-state-bundle" is_file
}

@test 'src has _apturl' {
    assert "$src/_apturl" is_file
}

@test 'src has _apu-1-config' {
    assert "$src/_apu-1-config" is_file
}

@test 'src has _ar' {
    assert "$src/_ar" is_file
}

@test 'src has _arachni_multi' {
    assert "$src/_arachni_multi" is_file
}

@test 'src has _arch' {
    assert "$src/_arch" is_file
}

@test 'src has _arecord' {
    assert "$src/_arecord" is_file
}

@test 'src has _arecordmidi' {
    assert "$src/_arecordmidi" is_file
}

@test 'src has _argon2' {
    assert "$src/_argon2" is_file
}

@test 'src has _aria_chk' {
    assert "$src/_aria_chk" is_file
}

@test 'src has _aria_dump_log' {
    assert "$src/_aria_dump_log" is_file
}

@test 'src has _aria_ftdump' {
    assert "$src/_aria_ftdump" is_file
}

@test 'src has _aria_pack' {
    assert "$src/_aria_pack" is_file
}

@test 'src has _aria_read_log' {
    assert "$src/_aria_read_log" is_file
}

@test 'src has _aria_s3_copy' {
    assert "$src/_aria_s3_copy" is_file
}

@test 'src has _arm-linux-gnueabihf-addr2line' {
    assert "$src/_arm-linux-gnueabihf-addr2line" is_file
}

@test 'src has _arm-linux-gnueabihf-ar' {
    assert "$src/_arm-linux-gnueabihf-ar" is_file
}

@test 'src has _arm-linux-gnueabihf-as' {
    assert "$src/_arm-linux-gnueabihf-as" is_file
}

@test 'src has _arm-linux-gnueabihf-cpp' {
    assert "$src/_arm-linux-gnueabihf-cpp" is_file
}

@test 'src has _arm-linux-gnueabihf-cpp-4.9' {
    assert "$src/_arm-linux-gnueabihf-cpp-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-dwp' {
    assert "$src/_arm-linux-gnueabihf-dwp" is_file
}

@test 'src has _arm-linux-gnueabihf-elfedit' {
    assert "$src/_arm-linux-gnueabihf-elfedit" is_file
}

@test 'src has _arm-linux-gnueabihf-g++' {
    assert "$src/_arm-linux-gnueabihf-g++" is_file
}

@test 'src has _arm-linux-gnueabihf-g++-4.9' {
    assert "$src/_arm-linux-gnueabihf-g++-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc' {
    assert "$src/_arm-linux-gnueabihf-gcc" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-4.9' {
    assert "$src/_arm-linux-gnueabihf-gcc-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-ar' {
    assert "$src/_arm-linux-gnueabihf-gcc-ar" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-ar-4.9' {
    assert "$src/_arm-linux-gnueabihf-gcc-ar-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-nm' {
    assert "$src/_arm-linux-gnueabihf-gcc-nm" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-nm-4.9' {
    assert "$src/_arm-linux-gnueabihf-gcc-nm-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-ranlib' {
    assert "$src/_arm-linux-gnueabihf-gcc-ranlib" is_file
}

@test 'src has _arm-linux-gnueabihf-gcc-ranlib-4.9' {
    assert "$src/_arm-linux-gnueabihf-gcc-ranlib-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-gcov' {
    assert "$src/_arm-linux-gnueabihf-gcov" is_file
}

@test 'src has _arm-linux-gnueabihf-gcov-4.9' {
    assert "$src/_arm-linux-gnueabihf-gcov-4.9" is_file
}

@test 'src has _arm-linux-gnueabihf-ld' {
    assert "$src/_arm-linux-gnueabihf-ld" is_file
}

@test 'src has _arm-linux-gnueabihf-ld.bfd' {
    assert "$src/_arm-linux-gnueabihf-ld.bfd" is_file
}

@test 'src has _arm-linux-gnueabihf-ld.gold' {
    assert "$src/_arm-linux-gnueabihf-ld.gold" is_file
}

@test 'src has _arm-linux-gnueabihf-nm' {
    assert "$src/_arm-linux-gnueabihf-nm" is_file
}

@test 'src has _arm-linux-gnueabihf-objcopy' {
    assert "$src/_arm-linux-gnueabihf-objcopy" is_file
}

@test 'src has _arm-linux-gnueabihf-objdump' {
    assert "$src/_arm-linux-gnueabihf-objdump" is_file
}

@test 'src has _arm-linux-gnueabihf-ranlib' {
    assert "$src/_arm-linux-gnueabihf-ranlib" is_file
}

@test 'src has _arm-linux-gnueabihf-readelf' {
    assert "$src/_arm-linux-gnueabihf-readelf" is_file
}

@test 'src has _arm-linux-gnueabihf-size' {
    assert "$src/_arm-linux-gnueabihf-size" is_file
}

@test 'src has _arm-linux-gnueabihf-strings' {
    assert "$src/_arm-linux-gnueabihf-strings" is_file
}

@test 'src has _arm-linux-gnueabihf-strip' {
    assert "$src/_arm-linux-gnueabihf-strip" is_file
}

@test 'src has _arm-unknown-linux-gnueabihf-pkg-config' {
    assert "$src/_arm-unknown-linux-gnueabihf-pkg-config" is_file
}

@test 'src has _arm2hpdl' {
    assert "$src/_arm2hpdl" is_file
}

@test 'src has _arp' {
    assert "$src/_arp" is_file
}

@test 'src has _arp-fingerprint' {
    assert "$src/_arp-fingerprint" is_file
}

@test 'src has _arp-scan' {
    assert "$src/_arp-scan" is_file
}

@test 'src has _arping' {
    assert "$src/_arping" is_file
}

@test 'src has _arptables' {
    assert "$src/_arptables" is_file
}

@test 'src has _arptables-nft' {
    assert "$src/_arptables-nft" is_file
}

@test 'src has _arptables-save' {
    assert "$src/_arptables-save" is_file
}

@test 'src has _as' {
    assert "$src/_as" is_file
}

@test 'src has _as10k1' {
    assert "$src/_as10k1" is_file
}

@test 'src has _asan_symbolize' {
    assert "$src/_asan_symbolize" is_file
}

@test 'src has _asan_symbolize-10' {
    assert "$src/_asan_symbolize-10" is_file
}

@test 'src has _asan_symbolize-4.0' {
    assert "$src/_asan_symbolize-4.0" is_file
}

@test 'src has _asan_symbolize-6.0' {
    assert "$src/_asan_symbolize-6.0" is_file
}

@test 'src has _asan_symbolize-7' {
    assert "$src/_asan_symbolize-7" is_file
}

@test 'src has _asan_symbolize-8' {
    assert "$src/_asan_symbolize-8" is_file
}

@test 'src has _asan_symbolize-9' {
    assert "$src/_asan_symbolize-9" is_file
}

@test 'src has _asc2log' {
    assert "$src/_asc2log" is_file
}

@test 'src has _ascii-xfr' {
    assert "$src/_ascii-xfr" is_file
}

@test 'src has _asciidoctor-safe' {
    assert "$src/_asciidoctor-safe" is_file
}

@test 'src has _asciitopgm' {
    assert "$src/_asciitopgm" is_file
}

@test 'src has _asctl' {
    assert "$src/_asctl" is_file
}

@test 'src has _aseqdump' {
    assert "$src/_aseqdump" is_file
}

@test 'src has _aseqnet' {
    assert "$src/_aseqnet" is_file
}

@test 'src has _aserver' {
    assert "$src/_aserver" is_file
}

@test 'src has _asf' {
    assert "$src/_asf" is_file
}

@test 'src has _asip-status.pl' {
    assert "$src/_asip-status.pl" is_file
}

@test 'src has _ask' {
    assert "$src/_ask" is_file
}

@test 'src has _asleap' {
    assert "$src/_asleap" is_file
}

@test 'src has _asn1Coding' {
    assert "$src/_asn1Coding" is_file
}

@test 'src has _asn1Decoding' {
    assert "$src/_asn1Decoding" is_file
}

@test 'src has _asn1Parser' {
    assert "$src/_asn1Parser" is_file
}

@test 'src has _aspcud' {
    assert "$src/_aspcud" is_file
}

@test 'src has _aspell' {
    assert "$src/_aspell" is_file
}

@test 'src has _aspell-autobuildhash' {
    assert "$src/_aspell-autobuildhash" is_file
}

@test 'src has _asr' {
    assert "$src/_asr" is_file
}

@test 'src has _astraceroute' {
    assert "$src/_astraceroute" is_file
}

@test 'src has _asy' {
    assert "$src/_asy" is_file
}

@test 'src has _async-json-rpc-server' {
    assert "$src/_async-json-rpc-server" is_file
}

@test 'src has _asysocksbrute' {
    assert "$src/_asysocksbrute" is_file
}

@test 'src has _asysocksportscan' {
    assert "$src/_asysocksportscan" is_file
}

@test 'src has _atftpd' {
    assert "$src/_atftpd" is_file
}

@test 'src has _ath3kfw' {
    assert "$src/_ath3kfw" is_file
}

@test 'src has _atk6-address6' {
    assert "$src/_atk6-address6" is_file
}

@test 'src has _atk6-alive6' {
    assert "$src/_atk6-alive6" is_file
}

@test 'src has _atk6-connect6' {
    assert "$src/_atk6-connect6" is_file
}

@test 'src has _atk6-connsplit6' {
    assert "$src/_atk6-connsplit6" is_file
}

@test 'src has _atk6-covert_send6' {
    assert "$src/_atk6-covert_send6" is_file
}

@test 'src has _atk6-covert_send6d' {
    assert "$src/_atk6-covert_send6d" is_file
}

@test 'src has _atk6-denial6' {
    assert "$src/_atk6-denial6" is_file
}

@test 'src has _atk6-detect-new-ip6' {
    assert "$src/_atk6-detect-new-ip6" is_file
}

@test 'src has _atk6-detect_sniffer6' {
    assert "$src/_atk6-detect_sniffer6" is_file
}

@test 'src has _atk6-dnsdict6' {
    assert "$src/_atk6-dnsdict6" is_file
}

@test 'src has _atk6-dnsrevenum6' {
    assert "$src/_atk6-dnsrevenum6" is_file
}

@test 'src has _atk6-dnssecwalk' {
    assert "$src/_atk6-dnssecwalk" is_file
}

@test 'src has _atk6-dos-new-ip6' {
    assert "$src/_atk6-dos-new-ip6" is_file
}

@test 'src has _atk6-dump_dhcp6' {
    assert "$src/_atk6-dump_dhcp6" is_file
}

@test 'src has _atk6-dump_router6' {
    assert "$src/_atk6-dump_router6" is_file
}

@test 'src has _atk6-exploit6' {
    assert "$src/_atk6-exploit6" is_file
}

@test 'src has _atk6-extract_hosts6' {
    assert "$src/_atk6-extract_hosts6" is_file
}

@test 'src has _atk6-extract_networks6' {
    assert "$src/_atk6-extract_networks6" is_file
}

@test 'src has _atk6-fake_advertise6' {
    assert "$src/_atk6-fake_advertise6" is_file
}

@test 'src has _atk6-fake_dhcps6' {
    assert "$src/_atk6-fake_dhcps6" is_file
}

@test 'src has _atk6-fake_dns6d' {
    assert "$src/_atk6-fake_dns6d" is_file
}

@test 'src has _atk6-fake_dnsupdate6' {
    assert "$src/_atk6-fake_dnsupdate6" is_file
}

@test 'src has _atk6-fake_mipv6' {
    assert "$src/_atk6-fake_mipv6" is_file
}

@test 'src has _atk6-fake_mld26' {
    assert "$src/_atk6-fake_mld26" is_file
}

@test 'src has _atk6-fake_mld6' {
    assert "$src/_atk6-fake_mld6" is_file
}

@test 'src has _atk6-fake_mldrouter6' {
    assert "$src/_atk6-fake_mldrouter6" is_file
}

@test 'src has _atk6-fake_pim6' {
    assert "$src/_atk6-fake_pim6" is_file
}

@test 'src has _atk6-fake_router26' {
    assert "$src/_atk6-fake_router26" is_file
}

@test 'src has _atk6-fake_router6' {
    assert "$src/_atk6-fake_router6" is_file
}

@test 'src has _atk6-fake_solicitate6' {
    assert "$src/_atk6-fake_solicitate6" is_file
}

@test 'src has _atk6-firewall6' {
    assert "$src/_atk6-firewall6" is_file
}

@test 'src has _atk6-flood_advertise6' {
    assert "$src/_atk6-flood_advertise6" is_file
}

@test 'src has _atk6-flood_dhcpc6' {
    assert "$src/_atk6-flood_dhcpc6" is_file
}

@test 'src has _atk6-flood_mld26' {
    assert "$src/_atk6-flood_mld26" is_file
}

@test 'src has _atk6-flood_mld6' {
    assert "$src/_atk6-flood_mld6" is_file
}

@test 'src has _atk6-flood_mldrouter6' {
    assert "$src/_atk6-flood_mldrouter6" is_file
}

@test 'src has _atk6-flood_redir6' {
    assert "$src/_atk6-flood_redir6" is_file
}

@test 'src has _atk6-flood_router26' {
    assert "$src/_atk6-flood_router26" is_file
}

@test 'src has _atk6-flood_router6' {
    assert "$src/_atk6-flood_router6" is_file
}

@test 'src has _atk6-flood_rs6' {
    assert "$src/_atk6-flood_rs6" is_file
}

@test 'src has _atk6-flood_solicitate6' {
    assert "$src/_atk6-flood_solicitate6" is_file
}

@test 'src has _atk6-flood_unreach6' {
    assert "$src/_atk6-flood_unreach6" is_file
}

@test 'src has _atk6-four2six' {
    assert "$src/_atk6-four2six" is_file
}

@test 'src has _atk6-fragmentation6' {
    assert "$src/_atk6-fragmentation6" is_file
}

@test 'src has _atk6-fragrouter6' {
    assert "$src/_atk6-fragrouter6" is_file
}

@test 'src has _atk6-fuzz_dhcpc6' {
    assert "$src/_atk6-fuzz_dhcpc6" is_file
}

@test 'src has _atk6-fuzz_dhcps6' {
    assert "$src/_atk6-fuzz_dhcps6" is_file
}

@test 'src has _atk6-fuzz_ip6' {
    assert "$src/_atk6-fuzz_ip6" is_file
}

@test 'src has _atk6-implementation6' {
    assert "$src/_atk6-implementation6" is_file
}

@test 'src has _atk6-implementation6d' {
    assert "$src/_atk6-implementation6d" is_file
}

@test 'src has _atk6-inject_alive6' {
    assert "$src/_atk6-inject_alive6" is_file
}

@test 'src has _atk6-inverse_lookup6' {
    assert "$src/_atk6-inverse_lookup6" is_file
}

@test 'src has _atk6-kill_router6' {
    assert "$src/_atk6-kill_router6" is_file
}

@test 'src has _atk6-ndpexhaust26' {
    assert "$src/_atk6-ndpexhaust26" is_file
}

@test 'src has _atk6-ndpexhaust6' {
    assert "$src/_atk6-ndpexhaust6" is_file
}

@test 'src has _atk6-node_query6' {
    assert "$src/_atk6-node_query6" is_file
}

@test 'src has _atk6-parasite6' {
    assert "$src/_atk6-parasite6" is_file
}

@test 'src has _atk6-passive_discovery6' {
    assert "$src/_atk6-passive_discovery6" is_file
}

@test 'src has _atk6-randicmp6' {
    assert "$src/_atk6-randicmp6" is_file
}

@test 'src has _atk6-redir6' {
    assert "$src/_atk6-redir6" is_file
}

@test 'src has _atk6-redirsniff6' {
    assert "$src/_atk6-redirsniff6" is_file
}

@test 'src has _atk6-rsmurf6' {
    assert "$src/_atk6-rsmurf6" is_file
}

@test 'src has _atk6-sendpees6' {
    assert "$src/_atk6-sendpees6" is_file
}

@test 'src has _atk6-sendpeesmp6' {
    assert "$src/_atk6-sendpeesmp6" is_file
}

@test 'src has _atk6-smurf6' {
    assert "$src/_atk6-smurf6" is_file
}

@test 'src has _atk6-thcping6' {
    assert "$src/_atk6-thcping6" is_file
}

@test 'src has _atk6-thcsyn6' {
    assert "$src/_atk6-thcsyn6" is_file
}

@test 'src has _atk6-toobig6' {
    assert "$src/_atk6-toobig6" is_file
}

@test 'src has _atk6-toobigsniff6' {
    assert "$src/_atk6-toobigsniff6" is_file
}

@test 'src has _atk6-trace6' {
    assert "$src/_atk6-trace6" is_file
}

@test 'src has _atlas' {
    assert "$src/_atlas" is_file
}

@test 'src has _atobm' {
    assert "$src/_atobm" is_file
}

@test 'src has _atomix' {
    assert "$src/_atomix" is_file
}

@test 'src has _atop' {
    assert "$src/_atop" is_file
}

@test 'src has _atop-2.2-3' {
    assert "$src/_atop-2.2-3" is_file
}

@test 'src has _atop-2.5.0' {
    assert "$src/_atop-2.5.0" is_file
}

@test 'src has _atop-2.6.0' {
    assert "$src/_atop-2.6.0" is_file
}

@test 'src has _atopcat' {
    assert "$src/_atopcat" is_file
}

@test 'src has _atopconvert' {
    assert "$src/_atopconvert" is_file
}

@test 'src has _atophide' {
    assert "$src/_atophide" is_file
}

@test 'src has _atopsar' {
    assert "$src/_atopsar" is_file
}

@test 'src has _atopsar-2.2-3' {
    assert "$src/_atopsar-2.2-3" is_file
}

@test 'src has _atopsar-2.5.0' {
    assert "$src/_atopsar-2.5.0" is_file
}

@test 'src has _atopsar-2.6.0' {
    assert "$src/_atopsar-2.6.0" is_file
}

@test 'src has _atos' {
    assert "$src/_atos" is_file
}

@test 'src has _atril' {
    assert "$src/_atril" is_file
}

@test 'src has _atril-previewer' {
    assert "$src/_atril-previewer" is_file
}

@test 'src has _atril-thumbnailer' {
    assert "$src/_atril-thumbnailer" is_file
}

@test 'src has _attr' {
    assert "$src/_attr" is_file
}

@test 'src has _aubrsync' {
    assert "$src/_aubrsync" is_file
}

@test 'src has _aubusy' {
    assert "$src/_aubusy" is_file
}

@test 'src has _audispd' {
    assert "$src/_audispd" is_file
}

@test 'src has _audit2allow' {
    assert "$src/_audit2allow" is_file
}

@test 'src has _audit2why' {
    assert "$src/_audit2why" is_file
}

@test 'src has _auditbeat' {
    assert "$src/_auditbeat" is_file
}

@test 'src has _auditctl' {
    assert "$src/_auditctl" is_file
}

@test 'src has _auditlogviewer' {
    assert "$src/_auditlogviewer" is_file
}

@test 'src has _auditreduce' {
    assert "$src/_auditreduce" is_file
}

@test 'src has _augmatch' {
    assert "$src/_augmatch" is_file
}

@test 'src has _augparse' {
    assert "$src/_augparse" is_file
}

@test 'src has _augtool' {
    assert "$src/_augtool" is_file
}

@test 'src has _aumvdown' {
    assert "$src/_aumvdown" is_file
}

@test 'src has _aureport' {
    assert "$src/_aureport" is_file
}

@test 'src has _ausearch' {
    assert "$src/_ausearch" is_file
}

@test 'src has _authconfig' {
    assert "$src/_authconfig" is_file
}

@test 'src has _authconfig-tui' {
    assert "$src/_authconfig-tui" is_file
}

@test 'src has _authorindex' {
    assert "$src/_authorindex" is_file
}

@test 'src has _autoconf' {
    assert "$src/_autoconf" is_file
}

@test 'src has _autoheader' {
    assert "$src/_autoheader" is_file
}

@test 'src has _autoinst' {
    assert "$src/_autoinst" is_file
}

@test 'src has _autom4te' {
    assert "$src/_autom4te" is_file
}

@test 'src has _automake' {
    assert "$src/_automake" is_file
}

@test 'src has _automake-1.13' {
    assert "$src/_automake-1.13" is_file
}

@test 'src has _automake-1.15' {
    assert "$src/_automake-1.15" is_file
}

@test 'src has _automake-1.16' {
    assert "$src/_automake-1.16" is_file
}

@test 'src has _automake-1.17' {
    assert "$src/_automake-1.17" is_file
}

@test 'src has _automater' {
    assert "$src/_automater" is_file
}

@test 'src has _automount' {
    assert "$src/_automount" is_file
}

@test 'src has _autopasswd' {
    assert "$src/_autopasswd" is_file
}

@test 'src has _autopep8' {
    assert "$src/_autopep8" is_file
}

@test 'src has _autopoint' {
    assert "$src/_autopoint" is_file
}

@test 'src has _autopsy' {
    assert "$src/_autopsy" is_file
}

@test 'src has _autoreconf' {
    assert "$src/_autoreconf" is_file
}

@test 'src has _autoscan' {
    assert "$src/_autoscan" is_file
}

@test 'src has _autossh' {
    assert "$src/_autossh" is_file
}

@test 'src has _autoupdate' {
    assert "$src/_autoupdate" is_file
}

@test 'src has _auval' {
    assert "$src/_auval" is_file
}

@test 'src has _auvaltool' {
    assert "$src/_auvaltool" is_file
}

@test 'src has _avahi-autoipd' {
    assert "$src/_avahi-autoipd" is_file
}

@test 'src has _avahi-browse' {
    assert "$src/_avahi-browse" is_file
}

@test 'src has _avahi-browse-domains' {
    assert "$src/_avahi-browse-domains" is_file
}

@test 'src has _avahi-daemon' {
    assert "$src/_avahi-daemon" is_file
}

@test 'src has _avahi-dnsconfd' {
    assert "$src/_avahi-dnsconfd" is_file
}

@test 'src has _avahi-publish' {
    assert "$src/_avahi-publish" is_file
}

@test 'src has _avahi-publish-address' {
    assert "$src/_avahi-publish-address" is_file
}

@test 'src has _avahi-publish-service' {
    assert "$src/_avahi-publish-service" is_file
}

@test 'src has _avahi-resolve' {
    assert "$src/_avahi-resolve" is_file
}

@test 'src has _avahi-resolve-address' {
    assert "$src/_avahi-resolve-address" is_file
}

@test 'src has _avahi-resolve-host-name' {
    assert "$src/_avahi-resolve-host-name" is_file
}

@test 'src has _avahi-set-host-name' {
    assert "$src/_avahi-set-host-name" is_file
}

@test 'src has _avconvert' {
    assert "$src/_avconvert" is_file
}

@test 'src has _avdmanager' {
    assert "$src/_avdmanager" is_file
}

@test 'src has _average' {
    assert "$src/_average" is_file
}

@test 'src has _aview' {
    assert "$src/_aview" is_file
}

@test 'src has _avifdec' {
    assert "$src/_avifdec" is_file
}

@test 'src has _avmediainfo' {
    assert "$src/_avmediainfo" is_file
}

@test 'src has _avmetareadwrite' {
    assert "$src/_avmetareadwrite" is_file
}

@test 'src has _avr-addr2line' {
    assert "$src/_avr-addr2line" is_file
}

@test 'src has _avr-ar' {
    assert "$src/_avr-ar" is_file
}

@test 'src has _avr-as' {
    assert "$src/_avr-as" is_file
}

@test 'src has _avr-c++' {
    assert "$src/_avr-c++" is_file
}

@test 'src has _avr-cpp' {
    assert "$src/_avr-cpp" is_file
}

@test 'src has _avr-elfedit' {
    assert "$src/_avr-elfedit" is_file
}

@test 'src has _avr-g++' {
    assert "$src/_avr-g++" is_file
}

@test 'src has _avr-gcc' {
    assert "$src/_avr-gcc" is_file
}

@test 'src has _avr-gcc-5.4.0' {
    assert "$src/_avr-gcc-5.4.0" is_file
}

@test 'src has _avr-gcc-ar' {
    assert "$src/_avr-gcc-ar" is_file
}

@test 'src has _avr-gcc-nm' {
    assert "$src/_avr-gcc-nm" is_file
}

@test 'src has _avr-gcc-ranlib' {
    assert "$src/_avr-gcc-ranlib" is_file
}

@test 'src has _avr-gcov' {
    assert "$src/_avr-gcov" is_file
}

@test 'src has _avr-gcov-tool' {
    assert "$src/_avr-gcov-tool" is_file
}

@test 'src has _avr-ld' {
    assert "$src/_avr-ld" is_file
}

@test 'src has _avr-ld.bfd' {
    assert "$src/_avr-ld.bfd" is_file
}

@test 'src has _avr-man' {
    assert "$src/_avr-man" is_file
}

@test 'src has _avr-nm' {
    assert "$src/_avr-nm" is_file
}

@test 'src has _avr-objcopy' {
    assert "$src/_avr-objcopy" is_file
}

@test 'src has _avr-objdump' {
    assert "$src/_avr-objdump" is_file
}

@test 'src has _avr-ranlib' {
    assert "$src/_avr-ranlib" is_file
}

@test 'src has _avr-readelf' {
    assert "$src/_avr-readelf" is_file
}

@test 'src has _avr-size' {
    assert "$src/_avr-size" is_file
}

@test 'src has _avr-strings' {
    assert "$src/_avr-strings" is_file
}

@test 'src has _avr-strip' {
    assert "$src/_avr-strip" is_file
}

@test 'src has _avrdude' {
    assert "$src/_avrdude" is_file
}

@test 'src has _avtest' {
    assert "$src/_avtest" is_file
}

@test 'src has _axel' {
    assert "$src/_axel" is_file
}

@test 'src has _axohelp' {
    assert "$src/_axohelp" is_file
}

@test 'src has _b2sum' {
    assert "$src/_b2sum" is_file
}

@test 'src has _b43-fwcutter' {
    assert "$src/_b43-fwcutter" is_file
}

@test 'src has _b58' {
    assert "$src/_b58" is_file
}

@test 'src has _babel-external-helpers' {
    assert "$src/_babel-external-helpers" is_file
}

@test 'src has _babel-node' {
    assert "$src/_babel-node" is_file
}

@test 'src has _backdoor-factory' {
    assert "$src/_backdoor-factory" is_file
}

@test 'src has _bak2dvd' {
    assert "$src/_bak2dvd" is_file
}

@test 'src has _baksmali' {
    assert "$src/_baksmali" is_file
}

@test 'src has _baloosearch' {
    assert "$src/_baloosearch" is_file
}

@test 'src has _balooshow' {
    assert "$src/_balooshow" is_file
}

@test 'src has _balsam' {
    assert "$src/_balsam" is_file
}

@test 'src has _baobab' {
    assert "$src/_baobab" is_file
}

@test 'src has _barnyard2' {
    assert "$src/_barnyard2" is_file
}

@test 'src has _base32' {
    assert "$src/_base32" is_file
}

@test 'src has _base64' {
    assert "$src/_base64" is_file
}

@test 'src has _base64conv' {
    assert "$src/_base64conv" is_file
}

@test 'src has _bashate' {
    assert "$src/_bashate" is_file
}

@test 'src has _bashdb' {
    assert "$src/_bashdb" is_file
}

@test 'src has _bat' {
    assert "$src/_bat" is_file
}

@test 'src has _bbox' {
    assert "$src/_bbox" is_file
}

@test 'src has _bcache-status' {
    assert "$src/_bcache-status" is_file
}

@test 'src has _bccmd' {
    assert "$src/_bccmd" is_file
}

@test 'src has _bchscheme' {
    assert "$src/_bchscheme" is_file
}

@test 'src has _bcmfw' {
    assert "$src/_bcmfw" is_file
}

@test 'src has _bcrypt' {
    assert "$src/_bcrypt" is_file
}

@test 'src has _bd_list_titles' {
    assert "$src/_bd_list_titles" is_file
}

@test 'src has _bdeinfo' {
    assert "$src/_bdeinfo" is_file
}

@test 'src has _bdemount' {
    assert "$src/_bdemount" is_file
}

@test 'src has _bdump' {
    assert "$src/_bdump" is_file
}

@test 'src has _behave' {
    assert "$src/_behave" is_file
}

@test 'src has _benchcmp' {
    assert "$src/_benchcmp" is_file
}

@test 'src has _benchmark_xl' {
    assert "$src/_benchmark_xl" is_file
}

@test 'src has _besside-ng' {
    assert "$src/_besside-ng" is_file
}

@test 'src has _bettercap' {
    assert "$src/_bettercap" is_file
}

@test 'src has _bf_compact' {
    assert "$src/_bf_compact" is_file
}

@test 'src has _bf_compact-bdb' {
    assert "$src/_bf_compact-bdb" is_file
}

@test 'src has _bhyve' {
    assert "$src/_bhyve" is_file
}

@test 'src has _bibexport' {
    assert "$src/_bibexport" is_file
}

@test 'src has _bibtex.original' {
    assert "$src/_bibtex.original" is_file
}

@test 'src has _bibtex8' {
    assert "$src/_bibtex8" is_file
}

@test 'src has _bibtexu' {
    assert "$src/_bibtexu" is_file
}

@test 'src has _bin2obj' {
    assert "$src/_bin2obj" is_file
}

@test 'src has _bing-bar-parser.pl' {
    assert "$src/_bing-bar-parser.pl" is_file
}

@test 'src has _binheader' {
    assert "$src/_binheader" is_file
}

@test 'src has _binhex' {
    assert "$src/_binhex" is_file
}

@test 'src has _binmiscctl' {
    assert "$src/_binmiscctl" is_file
}

@test 'src has _binpac' {
    assert "$src/_binpac" is_file
}

@test 'src has _binwalk' {
    assert "$src/_binwalk" is_file
}

@test 'src has _biosdecode' {
    assert "$src/_biosdecode" is_file
}

@test 'src has _biosdevname' {
    assert "$src/_biosdevname" is_file
}

@test 'src has _bioutil' {
    assert "$src/_bioutil" is_file
}

@test 'src has _bison' {
    assert "$src/_bison" is_file
}

@test 'src has _bison.yacc' {
    assert "$src/_bison.yacc" is_file
}

@test 'src has _bitesize.d' {
    assert "$src/_bitesize.d" is_file
}

@test 'src has _bitlocker2john' {
    assert "$src/_bitlocker2john" is_file
}

@test 'src has _bittwist' {
    assert "$src/_bittwist" is_file
}

@test 'src has _bittwiste' {
    assert "$src/_bittwiste" is_file
}

@test 'src has _bks2john' {
    assert "$src/_bks2john" is_file
}

@test 'src has _black-primer' {
    assert "$src/_black-primer" is_file
}

@test 'src has _bladeRF-cli' {
    assert "$src/_bladeRF-cli" is_file
}

@test 'src has _bladeRF-fsk' {
    assert "$src/_bladeRF-fsk" is_file
}

@test 'src has _bleachbit' {
    assert "$src/_bleachbit" is_file
}

@test 'src has _blender' {
    assert "$src/_blender" is_file
}

@test 'src has _bless' {
    assert "$src/_bless" is_file
}

@test 'src has _blkcalc' {
    assert "$src/_blkcalc" is_file
}

@test 'src has _blkcat' {
    assert "$src/_blkcat" is_file
}

@test 'src has _blkdeactivate' {
    assert "$src/_blkdeactivate" is_file
}

@test 'src has _blkdiscard' {
    assert "$src/_blkdiscard" is_file
}

@test 'src has _blkiomon' {
    assert "$src/_blkiomon" is_file
}

@test 'src has _blkls' {
    assert "$src/_blkls" is_file
}

@test 'src has _blkparse' {
    assert "$src/_blkparse" is_file
}

@test 'src has _blkstat' {
    assert "$src/_blkstat" is_file
}

@test 'src has _blktrace' {
    assert "$src/_blktrace" is_file
}

@test 'src has _blkzone' {
    assert "$src/_blkzone" is_file
}

@test 'src has _blockchain2john' {
    assert "$src/_blockchain2john" is_file
}

@test 'src has _blockdev' {
    assert "$src/_blockdev" is_file
}

@test 'src has _bluefish' {
    assert "$src/_bluefish" is_file
}

@test 'src has _bluelog' {
    assert "$src/_bluelog" is_file
}

@test 'src has _blueman-adapters' {
    assert "$src/_blueman-adapters" is_file
}

@test 'src has _blueman-applet' {
    assert "$src/_blueman-applet" is_file
}

@test 'src has _blueman-assistant' {
    assert "$src/_blueman-assistant" is_file
}

@test 'src has _blueman-browse' {
    assert "$src/_blueman-browse" is_file
}

@test 'src has _blueman-manager' {
    assert "$src/_blueman-manager" is_file
}

@test 'src has _blueman-sendto' {
    assert "$src/_blueman-sendto" is_file
}

@test 'src has _blueman-services' {
    assert "$src/_blueman-services" is_file
}

@test 'src has _blueman-tray' {
    assert "$src/_blueman-tray" is_file
}

@test 'src has _bluemoon' {
    assert "$src/_bluemoon" is_file
}

@test 'src has _bluesnarfer' {
    assert "$src/_bluesnarfer" is_file
}

@test 'src has _bluetooth-player' {
    assert "$src/_bluetooth-player" is_file
}

@test 'src has _bluetooth-sendto' {
    assert "$src/_bluetooth-sendto" is_file
}

@test 'src has _bluetooth-wizard' {
    assert "$src/_bluetooth-wizard" is_file
}

@test 'src has _bluetoothctl' {
    assert "$src/_bluetoothctl" is_file
}

@test 'src has _bluetoothd' {
    assert "$src/_bluetoothd" is_file
}

@test 'src has _bmc-config' {
    assert "$src/_bmc-config" is_file
}

@test 'src has _bmc-device' {
    assert "$src/_bmc-device" is_file
}

@test 'src has _bmc-info' {
    assert "$src/_bmc-info" is_file
}

@test 'src has _bmpblk_font' {
    assert "$src/_bmpblk_font" is_file
}

@test 'src has _bmpblk_utility' {
    assert "$src/_bmpblk_utility" is_file
}

@test 'src has _bmptopnm' {
    assert "$src/_bmptopnm" is_file
}

@test 'src has _bmtoa' {
    assert "$src/_bmtoa" is_file
}

@test 'src has _bneptest' {
    assert "$src/_bneptest" is_file
}

@test 'src has _bodyfile.pl' {
    assert "$src/_bodyfile.pl" is_file
}

@test 'src has _bogofilter-bdb' {
    assert "$src/_bogofilter-bdb" is_file
}

@test 'src has _bogolexer' {
    assert "$src/_bogolexer" is_file
}

@test 'src has _bogolexer-bdb' {
    assert "$src/_bogolexer-bdb" is_file
}

@test 'src has _bogotune-bdb' {
    assert "$src/_bogotune-bdb" is_file
}

@test 'src has _bogoupgrade' {
    assert "$src/_bogoupgrade" is_file
}

@test 'src has _bogoupgrade-bdb' {
    assert "$src/_bogoupgrade-bdb" is_file
}

@test 'src has _bogoutil-bdb' {
    assert "$src/_bogoutil-bdb" is_file
}

@test 'src has _boltctl' {
    assert "$src/_boltctl" is_file
}

@test 'src has _bomtool' {
    assert "$src/_bomtool" is_file
}

@test 'src has _bond2team' {
    assert "$src/_bond2team" is_file
}

@test 'src has _bootctl' {
    assert "$src/_bootctl" is_file
}

@test 'src has _bootpef' {
    assert "$src/_bootpef" is_file
}

@test 'src has _bootstrap-salt.sh' {
    assert "$src/_bootstrap-salt.sh" is_file
}

@test 'src has _bottle.py' {
    assert "$src/_bottle.py" is_file
}

@test 'src has _boxdumper' {
    assert "$src/_boxdumper" is_file
}

@test 'src has _boxes' {
    assert "$src/_boxes" is_file
}

@test 'src has _bpdb' {
    assert "$src/_bpdb" is_file
}

@test 'src has _bpfc' {
    assert "$src/_bpfc" is_file
}

@test 'src has _bpython-curses' {
    assert "$src/_bpython-curses" is_file
}

@test 'src has _bpython3-curses' {
    assert "$src/_bpython3-curses" is_file
}

@test 'src has _braa' {
    assert "$src/_braa" is_file
}

@test 'src has _brakeman' {
    assert "$src/_brakeman" is_file
}

@test 'src has _brasero' {
    assert "$src/_brasero" is_file
}

@test 'src has _brew' {
    assert "$src/_brew" is_file
}

@test 'src has _bridge' {
    assert "$src/_bridge" is_file
}

@test 'src has _bridgeDown.sh' {
    assert "$src/_bridgeDown.sh" is_file
}

@test 'src has _bridgeUp.sh' {
    assert "$src/_bridgeUp.sh" is_file
}

@test 'src has _brltty' {
    assert "$src/_brltty" is_file
}

@test 'src has _brltty-atb' {
    assert "$src/_brltty-atb" is_file
}

@test 'src has _brltty-ctb' {
    assert "$src/_brltty-ctb" is_file
}

@test 'src has _brltty-genkey' {
    assert "$src/_brltty-genkey" is_file
}

@test 'src has _brltty-hid' {
    assert "$src/_brltty-hid" is_file
}

@test 'src has _brltty-ktb' {
    assert "$src/_brltty-ktb" is_file
}

@test 'src has _brltty-setcaps' {
    assert "$src/_brltty-setcaps" is_file
}

@test 'src has _brltty-trtxt' {
    assert "$src/_brltty-trtxt" is_file
}

@test 'src has _brltty-ttb' {
    assert "$src/_brltty-ttb" is_file
}

@test 'src has _brltty-tune' {
    assert "$src/_brltty-tune" is_file
}

@test 'src has _broadwayd' {
    assert "$src/_broadwayd" is_file
}

@test 'src has _brotli' {
    assert "$src/_brotli" is_file
}

@test 'src has _browserpass' {
    assert "$src/_browserpass" is_file
}

@test 'src has _browserpass-darwin-arm64' {
    assert "$src/_browserpass-darwin-arm64" is_file
}

@test 'src has _browserpass-darwin64' {
    assert "$src/_browserpass-darwin64" is_file
}

@test 'src has _brutespray' {
    assert "$src/_brutespray" is_file
}

@test 'src has _bs2bconvert' {
    assert "$src/_bs2bconvert" is_file
}

@test 'src has _bs2bstream' {
    assert "$src/_bs2bstream" is_file
}

@test 'src has _bsdcpio' {
    assert "$src/_bsdcpio" is_file
}

@test 'src has _bshell' {
    assert "$src/_bshell" is_file
}

@test 'src has _bsnmpd' {
    assert "$src/_bsnmpd" is_file
}

@test 'src has _bsondump' {
    assert "$src/_bsondump" is_file
}

@test 'src has _bssh' {
    assert "$src/_bssh" is_file
}

@test 'src has _bt-adapter' {
    assert "$src/_bt-adapter" is_file
}

@test 'src has _bt-agent' {
    assert "$src/_bt-agent" is_file
}

@test 'src has _bt-device' {
    assert "$src/_bt-device" is_file
}

@test 'src has _bt-network' {
    assert "$src/_bt-network" is_file
}

@test 'src has _bt-obex' {
    assert "$src/_bt-obex" is_file
}

@test 'src has _btattach' {
    assert "$src/_btattach" is_file
}

@test 'src has _btcflash' {
    assert "$src/_btcflash" is_file
}

@test 'src has _btconfig' {
    assert "$src/_btconfig" is_file
}

@test 'src has _btest' {
    assert "$src/_btest" is_file
}

@test 'src has _btest-progress' {
    assert "$src/_btest-progress" is_file
}

@test 'src has _btest-rst-cmd' {
    assert "$src/_btest-rst-cmd" is_file
}

@test 'src has _btest-rst-pipe' {
    assert "$src/_btest-rst-pipe" is_file
}

@test 'src has _btgatt-client' {
    assert "$src/_btgatt-client" is_file
}

@test 'src has _btgatt-server' {
    assert "$src/_btgatt-server" is_file
}

@test 'src has _bthidcontrol' {
    assert "$src/_bthidcontrol" is_file
}

@test 'src has _bthidd' {
    assert "$src/_bthidd" is_file
}

@test 'src has _btinfo' {
    assert "$src/_btinfo" is_file
}

@test 'src has _btiotest' {
    assert "$src/_btiotest" is_file
}

@test 'src has _btmgmt' {
    assert "$src/_btmgmt" is_file
}

@test 'src has _btmon' {
    assert "$src/_btmon" is_file
}

@test 'src has _btop' {
    assert "$src/_btop" is_file
}

@test 'src has _btpand' {
    assert "$src/_btpand" is_file
}

@test 'src has _btpclient' {
    assert "$src/_btpclient" is_file
}

@test 'src has _btproxy' {
    assert "$src/_btproxy" is_file
}

@test 'src has _btrfs-convert' {
    assert "$src/_btrfs-convert" is_file
}

@test 'src has _btrfs-debug-tree' {
    assert "$src/_btrfs-debug-tree" is_file
}

@test 'src has _btrfs-image' {
    assert "$src/_btrfs-image" is_file
}

@test 'src has _btrfs-map-logical' {
    assert "$src/_btrfs-map-logical" is_file
}

@test 'src has _btrfs-select-super' {
    assert "$src/_btrfs-select-super" is_file
}

@test 'src has _btrfsck' {
    assert "$src/_btrfsck" is_file
}

@test 'src has _btrfstune' {
    assert "$src/_btrfstune" is_file
}

@test 'src has _btscanner' {
    assert "$src/_btscanner" is_file
}

@test 'src has _btsnoop' {
    assert "$src/_btsnoop" is_file
}

@test 'src has _buble' {
    assert "$src/_buble" is_file
}

@test 'src has _buddy-ng' {
    assert "$src/_buddy-ng" is_file
}

@test 'src has _bugpoint' {
    assert "$src/_bugpoint" is_file
}

@test 'src has _bugpoint-13' {
    assert "$src/_bugpoint-13" is_file
}

@test 'src has _bugpoint-16' {
    assert "$src/_bugpoint-16" is_file
}

@test 'src has _bugpoint-17' {
    assert "$src/_bugpoint-17" is_file
}

@test 'src has _bugpoint-19' {
    assert "$src/_bugpoint-19" is_file
}

@test 'src has _bugpoint-4.0' {
    assert "$src/_bugpoint-4.0" is_file
}

@test 'src has _bugpoint-6.0' {
    assert "$src/_bugpoint-6.0" is_file
}

@test 'src has _bugpoint-7' {
    assert "$src/_bugpoint-7" is_file
}

@test 'src has _bugpoint-8' {
    assert "$src/_bugpoint-8" is_file
}

@test 'src has _bugpoint-9' {
    assert "$src/_bugpoint-9" is_file
}

@test 'src has _bugpoint12' {
    assert "$src/_bugpoint12" is_file
}

@test 'src has _bugpoint60' {
    assert "$src/_bugpoint60" is_file
}

@test 'src has _build-jar-repository' {
    assert "$src/_build-jar-repository" is_file
}

@test 'src has _builder' {
    assert "$src/_builder" is_file
}

@test 'src has _built-by.sh' {
    assert "$src/_built-by.sh" is_file
}

@test 'src has _bulk_extractor' {
    assert "$src/_bulk_extractor" is_file
}

@test 'src has _bully' {
    assert "$src/_bully" is_file
}

@test 'src has _bundle2.7' {
    assert "$src/_bundle2.7" is_file
}

@test 'src has _bundler' {
    assert "$src/_bundler" is_file
}

@test 'src has _bundler2.7' {
    assert "$src/_bundler2.7" is_file
}

@test 'src has _bunyan' {
    assert "$src/_bunyan" is_file
}

@test 'src has _bunzip2' {
    assert "$src/_bunzip2" is_file
}

@test 'src has _busted' {
    assert "$src/_busted" is_file
}

@test 'src has _busybox' {
    assert "$src/_busybox" is_file
}

@test 'src has _bvnc' {
    assert "$src/_bvnc" is_file
}

@test 'src has _bwrap' {
    assert "$src/_bwrap" is_file
}

@test 'src has _byacc' {
    assert "$src/_byacc" is_file
}

@test 'src has _byebug' {
    assert "$src/_byebug" is_file
}

@test 'src has _bzcat' {
    assert "$src/_bzcat" is_file
}

@test 'src has _bzexe' {
    assert "$src/_bzexe" is_file
}

@test 'src has _bzless' {
    assert "$src/_bzless" is_file
}

@test 'src has _bzmore' {
    assert "$src/_bzmore" is_file
}

@test 'src has _bznew' {
    assert "$src/_bznew" is_file
}

@test 'src has _c++-10' {
    assert "$src/_c++-10" is_file
}

@test 'src has _c++-11' {
    assert "$src/_c++-11" is_file
}

@test 'src has _c++-12' {
    assert "$src/_c++-12" is_file
}

@test 'src has _c++-13' {
    assert "$src/_c++-13" is_file
}

@test 'src has _c++-14' {
    assert "$src/_c++-14" is_file
}

@test 'src has _c++-8' {
    assert "$src/_c++-8" is_file
}

@test 'src has _c++-9' {
    assert "$src/_c++-9" is_file
}

@test 'src has _c++10' {
    assert "$src/_c++10" is_file
}

@test 'src has _c++filt' {
    assert "$src/_c++filt" is_file
}

@test 'src has _c.pl' {
    assert "$src/_c.pl" is_file
}

@test 'src has _c44' {
    assert "$src/_c44" is_file
}

@test 'src has _c89' {
    assert "$src/_c89" is_file
}

@test 'src has _c89-gcc' {
    assert "$src/_c89-gcc" is_file
}

@test 'src has _c99' {
    assert "$src/_c99" is_file
}

@test 'src has _c99-gcc' {
    assert "$src/_c99-gcc" is_file
}

@test 'src has _c_rehash' {
    assert "$src/_c_rehash" is_file
}

@test 'src has _cabextract' {
    assert "$src/_cabextract" is_file
}

@test 'src has _cacaclock' {
    assert "$src/_cacaclock" is_file
}

@test 'src has _cache-build-session' {
    assert "$src/_cache-build-session" is_file
}

@test 'src has _cache_writeback' {
    assert "$src/_cache_writeback" is_file
}

@test 'src has _cachepic' {
    assert "$src/_cachepic" is_file
}

@test 'src has _cadaver' {
    assert "$src/_cadaver" is_file
}

@test 'src has _cairo-trace' {
    assert "$src/_cairo-trace" is_file
}

@test 'src has _caja' {
    assert "$src/_caja" is_file
}

@test 'src has _caja-actions-config-tool' {
    assert "$src/_caja-actions-config-tool" is_file
}

@test 'src has _caja-actions-new' {
    assert "$src/_caja-actions-new" is_file
}

@test 'src has _caja-actions-print' {
    assert "$src/_caja-actions-print" is_file
}

@test 'src has _caja-actions-run' {
    assert "$src/_caja-actions-run" is_file
}

@test 'src has _caja-connect-server' {
    assert "$src/_caja-connect-server" is_file
}

@test 'src has _caja-sendto' {
    assert "$src/_caja-sendto" is_file
}

@test 'src has _calc_stat' {
    assert "$src/_calc_stat" is_file
}

@test 'src has _calc_tickadj' {
    assert "$src/_calc_tickadj" is_file
}

@test 'src has _calibrate_ppa' {
    assert "$src/_calibrate_ppa" is_file
}

@test 'src has _callgrind_annotate' {
    assert "$src/_callgrind_annotate" is_file
}

@test 'src has _callgrind_control' {
    assert "$src/_callgrind_control" is_file
}

@test 'src has _camcontrol' {
    assert "$src/_camcontrol" is_file
}

@test 'src has _camdd' {
    assert "$src/_camdd" is_file
}

@test 'src has _camlp4' {
    assert "$src/_camlp4" is_file
}

@test 'src has _camlp4boot' {
    assert "$src/_camlp4boot" is_file
}

@test 'src has _camlp4o' {
    assert "$src/_camlp4o" is_file
}

@test 'src has _camlp4o.opt' {
    assert "$src/_camlp4o.opt" is_file
}

@test 'src has _camlp4of' {
    assert "$src/_camlp4of" is_file
}

@test 'src has _camlp4of.opt' {
    assert "$src/_camlp4of.opt" is_file
}

@test 'src has _camlp4oof' {
    assert "$src/_camlp4oof" is_file
}

@test 'src has _camlp4oof.opt' {
    assert "$src/_camlp4oof.opt" is_file
}

@test 'src has _camlp4orf' {
    assert "$src/_camlp4orf" is_file
}

@test 'src has _camlp4orf.opt' {
    assert "$src/_camlp4orf.opt" is_file
}

@test 'src has _camlp4r' {
    assert "$src/_camlp4r" is_file
}

@test 'src has _camlp4r.opt' {
    assert "$src/_camlp4r.opt" is_file
}

@test 'src has _camlp4rf' {
    assert "$src/_camlp4rf" is_file
}

@test 'src has _camlp4rf.opt' {
    assert "$src/_camlp4rf.opt" is_file
}

@test 'src has _can-calc-bit-timing' {
    assert "$src/_can-calc-bit-timing" is_file
}

@test 'src has _canberra-gtk-play' {
    assert "$src/_canberra-gtk-play" is_file
}

@test 'src has _canbusload' {
    assert "$src/_canbusload" is_file
}

@test 'src has _canbusutil' {
    assert "$src/_canbusutil" is_file
}

@test 'src has _candump' {
    assert "$src/_candump" is_file
}

@test 'src has _canfdtest' {
    assert "$src/_canfdtest" is_file
}

@test 'src has _cangen' {
    assert "$src/_cangen" is_file
}

@test 'src has _cangw' {
    assert "$src/_cangw" is_file
}

@test 'src has _canlogserver' {
    assert "$src/_canlogserver" is_file
}

@test 'src has _canplayer' {
    assert "$src/_canplayer" is_file
}

@test 'src has _cansequence' {
    assert "$src/_cansequence" is_file
}

@test 'src has _cansniffer' {
    assert "$src/_cansniffer" is_file
}

@test 'src has _capinfos' {
    assert "$src/_capinfos" is_file
}

@test 'src has _capsh' {
    assert "$src/_capsh" is_file
}

@test 'src has _capstats' {
    assert "$src/_capstats" is_file
}

@test 'src has _captoinfo' {
    assert "$src/_captoinfo" is_file
}

@test 'src has _card' {
    assert "$src/_card" is_file
}

@test 'src has _cardos-tool' {
    assert "$src/_cardos-tool" is_file
}

@test 'src has _cargo-add' {
    assert "$src/_cargo-add" is_file
}

@test 'src has _cargo-cache' {
    assert "$src/_cargo-cache" is_file
}

@test 'src has _cargo-clippy' {
    assert "$src/_cargo-clippy" is_file
}

@test 'src has _cargo-expand' {
    assert "$src/_cargo-expand" is_file
}

@test 'src has _cargo-fmt' {
    assert "$src/_cargo-fmt" is_file
}

@test 'src has _cargo-hack' {
    assert "$src/_cargo-hack" is_file
}

@test 'src has _cargo-install-update' {
    assert "$src/_cargo-install-update" is_file
}

@test 'src has _cargo-install-update-config' {
    assert "$src/_cargo-install-update-config" is_file
}

@test 'src has _cargo-rm' {
    assert "$src/_cargo-rm" is_file
}

@test 'src has _cargo-set-version' {
    assert "$src/_cargo-set-version" is_file
}

@test 'src has _cargo-upgrade' {
    assert "$src/_cargo-upgrade" is_file
}

@test 'src has _casper-getty' {
    assert "$src/_casper-getty" is_file
}

@test 'src has _casper-snapshot' {
    assert "$src/_casper-snapshot" is_file
}

@test 'src has _catMe' {
    assert "$src/_catMe" is_file
}

@test 'src has _catalina' {
    assert "$src/_catalina" is_file
}

@test 'src has _catatonit' {
    assert "$src/_catatonit" is_file
}

@test 'src has _catchsegv' {
    assert "$src/_catchsegv" is_file
}

@test 'src has _catimg' {
    assert "$src/_catimg" is_file
}

@test 'src has _catman' {
    assert "$src/_catman" is_file
}

@test 'src has _cb2ti3' {
    assert "$src/_cb2ti3" is_file
}

@test 'src has _cbfstool' {
    assert "$src/_cbfstool" is_file
}

@test 'src has _ccache-swig' {
    assert "$src/_ccache-swig" is_file
}

@test 'src has _ccache-swig3.0' {
    assert "$src/_ccache-swig3.0" is_file
}

@test 'src has _ccacheroast' {
    assert "$src/_ccacheroast" is_file
}

@test 'src has _ccat' {
    assert "$src/_ccat" is_file
}

@test 'src has _cccheck' {
    assert "$src/_cccheck" is_file
}

@test 'src has _ccdecrypt' {
    assert "$src/_ccdecrypt" is_file
}

@test 'src has _ccencrypt' {
    assert "$src/_ccencrypt" is_file
}

@test 'src has _ccguess' {
    assert "$src/_ccguess" is_file
}

@test 'src has _ccmake' {
    assert "$src/_ccmake" is_file
}

@test 'src has _ccmake3' {
    assert "$src/_ccmake3" is_file
}

@test 'src has _ccrewrite' {
    assert "$src/_ccrewrite" is_file
}

@test 'src has _ccrypt' {
    assert "$src/_ccrypt" is_file
}

@test 'src has _cct' {
    assert "$src/_cct" is_file
}

@test 'src has _cctiff' {
    assert "$src/_cctiff" is_file
}

@test 'src has _ccxxmake' {
    assert "$src/_ccxxmake" is_file
}

@test 'src has _ccze' {
    assert "$src/_ccze" is_file
}

@test 'src has _ccze-cssdump' {
    assert "$src/_ccze-cssdump" is_file
}

@test 'src has _cd-convert' {
    assert "$src/_cd-convert" is_file
}

@test 'src has _cd-create-profile' {
    assert "$src/_cd-create-profile" is_file
}

@test 'src has _cd-drive' {
    assert "$src/_cd-drive" is_file
}

@test 'src has _cd-fix-profile' {
    assert "$src/_cd-fix-profile" is_file
}

@test 'src has _cd-iccdump' {
    assert "$src/_cd-iccdump" is_file
}

@test 'src has _cd-info' {
    assert "$src/_cd-info" is_file
}

@test 'src has _cd-it8' {
    assert "$src/_cd-it8" is_file
}

@test 'src has _cd-paranoia' {
    assert "$src/_cd-paranoia" is_file
}

@test 'src has _cd-read' {
    assert "$src/_cd-read" is_file
}

@test 'src has _cdda-player' {
    assert "$src/_cdda-player" is_file
}

@test 'src has _cdda2wav' {
    assert "$src/_cdda2wav" is_file
}

@test 'src has _cddb_query' {
    assert "$src/_cddb_query" is_file
}

@test 'src has _cdiff' {
    assert "$src/_cdiff" is_file
}

@test 'src has _cdp' {
    assert "$src/_cdp" is_file
}

@test 'src has _cdparanoia' {
    assert "$src/_cdparanoia" is_file
}

@test 'src has _cdpsnarf' {
    assert "$src/_cdpsnarf" is_file
}

@test 'src has _cdr2raw' {
    assert "$src/_cdr2raw" is_file
}

@test 'src has _cdr2text' {
    assert "$src/_cdr2text" is_file
}

@test 'src has _cdr2xhtml' {
    assert "$src/_cdr2xhtml" is_file
}

@test 'src has _cdrecord' {
    assert "$src/_cdrecord" is_file
}

@test 'src has _cdrwtool' {
    assert "$src/_cdrwtool" is_file
}

@test 'src has _cec-compliance' {
    assert "$src/_cec-compliance" is_file
}

@test 'src has _cec-ctl' {
    assert "$src/_cec-ctl" is_file
}

@test 'src has _cec-follower' {
    assert "$src/_cec-follower" is_file
}

@test 'src has _celtdec' {
    assert "$src/_celtdec" is_file
}

@test 'src has _celtdec051' {
    assert "$src/_celtdec051" is_file
}

@test 'src has _celtenc' {
    assert "$src/_celtenc" is_file
}

@test 'src has _celtenc051' {
    assert "$src/_celtenc051" is_file
}

@test 'src has _censys' {
    assert "$src/_censys" is_file
}

@test 'src has _certbot' {
    assert "$src/_certbot" is_file
}

@test 'src has _certmaster-getcert' {
    assert "$src/_certmaster-getcert" is_file
}

@test 'src has _certmgr' {
    assert "$src/_certmgr" is_file
}

@test 'src has _certmonger' {
    assert "$src/_certmonger" is_file
}

@test 'src has _certutil' {
    assert "$src/_certutil" is_file
}

@test 'src has _cewl' {
    assert "$src/_cewl" is_file
}

@test 'src has _cfdisk' {
    assert "$src/_cfdisk" is_file
}

@test 'src has _cfftot1' {
    assert "$src/_cfftot1" is_file
}

@test 'src has _cfn-elect-cmd-leader' {
    assert "$src/_cfn-elect-cmd-leader" is_file
}

@test 'src has _cfn-get-metadata' {
    assert "$src/_cfn-get-metadata" is_file
}

@test 'src has _cfn-init' {
    assert "$src/_cfn-init" is_file
}

@test 'src has _cfn-send-cmd-event' {
    assert "$src/_cfn-send-cmd-event" is_file
}

@test 'src has _cfn-send-cmd-result' {
    assert "$src/_cfn-send-cmd-result" is_file
}

@test 'src has _cfn-signal' {
    assert "$src/_cfn-signal" is_file
}

@test 'src has _cfonts' {
    assert "$src/_cfonts" is_file
}

@test 'src has _cg_annotate' {
    assert "$src/_cg_annotate" is_file
}

@test 'src has _cg_diff' {
    assert "$src/_cg_diff" is_file
}

@test 'src has _cg_merge' {
    assert "$src/_cg_merge" is_file
}

@test 'src has _cgclassify' {
    assert "$src/_cgclassify" is_file
}

@test 'src has _cgclear' {
    assert "$src/_cgclear" is_file
}

@test 'src has _cgconfigparser' {
    assert "$src/_cgconfigparser" is_file
}

@test 'src has _cgcreate' {
    assert "$src/_cgcreate" is_file
}

@test 'src has _cgdb' {
    assert "$src/_cgdb" is_file
}

@test 'src has _cgdcbxd' {
    assert "$src/_cgdcbxd" is_file
}

@test 'src has _cgdelete' {
    assert "$src/_cgdelete" is_file
}

@test 'src has _cgexec' {
    assert "$src/_cgexec" is_file
}

@test 'src has _cgget' {
    assert "$src/_cgget" is_file
}

@test 'src has _cgi-fcgi' {
    assert "$src/_cgi-fcgi" is_file
}

@test 'src has _cgset' {
    assert "$src/_cgset" is_file
}

@test 'src has _cgsnapshot' {
    assert "$src/_cgsnapshot" is_file
}

@test 'src has _chage' {
    assert "$src/_chage" is_file
}

@test 'src has _chaosreader' {
    assert "$src/_chaosreader" is_file
}

@test 'src has _chardet' {
    assert "$src/_chardet" is_file
}

@test 'src has _chardet3' {
    assert "$src/_chardet3" is_file
}

@test 'src has _chardetect' {
    assert "$src/_chardetect" is_file
}

@test 'src has _chardetect3' {
    assert "$src/_chardetect3" is_file
}

@test 'src has _charmap' {
    assert "$src/_charmap" is_file
}

@test 'src has _chartex' {
    assert "$src/_chartex" is_file
}

@test 'src has _chartread' {
    assert "$src/_chartread" is_file
}

@test 'src has _chcon' {
    assert "$src/_chcon" is_file
}

@test 'src has _chcp' {
    assert "$src/_chcp" is_file
}

@test 'src has _chcpu' {
    assert "$src/_chcpu" is_file
}

@test 'src has _check-abi.sh' {
    assert "$src/_check-abi.sh" is_file
}

@test 'src has _check-binary-files' {
    assert "$src/_check-binary-files" is_file
}

@test 'src has _check-bios-nx' {
    assert "$src/_check-bios-nx" is_file
}

@test 'src has _check-language-support' {
    assert "$src/_check-language-support" is_file
}

@test 'src has _check-regexp' {
    assert "$src/_check-regexp" is_file
}

@test 'src has _check_hd' {
    assert "$src/_check_hd" is_file
}

@test 'src has _check_omp' {
    assert "$src/_check_omp" is_file
}

@test 'src has _checkcites' {
    assert "$src/_checkcites" is_file
}

@test 'src has _checklistings' {
    assert "$src/_checklistings" is_file
}

@test 'src has _checkmedia' {
    assert "$src/_checkmedia" is_file
}

@test 'src has _checkmodule' {
    assert "$src/_checkmodule" is_file
}

@test 'src has _checkupdates' {
    assert "$src/_checkupdates" is_file
}

@test 'src has _cheese' {
    assert "$src/_cheese" is_file
}

@test 'src has _cheetah-analyze' {
    assert "$src/_cheetah-analyze" is_file
}

@test 'src has _cheetah-compile' {
    assert "$src/_cheetah-compile" is_file
}

@test 'src has _chem' {
    assert "$src/_chem" is_file
}

@test 'src has _cherrytree' {
    assert "$src/_cherrytree" is_file
}

@test 'src has _chfn' {
    assert "$src/_chfn" is_file
}

@test 'src has _chgpasswd' {
    assert "$src/_chgpasswd" is_file
}

@test 'src has _chkfont' {
    assert "$src/_chkfont" is_file
}

@test 'src has _chkrootkit' {
    assert "$src/_chkrootkit" is_file
}

@test 'src has _chkstat' {
    assert "$src/_chkstat" is_file
}

@test 'src has _chktex' {
    assert "$src/_chktex" is_file
}

@test 'src has _chktrust' {
    assert "$src/_chktrust" is_file
}

@test 'src has _chkweb' {
    assert "$src/_chkweb" is_file
}

@test 'src has _chmcmd' {
    assert "$src/_chmcmd" is_file
}

@test 'src has _chmem' {
    assert "$src/_chmem" is_file
}

@test 'src has _chmls' {
    assert "$src/_chmls" is_file
}

@test 'src has _chntpw' {
    assert "$src/_chntpw" is_file
}

@test 'src has _choom' {
    assert "$src/_choom" is_file
}

@test 'src has _chpasswd' {
    assert "$src/_chpasswd" is_file
}

@test 'src has _chrome-gnome-shell' {
    assert "$src/_chrome-gnome-shell" is_file
}

@test 'src has _chromedriver' {
    assert "$src/_chromedriver" is_file
}

@test 'src has _chromium-browser' {
    assert "$src/_chromium-browser" is_file
}

@test 'src has _chroot' {
    assert "$src/_chroot" is_file
}

@test 'src has _chrp-addnote' {
    assert "$src/_chrp-addnote" is_file
}

@test 'src has _chrt' {
    assert "$src/_chrt" is_file
}

@test 'src has _chsh' {
    assert "$src/_chsh" is_file
}

@test 'src has _chunkymonkey.py' {
    assert "$src/_chunkymonkey.py" is_file
}

@test 'src has _chvt' {
    assert "$src/_chvt" is_file
}

@test 'src has _cifs.idmap' {
    assert "$src/_cifs.idmap" is_file
}

@test 'src has _cifs.upcall' {
    assert "$src/_cifs.upcall" is_file
}

@test 'src has _cifsdd' {
    assert "$src/_cifsdd" is_file
}

@test 'src has _cinnamon' {
    assert "$src/_cinnamon" is_file
}

@test 'src has _cinnamon-control-center' {
    assert "$src/_cinnamon-control-center" is_file
}

@test 'src has _cinnamon-desktop-editor' {
    assert "$src/_cinnamon-desktop-editor" is_file
}

@test 'src has _cinnamon-install-spice' {
    assert "$src/_cinnamon-install-spice" is_file
}

@test 'src has _cinnamon-launcher' {
    assert "$src/_cinnamon-launcher" is_file
}

@test 'src has _cinnamon-screensaver' {
    assert "$src/_cinnamon-screensaver" is_file
}

@test 'src has _cinnamon-screensaver-command' {
    assert "$src/_cinnamon-screensaver-command" is_file
}

@test 'src has _cinnamon-session' {
    assert "$src/_cinnamon-session" is_file
}

@test 'src has _cinnamon-session-cinnamon' {
    assert "$src/_cinnamon-session-cinnamon" is_file
}

@test 'src has _cinnamon-session-cinnamon2d' {
    assert "$src/_cinnamon-session-cinnamon2d" is_file
}

@test 'src has _cinnamon-session-quit' {
    assert "$src/_cinnamon-session-quit" is_file
}

@test 'src has _cinnamon2d' {
    assert "$src/_cinnamon2d" is_file
}

@test 'src has _ciphers.sh' {
    assert "$src/_ciphers.sh" is_file
}

@test 'src has _ciptool' {
    assert "$src/_ciptool" is_file
}

@test 'src has _circo' {
    assert "$src/_circo" is_file
}

@test 'src has _cisco-torch' {
    assert "$src/_cisco-torch" is_file
}

@test 'src has _ciscodump' {
    assert "$src/_ciscodump" is_file
}

@test 'src has _cistopbm' {
    assert "$src/_cistopbm" is_file
}

@test 'src has _cjb2' {
    assert "$src/_cjb2" is_file
}

@test 'src has _cjet' {
    assert "$src/_cjet" is_file
}

@test 'src has _cjk-gs-integrate' {
    assert "$src/_cjk-gs-integrate" is_file
}

@test 'src has _cjpeg' {
    assert "$src/_cjpeg" is_file
}

@test 'src has _cjs' {
    assert "$src/_cjs" is_file
}

@test 'src has _cjs-console' {
    assert "$src/_cjs-console" is_file
}

@test 'src has _cjxl' {
    assert "$src/_cjxl" is_file
}

@test 'src has _ck-history' {
    assert "$src/_ck-history" is_file
}

@test 'src has _ck-list-sessions' {
    assert "$src/_ck-list-sessions" is_file
}

@test 'src has _ckbcomp' {
    assert "$src/_ckbcomp" is_file
}

@test 'src has _ckksctl' {
    assert "$src/_ckksctl" is_file
}

@test 'src has _cksum' {
    assert "$src/_cksum" is_file
}

@test 'src has _clamav-config' {
    assert "$src/_clamav-config" is_file
}

@test 'src has _clamav-milter' {
    assert "$src/_clamav-milter" is_file
}

@test 'src has _clambc' {
    assert "$src/_clambc" is_file
}

@test 'src has _clamconf' {
    assert "$src/_clamconf" is_file
}

@test 'src has _clamd' {
    assert "$src/_clamd" is_file
}

@test 'src has _clamdscan' {
    assert "$src/_clamdscan" is_file
}

@test 'src has _clamdtop' {
    assert "$src/_clamdtop" is_file
}

@test 'src has _clamonacc' {
    assert "$src/_clamonacc" is_file
}

@test 'src has _clamscan' {
    assert "$src/_clamscan" is_file
}

@test 'src has _clamsubmit' {
    assert "$src/_clamsubmit" is_file
}

@test 'src has _clang++-12' {
    assert "$src/_clang++-12" is_file
}

@test 'src has _clang++-13' {
    assert "$src/_clang++-13" is_file
}

@test 'src has _clang++-18' {
    assert "$src/_clang++-18" is_file
}

@test 'src has _clang++-6.0' {
    assert "$src/_clang++-6.0" is_file
}

@test 'src has _clang++-7' {
    assert "$src/_clang++-7" is_file
}

@test 'src has _clang++-8' {
    assert "$src/_clang++-8" is_file
}

@test 'src has _clang++-9' {
    assert "$src/_clang++-9" is_file
}

@test 'src has _clang++12' {
    assert "$src/_clang++12" is_file
}

@test 'src has _clang++60' {
    assert "$src/_clang++60" is_file
}

@test 'src has _clang-10' {
    assert "$src/_clang-10" is_file
}

@test 'src has _clang-11' {
    assert "$src/_clang-11" is_file
}

@test 'src has _clang-12' {
    assert "$src/_clang-12" is_file
}

@test 'src has _clang-16' {
    assert "$src/_clang-16" is_file
}

@test 'src has _clang-17' {
    assert "$src/_clang-17" is_file
}

@test 'src has _clang-19' {
    assert "$src/_clang-19" is_file
}

@test 'src has _clang-4.0' {
    assert "$src/_clang-4.0" is_file
}

@test 'src has _clang-6.0' {
    assert "$src/_clang-6.0" is_file
}

@test 'src has _clang-7' {
    assert "$src/_clang-7" is_file
}

@test 'src has _clang-8' {
    assert "$src/_clang-8" is_file
}

@test 'src has _clang-9' {
    assert "$src/_clang-9" is_file
}

@test 'src has _clang-apply-replacements' {
    assert "$src/_clang-apply-replacements" is_file
}

@test 'src has _clang-apply-replacements12' {
    assert "$src/_clang-apply-replacements12" is_file
}

@test 'src has _clang-apply-replacements60' {
    assert "$src/_clang-apply-replacements60" is_file
}

@test 'src has _clang-change-namespace' {
    assert "$src/_clang-change-namespace" is_file
}

@test 'src has _clang-change-namespace12' {
    assert "$src/_clang-change-namespace12" is_file
}

@test 'src has _clang-change-namespace60' {
    assert "$src/_clang-change-namespace60" is_file
}

@test 'src has _clang-check' {
    assert "$src/_clang-check" is_file
}

@test 'src has _clang-check12' {
    assert "$src/_clang-check12" is_file
}

@test 'src has _clang-check60' {
    assert "$src/_clang-check60" is_file
}

@test 'src has _clang-cpp' {
    assert "$src/_clang-cpp" is_file
}

@test 'src has _clang-cpp-10' {
    assert "$src/_clang-cpp-10" is_file
}

@test 'src has _clang-cpp-11' {
    assert "$src/_clang-cpp-11" is_file
}

@test 'src has _clang-cpp-6.0' {
    assert "$src/_clang-cpp-6.0" is_file
}

@test 'src has _clang-cpp-7' {
    assert "$src/_clang-cpp-7" is_file
}

@test 'src has _clang-cpp-8' {
    assert "$src/_clang-cpp-8" is_file
}

@test 'src has _clang-cpp-9' {
    assert "$src/_clang-cpp-9" is_file
}

@test 'src has _clang-cpp12' {
    assert "$src/_clang-cpp12" is_file
}

@test 'src has _clang-cpp60' {
    assert "$src/_clang-cpp60" is_file
}

@test 'src has _clang-doc' {
    assert "$src/_clang-doc" is_file
}

@test 'src has _clang-doc12' {
    assert "$src/_clang-doc12" is_file
}

@test 'src has _clang-extdef-mapping' {
    assert "$src/_clang-extdef-mapping" is_file
}

@test 'src has _clang-extdef-mapping12' {
    assert "$src/_clang-extdef-mapping12" is_file
}

@test 'src has _clang-format' {
    assert "$src/_clang-format" is_file
}

@test 'src has _clang-format-diff.py' {
    assert "$src/_clang-format-diff.py" is_file
}

@test 'src has _clang-format12' {
    assert "$src/_clang-format12" is_file
}

@test 'src has _clang-format60' {
    assert "$src/_clang-format60" is_file
}

@test 'src has _clang-func-mapping' {
    assert "$src/_clang-func-mapping" is_file
}

@test 'src has _clang-func-mapping60' {
    assert "$src/_clang-func-mapping60" is_file
}

@test 'src has _clang-import-test' {
    assert "$src/_clang-import-test" is_file
}

@test 'src has _clang-import-test60' {
    assert "$src/_clang-import-test60" is_file
}

@test 'src has _clang-include-fixer' {
    assert "$src/_clang-include-fixer" is_file
}

@test 'src has _clang-include-fixer12' {
    assert "$src/_clang-include-fixer12" is_file
}

@test 'src has _clang-include-fixer60' {
    assert "$src/_clang-include-fixer60" is_file
}

@test 'src has _clang-move12' {
    assert "$src/_clang-move12" is_file
}

@test 'src has _clang-offload-bundler' {
    assert "$src/_clang-offload-bundler" is_file
}

@test 'src has _clang-offload-bundler12' {
    assert "$src/_clang-offload-bundler12" is_file
}

@test 'src has _clang-offload-bundler60' {
    assert "$src/_clang-offload-bundler60" is_file
}

@test 'src has _clang-offload-wrapper12' {
    assert "$src/_clang-offload-wrapper12" is_file
}

@test 'src has _clang-query' {
    assert "$src/_clang-query" is_file
}

@test 'src has _clang-query12' {
    assert "$src/_clang-query12" is_file
}

@test 'src has _clang-query60' {
    assert "$src/_clang-query60" is_file
}

@test 'src has _clang-refactor' {
    assert "$src/_clang-refactor" is_file
}

@test 'src has _clang-rename' {
    assert "$src/_clang-rename" is_file
}

@test 'src has _clang-rename12' {
    assert "$src/_clang-rename12" is_file
}

@test 'src has _clang-rename60' {
    assert "$src/_clang-rename60" is_file
}

@test 'src has _clang-reorder-fields' {
    assert "$src/_clang-reorder-fields" is_file
}

@test 'src has _clang-reorder-fields12' {
    assert "$src/_clang-reorder-fields12" is_file
}

@test 'src has _clang-reorder-fields60' {
    assert "$src/_clang-reorder-fields60" is_file
}

@test 'src has _clang-scan-deps' {
    assert "$src/_clang-scan-deps" is_file
}

@test 'src has _clang-scan-deps12' {
    assert "$src/_clang-scan-deps12" is_file
}

@test 'src has _clang-stat-cache' {
    assert "$src/_clang-stat-cache" is_file
}

@test 'src has _clang-tblgen' {
    assert "$src/_clang-tblgen" is_file
}

@test 'src has _clang-tidy' {
    assert "$src/_clang-tidy" is_file
}

@test 'src has _clang-tidy12' {
    assert "$src/_clang-tidy12" is_file
}

@test 'src has _clang-tidy60' {
    assert "$src/_clang-tidy60" is_file
}

@test 'src has _clang12' {
    assert "$src/_clang12" is_file
}

@test 'src has _clang60' {
    assert "$src/_clang60" is_file
}

@test 'src has _clangd' {
    assert "$src/_clangd" is_file
}

@test 'src has _clangd12' {
    assert "$src/_clangd12" is_file
}

@test 'src has _clangd60' {
    assert "$src/_clangd60" is_file
}

@test 'src has _clasp' {
    assert "$src/_clasp" is_file
}

@test 'src has _classifier_tester' {
    assert "$src/_classifier_tester" is_file
}

@test 'src has _clean-binary-files' {
    assert "$src/_clean-binary-files" is_file
}

@test 'src has _clearList.sh' {
    assert "$src/_clearList.sh" is_file
}

@test 'src has _clear_console' {
    assert "$src/_clear_console" is_file
}

@test 'src has _cli' {
    assert "$src/_cli" is_file
}

@test 'src has _cli-gacutil' {
    assert "$src/_cli-gacutil" is_file
}

@test 'src has _clingo' {
    assert "$src/_clingo" is_file
}

@test 'src has _clippy-driver' {
    assert "$src/_clippy-driver" is_file
}

@test 'src has _clisp' {
    assert "$src/_clisp" is_file
}

@test 'src has _clj' {
    assert "$src/_clj" is_file
}

@test 'src has _cllualatex' {
    assert "$src/_cllualatex" is_file
}

@test 'src has _clock' {
    assert "$src/_clock" is_file
}

@test 'src has _cloudup' {
    assert "$src/_cloudup" is_file
}

@test 'src has _cluster' {
    assert "$src/_cluster" is_file
}

@test 'src has _clusterd' {
    assert "$src/_clusterd" is_file
}

@test 'src has _clusterdb' {
    assert "$src/_clusterdb" is_file
}

@test 'src has _cluttex' {
    assert "$src/_cluttex" is_file
}

@test 'src has _clxelatex' {
    assert "$src/_clxelatex" is_file
}

@test 'src has _cmail' {
    assert "$src/_cmail" is_file
}

@test 'src has _cmake3' {
    assert "$src/_cmake3" is_file
}

@test 'src has _cmark' {
    assert "$src/_cmark" is_file
}

@test 'src has _cmatrix' {
    assert "$src/_cmatrix" is_file
}

@test 'src has _cmedb' {
    assert "$src/_cmedb" is_file
}

@test 'src has _cmis-client' {
    assert "$src/_cmis-client" is_file
}

@test 'src has _cmp' {
    assert "$src/_cmp" is_file
}

@test 'src has _cmsutil' {
    assert "$src/_cmsutil" is_file
}

@test 'src has _cmx2raw' {
    assert "$src/_cmx2raw" is_file
}

@test 'src has _cmx2text' {
    assert "$src/_cmx2text" is_file
}

@test 'src has _cntraining' {
    assert "$src/_cntraining" is_file
}

@test 'src has _codecctl' {
    assert "$src/_codecctl" is_file
}

@test 'src has _codium' {
    assert "$src/_codium" is_file
}

@test 'src has _col' {
    assert "$src/_col" is_file
}

@test 'src has _cola' {
    assert "$src/_cola" is_file
}

@test 'src has _colcrt' {
    assert "$src/_colcrt" is_file
}

@test 'src has _collectd' {
    assert "$src/_collectd" is_file
}

@test 'src has _collectdmon' {
    assert "$src/_collectdmon" is_file
}

@test 'src has _collink' {
    assert "$src/_collink" is_file
}

@test 'src has _colordiff' {
    assert "$src/_colordiff" is_file
}

@test 'src has _colormgr' {
    assert "$src/_colormgr" is_file
}

@test 'src has _colortest-256' {
    assert "$src/_colortest-256" is_file
}

@test 'src has _colprof' {
    assert "$src/_colprof" is_file
}

@test 'src has _colverify' {
    assert "$src/_colverify" is_file
}

@test 'src has _com.docker.cli' {
    assert "$src/_com.docker.cli" is_file
}

@test 'src has _combine_lang_model' {
    assert "$src/_combine_lang_model" is_file
}

@test 'src has _comedi_board_info' {
    assert "$src/_comedi_board_info" is_file
}

@test 'src has _comedi_calibrate' {
    assert "$src/_comedi_calibrate" is_file
}

@test 'src has _comedi_config' {
    assert "$src/_comedi_config" is_file
}

@test 'src has _comedi_soft_calibrate' {
    assert "$src/_comedi_soft_calibrate" is_file
}

@test 'src has _comedi_test' {
    assert "$src/_comedi_test" is_file
}

@test 'src has _command-not-found' {
    assert "$src/_command-not-found" is_file
}

@test 'src has _commix' {
    assert "$src/_commix" is_file
}

@test 'src has _compare-im6' {
    assert "$src/_compare-im6" is_file
}

@test 'src has _compare-im6.q16' {
    assert "$src/_compare-im6.q16" is_file
}

@test 'src has _compel' {
    assert "$src/_compel" is_file
}

@test 'src has _compileserver' {
    assert "$src/_compileserver" is_file
}

@test 'src has _compose' {
    assert "$src/_compose" is_file
}

@test 'src has _composeglyphs' {
    assert "$src/_composeglyphs" is_file
}

@test 'src has _composite-im6' {
    assert "$src/_composite-im6" is_file
}

@test 'src has _composite-im6.q16' {
    assert "$src/_composite-im6.q16" is_file
}

@test 'src has _compression_tool' {
    assert "$src/_compression_tool" is_file
}

@test 'src has _compsize' {
    assert "$src/_compsize" is_file
}

@test 'src has _compton' {
    assert "$src/_compton" is_file
}

@test 'src has _comsatd' {
    assert "$src/_comsatd" is_file
}

@test 'src has _conan_build_info' {
    assert "$src/_conan_build_info" is_file
}

@test 'src has _conan_server' {
    assert "$src/_conan_server" is_file
}

@test 'src has _conch3' {
    assert "$src/_conch3" is_file
}

@test 'src has _conda' {
    assert "$src/_conda" is_file
}

@test 'src has _conda-content-trust' {
    assert "$src/_conda-content-trust" is_file
}

@test 'src has _conda-pack' {
    assert "$src/_conda-pack" is_file
}

@test 'src has _config_data' {
    assert "$src/_config_data" is_file
}

@test 'src has _config_data5.18' {
    assert "$src/_config_data5.18" is_file
}

@test 'src has _config_data5.28' {
    assert "$src/_config_data5.28" is_file
}

@test 'src has _config_data5.30' {
    assert "$src/_config_data5.30" is_file
}

@test 'src has _config_data5.34' {
    assert "$src/_config_data5.34" is_file
}

@test 'src has _conky' {
    assert "$src/_conky" is_file
}

@test 'src has _conmon' {
    assert "$src/_conmon" is_file
}

@test 'src has _connect' {
    assert "$src/_connect" is_file
}

@test 'src has _conntrack' {
    assert "$src/_conntrack" is_file
}

@test 'src has _console-kit-daemon' {
    assert "$src/_console-kit-daemon" is_file
}

@test 'src has _contacts' {
    assert "$src/_contacts" is_file
}

@test 'src has _container-storage-setup' {
    assert "$src/_container-storage-setup" is_file
}

@test 'src has _containerd-shim' {
    assert "$src/_containerd-shim" is_file
}

@test 'src has _containerd-shim-crx-v2' {
    assert "$src/_containerd-shim-crx-v2" is_file
}

@test 'src has _containerd-shim-runc-v1' {
    assert "$src/_containerd-shim-runc-v1" is_file
}

@test 'src has _containerd-shim-runc-v2' {
    assert "$src/_containerd-shim-runc-v2" is_file
}

@test 'src has _containerd-stress' {
    assert "$src/_containerd-stress" is_file
}

@test 'src has _contributors' {
    assert "$src/_contributors" is_file
}

@test 'src has _convbkmk' {
    assert "$src/_convbkmk" is_file
}

@test 'src has _convert-dtsv0' {
    assert "$src/_convert-dtsv0" is_file
}

@test 'src has _convert-im6' {
    assert "$src/_convert-im6" is_file
}

@test 'src has _convert-im6.q16' {
    assert "$src/_convert-im6.q16" is_file
}

@test 'src has _convertquota' {
    assert "$src/_convertquota" is_file
}

@test 'src has _cookiecutter' {
    assert "$src/_cookiecutter" is_file
}

@test 'src has _corebuild' {
    assert "$src/_corebuild" is_file
}

@test 'src has _corelist' {
    assert "$src/_corelist" is_file
}

@test 'src has _corelist5.34' {
    assert "$src/_corelist5.34" is_file
}

@test 'src has _couch-config' {
    assert "$src/_couch-config" is_file
}

@test 'src has _couchdb' {
    assert "$src/_couchdb" is_file
}

@test 'src has _couchjs' {
    assert "$src/_couchjs" is_file
}

@test 'src has _cowpatty' {
    assert "$src/_cowpatty" is_file
}

@test 'src has _cpack' {
    assert "$src/_cpack" is_file
}

@test 'src has _cpack3' {
    assert "$src/_cpack3" is_file
}

@test 'src has _cpaldjvu' {
    assert "$src/_cpaldjvu" is_file
}

@test 'src has _cpan' {
    assert "$src/_cpan" is_file
}

@test 'src has _cpan2dist' {
    assert "$src/_cpan2dist" is_file
}

@test 'src has _cpan5.34' {
    assert "$src/_cpan5.34" is_file
}

@test 'src has _cpan5.36-aarch64-linux-gnu' {
    assert "$src/_cpan5.36-aarch64-linux-gnu" is_file
}

@test 'src has _cpan5.38-aarch64-linux-gnu' {
    assert "$src/_cpan5.38-aarch64-linux-gnu" is_file
}

@test 'src has _cpan5.40-aarch64-linux-gnu' {
    assert "$src/_cpan5.40-aarch64-linux-gnu" is_file
}

@test 'src has _cph' {
    assert "$src/_cph" is_file
}

@test 'src has _cpio' {
    assert "$src/_cpio" is_file
}

@test 'src has _cpp' {
    assert "$src/_cpp" is_file
}

@test 'src has _cpp-10' {
    assert "$src/_cpp-10" is_file
}

@test 'src has _cpp-11' {
    assert "$src/_cpp-11" is_file
}

@test 'src has _cpp-12' {
    assert "$src/_cpp-12" is_file
}

@test 'src has _cpp-13' {
    assert "$src/_cpp-13" is_file
}

@test 'src has _cpp-14' {
    assert "$src/_cpp-14" is_file
}

@test 'src has _cpp-4.9' {
    assert "$src/_cpp-4.9" is_file
}

@test 'src has _cpp-5' {
    assert "$src/_cpp-5" is_file
}

@test 'src has _cpp-6' {
    assert "$src/_cpp-6" is_file
}

@test 'src has _cpp-7' {
    assert "$src/_cpp-7" is_file
}

@test 'src has _cpp-8' {
    assert "$src/_cpp-8" is_file
}

@test 'src has _cpp-9' {
    assert "$src/_cpp-9" is_file
}

@test 'src has _cpp10' {
    assert "$src/_cpp10" is_file
}

@test 'src has _cpp2html' {
    assert "$src/_cpp2html" is_file
}

@test 'src has _cppo' {
    assert "$src/_cppo" is_file
}

@test 'src has _cprepair' {
    assert "$src/_cprepair" is_file
}

@test 'src has _cpu_profiler.d' {
    assert "$src/_cpu_profiler.d" is_file
}

@test 'src has _cpuset' {
    assert "$src/_cpuset" is_file
}

@test 'src has _cpuwalk.d' {
    assert "$src/_cpuwalk.d" is_file
}

@test 'src has _cqlsh' {
    assert "$src/_cqlsh" is_file
}

@test 'src has _cqlsh.py' {
    assert "$src/_cqlsh.py" is_file
}

@test 'src has _crackle' {
    assert "$src/_crackle" is_file
}

@test 'src has _cracklib-format' {
    assert "$src/_cracklib-format" is_file
}

@test 'src has _cracklib-packer' {
    assert "$src/_cracklib-packer" is_file
}

@test 'src has _cracklib-unpacker' {
    assert "$src/_cracklib-unpacker" is_file
}

@test 'src has _crash' {
    assert "$src/_crash" is_file
}

@test 'src has _creatbyproc.d' {
    assert "$src/_creatbyproc.d" is_file
}

@test 'src has _create-cracklib-dict' {
    assert "$src/_create-cracklib-dict" is_file
}

@test 'src has _create-image' {
    assert "$src/_create-image" is_file
}

@test 'src has _create-jar-links' {
    assert "$src/_create-jar-links" is_file
}

@test 'src has _create-munge-key' {
    assert "$src/_create-munge-key" is_file
}

@test 'src has _create-react-app' {
    assert "$src/_create-react-app" is_file
}

@test 'src has _createScriptButDontOpenSublime.sh' {
    assert "$src/_createScriptButDontOpenSublime.sh" is_file
}

@test 'src has _createTextFile.sh' {
    assert "$src/_createTextFile.sh" is_file
}

@test 'src has _createdb' {
    assert "$src/_createdb" is_file
}

@test 'src has _createlang' {
    assert "$src/_createlang" is_file
}

@test 'src has _createmodule.py' {
    assert "$src/_createmodule.py" is_file
}

@test 'src has _createrepo_c' {
    assert "$src/_createrepo_c" is_file
}

@test 'src has _credentials-preferences' {
    assert "$src/_credentials-preferences" is_file
}

@test 'src has _crictl' {
    assert "$src/_crictl" is_file
}

@test 'src has _critcl' {
    assert "$src/_critcl" is_file
}

@test 'src has _criu' {
    assert "$src/_criu" is_file
}

@test 'src has _crlupdate' {
    assert "$src/_crlupdate" is_file
}

@test 'src has _crlutil' {
    assert "$src/_crlutil" is_file
}

@test 'src has _croco-0.6-config' {
    assert "$src/_croco-0.6-config" is_file
}

@test 'src has _cron' {
    assert "$src/_cron" is_file
}

@test 'src has _crond' {
    assert "$src/_crond" is_file
}

@test 'src has _crtools' {
    assert "$src/_crtools" is_file
}

@test 'src has _crun' {
    assert "$src/_crun" is_file
}

@test 'src has _cryfs-unmount' {
    assert "$src/_cryfs-unmount" is_file
}

@test 'src has _crypt' {
    assert "$src/_crypt" is_file
}

@test 'src has _cryptocurrency' {
    assert "$src/_cryptocurrency" is_file
}

@test 'src has _cryptoflex-tool' {
    assert "$src/_cryptoflex-tool" is_file
}

@test 'src has _cryptpw' {
    assert "$src/_cryptpw" is_file
}

@test 'src has _cryptsetup-reencrypt' {
    assert "$src/_cryptsetup-reencrypt" is_file
}

@test 'src has _crywrap' {
    assert "$src/_crywrap" is_file
}

@test 'src has _csd-a11-keyboard' {
    assert "$src/_csd-a11-keyboard" is_file
}

@test 'src has _csd-a11y-settings' {
    assert "$src/_csd-a11y-settings" is_file
}

@test 'src has _csd-automount' {
    assert "$src/_csd-automount" is_file
}

@test 'src has _csd-background' {
    assert "$src/_csd-background" is_file
}

@test 'src has _csd-backlight-helper' {
    assert "$src/_csd-backlight-helper" is_file
}

@test 'src has _csd-clipboard' {
    assert "$src/_csd-clipboard" is_file
}

@test 'src has _csd-color' {
    assert "$src/_csd-color" is_file
}

@test 'src has _csd-cursor' {
    assert "$src/_csd-cursor" is_file
}

@test 'src has _csd-dummy' {
    assert "$src/_csd-dummy" is_file
}

@test 'src has _csd-housekeeping' {
    assert "$src/_csd-housekeeping" is_file
}

@test 'src has _csd-keyboard' {
    assert "$src/_csd-keyboard" is_file
}

@test 'src has _csd-list-wacom' {
    assert "$src/_csd-list-wacom" is_file
}

@test 'src has _csd-media-keys' {
    assert "$src/_csd-media-keys" is_file
}

@test 'src has _csd-mouse' {
    assert "$src/_csd-mouse" is_file
}

@test 'src has _csd-orientation' {
    assert "$src/_csd-orientation" is_file
}

@test 'src has _csd-power' {
    assert "$src/_csd-power" is_file
}

@test 'src has _csd-print-notifications' {
    assert "$src/_csd-print-notifications" is_file
}

@test 'src has _csd-screensaver-proxy' {
    assert "$src/_csd-screensaver-proxy" is_file
}

@test 'src has _csd-smartcard' {
    assert "$src/_csd-smartcard" is_file
}

@test 'src has _csd-sound' {
    assert "$src/_csd-sound" is_file
}

@test 'src has _csd-wacom' {
    assert "$src/_csd-wacom" is_file
}

@test 'src has _csd-wacom-osd' {
    assert "$src/_csd-wacom-osd" is_file
}

@test 'src has _csd-xrandr' {
    assert "$src/_csd-xrandr" is_file
}

@test 'src has _csd-xsettings' {
    assert "$src/_csd-xsettings" is_file
}

@test 'src has _csepdjvu' {
    assert "$src/_csepdjvu" is_file
}

@test 'src has _csfdiagnose' {
    assert "$src/_csfdiagnose" is_file
}

@test 'src has _csh' {
    assert "$src/_csh" is_file
}

@test 'src has _cslatex' {
    assert "$src/_cslatex" is_file
}

@test 'src has _cspctl' {
    assert "$src/_cspctl" is_file
}

@test 'src has _csplain' {
    assert "$src/_csplain" is_file
}

@test 'src has _css-beautify' {
    assert "$src/_css-beautify" is_file
}

@test 'src has _csv2ods' {
    assert "$src/_csv2ods" is_file
}

@test 'src has _ctags' {
    assert "$src/_ctags" is_file
}

@test 'src has _ctags-exuberant' {
    assert "$src/_ctags-exuberant" is_file
}

@test 'src has _ctags.emacs' {
    assert "$src/_ctags.emacs" is_file
}

@test 'src has _ctan-o-mat' {
    assert "$src/_ctan-o-mat" is_file
}

@test 'src has _ctangle' {
    assert "$src/_ctangle" is_file
}

@test 'src has _ctest' {
    assert "$src/_ctest" is_file
}

@test 'src has _ctest3' {
    assert "$src/_ctest3" is_file
}

@test 'src has _ctie' {
    assert "$src/_ctie" is_file
}

@test 'src has _ctladm' {
    assert "$src/_ctladm" is_file
}

@test 'src has _ctop' {
    assert "$src/_ctop" is_file
}

@test 'src has _ctr' {
    assert "$src/_ctr" is_file
}

@test 'src has _ctrlaltdel' {
    assert "$src/_ctrlaltdel" is_file
}

@test 'src has _ctstat' {
    assert "$src/_ctstat" is_file
}

@test 'src has _cucumber' {
    assert "$src/_cucumber" is_file
}

@test 'src has _cudf2lp' {
    assert "$src/_cudf2lp" is_file
}

@test 'src has _cue2toc' {
    assert "$src/_cue2toc" is_file
}

@test 'src has _cups-browsed' {
    assert "$src/_cups-browsed" is_file
}

@test 'src has _cups-genppd.5.2' {
    assert "$src/_cups-genppd.5.2" is_file
}

@test 'src has _cups-genppdupdate' {
    assert "$src/_cups-genppdupdate" is_file
}

@test 'src has _cupsaddsmb' {
    assert "$src/_cupsaddsmb" is_file
}

@test 'src has _cupsctl' {
    assert "$src/_cupsctl" is_file
}

@test 'src has _cupsd' {
    assert "$src/_cupsd" is_file
}

@test 'src has _cupsfilter' {
    assert "$src/_cupsfilter" is_file
}

@test 'src has _cupstestdsc' {
    assert "$src/_cupstestdsc" is_file
}

@test 'src has _cupstestppd' {
    assert "$src/_cupstestppd" is_file
}

@test 'src has _curl-config' {
    assert "$src/_curl-config" is_file
}

@test 'src has _currency' {
    assert "$src/_currency" is_file
}

@test 'src has _curvetun' {
    assert "$src/_curvetun" is_file
}

@test 'src has _cutycapt' {
    assert "$src/_cutycapt" is_file
}

@test 'src has _cvdb' {
    assert "$src/_cvdb" is_file
}

@test 'src has _cvdbset' {
    assert "$src/_cvdbset" is_file
}

@test 'src has _cvmkdir' {
    assert "$src/_cvmkdir" is_file
}

@test 'src has _cvsps' {
    assert "$src/_cvsps" is_file
}

@test 'src has _cvss_calculator' {
    assert "$src/_cvss_calculator" is_file
}

@test 'src has _cvt' {
    assert "$src/_cvt" is_file
}

@test 'src has _cvtsudoers' {
    assert "$src/_cvtsudoers" is_file
}

@test 'src has _cweave' {
    assert "$src/_cweave" is_file
}

@test 'src has _cx18-ctl' {
    assert "$src/_cx18-ctl" is_file
}

@test 'src has _cybox-validator.py' {
    assert "$src/_cybox-validator.py" is_file
}

@test 'src has _cygdb' {
    assert "$src/_cygdb" is_file
}

@test 'src has _cygdb3' {
    assert "$src/_cygdb3" is_file
}

@test 'src has _cymothoa' {
    assert "$src/_cymothoa" is_file
}

@test 'src has _cython' {
    assert "$src/_cython" is_file
}

@test 'src has _cython3' {
    assert "$src/_cython3" is_file
}

@test 'src has _cythonize' {
    assert "$src/_cythonize" is_file
}

@test 'src has _d2j-apk-sign' {
    assert "$src/_d2j-apk-sign" is_file
}

@test 'src has _d2j-asm-verify' {
    assert "$src/_d2j-asm-verify" is_file
}

@test 'src has _d2j-baksmali' {
    assert "$src/_d2j-baksmali" is_file
}

@test 'src has _d2j-decrypt-string' {
    assert "$src/_d2j-decrypt-string" is_file
}

@test 'src has _d2j-dex-recompute-checksum' {
    assert "$src/_d2j-dex-recompute-checksum" is_file
}

@test 'src has _d2j-dex-weaver' {
    assert "$src/_d2j-dex-weaver" is_file
}

@test 'src has _d2j-dex2jar' {
    assert "$src/_d2j-dex2jar" is_file
}

@test 'src has _d2j-dex2smali' {
    assert "$src/_d2j-dex2smali" is_file
}

@test 'src has _d2j-init-deobf' {
    assert "$src/_d2j-init-deobf" is_file
}

@test 'src has _d2j-jar-access' {
    assert "$src/_d2j-jar-access" is_file
}

@test 'src has _d2j-jar-remap' {
    assert "$src/_d2j-jar-remap" is_file
}

@test 'src has _d2j-jar-weaver' {
    assert "$src/_d2j-jar-weaver" is_file
}

@test 'src has _d2j-jar2dex' {
    assert "$src/_d2j-jar2dex" is_file
}

@test 'src has _d2j-jar2jasmin' {
    assert "$src/_d2j-jar2jasmin" is_file
}

@test 'src has _d2j-jasmin2jar' {
    assert "$src/_d2j-jasmin2jar" is_file
}

@test 'src has _d2j-smali' {
    assert "$src/_d2j-smali" is_file
}

@test 'src has _d2j-std-apk' {
    assert "$src/_d2j-std-apk" is_file
}

@test 'src has _d2j_invoke' {
    assert "$src/_d2j_invoke" is_file
}

@test 'src has _d8' {
    assert "$src/_d8" is_file
}

@test 'src has _danetool' {
    assert "$src/_danetool" is_file
}

@test 'src has _dappprof' {
    assert "$src/_dappprof" is_file
}

@test 'src has _dapptrace' {
    assert "$src/_dapptrace" is_file
}

@test 'src has _dart' {
    assert "$src/_dart" is_file
}

@test 'src has _dart2js' {
    assert "$src/_dart2js" is_file
}

@test 'src has _dartanalyzer' {
    assert "$src/_dartanalyzer" is_file
}

@test 'src has _dartaotruntime' {
    assert "$src/_dartaotruntime" is_file
}

@test 'src has _dartdevc' {
    assert "$src/_dartdevc" is_file
}

@test 'src has _dartdevk' {
    assert "$src/_dartdevk" is_file
}

@test 'src has _dartdoc' {
    assert "$src/_dartdoc" is_file
}

@test 'src has _dartfmt' {
    assert "$src/_dartfmt" is_file
}

@test 'src has _darwinup' {
    assert "$src/_darwinup" is_file
}

@test 'src has _dasher' {
    assert "$src/_dasher" is_file
}

@test 'src has _data2inc' {
    assert "$src/_data2inc" is_file
}

@test 'src has _database-statistics-sqlite' {
    assert "$src/_database-statistics-sqlite" is_file
}

@test 'src has _datacopy' {
    assert "$src/_datacopy" is_file
}

@test 'src has _datagrip' {
    assert "$src/_datagrip" is_file
}

@test 'src has _datamash' {
    assert "$src/_datamash" is_file
}

@test 'src has _datatool2bib' {
    assert "$src/_datatool2bib" is_file
}

@test 'src has _dav1d' {
    assert "$src/_dav1d" is_file
}

@test 'src has _davtest' {
    assert "$src/_davtest" is_file
}

@test 'src has _dbd' {
    assert "$src/_dbd" is_file
}

@test 'src has _dbiprof' {
    assert "$src/_dbiprof" is_file
}

@test 'src has _dbiprof5.18' {
    assert "$src/_dbiprof5.18" is_file
}

@test 'src has _dbiprof5.30' {
    assert "$src/_dbiprof5.30" is_file
}

@test 'src has _dbiprof5.34' {
    assert "$src/_dbiprof5.34" is_file
}

@test 'src has _dbiproxy' {
    assert "$src/_dbiproxy" is_file
}

@test 'src has _dbmmanage' {
    assert "$src/_dbmmanage" is_file
}

@test 'src has _dbpmda' {
    assert "$src/_dbpmda" is_file
}

@test 'src has _dbus-broker' {
    assert "$src/_dbus-broker" is_file
}

@test 'src has _dbus-broker-launch' {
    assert "$src/_dbus-broker-launch" is_file
}

@test 'src has _dbus-run-session' {
    assert "$src/_dbus-run-session" is_file
}

@test 'src has _dbus-update-activation-environment' {
    assert "$src/_dbus-update-activation-environment" is_file
}

@test 'src has _dbwrap_tool' {
    assert "$src/_dbwrap_tool" is_file
}

@test 'src has _dbxtool' {
    assert "$src/_dbxtool" is_file
}

@test 'src has _dc3dd' {
    assert "$src/_dc3dd" is_file
}

@test 'src has _dcadec' {
    assert "$src/_dcadec" is_file
}

@test 'src has _dcb' {
    assert "$src/_dcb" is_file
}

@test 'src has _dcbtool' {
    assert "$src/_dcbtool" is_file
}

@test 'src has _dccleancrw' {
    assert "$src/_dccleancrw" is_file
}

@test 'src has _dcfldd' {
    assert "$src/_dcfldd" is_file
}

@test 'src has _dconf-editor' {
    assert "$src/_dconf-editor" is_file
}

@test 'src has _dconschat' {
    assert "$src/_dconschat" is_file
}

@test 'src has _dcparse' {
    assert "$src/_dcparse" is_file
}

@test 'src has _dcraw_half' {
    assert "$src/_dcraw_half" is_file
}

@test 'src has _dd' {
    assert "$src/_dd" is_file
}

@test 'src has _dd_rescue' {
    assert "$src/_dd_rescue" is_file
}

@test 'src has _dddiagnose' {
    assert "$src/_dddiagnose" is_file
}

@test 'src has _ddemangle' {
    assert "$src/_ddemangle" is_file
}

@test 'src has _ddjvu' {
    assert "$src/_ddjvu" is_file
}

@test 'src has _ddns-confgen' {
    assert "$src/_ddns-confgen" is_file
}

@test 'src has _ddrescue' {
    assert "$src/_ddrescue" is_file
}

@test 'src has _ddrescuelog' {
    assert "$src/_ddrescuelog" is_file
}

@test 'src has _ddstdecode' {
    assert "$src/_ddstdecode" is_file
}

@test 'src has _deallocvt' {
    assert "$src/_deallocvt" is_file
}

@test 'src has _debconf' {
    assert "$src/_debconf" is_file
}

@test 'src has _debconf-communicate' {
    assert "$src/_debconf-communicate" is_file
}

@test 'src has _debconf-escape' {
    assert "$src/_debconf-escape" is_file
}

@test 'src has _debconf-gettextize' {
    assert "$src/_debconf-gettextize" is_file
}

@test 'src has _debconf-mergetemplate' {
    assert "$src/_debconf-mergetemplate" is_file
}

@test 'src has _debconf-set-selections' {
    assert "$src/_debconf-set-selections" is_file
}

@test 'src has _debconf-updatepo' {
    assert "$src/_debconf-updatepo" is_file
}

@test 'src has _debian-update-rc.d' {
    assert "$src/_debian-update-rc.d" is_file
}

@test 'src has _deblaze' {
    assert "$src/_deblaze" is_file
}

@test 'src has _deblaze.py' {
    assert "$src/_deblaze.py" is_file
}

@test 'src has _debugfs.reiser4' {
    assert "$src/_debugfs.reiser4" is_file
}

@test 'src has _debugfs.reiserfs' {
    assert "$src/_debugfs.reiserfs" is_file
}

@test 'src has _debuginfo-install' {
    assert "$src/_debuginfo-install" is_file
}

@test 'src has _debuginfod-find' {
    assert "$src/_debuginfod-find" is_file
}

@test 'src has _debugreiserfs' {
    assert "$src/_debugreiserfs" is_file
}

@test 'src has _decode' {
    assert "$src/_decode" is_file
}

@test 'src has _decode-dimms' {
    assert "$src/_decode-dimms" is_file
}

@test 'src has _decode_tm6000' {
    assert "$src/_decode_tm6000" is_file
}

@test 'src has _deepsound2john' {
    assert "$src/_deepsound2john" is_file
}

@test 'src has _defang' {
    assert "$src/_defang" is_file
}

@test 'src has _deflatehd' {
    assert "$src/_deflatehd" is_file
}

@test 'src has _defrag.f2fs' {
    assert "$src/_defrag.f2fs" is_file
}

@test 'src has _defragcli' {
    assert "$src/_defragcli" is_file
}

@test 'src has _deja-dup' {
    assert "$src/_deja-dup" is_file
}

@test 'src has _deja-dup-preferences' {
    assert "$src/_deja-dup-preferences" is_file
}

@test 'src has _delaunay' {
    assert "$src/_delaunay" is_file
}

@test 'src has _delgroup' {
    assert "$src/_delgroup" is_file
}

@test 'src has _delp' {
    assert "$src/_delp" is_file
}

@test 'src has _delpart' {
    assert "$src/_delpart" is_file
}

@test 'src has _delta' {
    assert "$src/_delta" is_file
}

@test 'src has _deltainfoxml2solv' {
    assert "$src/_deltainfoxml2solv" is_file
}

@test 'src has _deluser' {
    assert "$src/_deluser" is_file
}

@test 'src has _delv' {
    assert "$src/_delv" is_file
}

@test 'src has _densityscout' {
    assert "$src/_densityscout" is_file
}

@test 'src has _densityscout-build-45' {
    assert "$src/_densityscout-build-45" is_file
}

@test 'src has _depmod' {
    assert "$src/_depmod" is_file
}

@test 'src has _depythontex' {
    assert "$src/_depythontex" is_file
}

@test 'src has _derdump' {
    assert "$src/_derdump" is_file
}

@test 'src has _desktop-file-edit' {
    assert "$src/_desktop-file-edit" is_file
}

@test 'src has _desktop-file-install' {
    assert "$src/_desktop-file-install" is_file
}

@test 'src has _desktop-file-validate' {
    assert "$src/_desktop-file-validate" is_file
}

@test 'src has _desktoptojson' {
    assert "$src/_desktoptojson" is_file
}

@test 'src has _detex' {
    assert "$src/_detex" is_file
}

@test 'src has _dev_debug_vboot' {
    assert "$src/_dev_debug_vboot" is_file
}

@test 'src has _devdump' {
    assert "$src/_devdump" is_file
}

@test 'src has _device-pharmer' {
    assert "$src/_device-pharmer" is_file
}

@test 'src has _devio' {
    assert "$src/_devio" is_file
}

@test 'src has _dextract.py' {
    assert "$src/_dextract.py" is_file
}

@test 'src has _dfu-tool' {
    assert "$src/_dfu-tool" is_file
}

@test 'src has _dgawk' {
    assert "$src/_dgawk" is_file
}

@test 'src has _dh_assistant' {
    assert "$src/_dh_assistant" is_file
}

@test 'src has _dh_bugfiles' {
    assert "$src/_dh_bugfiles" is_file
}

@test 'src has _dh_fixperms' {
    assert "$src/_dh_fixperms" is_file
}

@test 'src has _dh_gencontrol' {
    assert "$src/_dh_gencontrol" is_file
}

@test 'src has _dh_icons' {
    assert "$src/_dh_icons" is_file
}

@test 'src has _dh_installalternatives' {
    assert "$src/_dh_installalternatives" is_file
}

@test 'src has _dh_installcatalogs' {
    assert "$src/_dh_installcatalogs" is_file
}

@test 'src has _dh_installcron' {
    assert "$src/_dh_installcron" is_file
}

@test 'src has _dh_installdeb' {
    assert "$src/_dh_installdeb" is_file
}

@test 'src has _dh_installgsettings' {
    assert "$src/_dh_installgsettings" is_file
}

@test 'src has _dh_installifupdown' {
    assert "$src/_dh_installifupdown" is_file
}

@test 'src has _dh_installinit' {
    assert "$src/_dh_installinit" is_file
}

@test 'src has _dh_installinitramfs' {
    assert "$src/_dh_installinitramfs" is_file
}

@test 'src has _dh_installlogcheck' {
    assert "$src/_dh_installlogcheck" is_file
}

@test 'src has _dh_installlogrotate' {
    assert "$src/_dh_installlogrotate" is_file
}

@test 'src has _dh_installmenu' {
    assert "$src/_dh_installmenu" is_file
}

@test 'src has _dh_installpam' {
    assert "$src/_dh_installpam" is_file
}

@test 'src has _dh_installppp' {
    assert "$src/_dh_installppp" is_file
}

@test 'src has _dh_installsysusers' {
    assert "$src/_dh_installsysusers" is_file
}

@test 'src has _dh_installtmpfiles' {
    assert "$src/_dh_installtmpfiles" is_file
}

@test 'src has _dh_makeshlibs' {
    assert "$src/_dh_makeshlibs" is_file
}

@test 'src has _dh_movetousr' {
    assert "$src/_dh_movetousr" is_file
}

@test 'src has _dh_prep' {
    assert "$src/_dh_prep" is_file
}

@test 'src has _dh_pypy' {
    assert "$src/_dh_pypy" is_file
}

@test 'src has _dh_python2' {
    assert "$src/_dh_python2" is_file
}

@test 'src has _dh_python3' {
    assert "$src/_dh_python3" is_file
}

@test 'src has _dh_strip_nondeterminism' {
    assert "$src/_dh_strip_nondeterminism" is_file
}

@test 'src has _dh_usrlocal' {
    assert "$src/_dh_usrlocal" is_file
}

@test 'src has _dhcp-lease-list' {
    assert "$src/_dhcp-lease-list" is_file
}

@test 'src has _dhex' {
    assert "$src/_dhex" is_file
}

@test 'src has _diadia' {
    assert "$src/_diadia" is_file
}

@test 'src has _dialog' {
    assert "$src/_dialog" is_file
}

@test 'src has _dialog-config' {
    assert "$src/_dialog-config" is_file
}

@test 'src has _dialyzer' {
    assert "$src/_dialyzer" is_file
}

@test 'src has _diameterc' {
    assert "$src/_diameterc" is_file
}

@test 'src has _dictgen' {
    assert "$src/_dictgen" is_file
}

@test 'src has _diff3' {
    assert "$src/_diff3" is_file
}

@test 'src has _digest.sh' {
    assert "$src/_digest.sh" is_file
}

@test 'src has _digestif' {
    assert "$src/_digestif" is_file
}

@test 'src has _dijkstra' {
    assert "$src/_dijkstra" is_file
}

@test 'src has _dino-im' {
    assert "$src/_dino-im" is_file
}

@test 'src has _dir' {
    assert "$src/_dir" is_file
}

@test 'src has _dirb-gendict' {
    assert "$src/_dirb-gendict" is_file
}

@test 'src has _dirbuster' {
    assert "$src/_dirbuster" is_file
}

@test 'src has _dircolors' {
    assert "$src/_dircolors" is_file
}

@test 'src has _directoryContentsSize.sh' {
    assert "$src/_directoryContentsSize.sh" is_file
}

@test 'src has _dirmngr' {
    assert "$src/_dirmngr" is_file
}

@test 'src has _dirmngr-client' {
    assert "$src/_dirmngr-client" is_file
}

@test 'src has _dirmngr_ldap' {
    assert "$src/_dirmngr_ldap" is_file
}

@test 'src has _dirsplit' {
    assert "$src/_dirsplit" is_file
}

@test 'src has _disco' {
    assert "$src/_disco" is_file
}

@test 'src has _discover' {
    assert "$src/_discover" is_file
}

@test 'src has _discover-pkginstall' {
    assert "$src/_discover-pkginstall" is_file
}

@test 'src has _disdvi' {
    assert "$src/_disdvi" is_file
}

@test 'src has _diskus' {
    assert "$src/_diskus" is_file
}

@test 'src has _diskutil' {
    assert "$src/_diskutil" is_file
}

@test 'src has _dispcal' {
    assert "$src/_dispcal" is_file
}

@test 'src has _display-im6' {
    assert "$src/_display-im6" is_file
}

@test 'src has _display-im6.q16' {
    assert "$src/_display-im6.q16" is_file
}

@test 'src has _display_to_hlg' {
    assert "$src/_display_to_hlg" is_file
}

@test 'src has _displayline' {
    assert "$src/_displayline" is_file
}

@test 'src has _dispqlen.d' {
    assert "$src/_dispqlen.d" is_file
}

@test 'src has _dispread' {
    assert "$src/_dispread" is_file
}

@test 'src has _dispwin' {
    assert "$src/_dispwin" is_file
}

@test 'src has _dist_package_tool' {
    assert "$src/_dist_package_tool" is_file
}

@test 'src has _distro' {
    assert "$src/_distro" is_file
}

@test 'src has _ditto' {
    assert "$src/_ditto" is_file
}

@test 'src has _djpeg' {
    assert "$src/_djpeg" is_file
}

@test 'src has _djvups' {
    assert "$src/_djvups" is_file
}

@test 'src has _djvused' {
    assert "$src/_djvused" is_file
}

@test 'src has _djvutoxml' {
    assert "$src/_djvutoxml" is_file
}

@test 'src has _djxl' {
    assert "$src/_djxl" is_file
}

@test 'src has _djxl_fuzzer_corpus' {
    assert "$src/_djxl_fuzzer_corpus" is_file
}

@test 'src has _dm-tool' {
    assert "$src/_dm-tool" is_file
}

@test 'src has _dm_date' {
    assert "$src/_dm_date" is_file
}

@test 'src has _dm_dso_reg_tool' {
    assert "$src/_dm_dso_reg_tool" is_file
}

@test 'src has _dm_zdump' {
    assert "$src/_dm_zdump" is_file
}

@test 'src has _dmcs' {
    assert "$src/_dmcs" is_file
}

@test 'src has _dmd' {
    assert "$src/_dmd" is_file
}

@test 'src has _dmevent_tool' {
    assert "$src/_dmevent_tool" is_file
}

@test 'src has _dmeventd' {
    assert "$src/_dmeventd" is_file
}

@test 'src has _dmg2john' {
    assert "$src/_dmg2john" is_file
}

@test 'src has _dmidecode' {
    assert "$src/_dmidecode" is_file
}

@test 'src has _dmitry' {
    assert "$src/_dmitry" is_file
}

@test 'src has _dmtracedump' {
    assert "$src/_dmtracedump" is_file
}

@test 'src has _dnctl' {
    assert "$src/_dnctl" is_file
}

@test 'src has _dnet' {
    assert "$src/_dnet" is_file
}

@test 'src has _dnie-tool' {
    assert "$src/_dnie-tool" is_file
}

@test 'src has _dnmap_client' {
    assert "$src/_dnmap_client" is_file
}

@test 'src has _dnmap_server' {
    assert "$src/_dnmap_server" is_file
}

@test 'src has _dns-rebind' {
    assert "$src/_dns-rebind" is_file
}

@test 'src has _dns2tcpc' {
    assert "$src/_dns2tcpc" is_file
}

@test 'src has _dns2tcpd' {
    assert "$src/_dns2tcpd" is_file
}

@test 'src has _dnschef' {
    assert "$src/_dnschef" is_file
}

@test 'src has _dnsdomainname' {
    assert "$src/_dnsdomainname" is_file
}

@test 'src has _dnsenum' {
    assert "$src/_dnsenum" is_file
}

@test 'src has _dnsextd' {
    assert "$src/_dnsextd" is_file
}

@test 'src has _dnsmasq' {
    assert "$src/_dnsmasq" is_file
}

@test 'src has _dnsrecon' {
    assert "$src/_dnsrecon" is_file
}

@test 'src has _dnssec-cds' {
    assert "$src/_dnssec-cds" is_file
}

@test 'src has _dnssec-checkds' {
    assert "$src/_dnssec-checkds" is_file
}

@test 'src has _dnssec-coverage' {
    assert "$src/_dnssec-coverage" is_file
}

@test 'src has _dnssec-dsfromkey' {
    assert "$src/_dnssec-dsfromkey" is_file
}

@test 'src has _dnssec-importkey' {
    assert "$src/_dnssec-importkey" is_file
}

@test 'src has _dnssec-keyfromlabel' {
    assert "$src/_dnssec-keyfromlabel" is_file
}

@test 'src has _dnssec-keygen' {
    assert "$src/_dnssec-keygen" is_file
}

@test 'src has _dnssec-keymgr' {
    assert "$src/_dnssec-keymgr" is_file
}

@test 'src has _dnssec-revoke' {
    assert "$src/_dnssec-revoke" is_file
}

@test 'src has _dnssec-settime' {
    assert "$src/_dnssec-settime" is_file
}

@test 'src has _dnssec-signzone' {
    assert "$src/_dnssec-signzone" is_file
}

@test 'src has _dnssec-verify' {
    assert "$src/_dnssec-verify" is_file
}

@test 'src has _dnstap-read' {
    assert "$src/_dnstap-read" is_file
}

@test 'src has _dnstracer' {
    assert "$src/_dnstracer" is_file
}

@test 'src has _do-release-upgrade' {
    assert "$src/_do-release-upgrade" is_file
}

@test 'src has _doc2odt' {
    assert "$src/_doc2odt" is_file
}

@test 'src has _doc2pdf' {
    assert "$src/_doc2pdf" is_file
}

@test 'src has _docker-containerd' {
    assert "$src/_docker-containerd" is_file
}

@test 'src has _docker-containerd-ctr' {
    assert "$src/_docker-containerd-ctr" is_file
}

@test 'src has _docker-containerd-current' {
    assert "$src/_docker-containerd-current" is_file
}

@test 'src has _docker-containerd-shim' {
    assert "$src/_docker-containerd-shim" is_file
}

@test 'src has _docker-credential-desktop' {
    assert "$src/_docker-credential-desktop" is_file
}

@test 'src has _docker-credential-ecr-login' {
    assert "$src/_docker-credential-ecr-login" is_file
}

@test 'src has _docker-ctr' {
    assert "$src/_docker-ctr" is_file
}

@test 'src has _docker-current' {
    assert "$src/_docker-current" is_file
}

@test 'src has _docker-image-tool.sh' {
    assert "$src/_docker-image-tool.sh" is_file
}

@test 'src has _docker-index' {
    assert "$src/_docker-index" is_file
}

@test 'src has _docker-init' {
    assert "$src/_docker-init" is_file
}

@test 'src has _docker-linux-amd64' {
    assert "$src/_docker-linux-amd64" is_file
}

@test 'src has _docker-linux-arm64' {
    assert "$src/_docker-linux-arm64" is_file
}

@test 'src has _docker-machine' {
    assert "$src/_docker-machine" is_file
}

@test 'src has _docker-proxy' {
    assert "$src/_docker-proxy" is_file
}

@test 'src has _docker-runc' {
    assert "$src/_docker-runc" is_file
}

@test 'src has _docker-storage-setup' {
    assert "$src/_docker-storage-setup" is_file
}

@test 'src has _dockerd-current' {
    assert "$src/_dockerd-current" is_file
}

@test 'src has _dockerd-rootless-setuptool.sh' {
    assert "$src/_dockerd-rootless-setuptool.sh" is_file
}

@test 'src has _docutils' {
    assert "$src/_docutils" is_file
}

@test 'src has _domainname' {
    assert "$src/_domainname" is_file
}

@test 'src has _doona' {
    assert "$src/_doona" is_file
}

@test 'src has _dos2unix' {
    assert "$src/_dos2unix" is_file
}

@test 'src has _dosepsbin' {
    assert "$src/_dosepsbin" is_file
}

@test 'src has _dosfsck' {
    assert "$src/_dosfsck" is_file
}

@test 'src has _dosfslabel' {
    assert "$src/_dosfslabel" is_file
}

@test 'src has _dot' {
    assert "$src/_dot" is_file
}

@test 'src has _dot_builtins' {
    assert "$src/_dot_builtins" is_file
}

@test 'src has _dotdotpwn' {
    assert "$src/_dotdotpwn" is_file
}

@test 'src has _dotdotpwn.pl' {
    assert "$src/_dotdotpwn.pl" is_file
}

@test 'src has _dotlock' {
    assert "$src/_dotlock" is_file
}

@test 'src has _dotlock.mailutils' {
    assert "$src/_dotlock.mailutils" is_file
}

@test 'src has _dotnet' {
    assert "$src/_dotnet" is_file
}

@test 'src has _dpkg-architecture' {
    assert "$src/_dpkg-architecture" is_file
}

@test 'src has _dpkg-buildapi' {
    assert "$src/_dpkg-buildapi" is_file
}

@test 'src has _dpkg-buildflags' {
    assert "$src/_dpkg-buildflags" is_file
}

@test 'src has _dpkg-buildtree' {
    assert "$src/_dpkg-buildtree" is_file
}

@test 'src has _dpkg-checkbuilddeps' {
    assert "$src/_dpkg-checkbuilddeps" is_file
}

@test 'src has _dpkg-distaddfile' {
    assert "$src/_dpkg-distaddfile" is_file
}

@test 'src has _dpkg-divert' {
    assert "$src/_dpkg-divert" is_file
}

@test 'src has _dpkg-genbuildinfo' {
    assert "$src/_dpkg-genbuildinfo" is_file
}

@test 'src has _dpkg-genchanges' {
    assert "$src/_dpkg-genchanges" is_file
}

@test 'src has _dpkg-gencontrol' {
    assert "$src/_dpkg-gencontrol" is_file
}

@test 'src has _dpkg-gensymbols' {
    assert "$src/_dpkg-gensymbols" is_file
}

@test 'src has _dpkg-mergechangelogs' {
    assert "$src/_dpkg-mergechangelogs" is_file
}

@test 'src has _dpkg-name' {
    assert "$src/_dpkg-name" is_file
}

@test 'src has _dpkg-parsechangelog' {
    assert "$src/_dpkg-parsechangelog" is_file
}

@test 'src has _dpkg-preconfigure' {
    assert "$src/_dpkg-preconfigure" is_file
}

@test 'src has _dpkg-realpath' {
    assert "$src/_dpkg-realpath" is_file
}

@test 'src has _dpkg-scanpackages' {
    assert "$src/_dpkg-scanpackages" is_file
}

@test 'src has _dpkg-scansources' {
    assert "$src/_dpkg-scansources" is_file
}

@test 'src has _dpkg-shlibdeps' {
    assert "$src/_dpkg-shlibdeps" is_file
}

@test 'src has _dpkg-split' {
    assert "$src/_dpkg-split" is_file
}

@test 'src has _dpkg-statoverride' {
    assert "$src/_dpkg-statoverride" is_file
}

@test 'src has _dpkg-trigger' {
    assert "$src/_dpkg-trigger" is_file
}

@test 'src has _dpkg-vendor' {
    assert "$src/_dpkg-vendor" is_file
}

@test 'src has _dpv' {
    assert "$src/_dpv" is_file
}

@test 'src has _dracut' {
    assert "$src/_dracut" is_file
}

@test 'src has _driftnet' {
    assert "$src/_driftnet" is_file
}

@test 'src has _drill' {
    assert "$src/_drill" is_file
}

@test 'src has _driverless' {
    assert "$src/_driverless" is_file
}

@test 'src has _dropdb' {
    assert "$src/_dropdb" is_file
}

@test 'src has _droplang' {
    assert "$src/_droplang" is_file
}

@test 'src has _dropuser' {
    assert "$src/_dropuser" is_file
}

@test 'src has _dscomputers.py' {
    assert "$src/_dscomputers.py" is_file
}

@test 'src has _dsconfigad' {
    assert "$src/_dsconfigad" is_file
}

@test 'src has _dsconfigldap' {
    assert "$src/_dsconfigldap" is_file
}

@test 'src has _dsdeletedobjects.py' {
    assert "$src/_dsdeletedobjects.py" is_file
}

@test 'src has _dsgroups.py' {
    assert "$src/_dsgroups.py" is_file
}

@test 'src has _dsimport' {
    assert "$src/_dsimport" is_file
}

@test 'src has _dskeytab.py' {
    assert "$src/_dskeytab.py" is_file
}

@test 'src has _dsmemberutil' {
    assert "$src/_dsmemberutil" is_file
}

@test 'src has _dstat' {
    assert "$src/_dstat" is_file
}

@test 'src has _dsusers.py' {
    assert "$src/_dsusers.py" is_file
}

@test 'src has _dsymutil' {
    assert "$src/_dsymutil" is_file
}

@test 'src has _dsymutil-10' {
    assert "$src/_dsymutil-10" is_file
}

@test 'src has _dsymutil-11' {
    assert "$src/_dsymutil-11" is_file
}

@test 'src has _dsymutil-16' {
    assert "$src/_dsymutil-16" is_file
}

@test 'src has _dsymutil-17' {
    assert "$src/_dsymutil-17" is_file
}

@test 'src has _dsymutil-19' {
    assert "$src/_dsymutil-19" is_file
}

@test 'src has _dsymutil-7' {
    assert "$src/_dsymutil-7" is_file
}

@test 'src has _dsymutil-8' {
    assert "$src/_dsymutil-8" is_file
}

@test 'src has _dsymutil-9' {
    assert "$src/_dsymutil-9" is_file
}

@test 'src has _dsymutil12' {
    assert "$src/_dsymutil12" is_file
}

@test 'src has _dtc' {
    assert "$src/_dtc" is_file
}

@test 'src has _dtd2rng' {
    assert "$src/_dtd2rng" is_file
}

@test 'src has _dtmerge' {
    assert "$src/_dtmerge" is_file
}

@test 'src has _dtparam' {
    assert "$src/_dtparam" is_file
}

@test 'src has _dtsdec' {
    assert "$src/_dtsdec" is_file
}

@test 'src has _dtxgen' {
    assert "$src/_dtxgen" is_file
}

@test 'src has _duk' {
    assert "$src/_duk" is_file
}

@test 'src has _dump.exfat' {
    assert "$src/_dump.exfat" is_file
}

@test 'src has _dump.f2fs' {
    assert "$src/_dump.f2fs" is_file
}

@test 'src has _dump_fmap' {
    assert "$src/_dump_fmap" is_file
}

@test 'src has _dump_fts' {
    assert "$src/_dump_fts" is_file
}

@test 'src has _dumpcap' {
    assert "$src/_dumpcap" is_file
}

@test 'src has _dumpimage' {
    assert "$src/_dumpimage" is_file
}

@test 'src has _dumpiso' {
    assert "$src/_dumpiso" is_file
}

@test 'src has _dumpkeys' {
    assert "$src/_dumpkeys" is_file
}

@test 'src has _dumpseg' {
    assert "$src/_dumpseg" is_file
}

@test 'src has _dumpsexp' {
    assert "$src/_dumpsexp" is_file
}

@test 'src has _dumpsolv' {
    assert "$src/_dumpsolv" is_file
}

@test 'src has _dumpzilla' {
    assert "$src/_dumpzilla" is_file
}

@test 'src has _dune' {
    assert "$src/_dune" is_file
}

@test 'src has _dupemap' {
    assert "$src/_dupemap" is_file
}

@test 'src has _duplicateLineDeleter.sh' {
    assert "$src/_duplicateLineDeleter.sh" is_file
}

@test 'src has _duplicity' {
    assert "$src/_duplicity" is_file
}

@test 'src has _dust' {
    assert "$src/_dust" is_file
}

@test 'src has _dustmite' {
    assert "$src/_dustmite" is_file
}

@test 'src has _dvb-fe-tool' {
    assert "$src/_dvb-fe-tool" is_file
}

@test 'src has _dvb-format-convert' {
    assert "$src/_dvb-format-convert" is_file
}

@test 'src has _dvbv5-daemon' {
    assert "$src/_dvbv5-daemon" is_file
}

@test 'src has _dvbv5-scan' {
    assert "$src/_dvbv5-scan" is_file
}

@test 'src has _dvbv5-zap' {
    assert "$src/_dvbv5-zap" is_file
}

@test 'src has _dvd+rw-mediainfo' {
    assert "$src/_dvd+rw-mediainfo" is_file
}

@test 'src has _dvdauthor' {
    assert "$src/_dvdauthor" is_file
}

@test 'src has _dvdisaster' {
    assert "$src/_dvdisaster" is_file
}

@test 'src has _dvdrecord' {
    assert "$src/_dvdrecord" is_file
}

@test 'src has _dvi2fax' {
    assert "$src/_dvi2fax" is_file
}

@test 'src has _dvi2tty' {
    assert "$src/_dvi2tty" is_file
}

@test 'src has _dviasm' {
    assert "$src/_dviasm" is_file
}

@test 'src has _dvicopy' {
    assert "$src/_dvicopy" is_file
}

@test 'src has _dvigif' {
    assert "$src/_dvigif" is_file
}

@test 'src has _dvihp' {
    assert "$src/_dvihp" is_file
}

@test 'src has _dviinfox' {
    assert "$src/_dviinfox" is_file
}

@test 'src has _dvilj' {
    assert "$src/_dvilj" is_file
}

@test 'src has _dvilj2p' {
    assert "$src/_dvilj2p" is_file
}

@test 'src has _dvilj4' {
    assert "$src/_dvilj4" is_file
}

@test 'src has _dvilj4l' {
    assert "$src/_dvilj4l" is_file
}

@test 'src has _dvilj6' {
    assert "$src/_dvilj6" is_file
}

@test 'src has _dvilualatex' {
    assert "$src/_dvilualatex" is_file
}

@test 'src has _dvilualatex-dev' {
    assert "$src/_dvilualatex-dev" is_file
}

@test 'src has _dviluatex' {
    assert "$src/_dviluatex" is_file
}

@test 'src has _dvipdfm' {
    assert "$src/_dvipdfm" is_file
}

@test 'src has _dvipdfmx' {
    assert "$src/_dvipdfmx" is_file
}

@test 'src has _dvipdft' {
    assert "$src/_dvipdft" is_file
}

@test 'src has _dvipng' {
    assert "$src/_dvipng" is_file
}

@test 'src has _dvipos' {
    assert "$src/_dvipos" is_file
}

@test 'src has _dvisvgm' {
    assert "$src/_dvisvgm" is_file
}

@test 'src has _dvitomp' {
    assert "$src/_dvitomp" is_file
}

@test 'src has _dvitype' {
    assert "$src/_dvitype" is_file
}

@test 'src has _dwarfdump' {
    assert "$src/_dwarfdump" is_file
}

@test 'src has _dwarfdump-classic' {
    assert "$src/_dwarfdump-classic" is_file
}

@test 'src has _dwatch' {
    assert "$src/_dwatch" is_file
}

@test 'src has _dwebp' {
    assert "$src/_dwebp" is_file
}

@test 'src has _dwp' {
    assert "$src/_dwp" is_file
}

@test 'src has _dyld_usage' {
    assert "$src/_dyld_usage" is_file
}

@test 'src has _dynamodb_dump' {
    assert "$src/_dynamodb_dump" is_file
}

@test 'src has _dynamodb_load' {
    assert "$src/_dynamodb_load" is_file
}

@test 'src has _e2fsck' {
    assert "$src/_e2fsck" is_file
}

@test 'src has _eapmd5pass' {
    assert "$src/_eapmd5pass" is_file
}

@test 'src has _eapol_test' {
    assert "$src/_eapol_test" is_file
}

@test 'src has _easside-ng' {
    assert "$src/_easside-ng" is_file
}

@test 'src has _easy_install' {
    assert "$src/_easy_install" is_file
}

@test 'src has _easy_install-2.7' {
    assert "$src/_easy_install-2.7" is_file
}

@test 'src has _easy_install-3.5' {
    assert "$src/_easy_install-3.5" is_file
}

@test 'src has _easy_install-3.6' {
    assert "$src/_easy_install-3.6" is_file
}

@test 'src has _easy_install-3.7' {
    assert "$src/_easy_install-3.7" is_file
}

@test 'src has _ebb' {
    assert "$src/_ebb" is_file
}

@test 'src has _ebook2html' {
    assert "$src/_ebook2html" is_file
}

@test 'src has _ebook2raw' {
    assert "$src/_ebook2raw" is_file
}

@test 'src has _ebook2text' {
    assert "$src/_ebook2text" is_file
}

@test 'src has _ebrowse' {
    assert "$src/_ebrowse" is_file
}

@test 'src has _ebrowse.emacs' {
    assert "$src/_ebrowse.emacs" is_file
}

@test 'src has _ebsnvme-id' {
    assert "$src/_ebsnvme-id" is_file
}

@test 'src has _ebtables' {
    assert "$src/_ebtables" is_file
}

@test 'src has _ebtables-legacy' {
    assert "$src/_ebtables-legacy" is_file
}

@test 'src has _ebtables-nft' {
    assert "$src/_ebtables-nft" is_file
}

@test 'src has _ebtables-translate' {
    assert "$src/_ebtables-translate" is_file
}

@test 'src has _ec2-metadata' {
    assert "$src/_ec2-metadata" is_file
}

@test 'src has _ec2udev-vbd' {
    assert "$src/_ec2udev-vbd" is_file
}

@test 'src has _econftool' {
    assert "$src/_econftool" is_file
}

@test 'src has _ecpg' {
    assert "$src/_ecpg" is_file
}

@test 'src has _ecryptfs-find' {
    assert "$src/_ecryptfs-find" is_file
}

@test 'src has _ecryptfs-migrate-home' {
    assert "$src/_ecryptfs-migrate-home" is_file
}

@test 'src has _ecryptfs-setup-private' {
    assert "$src/_ecryptfs-setup-private" is_file
}

@test 'src has _ecryptfs-verify' {
    assert "$src/_ecryptfs-verify" is_file
}

@test 'src has _ecryptfsd' {
    assert "$src/_ecryptfsd" is_file
}

@test 'src has _ed' {
    assert "$src/_ed" is_file
}

@test 'src has _ed2k-link' {
    assert "$src/_ed2k-link" is_file
}

@test 'src has _edb' {
    assert "$src/_edb" is_file
}

@test 'src has _eddystone' {
    assert "$src/_eddystone" is_file
}

@test 'src has _edgepaint' {
    assert "$src/_edgepaint" is_file
}

@test 'src has _edid-decode' {
    assert "$src/_edid-decode" is_file
}

@test 'src has _edit' {
    assert "$src/_edit" is_file
}

@test 'src has _editcap' {
    assert "$src/_editcap" is_file
}

@test 'src has _editdiff' {
    assert "$src/_editdiff" is_file
}

@test 'src has _editor' {
    assert "$src/_editor" is_file
}

@test 'src has _editorconfig' {
    assert "$src/_editorconfig" is_file
}

@test 'src has _editorconfig-0.12.3' {
    assert "$src/_editorconfig-0.12.3" is_file
}

@test 'src has _edonr256-hash' {
    assert "$src/_edonr256-hash" is_file
}

@test 'src has _edonr512-hash' {
    assert "$src/_edonr512-hash" is_file
}

@test 'src has _edquota' {
    assert "$src/_edquota" is_file
}

@test 'src has _efibootdump' {
    assert "$src/_efibootdump" is_file
}

@test 'src has _efibootmgr' {
    assert "$src/_efibootmgr" is_file
}

@test 'src has _efivar' {
    assert "$src/_efivar" is_file
}

@test 'src has _egk-tool' {
    assert "$src/_egk-tool" is_file
}

@test 'src has _egrep' {
    assert "$src/_egrep" is_file
}

@test 'src has _eidenv' {
    assert "$src/_eidenv" is_file
}

@test 'src has _einfo' {
    assert "$src/_einfo" is_file
}

@test 'src has _eject' {
    assert "$src/_eject" is_file
}

@test 'src has _ejs' {
    assert "$src/_ejs" is_file
}

@test 'src has _ekiga' {
    assert "$src/_ekiga" is_file
}

@test 'src has _ekiga-config-tool' {
    assert "$src/_ekiga-config-tool" is_file
}

@test 'src has _electrum2john' {
    assert "$src/_electrum2john" is_file
}

@test 'src has _elfctl' {
    assert "$src/_elfctl" is_file
}

@test 'src has _elfedit' {
    assert "$src/_elfedit" is_file
}

@test 'src has _elixir' {
    assert "$src/_elixir" is_file
}

@test 'src has _elixirc' {
    assert "$src/_elixirc" is_file
}

@test 'src has _elm-test' {
    assert "$src/_elm-test" is_file
}

@test 'src has _emacs-26.1' {
    assert "$src/_emacs-26.1" is_file
}

@test 'src has _emacs-28.1' {
    assert "$src/_emacs-28.1" is_file
}

@test 'src has _emacs-28.2' {
    assert "$src/_emacs-28.2" is_file
}

@test 'src has _emacs-29.4' {
    assert "$src/_emacs-29.4" is_file
}

@test 'src has _emacsclient' {
    assert "$src/_emacsclient" is_file
}

@test 'src has _emacsclient.emacs' {
    assert "$src/_emacsclient.emacs" is_file
}

@test 'src has _empathy' {
    assert "$src/_empathy" is_file
}

@test 'src has _empathy-accounts' {
    assert "$src/_empathy-accounts" is_file
}

@test 'src has _empathy-debugger' {
    assert "$src/_empathy-debugger" is_file
}

@test 'src has _emulator-check' {
    assert "$src/_emulator-check" is_file
}

@test 'src has _enc265' {
    assert "$src/_enc265" is_file
}

@test 'src has _enca' {
    assert "$src/_enca" is_file
}

@test 'src has _encfs2john' {
    assert "$src/_encfs2john" is_file
}

@test 'src has _encfssh' {
    assert "$src/_encfssh" is_file
}

@test 'src has _encguess' {
    assert "$src/_encguess" is_file
}

@test 'src has _encguess5.26.3' {
    assert "$src/_encguess5.26.3" is_file
}

@test 'src has _encguess5.34' {
    assert "$src/_encguess5.34" is_file
}

@test 'src has _enchant' {
    assert "$src/_enchant" is_file
}

@test 'src has _enchant-2' {
    assert "$src/_enchant-2" is_file
}

@test 'src has _encode_keychange' {
    assert "$src/_encode_keychange" is_file
}

@test 'src has _enconv' {
    assert "$src/_enconv" is_file
}

@test 'src has _encrypt.sh' {
    assert "$src/_encrypt.sh" is_file
}

@test 'src has _encryptcli' {
    assert "$src/_encryptcli" is_file
}

@test 'src has _engrampa' {
    assert "$src/_engrampa" is_file
}

@test 'src has _enpass2john' {
    assert "$src/_enpass2john" is_file
}

@test 'src has _enpass5tojohn' {
    assert "$src/_enpass5tojohn" is_file
}

@test 'src has _ent' {
    assert "$src/_ent" is_file
}

@test 'src has _enum4linux' {
    assert "$src/_enum4linux" is_file
}

@test 'src has _enumiax' {
    assert "$src/_enumiax" is_file
}

@test 'src has _envsubst' {
    assert "$src/_envsubst" is_file
}

@test 'src has _eog' {
    assert "$src/_eog" is_file
}

@test 'src has _eolang' {
    assert "$src/_eolang" is_file
}

@test 'src has _eom' {
    assert "$src/_eom" is_file
}

@test 'src has _ephy-profile-migrator' {
    assert "$src/_ephy-profile-migrator" is_file
}

@test 'src has _epic5' {
    assert "$src/_epic5" is_file
}

@test 'src has _epiphany' {
    assert "$src/_epiphany" is_file
}

@test 'src has _eplain' {
    assert "$src/_eplain" is_file
}

@test 'src has _epmd' {
    assert "$src/_epmd" is_file
}

@test 'src has _epspdf' {
    assert "$src/_epspdf" is_file
}

@test 'src has _epspdftk' {
    assert "$src/_epspdftk" is_file
}

@test 'src has _epstopdf' {
    assert "$src/_epstopdf" is_file
}

@test 'src has _eptex' {
    assert "$src/_eptex" is_file
}

@test 'src has _epylint' {
    assert "$src/_epylint" is_file
}

@test 'src has _erb' {
    assert "$src/_erb" is_file
}

@test 'src has _erb2.3' {
    assert "$src/_erb2.3" is_file
}

@test 'src has _erb2.5' {
    assert "$src/_erb2.5" is_file
}

@test 'src has _erb2.7' {
    assert "$src/_erb2.7" is_file
}

@test 'src has _erb24' {
    assert "$src/_erb24" is_file
}

@test 'src has _erb27' {
    assert "$src/_erb27" is_file
}

@test 'src has _erb3.1' {
    assert "$src/_erb3.1" is_file
}

@test 'src has _erl_call' {
    assert "$src/_erl_call" is_file
}

@test 'src has _erlang-depends' {
    assert "$src/_erlang-depends" is_file
}

@test 'src has _erlc' {
    assert "$src/_erlc" is_file
}

@test 'src has _errinfo' {
    assert "$src/_errinfo" is_file
}

@test 'src has _erubis' {
    assert "$src/_erubis" is_file
}

@test 'src has _es2_info.aarch64-linux-gnu' {
    assert "$src/_es2_info.aarch64-linux-gnu" is_file
}

@test 'src has _es2tri' {
    assert "$src/_es2tri" is_file
}

@test 'src has _es2tri.aarch64-linux-gnu' {
    assert "$src/_es2tri.aarch64-linux-gnu" is_file
}

@test 'src has _escapeRemover.pl' {
    assert "$src/_escapeRemover.pl" is_file
}

@test 'src has _escp2topbm' {
    assert "$src/_escp2topbm" is_file
}

@test 'src has _escputil' {
    assert "$src/_escputil" is_file
}

@test 'src has _esdcompat' {
    assert "$src/_esdcompat" is_file
}

@test 'src has _esedbexport' {
    assert "$src/_esedbexport" is_file
}

@test 'src has _esedbinfo' {
    assert "$src/_esedbinfo" is_file
}

@test 'src has _esentutl.py' {
    assert "$src/_esentutl.py" is_file
}

@test 'src has _eslint' {
    assert "$src/_eslint" is_file
}

@test 'src has _eslogger' {
    assert "$src/_eslogger" is_file
}

@test 'src has _esparse' {
    assert "$src/_esparse" is_file
}

@test 'src has _esvalidate' {
    assert "$src/_esvalidate" is_file
}

@test 'src has _etags.emacs' {
    assert "$src/_etags.emacs" is_file
}

@test 'src has _etc1tool' {
    assert "$src/_etc1tool" is_file
}

@test 'src has _etcd' {
    assert "$src/_etcd" is_file
}

@test 'src has _etcdctl' {
    assert "$src/_etcdctl" is_file
}

@test 'src has _etcdutl' {
    assert "$src/_etcdutl" is_file
}

@test 'src has _etex' {
    assert "$src/_etex" is_file
}

@test 'src has _etherape' {
    assert "$src/_etherape" is_file
}

@test 'src has _ethereum2john' {
    assert "$src/_ethereum2john" is_file
}

@test 'src has _etterfilter' {
    assert "$src/_etterfilter" is_file
}

@test 'src has _etterlog' {
    assert "$src/_etterlog" is_file
}

@test 'src has _eu-addr2line' {
    assert "$src/_eu-addr2line" is_file
}

@test 'src has _eu-ar' {
    assert "$src/_eu-ar" is_file
}

@test 'src has _eu-elfclassify' {
    assert "$src/_eu-elfclassify" is_file
}

@test 'src has _eu-elfcmp' {
    assert "$src/_eu-elfcmp" is_file
}

@test 'src has _eu-elfcompress' {
    assert "$src/_eu-elfcompress" is_file
}

@test 'src has _eu-elflint' {
    assert "$src/_eu-elflint" is_file
}

@test 'src has _eu-findtextrel' {
    assert "$src/_eu-findtextrel" is_file
}

@test 'src has _eu-nm' {
    assert "$src/_eu-nm" is_file
}

@test 'src has _eu-objdump' {
    assert "$src/_eu-objdump" is_file
}

@test 'src has _eu-ranlib' {
    assert "$src/_eu-ranlib" is_file
}

@test 'src has _eu-readelf' {
    assert "$src/_eu-readelf" is_file
}

@test 'src has _eu-size' {
    assert "$src/_eu-size" is_file
}

@test 'src has _eu-stack' {
    assert "$src/_eu-stack" is_file
}

@test 'src has _eu-strings' {
    assert "$src/_eu-strings" is_file
}

@test 'src has _eu-strip' {
    assert "$src/_eu-strip" is_file
}

@test 'src has _eu-unstrip' {
    assert "$src/_eu-unstrip" is_file
}

@test 'src has _euptex' {
    assert "$src/_euptex" is_file
}

@test 'src has _evcxr' {
    assert "$src/_evcxr" is_file
}

@test 'src has _evdev-joystick' {
    assert "$src/_evdev-joystick" is_file
}

@test 'src has _event_rpcgen.py' {
    assert "$src/_event_rpcgen.py" is_file
}

@test 'src has _eventlogadm' {
    assert "$src/_eventlogadm" is_file
}

@test 'src has _evince-previewer' {
    assert "$src/_evince-previewer" is_file
}

@test 'src has _evince-thumbnailer' {
    assert "$src/_evince-thumbnailer" is_file
}

@test 'src has _evmctl' {
    assert "$src/_evmctl" is_file
}

@test 'src has _evolution' {
    assert "$src/_evolution" is_file
}

@test 'src has _evtexport' {
    assert "$src/_evtexport" is_file
}

@test 'src has _evtinfo' {
    assert "$src/_evtinfo" is_file
}

@test 'src has _evtparse.pl' {
    assert "$src/_evtparse.pl" is_file
}

@test 'src has _evtx_dump.py' {
    assert "$src/_evtx_dump.py" is_file
}

@test 'src has _evtx_dump_chunk_slack.py' {
    assert "$src/_evtx_dump_chunk_slack.py" is_file
}

@test 'src has _evtx_extract_record.py' {
    assert "$src/_evtx_extract_record.py" is_file
}

@test 'src has _evtx_filter_records.py' {
    assert "$src/_evtx_filter_records.py" is_file
}

@test 'src has _evtx_info.py' {
    assert "$src/_evtx_info.py" is_file
}

@test 'src has _evtx_record_structure.py' {
    assert "$src/_evtx_record_structure.py" is_file
}

@test 'src has _evtx_structure.py' {
    assert "$src/_evtx_structure.py" is_file
}

@test 'src has _evtx_templates.py' {
    assert "$src/_evtx_templates.py" is_file
}

@test 'src has _evtxexport' {
    assert "$src/_evtxexport" is_file
}

@test 'src has _evtxinfo' {
    assert "$src/_evtxinfo" is_file
}

@test 'src has _ewfacquire' {
    assert "$src/_ewfacquire" is_file
}

@test 'src has _ewfacquirestream' {
    assert "$src/_ewfacquirestream" is_file
}

@test 'src has _ewfdebug' {
    assert "$src/_ewfdebug" is_file
}

@test 'src has _ewfexport' {
    assert "$src/_ewfexport" is_file
}

@test 'src has _ewfinfo' {
    assert "$src/_ewfinfo" is_file
}

@test 'src has _ewfmount' {
    assert "$src/_ewfmount" is_file
}

@test 'src has _ewfrecover' {
    assert "$src/_ewfrecover" is_file
}

@test 'src has _ewfverify' {
    assert "$src/_ewfverify" is_file
}

@test 'src has _ex' {
    assert "$src/_ex" is_file
}

@test 'src has _ex.nvim' {
    assert "$src/_ex.nvim" is_file
}

@test 'src has _exa' {
    assert "$src/_exa" is_file
}

@test 'src has _exctags' {
    assert "$src/_exctags" is_file
}

@test 'src has _exe2hex' {
    assert "$src/_exe2hex" is_file
}

@test 'src has _exec' {
    assert "$src/_exec" is_file
}

@test 'src has _execsnoop' {
    assert "$src/_execsnoop" is_file
}

@test 'src has _exempi' {
    assert "$src/_exempi" is_file
}

@test 'src has _exif' {
    assert "$src/_exif" is_file
}

@test 'src has _exim4' {
    assert "$src/_exim4" is_file
}

@test 'src has _exim_id_update' {
    assert "$src/_exim_id_update" is_file
}

@test 'src has _exim_msgdate' {
    assert "$src/_exim_msgdate" is_file
}

@test 'src has _eximstats' {
    assert "$src/_eximstats" is_file
}

@test 'src has _exiqgrep' {
    assert "$src/_exiqgrep" is_file
}

@test 'src has _exiv2' {
    assert "$src/_exiv2" is_file
}

@test 'src has _exo-csource' {
    assert "$src/_exo-csource" is_file
}

@test 'src has _exo-desktop-item-edit' {
    assert "$src/_exo-desktop-item-edit" is_file
}

@test 'src has _exo-open' {
    assert "$src/_exo-open" is_file
}

@test 'src has _exo-preferred-applications' {
    assert "$src/_exo-preferred-applications" is_file
}

@test 'src has _expandcmd' {
    assert "$src/_expandcmd" is_file
}

@test 'src has _expect_autopasswd' {
    assert "$src/_expect_autopasswd" is_file
}

@test 'src has _expect_rftp' {
    assert "$src/_expect_rftp" is_file
}

@test 'src has _expiry' {
    assert "$src/_expiry" is_file
}

@test 'src has _exr2aces' {
    assert "$src/_exr2aces" is_file
}

@test 'src has _exr_to_pq' {
    assert "$src/_exr_to_pq" is_file
}

@test 'src has _exrenvmap' {
    assert "$src/_exrenvmap" is_file
}

@test 'src has _exrheader' {
    assert "$src/_exrheader" is_file
}

@test 'src has _exrinfo' {
    assert "$src/_exrinfo" is_file
}

@test 'src has _exrmakepreview' {
    assert "$src/_exrmakepreview" is_file
}

@test 'src has _exrmaketiled' {
    assert "$src/_exrmaketiled" is_file
}

@test 'src has _exrmanifest' {
    assert "$src/_exrmanifest" is_file
}

@test 'src has _exrmetrics' {
    assert "$src/_exrmetrics" is_file
}

@test 'src has _exrmultipart' {
    assert "$src/_exrmultipart" is_file
}

@test 'src has _exrmultiview' {
    assert "$src/_exrmultiview" is_file
}

@test 'src has _exrstdattr' {
    assert "$src/_exrstdattr" is_file
}

@test 'src has _extlinux' {
    assert "$src/_extlinux" is_file
}

@test 'src has _extract_a52' {
    assert "$src/_extract_a52" is_file
}

@test 'src has _extract_dca' {
    assert "$src/_extract_dca" is_file
}

@test 'src has _extract_dts' {
    assert "$src/_extract_dts" is_file
}

@test 'src has _extractbb' {
    assert "$src/_extractbb" is_file
}

@test 'src has _extracticc' {
    assert "$src/_extracticc" is_file
}

@test 'src has _extractttag' {
    assert "$src/_extractttag" is_file
}

@test 'src has _extresso' {
    assert "$src/_extresso" is_file
}

@test 'src has _extundelete' {
    assert "$src/_extundelete" is_file
}

@test 'src has _eyapp' {
    assert "$src/_eyapp" is_file
}

@test 'src has _eyapp5.18' {
    assert "$src/_eyapp5.18" is_file
}

@test 'src has _eyapp5.28' {
    assert "$src/_eyapp5.28" is_file
}

@test 'src has _eyapp5.30' {
    assert "$src/_eyapp5.30" is_file
}

@test 'src has _eyapp5.34' {
    assert "$src/_eyapp5.34" is_file
}

@test 'src has _eyewitness' {
    assert "$src/_eyewitness" is_file
}

@test 'src has _eyuvtoppm' {
    assert "$src/_eyuvtoppm" is_file
}

@test 'src has _eza' {
    assert "$src/_eza" is_file
}

@test 'src has _f2fslabel' {
    assert "$src/_f2fslabel" is_file
}

@test 'src has _f2py' {
    assert "$src/_f2py" is_file
}

@test 'src has _f2py2' {
    assert "$src/_f2py2" is_file
}

@test 'src has _f2py2.7' {
    assert "$src/_f2py2.7" is_file
}

@test 'src has _f2py3' {
    assert "$src/_f2py3" is_file
}

@test 'src has _f2py3.11' {
    assert "$src/_f2py3.11" is_file
}

@test 'src has _f2py3.5' {
    assert "$src/_f2py3.5" is_file
}

@test 'src has _f2py3.6' {
    assert "$src/_f2py3.6" is_file
}

@test 'src has _f2py3.7' {
    assert "$src/_f2py3.7" is_file
}

@test 'src has _f95' {
    assert "$src/_f95" is_file
}

@test 'src has _faac' {
    assert "$src/_faac" is_file
}

@test 'src has _faad' {
    assert "$src/_faad" is_file
}

@test 'src has _fab-cewl' {
    assert "$src/_fab-cewl" is_file
}

@test 'src has _fadot' {
    assert "$src/_fadot" is_file
}

@test 'src has _faillog' {
    assert "$src/_faillog" is_file
}

@test 'src has _fakeCMY' {
    assert "$src/_fakeCMY" is_file
}

@test 'src has _fakeread' {
    assert "$src/_fakeread" is_file
}

@test 'src has _fallocate' {
    assert "$src/_fallocate" is_file
}

@test 'src has _fancontrol' {
    assert "$src/_fancontrol" is_file
}

@test 'src has _fang' {
    assert "$src/_fang" is_file
}

@test 'src has _fantaip' {
    assert "$src/_fantaip" is_file
}

@test 'src has _fasd' {
    assert "$src/_fasd" is_file
}

@test 'src has _fastboot' {
    assert "$src/_fastboot" is_file
}

@test 'src has _fastjar' {
    assert "$src/_fastjar" is_file
}

@test 'src has _fax2ps' {
    assert "$src/_fax2ps" is_file
}

@test 'src has _fax2tiff' {
    assert "$src/_fax2tiff" is_file
}

@test 'src has _fbmsg-extractor.py' {
    assert "$src/_fbmsg-extractor.py" is_file
}

@test 'src has _fbset' {
    assert "$src/_fbset" is_file
}

@test 'src has _fbsplash' {
    assert "$src/_fbsplash" is_file
}

@test 'src has _fbstat' {
    assert "$src/_fbstat" is_file
}

@test 'src has _fbsvcmgr' {
    assert "$src/_fbsvcmgr" is_file
}

@test 'src has _fbtest' {
    assert "$src/_fbtest" is_file
}

@test 'src has _fbwrap' {
    assert "$src/_fbwrap" is_file
}

@test 'src has _fc-cache' {
    assert "$src/_fc-cache" is_file
}

@test 'src has _fc-cache-64' {
    assert "$src/_fc-cache-64" is_file
}

@test 'src has _fc-cat' {
    assert "$src/_fc-cat" is_file
}

@test 'src has _fc-conflist' {
    assert "$src/_fc-conflist" is_file
}

@test 'src has _fc-list' {
    assert "$src/_fc-list" is_file
}

@test 'src has _fc-match' {
    assert "$src/_fc-match" is_file
}

@test 'src has _fc-pattern' {
    assert "$src/_fc-pattern" is_file
}

@test 'src has _fc-query' {
    assert "$src/_fc-query" is_file
}

@test 'src has _fc-scan' {
    assert "$src/_fc-scan" is_file
}

@test 'src has _fc-validate' {
    assert "$src/_fc-validate" is_file
}

@test 'src has _fcat' {
    assert "$src/_fcat" is_file
}

@test 'src has _fcd_nfm_rx' {
    assert "$src/_fcd_nfm_rx" is_file
}

@test 'src has _fcnsq' {
    assert "$src/_fcnsq" is_file
}

@test 'src has _fcping' {
    assert "$src/_fcping" is_file
}

@test 'src has _fcrls' {
    assert "$src/_fcrls" is_file
}

@test 'src has _fd' {
    assert "$src/_fd" is_file
}

@test 'src has _fd2c' {
    assert "$src/_fd2c" is_file
}

@test 'src has _fddist' {
    assert "$src/_fddist" is_file
}

@test 'src has _fdformat' {
    assert "$src/_fdformat" is_file
}

@test 'src has _fdp' {
    assert "$src/_fdp" is_file
}

@test 'src has _fdtdump' {
    assert "$src/_fdtdump" is_file
}

@test 'src has _fdtoverlay' {
    assert "$src/_fdtoverlay" is_file
}

@test 'src has _fdupes' {
    assert "$src/_fdupes" is_file
}

@test 'src has _ferret' {
    assert "$src/_ferret" is_file
}

@test 'src has _festival' {
    assert "$src/_festival" is_file
}

@test 'src has _festival_client' {
    assert "$src/_festival_client" is_file
}

@test 'src has _festival_server' {
    assert "$src/_festival_server" is_file
}

@test 'src has _festival_server_control' {
    assert "$src/_festival_server_control" is_file
}

@test 'src has _fetch_file' {
    assert "$src/_fetch_file" is_file
}

@test 'src has _ff_signons.pl' {
    assert "$src/_ff_signons.pl" is_file
}

@test 'src has _ffcfstress' {
    assert "$src/_ffcfstress" is_file
}

@test 'src has _ffescape' {
    assert "$src/_ffescape" is_file
}

@test 'src has _ffeval' {
    assert "$src/_ffeval" is_file
}

@test 'src has _ffmpeg' {
    assert "$src/_ffmpeg" is_file
}

@test 'src has _fftw-wisdom' {
    assert "$src/_fftw-wisdom" is_file
}

@test 'src has _fftw-wisdom-to-conf' {
    assert "$src/_fftw-wisdom-to-conf" is_file
}

@test 'src has _fftwf-wisdom' {
    assert "$src/_fftwf-wisdom" is_file
}

@test 'src has _fftwl-wisdom' {
    assert "$src/_fftwl-wisdom" is_file
}

@test 'src has _fftwq-wisdom' {
    assert "$src/_fftwq-wisdom" is_file
}

@test 'src has _fgconsole' {
    assert "$src/_fgconsole" is_file
}

@test 'src has _fgrep' {
    assert "$src/_fgrep" is_file
}

@test 'src has _fh2raw' {
    assert "$src/_fh2raw" is_file
}

@test 'src has _fh2svg' {
    assert "$src/_fh2svg" is_file
}

@test 'src has _fh2text' {
    assert "$src/_fh2text" is_file
}

@test 'src has _fiascotopnm' {
    assert "$src/_fiascotopnm" is_file
}

@test 'src has _fibmap.f2fs' {
    assert "$src/_fibmap.f2fs" is_file
}

@test 'src has _fibreconfig' {
    assert "$src/_fibreconfig" is_file
}

@test 'src has _fierce' {
    assert "$src/_fierce" is_file
}

@test 'src has _fifolog_reader' {
    assert "$src/_fifolog_reader" is_file
}

@test 'src has _fig2dev' {
    assert "$src/_fig2dev" is_file
}

@test 'src has _fig2mpdf' {
    assert "$src/_fig2mpdf" is_file
}

@test 'src has _fig4latex' {
    assert "$src/_fig4latex" is_file
}

@test 'src has _figlet-toilet' {
    assert "$src/_figlet-toilet" is_file
}

@test 'src has _fiked' {
    assert "$src/_fiked" is_file
}

@test 'src has _filan' {
    assert "$src/_filan" is_file
}

@test 'src has _file-rename' {
    assert "$src/_file-rename" is_file
}

@test 'src has _file-roller' {
    assert "$src/_file-roller" is_file
}

@test 'src has _file2brl' {
    assert "$src/_file2brl" is_file
}

@test 'src has _filebeat' {
    assert "$src/_filebeat" is_file
}

@test 'src has _filebyproc.d' {
    assert "$src/_filebyproc.d" is_file
}

@test 'src has _filesize' {
    assert "$src/_filesize" is_file
}

@test 'src has _fillup' {
    assert "$src/_fillup" is_file
}

@test 'src has _fimap' {
    assert "$src/_fimap" is_file
}

@test 'src has _fincore' {
    assert "$src/_fincore" is_file
}

@test 'src has _find-all-symbols' {
    assert "$src/_find-all-symbols" is_file
}

@test 'src has _find-all-symbols12' {
    assert "$src/_find-all-symbols12" is_file
}

@test 'src has _find-all-symbols60' {
    assert "$src/_find-all-symbols60" is_file
}

@test 'src has _find-debuginfo' {
    assert "$src/_find-debuginfo" is_file
}

@test 'src has _find-repos-of-install' {
    assert "$src/_find-repos-of-install" is_file
}

@test 'src has _findbugs-csr' {
    assert "$src/_findbugs-csr" is_file
}

@test 'src has _findcmd' {
    assert "$src/_findcmd" is_file
}

@test 'src has _findfs' {
    assert "$src/_findfs" is_file
}

@test 'src has _findhyph' {
    assert "$src/_findhyph" is_file
}

@test 'src has _findmyhash' {
    assert "$src/_findmyhash" is_file
}

@test 'src has _fipvlan' {
    assert "$src/_fipvlan" is_file
}

@test 'src has _firecfg' {
    assert "$src/_firecfg" is_file
}

@test 'src has _firefox-esr' {
    assert "$src/_firefox-esr" is_file
}

@test 'src has _firejail' {
    assert "$src/_firejail" is_file
}

@test 'src has _firemon' {
    assert "$src/_firemon" is_file
}

@test 'src has _firewall-cmd' {
    assert "$src/_firewall-cmd" is_file
}

@test 'src has _firewalld' {
    assert "$src/_firewalld" is_file
}

@test 'src has _firmwarepasswd' {
    assert "$src/_firmwarepasswd" is_file
}

@test 'src has _five-or-more' {
    assert "$src/_five-or-more" is_file
}

@test 'src has _fiwalk' {
    assert "$src/_fiwalk" is_file
}

@test 'src has _fix-info-dir' {
    assert "$src/_fix-info-dir" is_file
}

@test 'src has _fixps' {
    assert "$src/_fixps" is_file
}

@test 'src has _fixqt4headers.pl' {
    assert "$src/_fixqt4headers.pl" is_file
}

@test 'src has _fixqt4headers.pl-qt5' {
    assert "$src/_fixqt4headers.pl-qt5" is_file
}

@test 'src has _flake8' {
    assert "$src/_flake8" is_file
}

@test 'src has _flamegraph.pl' {
    assert "$src/_flamegraph.pl" is_file
}

@test 'src has _flash_erase' {
    assert "$src/_flash_erase" is_file
}

@test 'src has _flash_eraseall' {
    assert "$src/_flash_eraseall" is_file
}

@test 'src has _flash_lock' {
    assert "$src/_flash_lock" is_file
}

@test 'src has _flash_unlock' {
    assert "$src/_flash_unlock" is_file
}

@test 'src has _flashcp' {
    assert "$src/_flashcp" is_file
}

@test 'src has _flashrom' {
    assert "$src/_flashrom" is_file
}

@test 'src has _flask' {
    assert "$src/_flask" is_file
}

@test 'src has _flasm' {
    assert "$src/_flasm" is_file
}

@test 'src has _flatpak' {
    assert "$src/_flatpak" is_file
}

@test 'src has _flatpak-bisect' {
    assert "$src/_flatpak-bisect" is_file
}

@test 'src has _flatpak-coredumpctl' {
    assert "$src/_flatpak-coredumpctl" is_file
}

@test 'src has _flexiblas' {
    assert "$src/_flexiblas" is_file
}

@test 'src has _flite' {
    assert "$src/_flite" is_file
}

@test 'src has _flite_cmu_time_awb' {
    assert "$src/_flite_cmu_time_awb" is_file
}

@test 'src has _flite_cmu_us_awb' {
    assert "$src/_flite_cmu_us_awb" is_file
}

@test 'src has _flite_cmu_us_kal' {
    assert "$src/_flite_cmu_us_kal" is_file
}

@test 'src has _flite_cmu_us_kal16' {
    assert "$src/_flite_cmu_us_kal16" is_file
}

@test 'src has _flite_cmu_us_rms' {
    assert "$src/_flite_cmu_us_rms" is_file
}

@test 'src has _flite_cmu_us_slt' {
    assert "$src/_flite_cmu_us_slt" is_file
}

@test 'src has _flock' {
    assert "$src/_flock" is_file
}

@test 'src has _florence' {
    assert "$src/_florence" is_file
}

@test 'src has _flowtop' {
    assert "$src/_flowtop" is_file
}

@test 'src has _fls' {
    assert "$src/_fls" is_file
}

@test 'src has _fluidsynth' {
    assert "$src/_fluidsynth" is_file
}

@test 'src has _fmtutil' {
    assert "$src/_fmtutil" is_file
}

@test 'src has _fmtutil-sys' {
    assert "$src/_fmtutil-sys" is_file
}

@test 'src has _fmtutil-user' {
    assert "$src/_fmtutil-user" is_file
}

@test 'src has _folks-import' {
    assert "$src/_folks-import" is_file
}

@test 'src has _folks-inspect' {
    assert "$src/_folks-inspect" is_file
}

@test 'src has _font_cache' {
    assert "$src/_font_cache" is_file
}

@test 'src has _fonts-config' {
    assert "$src/_fonts-config" is_file
}

@test 'src has _foo2ddst' {
    assert "$src/_foo2ddst" is_file
}

@test 'src has _foo2ddst-wrapper' {
    assert "$src/_foo2ddst-wrapper" is_file
}

@test 'src has _foo2hbpl2' {
    assert "$src/_foo2hbpl2" is_file
}

@test 'src has _foo2hbpl2-wrapper' {
    assert "$src/_foo2hbpl2-wrapper" is_file
}

@test 'src has _foo2hiperc' {
    assert "$src/_foo2hiperc" is_file
}

@test 'src has _foo2hiperc-wrapper' {
    assert "$src/_foo2hiperc-wrapper" is_file
}

@test 'src has _foo2hp' {
    assert "$src/_foo2hp" is_file
}

@test 'src has _foo2hp2600-wrapper' {
    assert "$src/_foo2hp2600-wrapper" is_file
}

@test 'src has _foo2lava' {
    assert "$src/_foo2lava" is_file
}

@test 'src has _foo2lava-wrapper' {
    assert "$src/_foo2lava-wrapper" is_file
}

@test 'src has _foo2oak' {
    assert "$src/_foo2oak" is_file
}

@test 'src has _foo2oak-wrapper' {
    assert "$src/_foo2oak-wrapper" is_file
}

@test 'src has _foo2qpdl' {
    assert "$src/_foo2qpdl" is_file
}

@test 'src has _foo2qpdl-wrapper' {
    assert "$src/_foo2qpdl-wrapper" is_file
}

@test 'src has _foo2slx' {
    assert "$src/_foo2slx" is_file
}

@test 'src has _foo2slx-wrapper' {
    assert "$src/_foo2slx-wrapper" is_file
}

@test 'src has _foo2xqx' {
    assert "$src/_foo2xqx" is_file
}

@test 'src has _foo2xqx-wrapper' {
    assert "$src/_foo2xqx-wrapper" is_file
}

@test 'src has _foo2zjs' {
    assert "$src/_foo2zjs" is_file
}

@test 'src has _foo2zjs-icc2ps' {
    assert "$src/_foo2zjs-icc2ps" is_file
}

@test 'src has _foo2zjs-pstops' {
    assert "$src/_foo2zjs-pstops" is_file
}

@test 'src has _foo2zjs-wrapper' {
    assert "$src/_foo2zjs-wrapper" is_file
}

@test 'src has _foomatic-addpjloptions' {
    assert "$src/_foomatic-addpjloptions" is_file
}

@test 'src has _foomatic-compiledb' {
    assert "$src/_foomatic-compiledb" is_file
}

@test 'src has _foomatic-configure' {
    assert "$src/_foomatic-configure" is_file
}

@test 'src has _foomatic-datafile' {
    assert "$src/_foomatic-datafile" is_file
}

@test 'src has _foomatic-perl-data' {
    assert "$src/_foomatic-perl-data" is_file
}

@test 'src has _foomatic-ppd-options' {
    assert "$src/_foomatic-ppd-options" is_file
}

@test 'src has _foomatic-ppd-to-xml' {
    assert "$src/_foomatic-ppd-to-xml" is_file
}

@test 'src has _foomatic-ppdfile' {
    assert "$src/_foomatic-ppdfile" is_file
}

@test 'src has _foomatic-printjob' {
    assert "$src/_foomatic-printjob" is_file
}

@test 'src has _foomatic-replaceoldprinterids' {
    assert "$src/_foomatic-replaceoldprinterids" is_file
}

@test 'src has _foomatic-searchprinter' {
    assert "$src/_foomatic-searchprinter" is_file
}

@test 'src has _footprint' {
    assert "$src/_footprint" is_file
}

@test 'src has _foremost' {
    assert "$src/_foremost" is_file
}

@test 'src has _formail' {
    assert "$src/_formail" is_file
}

@test 'src has _format-sql' {
    assert "$src/_format-sql" is_file
}

@test 'src has _format-sql5.18' {
    assert "$src/_format-sql5.18" is_file
}

@test 'src has _four-in-a-row' {
    assert "$src/_four-in-a-row" is_file
}

@test 'src has _fourcc2pixfmt' {
    assert "$src/_fourcc2pixfmt" is_file
}

@test 'src has _fpack' {
    assert "$src/_fpack" is_file
}

@test 'src has _fpc' {
    assert "$src/_fpc" is_file
}

@test 'src has _fpcalc' {
    assert "$src/_fpcalc" is_file
}

@test 'src has _fpcjres' {
    assert "$src/_fpcjres" is_file
}

@test 'src has _fpclasschart' {
    assert "$src/_fpclasschart" is_file
}

@test 'src has _fpcmake' {
    assert "$src/_fpcmake" is_file
}

@test 'src has _fpcmkcfg' {
    assert "$src/_fpcmkcfg" is_file
}

@test 'src has _fpcres' {
    assert "$src/_fpcres" is_file
}

@test 'src has _fpcreslipo' {
    assert "$src/_fpcreslipo" is_file
}

@test 'src has _fpcsubst' {
    assert "$src/_fpcsubst" is_file
}

@test 'src has _fpdoc' {
    assert "$src/_fpdoc" is_file
}

@test 'src has _fping' {
    assert "$src/_fping" is_file
}

@test 'src has _fping6' {
    assert "$src/_fping6" is_file
}

@test 'src has _fppkg' {
    assert "$src/_fppkg" is_file
}

@test 'src has _fprcp' {
    assert "$src/_fprcp" is_file
}

@test 'src has _fprintd-delete' {
    assert "$src/_fprintd-delete" is_file
}

@test 'src has _fprintd-enroll' {
    assert "$src/_fprintd-enroll" is_file
}

@test 'src has _fprintd-verify' {
    assert "$src/_fprintd-verify" is_file
}

@test 'src has _fragmaster' {
    assert "$src/_fragmaster" is_file
}

@test 'src has _fragrouter' {
    assert "$src/_fragrouter" is_file
}

@test 'src has _freeradius' {
    assert "$src/_freeradius" is_file
}

@test 'src has _freetype-config' {
    assert "$src/_freetype-config" is_file
}

@test 'src has _freshclam' {
    assert "$src/_freshclam" is_file
}

@test 'src has _fribidi' {
    assert "$src/_fribidi" is_file
}

@test 'src has _fribidi-config' {
    assert "$src/_fribidi-config" is_file
}

@test 'src has _frm' {
    assert "$src/_frm" is_file
}

@test 'src has _frm.mailutils' {
    assert "$src/_frm.mailutils" is_file
}

@test 'src has _from' {
    assert "$src/_from" is_file
}

@test 'src has _from.mailutils' {
    assert "$src/_from.mailutils" is_file
}

@test 'src has _fromdos' {
    assert "$src/_fromdos" is_file
}

@test 'src has _fsadm' {
    assert "$src/_fsadm" is_file
}

@test 'src has _fsapfsinfo' {
    assert "$src/_fsapfsinfo" is_file
}

@test 'src has _fsapfsmount' {
    assert "$src/_fsapfsmount" is_file
}

@test 'src has _fsck' {
    assert "$src/_fsck" is_file
}

@test 'src has _fsck.cramfs' {
    assert "$src/_fsck.cramfs" is_file
}

@test 'src has _fsck.exfat' {
    assert "$src/_fsck.exfat" is_file
}

@test 'src has _fsck.ext2' {
    assert "$src/_fsck.ext2" is_file
}

@test 'src has _fsck.ext3' {
    assert "$src/_fsck.ext3" is_file
}

@test 'src has _fsck.ext4' {
    assert "$src/_fsck.ext4" is_file
}

@test 'src has _fsck.ext4dev' {
    assert "$src/_fsck.ext4dev" is_file
}

@test 'src has _fsck.f2fs' {
    assert "$src/_fsck.f2fs" is_file
}

@test 'src has _fsck.fat' {
    assert "$src/_fsck.fat" is_file
}

@test 'src has _fsck.hfs' {
    assert "$src/_fsck.hfs" is_file
}

@test 'src has _fsck.hfsplus' {
    assert "$src/_fsck.hfsplus" is_file
}

@test 'src has _fsck.jfs' {
    assert "$src/_fsck.jfs" is_file
}

@test 'src has _fsck.minix' {
    assert "$src/_fsck.minix" is_file
}

@test 'src has _fsck.msdos' {
    assert "$src/_fsck.msdos" is_file
}

@test 'src has _fsck.reiser4' {
    assert "$src/_fsck.reiser4" is_file
}

@test 'src has _fsck.reiserfs' {
    assert "$src/_fsck.reiserfs" is_file
}

@test 'src has _fsck.vfat' {
    assert "$src/_fsck.vfat" is_file
}

@test 'src has _fsck_apfs' {
    assert "$src/_fsck_apfs" is_file
}

@test 'src has _fsfreeze' {
    assert "$src/_fsfreeze" is_file
}

@test 'src has _fsfs-stats' {
    assert "$src/_fsfs-stats" is_file
}

@test 'src has _fsharpc' {
    assert "$src/_fsharpc" is_file
}

@test 'src has _fsharpi' {
    assert "$src/_fsharpi" is_file
}

@test 'src has _fslsfonts' {
    assert "$src/_fslsfonts" is_file
}

@test 'src has _fsstat' {
    assert "$src/_fsstat" is_file
}

@test 'src has _fstrim' {
    assert "$src/_fstrim" is_file
}

@test 'src has _fstyp_hfs' {
    assert "$src/_fstyp_hfs" is_file
}

@test 'src has _fstyp_msdos' {
    assert "$src/_fstyp_msdos" is_file
}

@test 'src has _fstyp_ntfs' {
    assert "$src/_fstyp_ntfs" is_file
}

@test 'src has _fstyp_udf' {
    assert "$src/_fstyp_udf" is_file
}

@test 'src has _fswatch' {
    assert "$src/_fswatch" is_file
}

@test 'src has _fsync' {
    assert "$src/_fsync" is_file
}

@test 'src has _ftdi_eeprom' {
    assert "$src/_ftdi_eeprom" is_file
}

@test 'src has _ftest' {
    assert "$src/_ftest" is_file
}

@test 'src has _ftpd' {
    assert "$src/_ftpd" is_file
}

@test 'src has _funpack' {
    assert "$src/_funpack" is_file
}

@test 'src has _fuse-overlayfs' {
    assert "$src/_fuse-overlayfs" is_file
}

@test 'src has _fuse2fs' {
    assert "$src/_fuse2fs" is_file
}

@test 'src has _fusermount-glusterfs' {
    assert "$src/_fusermount-glusterfs" is_file
}

@test 'src has _futility' {
    assert "$src/_futility" is_file
}

@test 'src has _futility_s' {
    assert "$src/_futility_s" is_file
}

@test 'src has _futurize' {
    assert "$src/_futurize" is_file
}

@test 'src has _fvdeinfo' {
    assert "$src/_fvdeinfo" is_file
}

@test 'src has _fvdemount' {
    assert "$src/_fvdemount" is_file
}

@test 'src has _fvdewipekey' {
    assert "$src/_fvdewipekey" is_file
}

@test 'src has _fw_setenv' {
    assert "$src/_fw_setenv" is_file
}

@test 'src has _fwcontrol' {
    assert "$src/_fwcontrol" is_file
}

@test 'src has _fwupdate' {
    assert "$src/_fwupdate" is_file
}

@test 'src has _fwupdmgr' {
    assert "$src/_fwupdmgr" is_file
}

@test 'src has _fzf' {
    assert "$src/_fzf" is_file
}

@test 'src has _fzf-preview.sh' {
    assert "$src/_fzf-preview.sh" is_file
}

@test 'src has _fzf-tmux' {
    assert "$src/_fzf-tmux" is_file
}

@test 'src has _g++-10' {
    assert "$src/_g++-10" is_file
}

@test 'src has _g++-11' {
    assert "$src/_g++-11" is_file
}

@test 'src has _g++-12' {
    assert "$src/_g++-12" is_file
}

@test 'src has _g++-13' {
    assert "$src/_g++-13" is_file
}

@test 'src has _g++-14' {
    assert "$src/_g++-14" is_file
}

@test 'src has _g++-4.9' {
    assert "$src/_g++-4.9" is_file
}

@test 'src has _g++-5' {
    assert "$src/_g++-5" is_file
}

@test 'src has _g++-6' {
    assert "$src/_g++-6" is_file
}

@test 'src has _g++-7' {
    assert "$src/_g++-7" is_file
}

@test 'src has _g++-8' {
    assert "$src/_g++-8" is_file
}

@test 'src has _g++-9' {
    assert "$src/_g++-9" is_file
}

@test 'src has _g++10' {
    assert "$src/_g++10" is_file
}

@test 'src has _g-ir-annotation-tool' {
    assert "$src/_g-ir-annotation-tool" is_file
}

@test 'src has _g-ir-compiler' {
    assert "$src/_g-ir-compiler" is_file
}

@test 'src has _g-ir-generate' {
    assert "$src/_g-ir-generate" is_file
}

@test 'src has _g-ir-inspect' {
    assert "$src/_g-ir-inspect" is_file
}

@test 'src has _g-ir-scanner' {
    assert "$src/_g-ir-scanner" is_file
}

@test 'src has _g13' {
    assert "$src/_g13" is_file
}

@test 'src has _g13-syshelp' {
    assert "$src/_g13-syshelp" is_file
}

@test 'src has _gacutil' {
    assert "$src/_gacutil" is_file
}

@test 'src has _gacutil2' {
    assert "$src/_gacutil2" is_file
}

@test 'src has _galleta' {
    assert "$src/_galleta" is_file
}

@test 'src has _gamemoded' {
    assert "$src/_gamemoded" is_file
}

@test 'src has _garden' {
    assert "$src/_garden" is_file
}

@test 'src has _gatttool' {
    assert "$src/_gatttool" is_file
}

@test 'src has _gaussfilter' {
    assert "$src/_gaussfilter" is_file
}

@test 'src has _gawk' {
    assert "$src/_gawk" is_file
}

@test 'src has _gawk-4.2.1' {
    assert "$src/_gawk-4.2.1" is_file
}

@test 'src has _gawk-5.0.1' {
    assert "$src/_gawk-5.0.1" is_file
}

@test 'src has _gawk-5.1.0' {
    assert "$src/_gawk-5.1.0" is_file
}

@test 'src has _gawk-5.1.1' {
    assert "$src/_gawk-5.1.1" is_file
}

@test 'src has _gawk-5.2.2' {
    assert "$src/_gawk-5.2.2" is_file
}

@test 'src has _gawk-5.3.0' {
    assert "$src/_gawk-5.3.0" is_file
}

@test 'src has _gawk-5.3.1' {
    assert "$src/_gawk-5.3.1" is_file
}

@test 'src has _gbak' {
    assert "$src/_gbak" is_file
}

@test 'src has _gbasenc' {
    assert "$src/_gbasenc" is_file
}

@test 'src has _gbb_utility' {
    assert "$src/_gbb_utility" is_file
}

@test 'src has _gcab' {
    assert "$src/_gcab" is_file
}

@test 'src has _gcc-10' {
    assert "$src/_gcc-10" is_file
}

@test 'src has _gcc-11' {
    assert "$src/_gcc-11" is_file
}

@test 'src has _gcc-12' {
    assert "$src/_gcc-12" is_file
}

@test 'src has _gcc-13' {
    assert "$src/_gcc-13" is_file
}

@test 'src has _gcc-14' {
    assert "$src/_gcc-14" is_file
}

@test 'src has _gcc-5' {
    assert "$src/_gcc-5" is_file
}

@test 'src has _gcc-6' {
    assert "$src/_gcc-6" is_file
}

@test 'src has _gcc-7' {
    assert "$src/_gcc-7" is_file
}

@test 'src has _gcc-8' {
    assert "$src/_gcc-8" is_file
}

@test 'src has _gcc-9' {
    assert "$src/_gcc-9" is_file
}

@test 'src has _gcc-ar' {
    assert "$src/_gcc-ar" is_file
}

@test 'src has _gcc-ar-10' {
    assert "$src/_gcc-ar-10" is_file
}

@test 'src has _gcc-ar-11' {
    assert "$src/_gcc-ar-11" is_file
}

@test 'src has _gcc-ar-12' {
    assert "$src/_gcc-ar-12" is_file
}

@test 'src has _gcc-ar-13' {
    assert "$src/_gcc-ar-13" is_file
}

@test 'src has _gcc-ar-14' {
    assert "$src/_gcc-ar-14" is_file
}

@test 'src has _gcc-ar-4.9' {
    assert "$src/_gcc-ar-4.9" is_file
}

@test 'src has _gcc-ar-5' {
    assert "$src/_gcc-ar-5" is_file
}

@test 'src has _gcc-ar-6' {
    assert "$src/_gcc-ar-6" is_file
}

@test 'src has _gcc-ar-7' {
    assert "$src/_gcc-ar-7" is_file
}

@test 'src has _gcc-ar-8' {
    assert "$src/_gcc-ar-8" is_file
}

@test 'src has _gcc-ar-9' {
    assert "$src/_gcc-ar-9" is_file
}

@test 'src has _gcc-ar10' {
    assert "$src/_gcc-ar10" is_file
}

@test 'src has _gcc-nm' {
    assert "$src/_gcc-nm" is_file
}

@test 'src has _gcc-nm-10' {
    assert "$src/_gcc-nm-10" is_file
}

@test 'src has _gcc-nm-11' {
    assert "$src/_gcc-nm-11" is_file
}

@test 'src has _gcc-nm-12' {
    assert "$src/_gcc-nm-12" is_file
}

@test 'src has _gcc-nm-13' {
    assert "$src/_gcc-nm-13" is_file
}

@test 'src has _gcc-nm-14' {
    assert "$src/_gcc-nm-14" is_file
}

@test 'src has _gcc-nm-4.9' {
    assert "$src/_gcc-nm-4.9" is_file
}

@test 'src has _gcc-nm-5' {
    assert "$src/_gcc-nm-5" is_file
}

@test 'src has _gcc-nm-6' {
    assert "$src/_gcc-nm-6" is_file
}

@test 'src has _gcc-nm-7' {
    assert "$src/_gcc-nm-7" is_file
}

@test 'src has _gcc-nm-8' {
    assert "$src/_gcc-nm-8" is_file
}

@test 'src has _gcc-nm-9' {
    assert "$src/_gcc-nm-9" is_file
}

@test 'src has _gcc-nm10' {
    assert "$src/_gcc-nm10" is_file
}

@test 'src has _gcc-ranlib' {
    assert "$src/_gcc-ranlib" is_file
}

@test 'src has _gcc-ranlib-10' {
    assert "$src/_gcc-ranlib-10" is_file
}

@test 'src has _gcc-ranlib-12' {
    assert "$src/_gcc-ranlib-12" is_file
}

@test 'src has _gcc-ranlib-13' {
    assert "$src/_gcc-ranlib-13" is_file
}

@test 'src has _gcc-ranlib-14' {
    assert "$src/_gcc-ranlib-14" is_file
}

@test 'src has _gcc-ranlib-4.9' {
    assert "$src/_gcc-ranlib-4.9" is_file
}

@test 'src has _gcc-ranlib-5' {
    assert "$src/_gcc-ranlib-5" is_file
}

@test 'src has _gcc-ranlib-6' {
    assert "$src/_gcc-ranlib-6" is_file
}

@test 'src has _gcc-ranlib-7' {
    assert "$src/_gcc-ranlib-7" is_file
}

@test 'src has _gcc-ranlib-8' {
    assert "$src/_gcc-ranlib-8" is_file
}

@test 'src has _gcc-ranlib-9' {
    assert "$src/_gcc-ranlib-9" is_file
}

@test 'src has _gcc-ranlib10' {
    assert "$src/_gcc-ranlib10" is_file
}

@test 'src has _gcc10' {
    assert "$src/_gcc10" is_file
}

@test 'src has _gchcon' {
    assert "$src/_gchcon" is_file
}

@test 'src has _gcm-calibrate' {
    assert "$src/_gcm-calibrate" is_file
}

@test 'src has _gcm-import' {
    assert "$src/_gcm-import" is_file
}

@test 'src has _gcm-inspect' {
    assert "$src/_gcm-inspect" is_file
}

@test 'src has _gcm-picker' {
    assert "$src/_gcm-picker" is_file
}

@test 'src has _gcm-viewer' {
    assert "$src/_gcm-viewer" is_file
}

@test 'src has _gconf-editor' {
    assert "$src/_gconf-editor" is_file
}

@test 'src has _gconf-schemas' {
    assert "$src/_gconf-schemas" is_file
}

@test 'src has _gconftool' {
    assert "$src/_gconftool" is_file
}

@test 'src has _gconftool-2' {
    assert "$src/_gconftool-2" is_file
}

@test 'src has _gconftool-rebuild' {
    assert "$src/_gconftool-rebuild" is_file
}

@test 'src has _gcov' {
    assert "$src/_gcov" is_file
}

@test 'src has _gcov-10' {
    assert "$src/_gcov-10" is_file
}

@test 'src has _gcov-11' {
    assert "$src/_gcov-11" is_file
}

@test 'src has _gcov-12' {
    assert "$src/_gcov-12" is_file
}

@test 'src has _gcov-13' {
    assert "$src/_gcov-13" is_file
}

@test 'src has _gcov-14' {
    assert "$src/_gcov-14" is_file
}

@test 'src has _gcov-4.9' {
    assert "$src/_gcov-4.9" is_file
}

@test 'src has _gcov-5' {
    assert "$src/_gcov-5" is_file
}

@test 'src has _gcov-6' {
    assert "$src/_gcov-6" is_file
}

@test 'src has _gcov-7' {
    assert "$src/_gcov-7" is_file
}

@test 'src has _gcov-8' {
    assert "$src/_gcov-8" is_file
}

@test 'src has _gcov-9' {
    assert "$src/_gcov-9" is_file
}

@test 'src has _gcov-dump' {
    assert "$src/_gcov-dump" is_file
}

@test 'src has _gcov-dump-10' {
    assert "$src/_gcov-dump-10" is_file
}

@test 'src has _gcov-dump-11' {
    assert "$src/_gcov-dump-11" is_file
}

@test 'src has _gcov-dump-12' {
    assert "$src/_gcov-dump-12" is_file
}

@test 'src has _gcov-dump-13' {
    assert "$src/_gcov-dump-13" is_file
}

@test 'src has _gcov-dump-14' {
    assert "$src/_gcov-dump-14" is_file
}

@test 'src has _gcov-dump-6' {
    assert "$src/_gcov-dump-6" is_file
}

@test 'src has _gcov-dump-7' {
    assert "$src/_gcov-dump-7" is_file
}

@test 'src has _gcov-dump-8' {
    assert "$src/_gcov-dump-8" is_file
}

@test 'src has _gcov-dump-9' {
    assert "$src/_gcov-dump-9" is_file
}

@test 'src has _gcov-dump10' {
    assert "$src/_gcov-dump10" is_file
}

@test 'src has _gcov-tool' {
    assert "$src/_gcov-tool" is_file
}

@test 'src has _gcov-tool-10' {
    assert "$src/_gcov-tool-10" is_file
}

@test 'src has _gcov-tool-11' {
    assert "$src/_gcov-tool-11" is_file
}

@test 'src has _gcov-tool-12' {
    assert "$src/_gcov-tool-12" is_file
}

@test 'src has _gcov-tool-13' {
    assert "$src/_gcov-tool-13" is_file
}

@test 'src has _gcov-tool-14' {
    assert "$src/_gcov-tool-14" is_file
}

@test 'src has _gcov-tool-5' {
    assert "$src/_gcov-tool-5" is_file
}

@test 'src has _gcov-tool-6' {
    assert "$src/_gcov-tool-6" is_file
}

@test 'src has _gcov-tool-7' {
    assert "$src/_gcov-tool-7" is_file
}

@test 'src has _gcov-tool-8' {
    assert "$src/_gcov-tool-8" is_file
}

@test 'src has _gcov-tool-9' {
    assert "$src/_gcov-tool-9" is_file
}

@test 'src has _gcov-tool10' {
    assert "$src/_gcov-tool10" is_file
}

@test 'src has _gcov10' {
    assert "$src/_gcov10" is_file
}

@test 'src has _gcr-viewer' {
    assert "$src/_gcr-viewer" is_file
}

@test 'src has _gcr-viewer-gtk4' {
    assert "$src/_gcr-viewer-gtk4" is_file
}

@test 'src has _gcsplit' {
    assert "$src/_gcsplit" is_file
}

@test 'src has _gdal2tiles.py' {
    assert "$src/_gdal2tiles.py" is_file
}

@test 'src has _gdal_calc.py' {
    assert "$src/_gdal_calc.py" is_file
}

@test 'src has _gdal_retile.py' {
    assert "$src/_gdal_retile.py" is_file
}

@test 'src has _gdb.py' {
    assert "$src/_gdb.py" is_file
}

@test 'src has _gdb_wrapper' {
    assert "$src/_gdb_wrapper" is_file
}

@test 'src has _gdbm_dump' {
    assert "$src/_gdbm_dump" is_file
}

@test 'src has _gdbm_load' {
    assert "$src/_gdbm_load" is_file
}

@test 'src has _gdbmtool' {
    assert "$src/_gdbmtool" is_file
}

@test 'src has _gdbserver' {
    assert "$src/_gdbserver" is_file
}

@test 'src has _gdbtui' {
    assert "$src/_gdbtui" is_file
}

@test 'src has _gdbus-codegen' {
    assert "$src/_gdbus-codegen" is_file
}

@test 'src has _gdc' {
    assert "$src/_gdc" is_file
}

@test 'src has _gdc-11' {
    assert "$src/_gdc-11" is_file
}

@test 'src has _gdebi' {
    assert "$src/_gdebi" is_file
}

@test 'src has _gdebi-gtk' {
    assert "$src/_gdebi-gtk" is_file
}

@test 'src has _gdialog' {
    assert "$src/_gdialog" is_file
}

@test 'src has _gdiff3' {
    assert "$src/_gdiff3" is_file
}

@test 'src has _gdiffmk' {
    assert "$src/_gdiffmk" is_file
}

@test 'src has _gdir' {
    assert "$src/_gdir" is_file
}

@test 'src has _gdircolors' {
    assert "$src/_gdircolors" is_file
}

@test 'src has _gdirname' {
    assert "$src/_gdirname" is_file
}

@test 'src has _gdk-pixbuf-csource' {
    assert "$src/_gdk-pixbuf-csource" is_file
}

@test 'src has _gdk-pixbuf-pixdata' {
    assert "$src/_gdk-pixbuf-pixdata" is_file
}

@test 'src has _gdk-pixbuf-thumbnailer' {
    assert "$src/_gdk-pixbuf-thumbnailer" is_file
}

@test 'src has _gdlib-config' {
    assert "$src/_gdlib-config" is_file
}

@test 'src has _gdm' {
    assert "$src/_gdm" is_file
}

@test 'src has _gdm-screenshot' {
    assert "$src/_gdm-screenshot" is_file
}

@test 'src has _gdm3' {
    assert "$src/_gdm3" is_file
}

@test 'src has _gdmflexiserver' {
    assert "$src/_gdmflexiserver" is_file
}

@test 'src has _geary' {
    assert "$src/_geary" is_file
}

@test 'src has _gecho' {
    assert "$src/_gecho" is_file
}

@test 'src has _geckodriver' {
    assert "$src/_geckodriver" is_file
}

@test 'src has _gedit' {
    assert "$src/_gedit" is_file
}

@test 'src has _gegl' {
    assert "$src/_gegl" is_file
}

@test 'src has _gegl3' {
    assert "$src/_gegl3" is_file
}

@test 'src has _genDDNSkey' {
    assert "$src/_genDDNSkey" is_file
}

@test 'src has _genbrk' {
    assert "$src/_genbrk" is_file
}

@test 'src has _gencat' {
    assert "$src/_gencat" is_file
}

@test 'src has _genccode' {
    assert "$src/_genccode" is_file
}

@test 'src has _gencfu' {
    assert "$src/_gencfu" is_file
}

@test 'src has _gencmn' {
    assert "$src/_gencmn" is_file
}

@test 'src has _gencnval' {
    assert "$src/_gencnval" is_file
}

@test 'src has _gendict' {
    assert "$src/_gendict" is_file
}

@test 'src has _generate_lut_template' {
    assert "$src/_generate_lut_template" is_file
}

@test 'src has _genkeys' {
    assert "$src/_genkeys" is_file
}

@test 'src has _genl-ctrl-list' {
    assert "$src/_genl-ctrl-list" is_file
}

@test 'src has _gennorm2' {
    assert "$src/_gennorm2" is_file
}

@test 'src has _genpmk' {
    assert "$src/_genpmk" is_file
}

@test 'src has _genrb' {
    assert "$src/_genrb" is_file
}

@test 'src has _genresscript' {
    assert "$src/_genresscript" is_file
}

@test 'src has _gensnmptree' {
    assert "$src/_gensnmptree" is_file
}

@test 'src has _gensprep' {
    assert "$src/_gensprep" is_file
}

@test 'src has _gentest' {
    assert "$src/_gentest" is_file
}

@test 'src has _genyshell' {
    assert "$src/_genyshell" is_file
}

@test 'src has _geo' {
    assert "$src/_geo" is_file
}

@test 'src has _geoipupdate' {
    assert "$src/_geoipupdate" is_file
}

@test 'src has _geqn' {
    assert "$src/_geqn" is_file
}

@test 'src has _ges-launch-1.0' {
    assert "$src/_ges-launch-1.0" is_file
}

@test 'src has _get-edid' {
    assert "$src/_get-edid" is_file
}

@test 'src has _get-iab' {
    assert "$src/_get-iab" is_file
}

@test 'src has _get-oui' {
    assert "$src/_get-oui" is_file
}

@test 'src has _getS4U2proxy' {
    assert "$src/_getS4U2proxy" is_file
}

@test 'src has _getTGS' {
    assert "$src/_getTGS" is_file
}

@test 'src has _getTGT' {
    assert "$src/_getTGT" is_file
}

@test 'src has _getafm' {
    assert "$src/_getafm" is_file
}

@test 'src has _getcert' {
    assert "$src/_getcert" is_file
}

@test 'src has _geteltorito' {
    assert "$src/_geteltorito" is_file
}

@test 'src has _getent' {
    assert "$src/_getent" is_file
}

@test 'src has _getfacl' {
    assert "$src/_getfacl" is_file
}

@test 'src has _getfattr' {
    assert "$src/_getfattr" is_file
}

@test 'src has _getmapdl' {
    assert "$src/_getmapdl" is_file
}

@test 'src has _getopt' {
    assert "$src/_getopt" is_file
}

@test 'src has _getpcaps' {
    assert "$src/_getpcaps" is_file
}

@test 'src has _gettext' {
    assert "$src/_gettext" is_file
}

@test 'src has _gettextize' {
    assert "$src/_gettextize" is_file
}

@test 'src has _getty' {
    assert "$src/_getty" is_file
}

@test 'src has _gexpr' {
    assert "$src/_gexpr" is_file
}

@test 'src has _gfactor' {
    assert "$src/_gfactor" is_file
}

@test 'src has _gfalse' {
    assert "$src/_gfalse" is_file
}

@test 'src has _gfix' {
    assert "$src/_gfix" is_file
}

@test 'src has _gforth' {
    assert "$src/_gforth" is_file
}

@test 'src has _gforth-0.7.3' {
    assert "$src/_gforth-0.7.3" is_file
}

@test 'src has _gforth-fast' {
    assert "$src/_gforth-fast" is_file
}

@test 'src has _gforth-fast-0.7.3' {
    assert "$src/_gforth-fast-0.7.3" is_file
}

@test 'src has _gforth-itc' {
    assert "$src/_gforth-itc" is_file
}

@test 'src has _gforth-itc-0.7.3' {
    assert "$src/_gforth-itc-0.7.3" is_file
}

@test 'src has _gfortran' {
    assert "$src/_gfortran" is_file
}

@test 'src has _gfortran-10' {
    assert "$src/_gfortran-10" is_file
}

@test 'src has _gfortran-11' {
    assert "$src/_gfortran-11" is_file
}

@test 'src has _gfortran-12' {
    assert "$src/_gfortran-12" is_file
}

@test 'src has _gfortran-13' {
    assert "$src/_gfortran-13" is_file
}

@test 'src has _gfortran-14' {
    assert "$src/_gfortran-14" is_file
}

@test 'src has _gfortran-8' {
    assert "$src/_gfortran-8" is_file
}

@test 'src has _gfortran-9' {
    assert "$src/_gfortran-9" is_file
}

@test 'src has _gfortran10' {
    assert "$src/_gfortran10" is_file
}

@test 'src has _gftodvi' {
    assert "$src/_gftodvi" is_file
}

@test 'src has _gftopk' {
    assert "$src/_gftopk" is_file
}

@test 'src has _gftype' {
    assert "$src/_gftype" is_file
}

@test 'src has _ggroups' {
    assert "$src/_ggroups" is_file
}

@test 'src has _gh' {
    assert "$src/_gh" is_file
}

@test 'src has _ghc-8.10.3' {
    assert "$src/_ghc-8.10.3" is_file
}

@test 'src has _ghc-8.10.7' {
    assert "$src/_ghc-8.10.7" is_file
}

@test 'src has _ghc-9.10.1' {
    assert "$src/_ghc-9.10.1" is_file
}

@test 'src has _ghc-9.4.4' {
    assert "$src/_ghc-9.4.4" is_file
}

@test 'src has _ghc-9.8.2' {
    assert "$src/_ghc-9.8.2" is_file
}

@test 'src has _ghc-pkg-8.4.4' {
    assert "$src/_ghc-pkg-8.4.4" is_file
}

@test 'src has _ghc-pkg-8.6.5' {
    assert "$src/_ghc-pkg-8.6.5" is_file
}

@test 'src has _ghc-pkg-9.4.4' {
    assert "$src/_ghc-pkg-9.4.4" is_file
}

@test 'src has _ghci-8.10.7' {
    assert "$src/_ghci-8.10.7" is_file
}

@test 'src has _ghci-8.4.4' {
    assert "$src/_ghci-8.4.4" is_file
}

@test 'src has _ghci-9.10.1' {
    assert "$src/_ghci-9.10.1" is_file
}

@test 'src has _ghci-9.4.4' {
    assert "$src/_ghci-9.4.4" is_file
}

@test 'src has _ghex' {
    assert "$src/_ghex" is_file
}

@test 'src has _ghostid' {
    assert "$src/_ghostid" is_file
}

@test 'src has _gi-compile-repository' {
    assert "$src/_gi-compile-repository" is_file
}

@test 'src has _gi-decompile-typelib' {
    assert "$src/_gi-decompile-typelib" is_file
}

@test 'src has _gi-inspect-typelib' {
    assert "$src/_gi-inspect-typelib" is_file
}

@test 'src has _gids-tool' {
    assert "$src/_gids-tool" is_file
}

@test 'src has _gie' {
    assert "$src/_gie" is_file
}

@test 'src has _gif2webp' {
    assert "$src/_gif2webp" is_file
}

@test 'src has _gifdiff' {
    assert "$src/_gifdiff" is_file
}

@test 'src has _gimp' {
    assert "$src/_gimp" is_file
}

@test 'src has _gimp-2.10' {
    assert "$src/_gimp-2.10" is_file
}

@test 'src has _gimp-2.8' {
    assert "$src/_gimp-2.8" is_file
}

@test 'src has _gimp-console' {
    assert "$src/_gimp-console" is_file
}

@test 'src has _gimp-console-2.10' {
    assert "$src/_gimp-console-2.10" is_file
}

@test 'src has _gimp-console-2.8' {
    assert "$src/_gimp-console-2.8" is_file
}

@test 'src has _gimp-test-clipboard-2.0' {
    assert "$src/_gimp-test-clipboard-2.0" is_file
}

@test 'src has _ginstall-info' {
    assert "$src/_ginstall-info" is_file
}

@test 'src has _gipddecode' {
    assert "$src/_gipddecode" is_file
}

@test 'src has _gis4cookie.pl' {
    assert "$src/_gis4cookie.pl" is_file
}

@test 'src has _giskismet' {
    assert "$src/_giskismet" is_file
}

@test 'src has _gist-paste' {
    assert "$src/_gist-paste" is_file
}

@test 'src has _git-clang-format' {
    assert "$src/_git-clang-format" is_file
}

@test 'src has _git-cvsserver' {
    assert "$src/_git-cvsserver" is_file
}

@test 'src has _git-latexdiff' {
    assert "$src/_git-latexdiff" is_file
}

@test 'src has _git-receive-pack' {
    assert "$src/_git-receive-pack" is_file
}

@test 'src has _git-upload-pack' {
    assert "$src/_git-upload-pack" is_file
}

@test 'src has _gitSdiffColorizer.pl' {
    assert "$src/_gitSdiffColorizer.pl" is_file
}

@test 'src has _gitdiff' {
    assert "$src/_gitdiff" is_file
}

@test 'src has _gitgo.sh' {
    assert "$src/_gitgo.sh" is_file
}

@test 'src has _gitk' {
    assert "$src/_gitk" is_file
}

@test 'src has _gitx' {
    assert "$src/_gitx" is_file
}

@test 'src has _gjs' {
    assert "$src/_gjs" is_file
}

@test 'src has _gjs-console' {
    assert "$src/_gjs-console" is_file
}

@test 'src has _gkbd-keyboard-display' {
    assert "$src/_gkbd-keyboard-display" is_file
}

@test 'src has _gkill' {
    assert "$src/_gkill" is_file
}

@test 'src has _gksu' {
    assert "$src/_gksu" is_file
}

@test 'src has _gksudo' {
    assert "$src/_gksudo" is_file
}

@test 'src has _gktool' {
    assert "$src/_gktool" is_file
}

@test 'src has _glacier' {
    assert "$src/_glacier" is_file
}

@test 'src has _glade' {
    assert "$src/_glade" is_file
}

@test 'src has _glade-previewer' {
    assert "$src/_glade-previewer" is_file
}

@test 'src has _glances' {
    assert "$src/_glances" is_file
}

@test 'src has _gleam' {
    assert "$src/_gleam" is_file
}

@test 'src has _glib-compile-resources' {
    assert "$src/_glib-compile-resources" is_file
}

@test 'src has _glib-compile-schemas' {
    assert "$src/_glib-compile-schemas" is_file
}

@test 'src has _glib-genmarshal' {
    assert "$src/_glib-genmarshal" is_file
}

@test 'src has _glib-gettextize' {
    assert "$src/_glib-gettextize" is_file
}

@test 'src has _glib-mkenums' {
    assert "$src/_glib-mkenums" is_file
}

@test 'src has _glibtool' {
    assert "$src/_glibtool" is_file
}

@test 'src has _glibtoolize' {
    assert "$src/_glibtoolize" is_file
}

@test 'src has _glink' {
    assert "$src/_glink" is_file
}

@test 'src has _glob' {
    assert "$src/_glob" is_file
}

@test 'src has _glogname' {
    assert "$src/_glogname" is_file
}

@test 'src has _glslangValidator' {
    assert "$src/_glslangValidator" is_file
}

@test 'src has _glslc' {
    assert "$src/_glslc" is_file
}

@test 'src has _gluster-georep-sshkey' {
    assert "$src/_gluster-georep-sshkey" is_file
}

@test 'src has _glusterfs' {
    assert "$src/_glusterfs" is_file
}

@test 'src has _glusterfsd' {
    assert "$src/_glusterfsd" is_file
}

@test 'src has _glxgears' {
    assert "$src/_glxgears" is_file
}

@test 'src has _glxgears.aarch64-linux-gnu' {
    assert "$src/_glxgears.aarch64-linux-gnu" is_file
}

@test 'src has _glxinfo' {
    assert "$src/_glxinfo" is_file
}

@test 'src has _glxinfo.aarch64-linux-gnu' {
    assert "$src/_glxinfo.aarch64-linux-gnu" is_file
}

@test 'src has _glxinfo64' {
    assert "$src/_glxinfo64" is_file
}

@test 'src has _gm2' {
    assert "$src/_gm2" is_file
}

@test 'src has _gm4' {
    assert "$src/_gm4" is_file
}

@test 'src has _gmake' {
    assert "$src/_gmake" is_file
}

@test 'src has _gmkfifo' {
    assert "$src/_gmkfifo" is_file
}

@test 'src has _gmknod' {
    assert "$src/_gmknod" is_file
}

@test 'src has _gml2gv' {
    assert "$src/_gml2gv" is_file
}

@test 'src has _gnice' {
    assert "$src/_gnice" is_file
}

@test 'src has _gnohup' {
    assert "$src/_gnohup" is_file
}

@test 'src has _gnome-2048' {
    assert "$src/_gnome-2048" is_file
}

@test 'src has _gnome-activity-journal' {
    assert "$src/_gnome-activity-journal" is_file
}

@test 'src has _gnome-books' {
    assert "$src/_gnome-books" is_file
}

@test 'src has _gnome-browser-connector' {
    assert "$src/_gnome-browser-connector" is_file
}

@test 'src has _gnome-browser-connector-host' {
    assert "$src/_gnome-browser-connector-host" is_file
}

@test 'src has _gnome-calculator' {
    assert "$src/_gnome-calculator" is_file
}

@test 'src has _gnome-calendar' {
    assert "$src/_gnome-calendar" is_file
}

@test 'src has _gnome-character-map' {
    assert "$src/_gnome-character-map" is_file
}

@test 'src has _gnome-characters' {
    assert "$src/_gnome-characters" is_file
}

@test 'src has _gnome-chess' {
    assert "$src/_gnome-chess" is_file
}

@test 'src has _gnome-clocks' {
    assert "$src/_gnome-clocks" is_file
}

@test 'src has _gnome-contacts' {
    assert "$src/_gnome-contacts" is_file
}

@test 'src has _gnome-dictionary' {
    assert "$src/_gnome-dictionary" is_file
}

@test 'src has _gnome-disk-image-mounter' {
    assert "$src/_gnome-disk-image-mounter" is_file
}

@test 'src has _gnome-disks' {
    assert "$src/_gnome-disks" is_file
}

@test 'src has _gnome-doc-prepare' {
    assert "$src/_gnome-doc-prepare" is_file
}

@test 'src has _gnome-documents' {
    assert "$src/_gnome-documents" is_file
}

@test 'src has _gnome-eject' {
    assert "$src/_gnome-eject" is_file
}

@test 'src has _gnome-extensions' {
    assert "$src/_gnome-extensions" is_file
}

@test 'src has _gnome-extensions-app' {
    assert "$src/_gnome-extensions-app" is_file
}

@test 'src has _gnome-file-share-properties' {
    assert "$src/_gnome-file-share-properties" is_file
}

@test 'src has _gnome-font-viewer' {
    assert "$src/_gnome-font-viewer" is_file
}

@test 'src has _gnome-help' {
    assert "$src/_gnome-help" is_file
}

@test 'src has _gnome-keyring-daemon' {
    assert "$src/_gnome-keyring-daemon" is_file
}

@test 'src has _gnome-klotski' {
    assert "$src/_gnome-klotski" is_file
}

@test 'src has _gnome-language-selector' {
    assert "$src/_gnome-language-selector" is_file
}

@test 'src has _gnome-logs' {
    assert "$src/_gnome-logs" is_file
}

@test 'src has _gnome-mahjongg' {
    assert "$src/_gnome-mahjongg" is_file
}

@test 'src has _gnome-maps' {
    assert "$src/_gnome-maps" is_file
}

@test 'src has _gnome-mines' {
    assert "$src/_gnome-mines" is_file
}

@test 'src has _gnome-mount' {
    assert "$src/_gnome-mount" is_file
}

@test 'src has _gnome-music' {
    assert "$src/_gnome-music" is_file
}

@test 'src has _gnome-nibbles' {
    assert "$src/_gnome-nibbles" is_file
}

@test 'src has _gnome-open' {
    assert "$src/_gnome-open" is_file
}

@test 'src has _gnome-photos' {
    assert "$src/_gnome-photos" is_file
}

@test 'src has _gnome-power-statistics' {
    assert "$src/_gnome-power-statistics" is_file
}

@test 'src has _gnome-robots' {
    assert "$src/_gnome-robots" is_file
}

@test 'src has _gnome-screenshot' {
    assert "$src/_gnome-screenshot" is_file
}

@test 'src has _gnome-search-tool' {
    assert "$src/_gnome-search-tool" is_file
}

@test 'src has _gnome-session' {
    assert "$src/_gnome-session" is_file
}

@test 'src has _gnome-session-classic' {
    assert "$src/_gnome-session-classic" is_file
}

@test 'src has _gnome-session-inhibit' {
    assert "$src/_gnome-session-inhibit" is_file
}

@test 'src has _gnome-session-properties' {
    assert "$src/_gnome-session-properties" is_file
}

@test 'src has _gnome-session-quit' {
    assert "$src/_gnome-session-quit" is_file
}

@test 'src has _gnome-session-remmina' {
    assert "$src/_gnome-session-remmina" is_file
}

@test 'src has _gnome-session-selector' {
    assert "$src/_gnome-session-selector" is_file
}

@test 'src has _gnome-settings-daemon' {
    assert "$src/_gnome-settings-daemon" is_file
}

@test 'src has _gnome-shell' {
    assert "$src/_gnome-shell" is_file
}

@test 'src has _gnome-shell-extension-prefs' {
    assert "$src/_gnome-shell-extension-prefs" is_file
}

@test 'src has _gnome-shell-extension-tool' {
    assert "$src/_gnome-shell-extension-tool" is_file
}

@test 'src has _gnome-shell-perf-tool' {
    assert "$src/_gnome-shell-perf-tool" is_file
}

@test 'src has _gnome-software' {
    assert "$src/_gnome-software" is_file
}

@test 'src has _gnome-software-editor' {
    assert "$src/_gnome-software-editor" is_file
}

@test 'src has _gnome-sound-recorder' {
    assert "$src/_gnome-sound-recorder" is_file
}

@test 'src has _gnome-sudoku' {
    assert "$src/_gnome-sudoku" is_file
}

@test 'src has _gnome-system-log' {
    assert "$src/_gnome-system-log" is_file
}

@test 'src has _gnome-system-monitor' {
    assert "$src/_gnome-system-monitor" is_file
}

@test 'src has _gnome-taquin' {
    assert "$src/_gnome-taquin" is_file
}

@test 'src has _gnome-terminal' {
    assert "$src/_gnome-terminal" is_file
}

@test 'src has _gnome-terminal.real' {
    assert "$src/_gnome-terminal.real" is_file
}

@test 'src has _gnome-terminal.wrapper' {
    assert "$src/_gnome-terminal.wrapper" is_file
}

@test 'src has _gnome-tetravex' {
    assert "$src/_gnome-tetravex" is_file
}

@test 'src has _gnome-text-editor' {
    assert "$src/_gnome-text-editor" is_file
}

@test 'src has _gnome-thumbnail-font' {
    assert "$src/_gnome-thumbnail-font" is_file
}

@test 'src has _gnome-todo' {
    assert "$src/_gnome-todo" is_file
}

@test 'src has _gnome-tweak-tool' {
    assert "$src/_gnome-tweak-tool" is_file
}

@test 'src has _gnome-tweaks' {
    assert "$src/_gnome-tweaks" is_file
}

@test 'src has _gnome-umount' {
    assert "$src/_gnome-umount" is_file
}

@test 'src has _gnome-weather' {
    assert "$src/_gnome-weather" is_file
}

@test 'src has _gnome-www-browser' {
    assert "$src/_gnome-www-browser" is_file
}

@test 'src has _gnote' {
    assert "$src/_gnote" is_file
}

@test 'src has _gnproc' {
    assert "$src/_gnproc" is_file
}

@test 'src has _gnroff' {
    assert "$src/_gnroff" is_file
}

@test 'src has _gnu-mail' {
    assert "$src/_gnu-mail" is_file
}

@test 'src has _gnuchess' {
    assert "$src/_gnuchess" is_file
}

@test 'src has _gnuchessu' {
    assert "$src/_gnuchessu" is_file
}

@test 'src has _gnuchessx' {
    assert "$src/_gnuchessx" is_file
}

@test 'src has _gnumake' {
    assert "$src/_gnumake" is_file
}

@test 'src has _gnumt' {
    assert "$src/_gnumt" is_file
}

@test 'src has _gnuplot' {
    assert "$src/_gnuplot" is_file
}

@test 'src has _gnuplot-qt' {
    assert "$src/_gnuplot-qt" is_file
}

@test 'src has _gnuradio-companion' {
    assert "$src/_gnuradio-companion" is_file
}

@test 'src has _gnuradio-config-info' {
    assert "$src/_gnuradio-config-info" is_file
}

@test 'src has _gnurmt' {
    assert "$src/_gnurmt" is_file
}

@test 'src has _gnutls-certtool' {
    assert "$src/_gnutls-certtool" is_file
}

@test 'src has _gnutls-serv' {
    assert "$src/_gnutls-serv" is_file
}

@test 'src has _go' {
    assert "$src/_go" is_file
}

@test 'src has _go-md2man' {
    assert "$src/_go-md2man" is_file
}

@test 'src has _goForward.sh' {
    assert "$src/_goForward.sh" is_file
}

@test 'src has _gobject-query' {
    assert "$src/_gobject-query" is_file
}

@test 'src has _gobuster' {
    assert "$src/_gobuster" is_file
}

@test 'src has _gocryptfs-xray' {
    assert "$src/_gocryptfs-xray" is_file
}

@test 'src has _godex' {
    assert "$src/_godex" is_file
}

@test 'src has _godoc' {
    assert "$src/_godoc" is_file
}

@test 'src has _gofmt' {
    assert "$src/_gofmt" is_file
}

@test 'src has _goid-tool' {
    assert "$src/_goid-tool" is_file
}

@test 'src has _goimports' {
    assert "$src/_goimports" is_file
}

@test 'src has _goland' {
    assert "$src/_goland" is_file
}

@test 'src has _golang-eg' {
    assert "$src/_golang-eg" is_file
}

@test 'src has _gold' {
    assert "$src/_gold" is_file
}

@test 'src has _goofile' {
    assert "$src/_goofile" is_file
}

@test 'src has _google-ei-time.py' {
    assert "$src/_google-ei-time.py" is_file
}

@test 'src has _googlesearch' {
    assert "$src/_googlesearch" is_file
}

@test 'src has _gore' {
    assert "$src/_gore" is_file
}

@test 'src has _gost-hash' {
    assert "$src/_gost-hash" is_file
}

@test 'src has _gost12-256-hash' {
    assert "$src/_gost12-256-hash" is_file
}

@test 'src has _gost12-512-hash' {
    assert "$src/_gost12-512-hash" is_file
}

@test 'src has _gotop' {
    assert "$src/_gotop" is_file
}

@test 'src has _gpa' {
    assert "$src/_gpa" is_file
}

@test 'src has _gpart' {
    assert "$src/_gpart" is_file
}

@test 'src has _gpasswd' {
    assert "$src/_gpasswd" is_file
}

@test 'src has _gpathchk' {
    assert "$src/_gpathchk" is_file
}

@test 'src has _gpcl6' {
    assert "$src/_gpcl6" is_file
}

@test 'src has _gperf' {
    assert "$src/_gperf" is_file
}

@test 'src has _gpg-agent' {
    assert "$src/_gpg-agent" is_file
}

@test 'src has _gpg-card' {
    assert "$src/_gpg-card" is_file
}

@test 'src has _gpg-connect-agent' {
    assert "$src/_gpg-connect-agent" is_file
}

@test 'src has _gpg-error' {
    assert "$src/_gpg-error" is_file
}

@test 'src has _gpg-wks-server' {
    assert "$src/_gpg-wks-server" is_file
}

@test 'src has _gpg2' {
    assert "$src/_gpg2" is_file
}

@test 'src has _gpg2john' {
    assert "$src/_gpg2john" is_file
}

@test 'src has _gpgcompose' {
    assert "$src/_gpgcompose" is_file
}

@test 'src has _gpgconf' {
    assert "$src/_gpgconf" is_file
}

@test 'src has _gpgme-config' {
    assert "$src/_gpgme-config" is_file
}

@test 'src has _gpgme-json' {
    assert "$src/_gpgme-json" is_file
}

@test 'src has _gpgme-tool' {
    assert "$src/_gpgme-tool" is_file
}

@test 'src has _gpgparsemail' {
    assert "$src/_gpgparsemail" is_file
}

@test 'src has _gpgscm' {
    assert "$src/_gpgscm" is_file
}

@test 'src has _gpgsm' {
    assert "$src/_gpgsm" is_file
}

@test 'src has _gpgsplit' {
    assert "$src/_gpgsplit" is_file
}

@test 'src has _gpgsplit2' {
    assert "$src/_gpgsplit2" is_file
}

@test 'src has _gpgtar' {
    assert "$src/_gpgtar" is_file
}

@test 'src has _gpgv' {
    assert "$src/_gpgv" is_file
}

@test 'src has _gpgv2' {
    assert "$src/_gpgv2" is_file
}

@test 'src has _gphoto2-config' {
    assert "$src/_gphoto2-config" is_file
}

@test 'src has _gphoto2-port-config' {
    assert "$src/_gphoto2-port-config" is_file
}

@test 'src has _gpic' {
    assert "$src/_gpic" is_file
}

@test 'src has _gpicview' {
    assert "$src/_gpicview" is_file
}

@test 'src has _gping' {
    assert "$src/_gping" is_file
}

@test 'src has _gplc' {
    assert "$src/_gplc" is_file
}

@test 'src has _gpm' {
    assert "$src/_gpm" is_file
}

@test 'src has _gpmetis' {
    assert "$src/_gpmetis" is_file
}

@test 'src has _gpr' {
    assert "$src/_gpr" is_file
}

@test 'src has _gprintf' {
    assert "$src/_gprintf" is_file
}

@test 'src has _gprolog' {
    assert "$src/_gprolog" is_file
}

@test 'src has _gpwd' {
    assert "$src/_gpwd" is_file
}

@test 'src has _gqrx' {
    assert "$src/_gqrx" is_file
}

@test 'src has _gr-perf-monitorx' {
    assert "$src/_gr-perf-monitorx" is_file
}

@test 'src has _gr2fonttest' {
    assert "$src/_gr2fonttest" is_file
}

@test 'src has _gr_constellation_plot' {
    assert "$src/_gr_constellation_plot" is_file
}

@test 'src has _gr_plot_char' {
    assert "$src/_gr_plot_char" is_file
}

@test 'src has _gr_plot_const' {
    assert "$src/_gr_plot_const" is_file
}

@test 'src has _gr_plot_fft' {
    assert "$src/_gr_plot_fft" is_file
}

@test 'src has _gr_plot_fft_f' {
    assert "$src/_gr_plot_fft_f" is_file
}

@test 'src has _gr_plot_float' {
    assert "$src/_gr_plot_float" is_file
}

@test 'src has _gr_plot_int' {
    assert "$src/_gr_plot_int" is_file
}

@test 'src has _gr_plot_psd' {
    assert "$src/_gr_plot_psd" is_file
}

@test 'src has _gr_plot_psd_c' {
    assert "$src/_gr_plot_psd_c" is_file
}

@test 'src has _gr_plot_psd_f' {
    assert "$src/_gr_plot_psd_f" is_file
}

@test 'src has _gr_plot_short' {
    assert "$src/_gr_plot_short" is_file
}

@test 'src has _gr_psd_plot_b' {
    assert "$src/_gr_psd_plot_b" is_file
}

@test 'src has _gr_psd_plot_c' {
    assert "$src/_gr_psd_plot_c" is_file
}

@test 'src has _gr_psd_plot_f' {
    assert "$src/_gr_psd_plot_f" is_file
}

@test 'src has _gr_psd_plot_i' {
    assert "$src/_gr_psd_plot_i" is_file
}

@test 'src has _gr_psd_plot_s' {
    assert "$src/_gr_psd_plot_s" is_file
}

@test 'src has _gr_read_file_metadata' {
    assert "$src/_gr_read_file_metadata" is_file
}

@test 'src has _gr_spectrogram_plot' {
    assert "$src/_gr_spectrogram_plot" is_file
}

@test 'src has _gr_spectrogram_plot_b' {
    assert "$src/_gr_spectrogram_plot_b" is_file
}

@test 'src has _gr_spectrogram_plot_c' {
    assert "$src/_gr_spectrogram_plot_c" is_file
}

@test 'src has _gr_spectrogram_plot_f' {
    assert "$src/_gr_spectrogram_plot_f" is_file
}

@test 'src has _gr_spectrogram_plot_i' {
    assert "$src/_gr_spectrogram_plot_i" is_file
}

@test 'src has _gr_spectrogram_plot_s' {
    assert "$src/_gr_spectrogram_plot_s" is_file
}

@test 'src has _gr_time_plot_b' {
    assert "$src/_gr_time_plot_b" is_file
}

@test 'src has _gr_time_plot_f' {
    assert "$src/_gr_time_plot_f" is_file
}

@test 'src has _gr_time_plot_i' {
    assert "$src/_gr_time_plot_i" is_file
}

@test 'src has _gr_time_plot_s' {
    assert "$src/_gr_time_plot_s" is_file
}

@test 'src has _gr_time_raster_b' {
    assert "$src/_gr_time_raster_b" is_file
}

@test 'src has _gr_time_raster_f' {
    assert "$src/_gr_time_raster_f" is_file
}

@test 'src has _grabber' {
    assert "$src/_grabber" is_file
}

@test 'src has _gracket' {
    assert "$src/_gracket" is_file
}

@test 'src has _gracket-text' {
    assert "$src/_gracket-text" is_file
}

@test 'src has _grap' {
    assert "$src/_grap" is_file
}

@test 'src has _graph2dot' {
    assert "$src/_graph2dot" is_file
}

@test 'src has _graphml2gv' {
    assert "$src/_graphml2gv" is_file
}

@test 'src has _grc' {
    assert "$src/_grc" is_file
}

@test 'src has _grcc' {
    assert "$src/_grcc" is_file
}

@test 'src has _grcov' {
    assert "$src/_grcov" is_file
}

@test 'src has _grealpath' {
    assert "$src/_grealpath" is_file
}

@test 'src has _greenbone-certdata-sync' {
    assert "$src/_greenbone-certdata-sync" is_file
}

@test 'src has _greenbone-feed-sync' {
    assert "$src/_greenbone-feed-sync" is_file
}

@test 'src has _greenbone-nvt-sync' {
    assert "$src/_greenbone-nvt-sync" is_file
}

@test 'src has _greenbone-scapdata-sync' {
    assert "$src/_greenbone-scapdata-sync" is_file
}

@test 'src has _gregorio' {
    assert "$src/_gregorio" is_file
}

@test 'src has _grep-aptavail' {
    assert "$src/_grep-aptavail" is_file
}

@test 'src has _grep-available' {
    assert "$src/_grep-available" is_file
}

@test 'src has _grep-dctrl' {
    assert "$src/_grep-dctrl" is_file
}

@test 'src has _grep-debtags' {
    assert "$src/_grep-debtags" is_file
}

@test 'src has _grep-status' {
    assert "$src/_grep-status" is_file
}

@test 'src has _grepjar' {
    assert "$src/_grepjar" is_file
}

@test 'src has _greytiff' {
    assert "$src/_greytiff" is_file
}

@test 'src has _grilo-test-ui-0.3' {
    assert "$src/_grilo-test-ui-0.3" is_file
}

@test 'src has _gringo' {
    assert "$src/_gringo" is_file
}

@test 'src has _grl-inspect-0.3' {
    assert "$src/_grl-inspect-0.3" is_file
}

@test 'src has _grl-launch-0.3' {
    assert "$src/_grl-launch-0.3" is_file
}

@test 'src has _grndb' {
    assert "$src/_grndb" is_file
}

@test 'src has _groff' {
    assert "$src/_groff" is_file
}

@test 'src has _groffer' {
    assert "$src/_groffer" is_file
}

@test 'src has _grog' {
    assert "$src/_grog" is_file
}

@test 'src has _grolbp' {
    assert "$src/_grolbp" is_file
}

@test 'src has _groonga' {
    assert "$src/_groonga" is_file
}

@test 'src has _groonga-benchmark' {
    assert "$src/_groonga-benchmark" is_file
}

@test 'src has _groonga-httpd' {
    assert "$src/_groonga-httpd" is_file
}

@test 'src has _groonga-suggest-create-dataset' {
    assert "$src/_groonga-suggest-create-dataset" is_file
}

@test 'src has _groovy' {
    assert "$src/_groovy" is_file
}

@test 'src has _groovyc' {
    assert "$src/_groovyc" is_file
}

@test 'src has _groovysh' {
    assert "$src/_groovysh" is_file
}

@test 'src has _groupadd' {
    assert "$src/_groupadd" is_file
}

@test 'src has _groupdel' {
    assert "$src/_groupdel" is_file
}

@test 'src has _groupmems' {
    assert "$src/_groupmems" is_file
}

@test 'src has _groupmod' {
    assert "$src/_groupmod" is_file
}

@test 'src has _growpart' {
    assert "$src/_growpart" is_file
}

@test 'src has _grpck' {
    assert "$src/_grpck" is_file
}

@test 'src has _grpconv' {
    assert "$src/_grpconv" is_file
}

@test 'src has _grpunconv' {
    assert "$src/_grpunconv" is_file
}

@test 'src has _grub-bios-setup' {
    assert "$src/_grub-bios-setup" is_file
}

@test 'src has _grub-editenv' {
    assert "$src/_grub-editenv" is_file
}

@test 'src has _grub-file' {
    assert "$src/_grub-file" is_file
}

@test 'src has _grub-fstest' {
    assert "$src/_grub-fstest" is_file
}

@test 'src has _grub-glue-efi' {
    assert "$src/_grub-glue-efi" is_file
}

@test 'src has _grub-install' {
    assert "$src/_grub-install" is_file
}

@test 'src has _grub-kbdcomp' {
    assert "$src/_grub-kbdcomp" is_file
}

@test 'src has _grub-macbless' {
    assert "$src/_grub-macbless" is_file
}

@test 'src has _grub-mkconfig' {
    assert "$src/_grub-mkconfig" is_file
}

@test 'src has _grub-mkdevicemap' {
    assert "$src/_grub-mkdevicemap" is_file
}

@test 'src has _grub-mkfont' {
    assert "$src/_grub-mkfont" is_file
}

@test 'src has _grub-mkimage' {
    assert "$src/_grub-mkimage" is_file
}

@test 'src has _grub-mklayout' {
    assert "$src/_grub-mklayout" is_file
}

@test 'src has _grub-mknetdir' {
    assert "$src/_grub-mknetdir" is_file
}

@test 'src has _grub-mkpasswd-pbkdf2' {
    assert "$src/_grub-mkpasswd-pbkdf2" is_file
}

@test 'src has _grub-mkrelpath' {
    assert "$src/_grub-mkrelpath" is_file
}

@test 'src has _grub-mkrescue' {
    assert "$src/_grub-mkrescue" is_file
}

@test 'src has _grub-mkstandalone' {
    assert "$src/_grub-mkstandalone" is_file
}

@test 'src has _grub-mount' {
    assert "$src/_grub-mount" is_file
}

@test 'src has _grub-ntldr-img' {
    assert "$src/_grub-ntldr-img" is_file
}

@test 'src has _grub-probe' {
    assert "$src/_grub-probe" is_file
}

@test 'src has _grub-reboot' {
    assert "$src/_grub-reboot" is_file
}

@test 'src has _grub-render-label' {
    assert "$src/_grub-render-label" is_file
}

@test 'src has _grub-script-check' {
    assert "$src/_grub-script-check" is_file
}

@test 'src has _grub-set-default' {
    assert "$src/_grub-set-default" is_file
}

@test 'src has _grub-syslinux2cfg' {
    assert "$src/_grub-syslinux2cfg" is_file
}

@test 'src has _grub2-bios-setup' {
    assert "$src/_grub2-bios-setup" is_file
}

@test 'src has _grub2-editenv' {
    assert "$src/_grub2-editenv" is_file
}

@test 'src has _grub2-emu' {
    assert "$src/_grub2-emu" is_file
}

@test 'src has _grub2-emu-lite' {
    assert "$src/_grub2-emu-lite" is_file
}

@test 'src has _grub2-file' {
    assert "$src/_grub2-file" is_file
}

@test 'src has _grub2-fstest' {
    assert "$src/_grub2-fstest" is_file
}

@test 'src has _grub2-get-kernel-settings' {
    assert "$src/_grub2-get-kernel-settings" is_file
}

@test 'src has _grub2-glue-efi' {
    assert "$src/_grub2-glue-efi" is_file
}

@test 'src has _grub2-install' {
    assert "$src/_grub2-install" is_file
}

@test 'src has _grub2-kbdcomp' {
    assert "$src/_grub2-kbdcomp" is_file
}

@test 'src has _grub2-macbless' {
    assert "$src/_grub2-macbless" is_file
}

@test 'src has _grub2-mkconfig' {
    assert "$src/_grub2-mkconfig" is_file
}

@test 'src has _grub2-mkfont' {
    assert "$src/_grub2-mkfont" is_file
}

@test 'src has _grub2-mkimage' {
    assert "$src/_grub2-mkimage" is_file
}

@test 'src has _grub2-mklayout' {
    assert "$src/_grub2-mklayout" is_file
}

@test 'src has _grub2-mknetdir' {
    assert "$src/_grub2-mknetdir" is_file
}

@test 'src has _grub2-mkpasswd-pbkdf2' {
    assert "$src/_grub2-mkpasswd-pbkdf2" is_file
}

@test 'src has _grub2-mkrelpath' {
    assert "$src/_grub2-mkrelpath" is_file
}

@test 'src has _grub2-mkrescue' {
    assert "$src/_grub2-mkrescue" is_file
}

@test 'src has _grub2-mkstandalone' {
    assert "$src/_grub2-mkstandalone" is_file
}

@test 'src has _grub2-mount' {
    assert "$src/_grub2-mount" is_file
}

@test 'src has _grub2-once' {
    assert "$src/_grub2-once" is_file
}

@test 'src has _grub2-probe' {
    assert "$src/_grub2-probe" is_file
}

@test 'src has _grub2-reboot' {
    assert "$src/_grub2-reboot" is_file
}

@test 'src has _grub2-render-label' {
    assert "$src/_grub2-render-label" is_file
}

@test 'src has _grub2-rpm-sort' {
    assert "$src/_grub2-rpm-sort" is_file
}

@test 'src has _grub2-script-check' {
    assert "$src/_grub2-script-check" is_file
}

@test 'src has _grub2-set-default' {
    assert "$src/_grub2-set-default" is_file
}

@test 'src has _grub2-setpassword' {
    assert "$src/_grub2-setpassword" is_file
}

@test 'src has _grub2-sparc64-setup' {
    assert "$src/_grub2-sparc64-setup" is_file
}

@test 'src has _grub2-syslinux2cfg' {
    assert "$src/_grub2-syslinux2cfg" is_file
}

@test 'src has _grubby' {
    assert "$src/_grubby" is_file
}

@test 'src has _gruncon' {
    assert "$src/_gruncon" is_file
}

@test 'src has _grunt' {
    assert "$src/_grunt" is_file
}

@test 'src has _gs' {
    assert "$src/_gs" is_file
}

@test 'src has _gsad' {
    assert "$src/_gsad" is_file
}

@test 'src has _gsasl' {
    assert "$src/_gsasl" is_file
}

@test 'src has _gsc' {
    assert "$src/_gsc" is_file
}

@test 'src has _gsdiff' {
    assert "$src/_gsdiff" is_file
}

@test 'src has _gsec' {
    assert "$src/_gsec" is_file
}

@test 'src has _gsettings-data-convert' {
    assert "$src/_gsettings-data-convert" is_file
}

@test 'src has _gsettings-schema-convert' {
    assert "$src/_gsettings-schema-convert" is_file
}

@test 'src has _gsf' {
    assert "$src/_gsf" is_file
}

@test 'src has _gsf-office-thumbnailer' {
    assert "$src/_gsf-office-thumbnailer" is_file
}

@test 'src has _gsftopk' {
    assert "$src/_gsftopk" is_file
}

@test 'src has _gshred' {
    assert "$src/_gshred" is_file
}

@test 'src has _gsl-config' {
    assert "$src/_gsl-config" is_file
}

@test 'src has _gsleep' {
    assert "$src/_gsleep" is_file
}

@test 'src has _gsnd' {
    assert "$src/_gsnd" is_file
}

@test 'src has _gsoelim' {
    assert "$src/_gsoelim" is_file
}

@test 'src has _gsound-play' {
    assert "$src/_gsound-play" is_file
}

@test 'src has _gssproxy' {
    assert "$src/_gssproxy" is_file
}

@test 'src has _gst-device-monitor-1.0' {
    assert "$src/_gst-device-monitor-1.0" is_file
}

@test 'src has _gst-discoverer-1.0' {
    assert "$src/_gst-discoverer-1.0" is_file
}

@test 'src has _gst-feedback' {
    assert "$src/_gst-feedback" is_file
}

@test 'src has _gst-inspect' {
    assert "$src/_gst-inspect" is_file
}

@test 'src has _gst-inspect-0.10' {
    assert "$src/_gst-inspect-0.10" is_file
}

@test 'src has _gst-inspect-1.0' {
    assert "$src/_gst-inspect-1.0" is_file
}

@test 'src has _gst-install' {
    assert "$src/_gst-install" is_file
}

@test 'src has _gst-launch' {
    assert "$src/_gst-launch" is_file
}

@test 'src has _gst-launch-0.10' {
    assert "$src/_gst-launch-0.10" is_file
}

@test 'src has _gst-launch-1.0' {
    assert "$src/_gst-launch-1.0" is_file
}

@test 'src has _gst-play-1.0' {
    assert "$src/_gst-play-1.0" is_file
}

@test 'src has _gst-stats-1.0' {
    assert "$src/_gst-stats-1.0" is_file
}

@test 'src has _gst-typefind' {
    assert "$src/_gst-typefind" is_file
}

@test 'src has _gst-typefind-0.10' {
    assert "$src/_gst-typefind-0.10" is_file
}

@test 'src has _gst-typefind-1.0' {
    assert "$src/_gst-typefind-1.0" is_file
}

@test 'src has _gst-validate-1.0' {
    assert "$src/_gst-validate-1.0" is_file
}

@test 'src has _gst-validate-launcher' {
    assert "$src/_gst-validate-launcher" is_file
}

@test 'src has _gst-validate-media-check-1.0' {
    assert "$src/_gst-validate-media-check-1.0" is_file
}

@test 'src has _gst-validate-rtsp-server-1.0' {
    assert "$src/_gst-validate-rtsp-server-1.0" is_file
}

@test 'src has _gst-validate-transcoding-1.0' {
    assert "$src/_gst-validate-transcoding-1.0" is_file
}

@test 'src has _gst-webrtc-signalling-server' {
    assert "$src/_gst-webrtc-signalling-server" is_file
}

@test 'src has _gst-xmlinspect' {
    assert "$src/_gst-xmlinspect" is_file
}

@test 'src has _gst-xmlinspect-0.10' {
    assert "$src/_gst-xmlinspect-0.10" is_file
}

@test 'src has _gst-xmllaunch' {
    assert "$src/_gst-xmllaunch" is_file
}

@test 'src has _gst-xmllaunch-0.10' {
    assert "$src/_gst-xmllaunch-0.10" is_file
}

@test 'src has _gstreamer-codec-install' {
    assert "$src/_gstreamer-codec-install" is_file
}

@test 'src has _gsx' {
    assert "$src/_gsx" is_file
}

@test 'src has _gsync' {
    assert "$src/_gsync" is_file
}

@test 'src has _gtbl' {
    assert "$src/_gtbl" is_file
}

@test 'src has _gtest' {
    assert "$src/_gtest" is_file
}

@test 'src has _gtester' {
    assert "$src/_gtester" is_file
}

@test 'src has _gtester-report' {
    assert "$src/_gtester-report" is_file
}

@test 'src has _gtf' {
    assert "$src/_gtf" is_file
}

@test 'src has _gthumb' {
    assert "$src/_gthumb" is_file
}

@test 'src has _gtk-builder-convert' {
    assert "$src/_gtk-builder-convert" is_file
}

@test 'src has _gtk-builder-tool' {
    assert "$src/_gtk-builder-tool" is_file
}

@test 'src has _gtk-encode-symbolic-svg' {
    assert "$src/_gtk-encode-symbolic-svg" is_file
}

@test 'src has _gtk-launch' {
    assert "$src/_gtk-launch" is_file
}

@test 'src has _gtk-query-immodules-2.0-64' {
    assert "$src/_gtk-query-immodules-2.0-64" is_file
}

@test 'src has _gtk-query-immodules-3.0-64' {
    assert "$src/_gtk-query-immodules-3.0-64" is_file
}

@test 'src has _gtk-update-icon-cache' {
    assert "$src/_gtk-update-icon-cache" is_file
}

@test 'src has _gtk-update-icon-cache-2.0' {
    assert "$src/_gtk-update-icon-cache-2.0" is_file
}

@test 'src has _gtk-update-icon-cache-3.0' {
    assert "$src/_gtk-update-icon-cache-3.0" is_file
}

@test 'src has _gtk3-demo' {
    assert "$src/_gtk3-demo" is_file
}

@test 'src has _gtk3-icon-browser' {
    assert "$src/_gtk3-icon-browser" is_file
}

@test 'src has _gtk3-update-icon-cache' {
    assert "$src/_gtk3-update-icon-cache" is_file
}

@test 'src has _gtk3-widget-factory' {
    assert "$src/_gtk3-widget-factory" is_file
}

@test 'src has _gtk4-broadwayd' {
    assert "$src/_gtk4-broadwayd" is_file
}

@test 'src has _gtk4-demo' {
    assert "$src/_gtk4-demo" is_file
}

@test 'src has _gtk4-encode-symbolic-svg' {
    assert "$src/_gtk4-encode-symbolic-svg" is_file
}

@test 'src has _gtk4-icon-browser' {
    assert "$src/_gtk4-icon-browser" is_file
}

@test 'src has _gtk4-launch' {
    assert "$src/_gtk4-launch" is_file
}

@test 'src has _gtk4-node-editor' {
    assert "$src/_gtk4-node-editor" is_file
}

@test 'src has _gtk4-print-editor' {
    assert "$src/_gtk4-print-editor" is_file
}

@test 'src has _gtk4-update-icon-cache' {
    assert "$src/_gtk4-update-icon-cache" is_file
}

@test 'src has _gtk4-widget-factory' {
    assert "$src/_gtk4-widget-factory" is_file
}

@test 'src has _gtkdoc-check' {
    assert "$src/_gtkdoc-check" is_file
}

@test 'src has _gtkdoc-depscan' {
    assert "$src/_gtkdoc-depscan" is_file
}

@test 'src has _gtkdoc-fixxref' {
    assert "$src/_gtkdoc-fixxref" is_file
}

@test 'src has _gtkdoc-mkdb' {
    assert "$src/_gtkdoc-mkdb" is_file
}

@test 'src has _gtkdoc-mkhtml' {
    assert "$src/_gtkdoc-mkhtml" is_file
}

@test 'src has _gtkdoc-mkman' {
    assert "$src/_gtkdoc-mkman" is_file
}

@test 'src has _gtkdoc-mkpdf' {
    assert "$src/_gtkdoc-mkpdf" is_file
}

@test 'src has _gtkdoc-rebase' {
    assert "$src/_gtkdoc-rebase" is_file
}

@test 'src has _gtkdoc-scan' {
    assert "$src/_gtkdoc-scan" is_file
}

@test 'src has _gtkdoc-scangobj' {
    assert "$src/_gtkdoc-scangobj" is_file
}

@test 'src has _gtkhash' {
    assert "$src/_gtkhash" is_file
}

@test 'src has _gtroff' {
    assert "$src/_gtroff" is_file
}

@test 'src has _gtrue' {
    assert "$src/_gtrue" is_file
}

@test 'src has _gtruncate' {
    assert "$src/_gtruncate" is_file
}

@test 'src has _gts2oogl' {
    assert "$src/_gts2oogl" is_file
}

@test 'src has _gts2stl' {
    assert "$src/_gts2stl" is_file
}

@test 'src has _gtscheck' {
    assert "$src/_gtscheck" is_file
}

@test 'src has _gtscompare' {
    assert "$src/_gtscompare" is_file
}

@test 'src has _gtsdelaunay' {
    assert "$src/_gtsdelaunay" is_file
}

@test 'src has _gtshapprox' {
    assert "$src/_gtshapprox" is_file
}

@test 'src has _gtsort' {
    assert "$src/_gtsort" is_file
}

@test 'src has _gtstransform' {
    assert "$src/_gtstransform" is_file
}

@test 'src has _gtty' {
    assert "$src/_gtty" is_file
}

@test 'src has _gucharmap' {
    assert "$src/_gucharmap" is_file
}

@test 'src has _guess_encoding' {
    assert "$src/_guess_encoding" is_file
}

@test 'src has _guestfish' {
    assert "$src/_guestfish" is_file
}

@test 'src has _guestmount' {
    assert "$src/_guestmount" is_file
}

@test 'src has _guestunmount' {
    assert "$src/_guestunmount" is_file
}

@test 'src has _guile' {
    assert "$src/_guile" is_file
}

@test 'src has _guile2' {
    assert "$src/_guile2" is_file
}

@test 'src has _guile2.0' {
    assert "$src/_guile2.0" is_file
}

@test 'src has _guile2.2' {
    assert "$src/_guile2.2" is_file
}

@test 'src has _guile3.0' {
    assert "$src/_guile3.0" is_file
}

@test 'src has _gunicorn' {
    assert "$src/_gunicorn" is_file
}

@test 'src has _gunlink' {
    assert "$src/_gunlink" is_file
}

@test 'src has _gunzip' {
    assert "$src/_gunzip" is_file
}

@test 'src has _gupnp-dlna-info-2.0' {
    assert "$src/_gupnp-dlna-info-2.0" is_file
}

@test 'src has _gupnp-dlna-ls-profiles-2.0' {
    assert "$src/_gupnp-dlna-ls-profiles-2.0" is_file
}

@test 'src has _gusbcmd' {
    assert "$src/_gusbcmd" is_file
}

@test 'src has _gusers' {
    assert "$src/_gusers" is_file
}

@test 'src has _gv2gml' {
    assert "$src/_gv2gml" is_file
}

@test 'src has _gvdir' {
    assert "$src/_gvdir" is_file
}

