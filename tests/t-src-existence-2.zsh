#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Additional existence tests for src/ completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
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

@test 'src has _gvfs-cat' {
    assert "$src/_gvfs-cat" is_file
}

@test 'src has _gvfs-copy' {
    assert "$src/_gvfs-copy" is_file
}

@test 'src has _gvfs-info' {
    assert "$src/_gvfs-info" is_file
}

@test 'src has _gvfs-less' {
    assert "$src/_gvfs-less" is_file
}

@test 'src has _gvfs-ls' {
    assert "$src/_gvfs-ls" is_file
}

@test 'src has _gvfs-mime' {
    assert "$src/_gvfs-mime" is_file
}

@test 'src has _gvfs-mkdir' {
    assert "$src/_gvfs-mkdir" is_file
}

@test 'src has _gvfs-monitor-dir' {
    assert "$src/_gvfs-monitor-dir" is_file
}

@test 'src has _gvfs-monitor-file' {
    assert "$src/_gvfs-monitor-file" is_file
}

@test 'src has _gvfs-mount' {
    assert "$src/_gvfs-mount" is_file
}

@test 'src has _gvfs-move' {
    assert "$src/_gvfs-move" is_file
}

@test 'src has _gvfs-open' {
    assert "$src/_gvfs-open" is_file
}

@test 'src has _gvfs-rename' {
    assert "$src/_gvfs-rename" is_file
}

@test 'src has _gvfs-rm' {
    assert "$src/_gvfs-rm" is_file
}

@test 'src has _gvfs-save' {
    assert "$src/_gvfs-save" is_file
}

@test 'src has _gvfs-set-attribute' {
    assert "$src/_gvfs-set-attribute" is_file
}

@test 'src has _gvfs-trash' {
    assert "$src/_gvfs-trash" is_file
}

@test 'src has _gvfs-tree' {
    assert "$src/_gvfs-tree" is_file
}

@test 'src has _gvgen' {
    assert "$src/_gvgen" is_file
}

@test 'src has _gvimex' {
    assert "$src/_gvimex" is_file
}

@test 'src has _gvmap' {
    assert "$src/_gvmap" is_file
}

@test 'src has _gvmap.sh' {
    assert "$src/_gvmap.sh" is_file
}

@test 'src has _gvnccapture' {
    assert "$src/_gvnccapture" is_file
}

@test 'src has _gvpr' {
    assert "$src/_gvpr" is_file
}

@test 'src has _gwhoami' {
    assert "$src/_gwhoami" is_file
}

@test 'src has _gyes' {
    assert "$src/_gyes" is_file
}

@test 'src has _gyp' {
    assert "$src/_gyp" is_file
}

@test 'src has _gzexe' {
    assert "$src/_gzexe" is_file
}

@test 'src has _h2load' {
    assert "$src/_h2load" is_file
}

@test 'src has _h2pas' {
    assert "$src/_h2pas" is_file
}

@test 'src has _h2paspp' {
    assert "$src/_h2paspp" is_file
}

@test 'src has _h2ph' {
    assert "$src/_h2ph" is_file
}

@test 'src has _h2xs' {
    assert "$src/_h2xs" is_file
}

@test 'src has _h2xs5.18' {
    assert "$src/_h2xs5.18" is_file
}

@test 'src has _h2xs5.28' {
    assert "$src/_h2xs5.28" is_file
}

@test 'src has _h2xs5.30' {
    assert "$src/_h2xs5.30" is_file
}

@test 'src has _h2xs5.34' {
    assert "$src/_h2xs5.34" is_file
}

@test 'src has _h5clear' {
    assert "$src/_h5clear" is_file
}

@test 'src has _h5copy' {
    assert "$src/_h5copy" is_file
}

@test 'src has _h5diff' {
    assert "$src/_h5diff" is_file
}

@test 'src has _h5dump' {
    assert "$src/_h5dump" is_file
}

@test 'src has _h5format_convert' {
    assert "$src/_h5format_convert" is_file
}

@test 'src has _h5import' {
    assert "$src/_h5import" is_file
}

@test 'src has _h5jam' {
    assert "$src/_h5jam" is_file
}

@test 'src has _h5ls' {
    assert "$src/_h5ls" is_file
}

@test 'src has _h5mkgrp' {
    assert "$src/_h5mkgrp" is_file
}

@test 'src has _h5perf_serial' {
    assert "$src/_h5perf_serial" is_file
}

@test 'src has _h5redeploy' {
    assert "$src/_h5redeploy" is_file
}

@test 'src has _h5repack' {
    assert "$src/_h5repack" is_file
}

@test 'src has _h5repart' {
    assert "$src/_h5repart" is_file
}

@test 'src has _h5stat' {
    assert "$src/_h5stat" is_file
}

@test 'src has _h5unjam' {
    assert "$src/_h5unjam" is_file
}

@test 'src has _h5watch' {
    assert "$src/_h5watch" is_file
}

@test 'src has _hackrf_cpldjtag' {
    assert "$src/_hackrf_cpldjtag" is_file
}

@test 'src has _hackrf_debug' {
    assert "$src/_hackrf_debug" is_file
}

@test 'src has _hackrf_spiflash' {
    assert "$src/_hackrf_spiflash" is_file
}

@test 'src has _hackrf_transfer' {
    assert "$src/_hackrf_transfer" is_file
}

@test 'src has _haddock' {
    assert "$src/_haddock" is_file
}

@test 'src has _haddock-ghc-8.10.7' {
    assert "$src/_haddock-ghc-8.10.7" is_file
}

@test 'src has _hal-device' {
    assert "$src/_hal-device" is_file
}

@test 'src has _hal-disable-polling' {
    assert "$src/_hal-disable-polling" is_file
}

@test 'src has _hal-find-by-capability' {
    assert "$src/_hal-find-by-capability" is_file
}

@test 'src has _hal-find-by-property' {
    assert "$src/_hal-find-by-property" is_file
}

@test 'src has _hal-get-property' {
    assert "$src/_hal-get-property" is_file
}

@test 'src has _hal-is-caller-locked-out' {
    assert "$src/_hal-is-caller-locked-out" is_file
}

@test 'src has _hal-is-caller-privileged' {
    assert "$src/_hal-is-caller-privileged" is_file
}

@test 'src has _hal-lock' {
    assert "$src/_hal-lock" is_file
}

@test 'src has _hal-set-property' {
    assert "$src/_hal-set-property" is_file
}

@test 'src has _halberd' {
    assert "$src/_halberd" is_file
}

@test 'src has _hald' {
    assert "$src/_hald" is_file
}

@test 'src has _halt' {
    assert "$src/_halt" is_file
}

@test 'src has _handy-1-demo' {
    assert "$src/_handy-1-demo" is_file
}

@test 'src has _hangul' {
    assert "$src/_hangul" is_file
}

@test 'src has _happrox' {
    assert "$src/_happrox" is_file
}

@test 'src has _hardened.sh' {
    assert "$src/_hardened.sh" is_file
}

@test 'src has _hardening-check' {
    assert "$src/_hardening-check" is_file
}

@test 'src has _hardlink' {
    assert "$src/_hardlink" is_file
}

@test 'src has _has160-hash' {
    assert "$src/_has160-hash" is_file
}

@test 'src has _hash_password' {
    assert "$src/_hash_password" is_file
}

@test 'src has _hashcat' {
    assert "$src/_hashcat" is_file
}

@test 'src has _hashdeep' {
    assert "$src/_hashdeep" is_file
}

@test 'src has _hashid' {
    assert "$src/_hashid" is_file
}

@test 'src has _haveged' {
    assert "$src/_haveged" is_file
}

@test 'src has _haystack-live-dump' {
    assert "$src/_haystack-live-dump" is_file
}

@test 'src has _hb-info' {
    assert "$src/_hb-info" is_file
}

@test 'src has _hb-ot-shape-closure' {
    assert "$src/_hb-ot-shape-closure" is_file
}

@test 'src has _hb-shape' {
    assert "$src/_hb-shape" is_file
}

@test 'src has _hb-subset' {
    assert "$src/_hb-subset" is_file
}

@test 'src has _hb-view' {
    assert "$src/_hb-view" is_file
}

@test 'src has _hbpldecode' {
    assert "$src/_hbpldecode" is_file
}

@test 'src has _hccap2john' {
    assert "$src/_hccap2john" is_file
}

@test 'src has _hccapx2john' {
    assert "$src/_hccapx2john" is_file
}

@test 'src has _hcidump' {
    assert "$src/_hcidump" is_file
}

@test 'src has _hcitool' {
    assert "$src/_hcitool" is_file
}

@test 'src has _hcsecd' {
    assert "$src/_hcsecd" is_file
}

@test 'src has _hcseriald' {
    assert "$src/_hcseriald" is_file
}

@test 'src has _hcxdumptool' {
    assert "$src/_hcxdumptool" is_file
}

@test 'src has _hcxhash2cap' {
    assert "$src/_hcxhash2cap" is_file
}

@test 'src has _hcxhashcattool' {
    assert "$src/_hcxhashcattool" is_file
}

@test 'src has _hcxpcaptool' {
    assert "$src/_hcxpcaptool" is_file
}

@test 'src has _hcxpioff' {
    assert "$src/_hcxpioff" is_file
}

@test 'src has _hcxpsktool' {
    assert "$src/_hcxpsktool" is_file
}

@test 'src has _hcxwltool' {
    assert "$src/_hcxwltool" is_file
}

@test 'src has _hda-verb' {
    assert "$src/_hda-verb" is_file
}

@test 'src has _hdajacksensetest' {
    assert "$src/_hdajacksensetest" is_file
}

@test 'src has _hddtemp' {
    assert "$src/_hddtemp" is_file
}

@test 'src has _hdid' {
    assert "$src/_hdid" is_file
}

@test 'src has _hdik' {
    assert "$src/_hdik" is_file
}

@test 'src has _hdparm' {
    assert "$src/_hdparm" is_file
}

@test 'src has _headerSummarizer.sh' {
    assert "$src/_headerSummarizer.sh" is_file
}

@test 'src has _heap' {
    assert "$src/_heap" is_file
}

@test 'src has _heap32' {
    assert "$src/_heap32" is_file
}

@test 'src has _heartbeat' {
    assert "$src/_heartbeat" is_file
}

@test 'src has _heif-enc' {
    assert "$src/_heif-enc" is_file
}

@test 'src has _heif-info' {
    assert "$src/_heif-info" is_file
}

@test 'src has _hello' {
    assert "$src/_hello" is_file
}

@test 'src has _helm' {
    assert "$src/_helm" is_file
}

@test 'src has _hesinfo' {
    assert "$src/_hesinfo" is_file
}

@test 'src has _hex2hcd' {
    assert "$src/_hex2hcd" is_file
}

@test 'src has _hex2raw' {
    assert "$src/_hex2raw" is_file
}

@test 'src has _hexchat' {
    assert "$src/_hexchat" is_file
}

@test 'src has _hexeditor' {
    assert "$src/_hexeditor" is_file
}

@test 'src has _hexf' {
    assert "$src/_hexf" is_file
}

@test 'src has _hexgplc' {
    assert "$src/_hexgplc" is_file
}

@test 'src has _hexinject' {
    assert "$src/_hexinject" is_file
}

@test 'src has _hexyl' {
    assert "$src/_hexyl" is_file
}

@test 'src has _hfind' {
    assert "$src/_hfind" is_file
}

@test 'src has _hid2hci' {
    assert "$src/_hid2hci" is_file
}

@test 'src has _hilatex' {
    assert "$src/_hilatex" is_file
}

@test 'src has _hilti-config' {
    assert "$src/_hilti-config" is_file
}

@test 'src has _hiltic' {
    assert "$src/_hiltic" is_file
}

@test 'src has _hipercdecode' {
    assert "$src/_hipercdecode" is_file
}

@test 'src has _hishrink' {
    assert "$src/_hishrink" is_file
}

@test 'src has _histretch' {
    assert "$src/_histretch" is_file
}

@test 'src has _hitex' {
    assert "$src/_hitex" is_file
}

@test 'src has _hitori' {
    assert "$src/_hitori" is_file
}

@test 'src has _hiutil' {
    assert "$src/_hiutil" is_file
}

@test 'src has _hivexregedit' {
    assert "$src/_hivexregedit" is_file
}

@test 'src has _hoichess' {
    assert "$src/_hoichess" is_file
}

@test 'src has _hoixiangqi' {
    assert "$src/_hoixiangqi" is_file
}

@test 'src has _homebank' {
    assert "$src/_homebank" is_file
}

@test 'src has _homectl' {
    assert "$src/_homectl" is_file
}

@test 'src has _hostapd' {
    assert "$src/_hostapd" is_file
}

@test 'src has _hostapd-wpe' {
    assert "$src/_hostapd-wpe" is_file
}

@test 'src has _hostapd-wpe_cli' {
    assert "$src/_hostapd-wpe_cli" is_file
}

@test 'src has _hostapd_cli' {
    assert "$src/_hostapd_cli" is_file
}

@test 'src has _hostid' {
    assert "$src/_hostid" is_file
}

@test 'src has _hotpatcher' {
    assert "$src/_hotpatcher" is_file
}

@test 'src has _hotspot.d' {
    assert "$src/_hotspot.d" is_file
}

@test 'src has _how2' {
    assert "$src/_how2" is_file
}

@test 'src has _howdoi' {
    assert "$src/_howdoi" is_file
}

@test 'src has _hp-scan' {
    assert "$src/_hp-scan" is_file
}

@test 'src has _hp-timedate' {
    assert "$src/_hp-timedate" is_file
}

@test 'src has _hp2ps' {
    assert "$src/_hp2ps" is_file
}

@test 'src has _hp2ps-ghc-9.10.1' {
    assert "$src/_hp2ps-ghc-9.10.1" is_file
}

@test 'src has _hp2ps-ghc-9.4.4' {
    assert "$src/_hp2ps-ghc-9.4.4" is_file
}

@test 'src has _hp2ps-ghc-9.8.2' {
    assert "$src/_hp2ps-ghc-9.8.2" is_file
}

@test 'src has _hpcopy' {
    assert "$src/_hpcopy" is_file
}

@test 'src has _hpfsck' {
    assert "$src/_hpfsck" is_file
}

@test 'src has _hping2' {
    assert "$src/_hping2" is_file
}

@test 'src has _hpmount' {
    assert "$src/_hpmount" is_file
}

@test 'src has _hprof-conv' {
    assert "$src/_hprof-conv" is_file
}

@test 'src has _hqx2bin' {
    assert "$src/_hqx2bin" is_file
}

@test 'src has _hsc2hs' {
    assert "$src/_hsc2hs" is_file
}

@test 'src has _hsc2hs-ghc-9.10.1' {
    assert "$src/_hsc2hs-ghc-9.10.1" is_file
}

@test 'src has _hsc2hs-ghc-9.4.4' {
    assert "$src/_hsc2hs-ghc-9.4.4" is_file
}

@test 'src has _hsrp' {
    assert "$src/_hsrp" is_file
}

@test 'src has _ht' {
    assert "$src/_ht" is_file
}

@test 'src has _htcacheclean' {
    assert "$src/_htcacheclean" is_file
}

@test 'src has _htcontext' {
    assert "$src/_htcontext" is_file
}

@test 'src has _htdbm' {
    assert "$src/_htdbm" is_file
}

@test 'src has _htlatex' {
    assert "$src/_htlatex" is_file
}

@test 'src has _htmex' {
    assert "$src/_htmex" is_file
}

@test 'src has _html-beautify' {
    assert "$src/_html-beautify" is_file
}

@test 'src has _html-minifier' {
    assert "$src/_html-minifier" is_file
}

@test 'src has _html2markdown' {
    assert "$src/_html2markdown" is_file
}

@test 'src has _html2markdown.py3' {
    assert "$src/_html2markdown.py3" is_file
}

@test 'src has _htmltree' {
    assert "$src/_htmltree" is_file
}

@test 'src has _htmltree5.18' {
    assert "$src/_htmltree5.18" is_file
}

@test 'src has _htmltree5.28' {
    assert "$src/_htmltree5.28" is_file
}

@test 'src has _htmltree5.30' {
    assert "$src/_htmltree5.30" is_file
}

@test 'src has _htmltree5.34' {
    assert "$src/_htmltree5.34" is_file
}

@test 'src has _htpasswd' {
    assert "$src/_htpasswd" is_file
}

@test 'src has _httex' {
    assert "$src/_httex" is_file
}

@test 'src has _httexi' {
    assert "$src/_httexi" is_file
}

@test 'src has _httpd' {
    assert "$src/_httpd" is_file
}

@test 'src has _httpd-wrapper' {
    assert "$src/_httpd-wrapper" is_file
}

@test 'src has _httprint' {
    assert "$src/_httprint" is_file
}

@test 'src has _httpster' {
    assert "$src/_httpster" is_file
}

@test 'src has _httpx' {
    assert "$src/_httpx" is_file
}

@test 'src has _httrack' {
    assert "$src/_httrack" is_file
}

@test 'src has _httxt2dbm' {
    assert "$src/_httxt2dbm" is_file
}

@test 'src has _htxelatex' {
    assert "$src/_htxelatex" is_file
}

@test 'src has _hub-tool' {
    assert "$src/_hub-tool" is_file
}

@test 'src has _hunspell' {
    assert "$src/_hunspell" is_file
}

@test 'src has _hupper' {
    assert "$src/_hupper" is_file
}

@test 'src has _hupper3' {
    assert "$src/_hupper3" is_file
}

@test 'src has _hv_vss_daemon' {
    assert "$src/_hv_vss_daemon" is_file
}

@test 'src has _hwclock' {
    assert "$src/_hwclock" is_file
}

@test 'src has _hwe-support-status' {
    assert "$src/_hwe-support-status" is_file
}

@test 'src has _hwinfo' {
    assert "$src/_hwinfo" is_file
}

@test 'src has _hwloc-annotate' {
    assert "$src/_hwloc-annotate" is_file
}

@test 'src has _hwloc-assembler' {
    assert "$src/_hwloc-assembler" is_file
}

@test 'src has _hwloc-assembler-remote' {
    assert "$src/_hwloc-assembler-remote" is_file
}

@test 'src has _hwloc-bind' {
    assert "$src/_hwloc-bind" is_file
}

@test 'src has _hwloc-calc' {
    assert "$src/_hwloc-calc" is_file
}

@test 'src has _hwloc-compress-dir' {
    assert "$src/_hwloc-compress-dir" is_file
}

@test 'src has _hwloc-diff' {
    assert "$src/_hwloc-diff" is_file
}

@test 'src has _hwloc-distances' {
    assert "$src/_hwloc-distances" is_file
}

@test 'src has _hwloc-distrib' {
    assert "$src/_hwloc-distrib" is_file
}

@test 'src has _hwloc-dump-hwdata' {
    assert "$src/_hwloc-dump-hwdata" is_file
}

@test 'src has _hwloc-gather-topology' {
    assert "$src/_hwloc-gather-topology" is_file
}

@test 'src has _hwloc-info' {
    assert "$src/_hwloc-info" is_file
}

@test 'src has _hwloc-ls' {
    assert "$src/_hwloc-ls" is_file
}

@test 'src has _hwloc-patch' {
    assert "$src/_hwloc-patch" is_file
}

@test 'src has _hwloc-ps' {
    assert "$src/_hwloc-ps" is_file
}

@test 'src has _hydra' {
    assert "$src/_hydra" is_file
}

@test 'src has _hyperfine' {
    assert "$src/_hyperfine" is_file
}

@test 'src has _hyperkit' {
    assert "$src/_hyperkit" is_file
}

@test 'src has _hypervfcopyd' {
    assert "$src/_hypervfcopyd" is_file
}

@test 'src has _hypervkvpd' {
    assert "$src/_hypervkvpd" is_file
}

@test 'src has _hypervvssd' {
    assert "$src/_hypervvssd" is_file
}

@test 'src has _hyperxmp-add-bytecount' {
    assert "$src/_hyperxmp-add-bytecount" is_file
}

@test 'src has _hzip' {
    assert "$src/_hzip" is_file
}

@test 'src has _i386' {
    assert "$src/_i386" is_file
}

@test 'src has _i686-linux-gnu-pkg-config' {
    assert "$src/_i686-linux-gnu-pkg-config" is_file
}

@test 'src has _i686-pc-linux-gnu-pkg-config' {
    assert "$src/_i686-pc-linux-gnu-pkg-config" is_file
}

@test 'src has _i686-w64-mingw32-addr2line' {
    assert "$src/_i686-w64-mingw32-addr2line" is_file
}

@test 'src has _i686-w64-mingw32-ar' {
    assert "$src/_i686-w64-mingw32-ar" is_file
}

@test 'src has _i686-w64-mingw32-as' {
    assert "$src/_i686-w64-mingw32-as" is_file
}

@test 'src has _i686-w64-mingw32-c++' {
    assert "$src/_i686-w64-mingw32-c++" is_file
}

@test 'src has _i686-w64-mingw32-c++-posix' {
    assert "$src/_i686-w64-mingw32-c++-posix" is_file
}

@test 'src has _i686-w64-mingw32-c++-win32' {
    assert "$src/_i686-w64-mingw32-c++-win32" is_file
}

@test 'src has _i686-w64-mingw32-c++filt' {
    assert "$src/_i686-w64-mingw32-c++filt" is_file
}

@test 'src has _i686-w64-mingw32-cpp' {
    assert "$src/_i686-w64-mingw32-cpp" is_file
}

@test 'src has _i686-w64-mingw32-cpp-posix' {
    assert "$src/_i686-w64-mingw32-cpp-posix" is_file
}

@test 'src has _i686-w64-mingw32-cpp-win32' {
    assert "$src/_i686-w64-mingw32-cpp-win32" is_file
}

@test 'src has _i686-w64-mingw32-dlltool' {
    assert "$src/_i686-w64-mingw32-dlltool" is_file
}

@test 'src has _i686-w64-mingw32-dllwrap' {
    assert "$src/_i686-w64-mingw32-dllwrap" is_file
}

@test 'src has _i686-w64-mingw32-elfedit' {
    assert "$src/_i686-w64-mingw32-elfedit" is_file
}

@test 'src has _i686-w64-mingw32-g++' {
    assert "$src/_i686-w64-mingw32-g++" is_file
}

@test 'src has _i686-w64-mingw32-g++-posix' {
    assert "$src/_i686-w64-mingw32-g++-posix" is_file
}

@test 'src has _i686-w64-mingw32-g++-win32' {
    assert "$src/_i686-w64-mingw32-g++-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcc' {
    assert "$src/_i686-w64-mingw32-gcc" is_file
}

@test 'src has _i686-w64-mingw32-gcc-8' {
    assert "$src/_i686-w64-mingw32-gcc-8" is_file
}

@test 'src has _i686-w64-mingw32-gcc-8.3-posix' {
    assert "$src/_i686-w64-mingw32-gcc-8.3-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcc-8.3-win32' {
    assert "$src/_i686-w64-mingw32-gcc-8.3-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcc-ar' {
    assert "$src/_i686-w64-mingw32-gcc-ar" is_file
}

@test 'src has _i686-w64-mingw32-gcc-ar-posix' {
    assert "$src/_i686-w64-mingw32-gcc-ar-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcc-ar-win32' {
    assert "$src/_i686-w64-mingw32-gcc-ar-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcc-nm' {
    assert "$src/_i686-w64-mingw32-gcc-nm" is_file
}

@test 'src has _i686-w64-mingw32-gcc-nm-posix' {
    assert "$src/_i686-w64-mingw32-gcc-nm-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcc-nm-win32' {
    assert "$src/_i686-w64-mingw32-gcc-nm-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcc-posix' {
    assert "$src/_i686-w64-mingw32-gcc-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcc-ranlib' {
    assert "$src/_i686-w64-mingw32-gcc-ranlib" is_file
}

@test 'src has _i686-w64-mingw32-gcc-ranlib-posix' {
    assert "$src/_i686-w64-mingw32-gcc-ranlib-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcc-ranlib-win32' {
    assert "$src/_i686-w64-mingw32-gcc-ranlib-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcc-win32' {
    assert "$src/_i686-w64-mingw32-gcc-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcov' {
    assert "$src/_i686-w64-mingw32-gcov" is_file
}

@test 'src has _i686-w64-mingw32-gcov-dump-posix' {
    assert "$src/_i686-w64-mingw32-gcov-dump-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcov-dump-win32' {
    assert "$src/_i686-w64-mingw32-gcov-dump-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcov-posix' {
    assert "$src/_i686-w64-mingw32-gcov-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcov-tool-posix' {
    assert "$src/_i686-w64-mingw32-gcov-tool-posix" is_file
}

@test 'src has _i686-w64-mingw32-gcov-tool-win32' {
    assert "$src/_i686-w64-mingw32-gcov-tool-win32" is_file
}

@test 'src has _i686-w64-mingw32-gcov-win32' {
    assert "$src/_i686-w64-mingw32-gcov-win32" is_file
}

@test 'src has _i686-w64-mingw32-ld' {
    assert "$src/_i686-w64-mingw32-ld" is_file
}

@test 'src has _i686-w64-mingw32-ld.bfd' {
    assert "$src/_i686-w64-mingw32-ld.bfd" is_file
}

@test 'src has _i686-w64-mingw32-nm' {
    assert "$src/_i686-w64-mingw32-nm" is_file
}

@test 'src has _i686-w64-mingw32-objcopy' {
    assert "$src/_i686-w64-mingw32-objcopy" is_file
}

@test 'src has _i686-w64-mingw32-objdump' {
    assert "$src/_i686-w64-mingw32-objdump" is_file
}

@test 'src has _i686-w64-mingw32-ranlib' {
    assert "$src/_i686-w64-mingw32-ranlib" is_file
}

@test 'src has _i686-w64-mingw32-readelf' {
    assert "$src/_i686-w64-mingw32-readelf" is_file
}

@test 'src has _i686-w64-mingw32-size' {
    assert "$src/_i686-w64-mingw32-size" is_file
}

@test 'src has _i686-w64-mingw32-strings' {
    assert "$src/_i686-w64-mingw32-strings" is_file
}

@test 'src has _i686-w64-mingw32-strip' {
    assert "$src/_i686-w64-mingw32-strip" is_file
}

@test 'src has _i686-w64-mingw32-windmc' {
    assert "$src/_i686-w64-mingw32-windmc" is_file
}

@test 'src has _i686-w64-mingw32-windres' {
    assert "$src/_i686-w64-mingw32-windres" is_file
}

@test 'src has _iagno' {
    assert "$src/_iagno" is_file
}

@test 'src has _iasecc-tool' {
    assert "$src/_iasecc-tool" is_file
}

@test 'src has _iasl' {
    assert "$src/_iasl" is_file
}

@test 'src has _ibaddr' {
    assert "$src/_ibaddr" is_file
}

@test 'src has _ibcacheedit' {
    assert "$src/_ibcacheedit" is_file
}

@test 'src has _ibccconfig' {
    assert "$src/_ibccconfig" is_file
}

@test 'src has _ibccquery' {
    assert "$src/_ibccquery" is_file
}

@test 'src has _ibclearcounters' {
    assert "$src/_ibclearcounters" is_file
}

@test 'src has _ibclearerrors' {
    assert "$src/_ibclearerrors" is_file
}

@test 'src has _ibd2sdi' {
    assert "$src/_ibd2sdi" is_file
}

@test 'src has _ibeacon' {
    assert "$src/_ibeacon" is_file
}

@test 'src has _ibhosts' {
    assert "$src/_ibhosts" is_file
}

@test 'src has _iblinkinfo' {
    assert "$src/_iblinkinfo" is_file
}

@test 'src has _ibnetdiscover' {
    assert "$src/_ibnetdiscover" is_file
}

@test 'src has _ibnodes' {
    assert "$src/_ibnodes" is_file
}

@test 'src has _ibping' {
    assert "$src/_ibping" is_file
}

@test 'src has _ibportstate' {
    assert "$src/_ibportstate" is_file
}

@test 'src has _ibqueryerrors' {
    assert "$src/_ibqueryerrors" is_file
}

@test 'src has _ibroute' {
    assert "$src/_ibroute" is_file
}

@test 'src has _ibrouters' {
    assert "$src/_ibrouters" is_file
}

@test 'src has _ibstat' {
    assert "$src/_ibstat" is_file
}

@test 'src has _ibstatus' {
    assert "$src/_ibstatus" is_file
}

@test 'src has _ibswitches' {
    assert "$src/_ibswitches" is_file
}

@test 'src has _ibsysstat' {
    assert "$src/_ibsysstat" is_file
}

@test 'src has _ibtracert' {
    assert "$src/_ibtracert" is_file
}

@test 'src has _ibus-daemon' {
    assert "$src/_ibus-daemon" is_file
}

@test 'src has _ibus-table-createdb' {
    assert "$src/_ibus-table-createdb" is_file
}

@test 'src has _ibv_asyncwatch' {
    assert "$src/_ibv_asyncwatch" is_file
}

@test 'src has _ibv_devinfo' {
    assert "$src/_ibv_devinfo" is_file
}

@test 'src has _ibv_rc_pingpong' {
    assert "$src/_ibv_rc_pingpong" is_file
}

@test 'src has _ibv_srq_pingpong' {
    assert "$src/_ibv_srq_pingpong" is_file
}

@test 'src has _ibv_uc_pingpong' {
    assert "$src/_ibv_uc_pingpong" is_file
}

@test 'src has _ibv_ud_pingpong' {
    assert "$src/_ibv_ud_pingpong" is_file
}

@test 'src has _icalendar' {
    assert "$src/_icalendar" is_file
}

@test 'src has _icat' {
    assert "$src/_icat" is_file
}

@test 'src has _icc_simplify' {
    assert "$src/_icc_simplify" is_file
}

@test 'src has _iccdump' {
    assert "$src/_iccdump" is_file
}

@test 'src has _iccgamut' {
    assert "$src/_iccgamut" is_file
}

@test 'src has _icclu' {
    assert "$src/_icclu" is_file
}

@test 'src has _iceauth' {
    assert "$src/_iceauth" is_file
}

@test 'src has _icedax' {
    assert "$src/_icedax" is_file
}

@test 'src has _icesh' {
    assert "$src/_icesh" is_file
}

@test 'src has _icesh-default' {
    assert "$src/_icesh-default" is_file
}

@test 'src has _icesound' {
    assert "$src/_icesound" is_file
}

@test 'src has _icewm' {
    assert "$src/_icewm" is_file
}

@test 'src has _icewm-default' {
    assert "$src/_icewm-default" is_file
}

@test 'src has _icewm-session' {
    assert "$src/_icewm-session" is_file
}

@test 'src has _icewm-session-default' {
    assert "$src/_icewm-session-default" is_file
}

@test 'src has _icewmbg' {
    assert "$src/_icewmbg" is_file
}

@test 'src has _icewmbg-default' {
    assert "$src/_icewmbg-default" is_file
}

@test 'src has _icewmtray' {
    assert "$src/_icewmtray" is_file
}

@test 'src has _iclingo' {
    assert "$src/_iclingo" is_file
}

@test 'src has _ico' {
    assert "$src/_ico" is_file
}

@test 'src has _iconv' {
    assert "$src/_iconv" is_file
}

@test 'src has _iconvconfig' {
    assert "$src/_iconvconfig" is_file
}

@test 'src has _iconvconfig.x86_64' {
    assert "$src/_iconvconfig.x86_64" is_file
}

@test 'src has _icotool' {
    assert "$src/_icotool" is_file
}

@test 'src has _icu-config' {
    assert "$src/_icu-config" is_file
}

@test 'src has _icuexportdata' {
    assert "$src/_icuexportdata" is_file
}

@test 'src has _icuinfo' {
    assert "$src/_icuinfo" is_file
}

@test 'src has _icupkg' {
    assert "$src/_icupkg" is_file
}

@test 'src has _identity_driver' {
    assert "$src/_identity_driver" is_file
}

@test 'src has _idevice_id' {
    assert "$src/_idevice_id" is_file
}

@test 'src has _idevicebackup' {
    assert "$src/_idevicebackup" is_file
}

@test 'src has _idevicebackup2' {
    assert "$src/_idevicebackup2" is_file
}

@test 'src has _idevicecrashreport' {
    assert "$src/_idevicecrashreport" is_file
}

@test 'src has _idevicedate' {
    assert "$src/_idevicedate" is_file
}

@test 'src has _idevicedebug' {
    assert "$src/_idevicedebug" is_file
}

@test 'src has _idevicedebugserverproxy' {
    assert "$src/_idevicedebugserverproxy" is_file
}

@test 'src has _idevicediagnostics' {
    assert "$src/_idevicediagnostics" is_file
}

@test 'src has _ideviceenterrecovery' {
    assert "$src/_ideviceenterrecovery" is_file
}

@test 'src has _ideviceimagemounter' {
    assert "$src/_ideviceimagemounter" is_file
}

@test 'src has _ideviceinfo' {
    assert "$src/_ideviceinfo" is_file
}

@test 'src has _ideviceinstaller' {
    assert "$src/_ideviceinstaller" is_file
}

@test 'src has _idevicename' {
    assert "$src/_idevicename" is_file
}

@test 'src has _idevicenotificationproxy' {
    assert "$src/_idevicenotificationproxy" is_file
}

@test 'src has _idevicepair' {
    assert "$src/_idevicepair" is_file
}

@test 'src has _ideviceprovision' {
    assert "$src/_ideviceprovision" is_file
}

@test 'src has _idevicescreenshot' {
    assert "$src/_idevicescreenshot" is_file
}

@test 'src has _idevicesyslog' {
    assert "$src/_idevicesyslog" is_file
}

@test 'src has _idf2vrml' {
    assert "$src/_idf2vrml" is_file
}

@test 'src has _idiag-socket-details' {
    assert "$src/_idiag-socket-details" is_file
}

@test 'src has _idle' {
    assert "$src/_idle" is_file
}

@test 'src has _idle2' {
    assert "$src/_idle2" is_file
}

@test 'src has _idle2.7' {
    assert "$src/_idle2.7" is_file
}

@test 'src has _idle3' {
    assert "$src/_idle3" is_file
}

@test 'src has _idle3.7' {
    assert "$src/_idle3.7" is_file
}

@test 'src has _idlj' {
    assert "$src/_idlj" is_file
}

@test 'src has _idn' {
    assert "$src/_idn" is_file
}

@test 'src has _idn2' {
    assert "$src/_idn2" is_file
}

@test 'src has _idx.pl' {
    assert "$src/_idx.pl" is_file
}

@test 'src has _idxparse.pl' {
    assert "$src/_idxparse.pl" is_file
}

@test 'src has _iecset' {
    assert "$src/_iecset" is_file
}

@test 'src has _iex' {
    assert "$src/_iex" is_file
}

@test 'src has _ifctrstat' {
    assert "$src/_ifctrstat" is_file
}

@test 'src has _ifdata' {
    assert "$src/_ifdata" is_file
}

@test 'src has _ifdown' {
    assert "$src/_ifdown" is_file
}

@test 'src has _ifdtool' {
    assert "$src/_ifdtool" is_file
}

@test 'src has _ifenslave' {
    assert "$src/_ifenslave" is_file
}

@test 'src has _ifenslave-2.6' {
    assert "$src/_ifenslave-2.6" is_file
}

@test 'src has _ifind' {
    assert "$src/_ifind" is_file
}

@test 'src has _ifittool' {
    assert "$src/_ifittool" is_file
}

@test 'src has _ifnames' {
    assert "$src/_ifnames" is_file
}

@test 'src has _ifparse' {
    assert "$src/_ifparse" is_file
}

@test 'src has _ifplugd' {
    assert "$src/_ifplugd" is_file
}

@test 'src has _ifplugstatus' {
    assert "$src/_ifplugstatus" is_file
}

@test 'src has _ifpps' {
    assert "$src/_ifpps" is_file
}

@test 'src has _ifquery' {
    assert "$src/_ifquery" is_file
}

@test 'src has _ifstat' {
    assert "$src/_ifstat" is_file
}

@test 'src has _ifstatus' {
    assert "$src/_ifstatus" is_file
}

@test 'src has _iftoprs' {
    assert "$src/_iftoprs" is_file
}

@test 'src has _ifup' {
    assert "$src/_ifup" is_file
}

@test 'src has _ifupdown' {
    assert "$src/_ifupdown" is_file
}

@test 'src has _ifuse' {
    assert "$src/_ifuse" is_file
}

@test 'src has _ifwitool' {
    assert "$src/_ifwitool" is_file
}

@test 'src has _igrp' {
    assert "$src/_igrp" is_file
}

@test 'src has _ikdasm' {
    assert "$src/_ikdasm" is_file
}

@test 'src has _ike-scan' {
    assert "$src/_ike-scan" is_file
}

@test 'src has _ilasm' {
    assert "$src/_ilasm" is_file
}

@test 'src has _illinkanalyzer' {
    assert "$src/_illinkanalyzer" is_file
}

@test 'src has _illumread' {
    assert "$src/_illumread" is_file
}

@test 'src has _iloktool' {
    assert "$src/_iloktool" is_file
}

@test 'src has _ils' {
    assert "$src/_ils" is_file
}

@test 'src has _imageMounter.py' {
    assert "$src/_imageMounter.py" is_file
}

@test 'src has _imageio_download_bin' {
    assert "$src/_imageio_download_bin" is_file
}

@test 'src has _imageio_remove_bin' {
    assert "$src/_imageio_remove_bin" is_file
}

@test 'src has _imap4d' {
    assert "$src/_imap4d" is_file
}

@test 'src has _img2cow' {
    assert "$src/_img2cow" is_file
}

@test 'src has _img2py' {
    assert "$src/_img2py" is_file
}

@test 'src has _img2txt' {
    assert "$src/_img2txt" is_file
}

@test 'src has _img2webp' {
    assert "$src/_img2webp" is_file
}

@test 'src has _img2xpm' {
    assert "$src/_img2xpm" is_file
}

@test 'src has _img2xterm' {
    assert "$src/_img2xterm" is_file
}

@test 'src has _img_cat' {
    assert "$src/_img_cat" is_file
}

@test 'src has _img_stat' {
    assert "$src/_img_stat" is_file
}

@test 'src has _imgcache-parse-mod.py' {
    assert "$src/_imgcache-parse-mod.py" is_file
}

@test 'src has _imgcache-parse.py' {
    assert "$src/_imgcache-parse.py" is_file
}

@test 'src has _imgcmp' {
    assert "$src/_imgcmp" is_file
}

@test 'src has _imginfo' {
    assert "$src/_imginfo" is_file
}

@test 'src has _imlib2_conv' {
    assert "$src/_imlib2_conv" is_file
}

@test 'src has _imlib2_load' {
    assert "$src/_imlib2_load" is_file
}

@test 'src has _imlib2_view' {
    assert "$src/_imlib2_view" is_file
}

@test 'src has _impacket-GetNPUsers' {
    assert "$src/_impacket-GetNPUsers" is_file
}

@test 'src has _impacket-esentutl' {
    assert "$src/_impacket-esentutl" is_file
}

@test 'src has _impacket-exchanger' {
    assert "$src/_impacket-exchanger" is_file
}

@test 'src has _impacket-getArch' {
    assert "$src/_impacket-getArch" is_file
}

@test 'src has _impacket-getPac' {
    assert "$src/_impacket-getPac" is_file
}

@test 'src has _impacket-getTGT' {
    assert "$src/_impacket-getTGT" is_file
}

@test 'src has _impacket-goldenPac' {
    assert "$src/_impacket-goldenPac" is_file
}

@test 'src has _impacket-mqtt_check' {
    assert "$src/_impacket-mqtt_check" is_file
}

@test 'src has _impacket-netview' {
    assert "$src/_impacket-netview" is_file
}

@test 'src has _impacket-ntfs-read' {
    assert "$src/_impacket-ntfs-read" is_file
}

@test 'src has _impacket-psexec' {
    assert "$src/_impacket-psexec" is_file
}

@test 'src has _impacket-registry-read' {
    assert "$src/_impacket-registry-read" is_file
}

@test 'src has _impacket-rpcdump' {
    assert "$src/_impacket-rpcdump" is_file
}

@test 'src has _impacket-samrdump' {
    assert "$src/_impacket-samrdump" is_file
}

@test 'src has _impacket-services' {
    assert "$src/_impacket-services" is_file
}

@test 'src has _impacket-wmiexec' {
    assert "$src/_impacket-wmiexec" is_file
}

@test 'src has _impacket-wmiquery' {
    assert "$src/_impacket-wmiquery" is_file
}

@test 'src has _import-im6' {
    assert "$src/_import-im6" is_file
}

@test 'src has _import-im6.q16' {
    assert "$src/_import-im6.q16" is_file
}

@test 'src has _imptrace' {
    assert "$src/_imptrace" is_file
}

@test 'src has _imsettings-info' {
    assert "$src/_imsettings-info" is_file
}

@test 'src has _imsettings-reload' {
    assert "$src/_imsettings-reload" is_file
}

@test 'src has _imsettings-switch' {
    assert "$src/_imsettings-switch" is_file
}

@test 'src has _in.tftpd' {
    assert "$src/_in.tftpd" is_file
}

@test 'src has _indenterAndDuplicateLineDeleter.sh' {
    assert "$src/_indenterAndDuplicateLineDeleter.sh" is_file
}

@test 'src has _inetsim' {
    assert "$src/_inetsim" is_file
}

@test 'src has _inetutils-telnet' {
    assert "$src/_inetutils-telnet" is_file
}

@test 'src has _inflatehd' {
    assert "$src/_inflatehd" is_file
}

@test 'src has _infobrowser' {
    assert "$src/_infobrowser" is_file
}

@test 'src has _infocmp' {
    assert "$src/_infocmp" is_file
}

@test 'src has _infokey' {
    assert "$src/_infokey" is_file
}

@test 'src has _infotocap' {
    assert "$src/_infotocap" is_file
}

@test 'src has _inimf' {
    assert "$src/_inimf" is_file
}

@test 'src has _init' {
    assert "$src/_init" is_file
}

@test 'src has _initex' {
    assert "$src/_initex" is_file
}

@test 'src has _initviocons' {
    assert "$src/_initviocons" is_file
}

@test 'src has _inkscape' {
    assert "$src/_inkscape" is_file
}

@test 'src has _innochecksum' {
    assert "$src/_innochecksum" is_file
}

@test 'src has _innotop' {
    assert "$src/_innotop" is_file
}

@test 'src has _inputattach' {
    assert "$src/_inputattach" is_file
}

@test 'src has _insmod' {
    assert "$src/_insmod" is_file
}

@test 'src has _inspectrum' {
    assert "$src/_inspectrum" is_file
}

@test 'src has _insserv' {
    assert "$src/_insserv" is_file
}

@test 'src has _install-brcmfmac' {
    assert "$src/_install-brcmfmac" is_file
}

@test 'src has _install-docs' {
    assert "$src/_install-docs" is_file
}

@test 'src has _install-info' {
    assert "$src/_install-info" is_file
}

@test 'src has _install-menu' {
    assert "$src/_install-menu" is_file
}

@test 'src has _install-snd-module' {
    assert "$src/_install-snd-module" is_file
}

@test 'src has _installation_sources' {
    assert "$src/_installation_sources" is_file
}

@test 'src has _installcheck' {
    assert "$src/_installcheck" is_file
}

@test 'src has _installer' {
    assert "$src/_installer" is_file
}

@test 'src has _installkernel' {
    assert "$src/_installkernel" is_file
}

@test 'src has _instantfpc' {
    assert "$src/_instantfpc" is_file
}

@test 'src has _integritysetup' {
    assert "$src/_integritysetup" is_file
}

@test 'src has _intel-microcode2ucode' {
    assert "$src/_intel-microcode2ucode" is_file
}

@test 'src has _intel-virtual-output' {
    assert "$src/_intel-virtual-output" is_file
}

@test 'src has _intelvbttool' {
    assert "$src/_intelvbttool" is_file
}

@test 'src has _intltool-extract' {
    assert "$src/_intltool-extract" is_file
}

@test 'src has _intltool-merge' {
    assert "$src/_intltool-merge" is_file
}

@test 'src has _intltool-prepare' {
    assert "$src/_intltool-prepare" is_file
}

@test 'src has _intltool-update' {
    assert "$src/_intltool-update" is_file
}

@test 'src has _intltoolize' {
    assert "$src/_intltoolize" is_file
}

@test 'src has _inv' {
    assert "$src/_inv" is_file
}

@test 'src has _invgeod' {
    assert "$src/_invgeod" is_file
}

@test 'src has _inviteflood' {
    assert "$src/_inviteflood" is_file
}

@test 'src has _invoke' {
    assert "$src/_invoke" is_file
}

@test 'src has _invprofcheck' {
    assert "$src/_invprofcheck" is_file
}

@test 'src has _invproj' {
    assert "$src/_invproj" is_file
}

@test 'src has _iocdump' {
    assert "$src/_iocdump" is_file
}

@test 'src has _iodine' {
    assert "$src/_iodine" is_file
}

@test 'src has _iodine-client-start' {
    assert "$src/_iodine-client-start" is_file
}

@test 'src has _iodined' {
    assert "$src/_iodined" is_file
}

@test 'src has _iofile.d' {
    assert "$src/_iofile.d" is_file
}

@test 'src has _iofileb.d' {
    assert "$src/_iofileb.d" is_file
}

@test 'src has _ionic' {
    assert "$src/_ionic" is_file
}

@test 'src has _ionice' {
    assert "$src/_ionice" is_file
}

@test 'src has _iopattern' {
    assert "$src/_iopattern" is_file
}

@test 'src has _iopending' {
    assert "$src/_iopending" is_file
}

@test 'src has _ioreg' {
    assert "$src/_ioreg" is_file
}

@test 'src has _ios-deploy' {
    assert "$src/_ios-deploy" is_file
}

@test 'src has _iosnoop' {
    assert "$src/_iosnoop" is_file
}

@test 'src has _iowatcher' {
    assert "$src/_iowatcher" is_file
}

@test 'src has _iozone' {
    assert "$src/_iozone" is_file
}

@test 'src has _ip6tables' {
    assert "$src/_ip6tables" is_file
}

@test 'src has _ip6tables-apply' {
    assert "$src/_ip6tables-apply" is_file
}

@test 'src has _ip6tables-legacy' {
    assert "$src/_ip6tables-legacy" is_file
}

@test 'src has _ip6tables-nft' {
    assert "$src/_ip6tables-nft" is_file
}

@test 'src has _ip6tables-restore-translate' {
    assert "$src/_ip6tables-restore-translate" is_file
}

@test 'src has _ip6tables-translate' {
    assert "$src/_ip6tables-translate" is_file
}

@test 'src has _ipa' {
    assert "$src/_ipa" is_file
}

@test 'src has _ipa-getcert' {
    assert "$src/_ipa-getcert" is_file
}

@test 'src has _ipa-getkeytab' {
    assert "$src/_ipa-getkeytab" is_file
}

@test 'src has _ipa-join' {
    assert "$src/_ipa-join" is_file
}

@test 'src has _ipa-rmkeytab' {
    assert "$src/_ipa-rmkeytab" is_file
}

@test 'src has _ipcalc' {
    assert "$src/_ipcalc" is_file
}

@test 'src has _ipcmk' {
    assert "$src/_ipcmk" is_file
}

@test 'src has _ipcount' {
    assert "$src/_ipcount" is_file
}

@test 'src has _ipcount5.18' {
    assert "$src/_ipcount5.18" is_file
}

@test 'src has _ipcount5.28' {
    assert "$src/_ipcount5.28" is_file
}

@test 'src has _ipcount5.30' {
    assert "$src/_ipcount5.30" is_file
}

@test 'src has _ipcount5.34' {
    assert "$src/_ipcount5.34" is_file
}

@test 'src has _ipcrm' {
    assert "$src/_ipcrm" is_file
}

@test 'src has _ipcs' {
    assert "$src/_ipcs" is_file
}

@test 'src has _iperf' {
    assert "$src/_iperf" is_file
}

@test 'src has _iperf3' {
    assert "$src/_iperf3" is_file
}

@test 'src has _iperf3-darwin' {
    assert "$src/_iperf3-darwin" is_file
}

@test 'src has _ipmi-chassis' {
    assert "$src/_ipmi-chassis" is_file
}

@test 'src has _ipmi-chassis-config' {
    assert "$src/_ipmi-chassis-config" is_file
}

@test 'src has _ipmi-config' {
    assert "$src/_ipmi-config" is_file
}

@test 'src has _ipmi-console' {
    assert "$src/_ipmi-console" is_file
}

@test 'src has _ipmi-dcmi' {
    assert "$src/_ipmi-dcmi" is_file
}

@test 'src has _ipmi-detect' {
    assert "$src/_ipmi-detect" is_file
}

@test 'src has _ipmi-fru' {
    assert "$src/_ipmi-fru" is_file
}

@test 'src has _ipmi-locate' {
    assert "$src/_ipmi-locate" is_file
}

@test 'src has _ipmi-oem' {
    assert "$src/_ipmi-oem" is_file
}

@test 'src has _ipmi-pef-config' {
    assert "$src/_ipmi-pef-config" is_file
}

@test 'src has _ipmi-pet' {
    assert "$src/_ipmi-pet" is_file
}

@test 'src has _ipmi-ping' {
    assert "$src/_ipmi-ping" is_file
}

@test 'src has _ipmi-power' {
    assert "$src/_ipmi-power" is_file
}

@test 'src has _ipmi-raw' {
    assert "$src/_ipmi-raw" is_file
}

@test 'src has _ipmi-sel' {
    assert "$src/_ipmi-sel" is_file
}

@test 'src has _ipmi-sensors' {
    assert "$src/_ipmi-sensors" is_file
}

@test 'src has _ipmi-sensors-config' {
    assert "$src/_ipmi-sensors-config" is_file
}

@test 'src has _ipmi_sim' {
    assert "$src/_ipmi_sim" is_file
}

@test 'src has _ipmicmd' {
    assert "$src/_ipmicmd" is_file
}

@test 'src has _ipmiconsole' {
    assert "$src/_ipmiconsole" is_file
}

@test 'src has _ipmidetect' {
    assert "$src/_ipmidetect" is_file
}

@test 'src has _ipmimonitoring' {
    assert "$src/_ipmimonitoring" is_file
}

@test 'src has _ipmiping' {
    assert "$src/_ipmiping" is_file
}

@test 'src has _ipmipower' {
    assert "$src/_ipmipower" is_file
}

@test 'src has _ipmish' {
    assert "$src/_ipmish" is_file
}

@test 'src has _ipmitool' {
    assert "$src/_ipmitool" is_file
}

@test 'src has _ippfind' {
    assert "$src/_ippfind" is_file
}

@test 'src has _ippserver' {
    assert "$src/_ippserver" is_file
}

@test 'src has _ipptool' {
    assert "$src/_ipptool" is_file
}

@test 'src has _ippusbxd' {
    assert "$src/_ippusbxd" is_file
}

@test 'src has _iprconfig' {
    assert "$src/_iprconfig" is_file
}

@test 'src has _iprdump' {
    assert "$src/_iprdump" is_file
}

@test 'src has _ipresend' {
    assert "$src/_ipresend" is_file
}

@test 'src has _iprupdate' {
    assert "$src/_iprupdate" is_file
}

@test 'src has _ipset' {
    assert "$src/_ipset" is_file
}

@test 'src has _ipset-translate' {
    assert "$src/_ipset-translate" is_file
}

@test 'src has _iptables' {
    assert "$src/_iptables" is_file
}

@test 'src has _iptables-apply' {
    assert "$src/_iptables-apply" is_file
}

@test 'src has _iptables-legacy' {
    assert "$src/_iptables-legacy" is_file
}

@test 'src has _iptables-nft' {
    assert "$src/_iptables-nft" is_file
}

@test 'src has _iptables-restore-translate' {
    assert "$src/_iptables-restore-translate" is_file
}

@test 'src has _iptables-translate' {
    assert "$src/_iptables-translate" is_file
}

@test 'src has _iptc' {
    assert "$src/_iptc" is_file
}

@test 'src has _iptraf-ng' {
    assert "$src/_iptraf-ng" is_file
}

@test 'src has _iptstate' {
    assert "$src/_iptstate" is_file
}

@test 'src has _ipython' {
    assert "$src/_ipython" is_file
}

@test 'src has _ipython3' {
    assert "$src/_ipython3" is_file
}

@test 'src has _ipython3.10' {
    assert "$src/_ipython3.10" is_file
}

@test 'src has _ir-ctl' {
    assert "$src/_ir-ctl" is_file
}

@test 'src has _ir-keytable' {
    assert "$src/_ir-keytable" is_file
}

@test 'src has _irb' {
    assert "$src/_irb" is_file
}

@test 'src has _irb2.3' {
    assert "$src/_irb2.3" is_file
}

@test 'src has _irb2.5' {
    assert "$src/_irb2.5" is_file
}

@test 'src has _irb2.7' {
    assert "$src/_irb2.7" is_file
}

@test 'src has _irb24' {
    assert "$src/_irb24" is_file
}

@test 'src has _irb3.1' {
    assert "$src/_irb3.1" is_file
}

@test 'src has _irc' {
    assert "$src/_irc" is_file
}

@test 'src has _irqtop' {
    assert "$src/_irqtop" is_file
}

@test 'src has _isadump' {
    assert "$src/_isadump" is_file
}

@test 'src has _isaset' {
    assert "$src/_isaset" is_file
}

@test 'src has _ischroot' {
    assert "$src/_ischroot" is_file
}

@test 'src has _iscsi-iname' {
    assert "$src/_iscsi-iname" is_file
}

@test 'src has _iscsid' {
    assert "$src/_iscsid" is_file
}

@test 'src has _iscsistart' {
    assert "$src/_iscsistart" is_file
}

@test 'src has _iscsiuio' {
    assert "$src/_iscsiuio" is_file
}

@test 'src has _isdv4-serial-debugger' {
    assert "$src/_isdv4-serial-debugger" is_file
}

@test 'src has _isdv4-serial-inputattach' {
    assert "$src/_isdv4-serial-inputattach" is_file
}

@test 'src has _ismtp' {
    assert "$src/_ismtp" is_file
}

@test 'src has _iso-info' {
    assert "$src/_iso-info" is_file
}

@test 'src has _iso-read' {
    assert "$src/_iso-read" is_file
}

@test 'src has _isodebug' {
    assert "$src/_isodebug" is_file
}

@test 'src has _isodump' {
    assert "$src/_isodump" is_file
}

@test 'src has _isohybrid' {
    assert "$src/_isohybrid" is_file
}

@test 'src has _isohybrid.pl' {
    assert "$src/_isohybrid.pl" is_file
}

@test 'src has _isoinfo' {
    assert "$src/_isoinfo" is_file
}

@test 'src has _isort' {
    assert "$src/_isort" is_file
}

@test 'src has _isort-identify-imports' {
    assert "$src/_isort-identify-imports" is_file
}

@test 'src has _isosize' {
    assert "$src/_isosize" is_file
}

@test 'src has _isotpdump' {
    assert "$src/_isotpdump" is_file
}

@test 'src has _isotpperf' {
    assert "$src/_isotpperf" is_file
}

@test 'src has _isotprecv' {
    assert "$src/_isotprecv" is_file
}

@test 'src has _isotpsend' {
    assert "$src/_isotpsend" is_file
}

@test 'src has _isotpserver' {
    assert "$src/_isotpserver" is_file
}

@test 'src has _isotpsniffer' {
    assert "$src/_isotpsniffer" is_file
}

@test 'src has _isotptun' {
    assert "$src/_isotptun" is_file
}

@test 'src has _isovfy' {
    assert "$src/_isovfy" is_file
}

@test 'src has _ispell-autobuildhash' {
    assert "$src/_ispell-autobuildhash" is_file
}

@test 'src has _ispellaff2myspell' {
    assert "$src/_ispellaff2myspell" is_file
}

@test 'src has _isql-fb' {
    assert "$src/_isql-fb" is_file
}

@test 'src has _isql-vt' {
    assert "$src/_isql-vt" is_file
}

@test 'src has _isqlw-vt' {
    assert "$src/_isqlw-vt" is_file
}

@test 'src has _istat' {
    assert "$src/_istat" is_file
}

@test 'src has _istats' {
    assert "$src/_istats" is_file
}

@test 'src has _isutf8' {
    assert "$src/_isutf8" is_file
}

@test 'src has _isympy' {
    assert "$src/_isympy" is_file
}

@test 'src has _itrace' {
    assert "$src/_itrace" is_file
}

@test 'src has _itstool' {
    assert "$src/_itstool" is_file
}

@test 'src has _iucode-tool' {
    assert "$src/_iucode-tool" is_file
}

@test 'src has _iucode_tool' {
    assert "$src/_iucode_tool" is_file
}

@test 'src has _iusql' {
    assert "$src/_iusql" is_file
}

@test 'src has _ivshmem-client' {
    assert "$src/_ivshmem-client" is_file
}

@test 'src has _ivshmem-server' {
    assert "$src/_ivshmem-server" is_file
}

@test 'src has _ivtv-ctl' {
    assert "$src/_ivtv-ctl" is_file
}

@test 'src has _iw' {
    assert "$src/_iw" is_file
}

@test 'src has _iwevent' {
    assert "$src/_iwevent" is_file
}

@test 'src has _iwgetid' {
    assert "$src/_iwgetid" is_file
}

@test 'src has _iwmbtfw' {
    assert "$src/_iwmbtfw" is_file
}

@test 'src has _ixion-formula-tokenizer' {
    assert "$src/_ixion-formula-tokenizer" is_file
}

@test 'src has _ixion-parser' {
    assert "$src/_ixion-parser" is_file
}

@test 'src has _ixion-sorter' {
    assert "$src/_ixion-sorter" is_file
}

@test 'src has _jacd' {
    assert "$src/_jacd" is_file
}

@test 'src has _jack_alias' {
    assert "$src/_jack_alias" is_file
}

@test 'src has _jack_connect' {
    assert "$src/_jack_connect" is_file
}

@test 'src has _jack_cpu' {
    assert "$src/_jack_cpu" is_file
}

@test 'src has _jack_disconnect' {
    assert "$src/_jack_disconnect" is_file
}

@test 'src has _jack_load_test' {
    assert "$src/_jack_load_test" is_file
}

@test 'src has _jack_midi_dump' {
    assert "$src/_jack_midi_dump" is_file
}

@test 'src has _jack_midi_latency_test' {
    assert "$src/_jack_midi_latency_test" is_file
}

@test 'src has _jack_property' {
    assert "$src/_jack_property" is_file
}

@test 'src has _jack_test' {
    assert "$src/_jack_test" is_file
}

@test 'src has _jackd' {
    assert "$src/_jackd" is_file
}

@test 'src has _jad' {
    assert "$src/_jad" is_file
}

@test 'src has _jade' {
    assert "$src/_jade" is_file
}

@test 'src has _jailcheck' {
    assert "$src/_jailcheck" is_file
}

@test 'src has _jake' {
    assert "$src/_jake" is_file
}

@test 'src has _jamo-normalize' {
    assert "$src/_jamo-normalize" is_file
}

@test 'src has _jaotc' {
    assert "$src/_jaotc" is_file
}

@test 'src has _jarwrapper' {
    assert "$src/_jarwrapper" is_file
}

@test 'src has _jasmine' {
    assert "$src/_jasmine" is_file
}

@test 'src has _jasmine-node' {
    assert "$src/_jasmine-node" is_file
}

@test 'src has _jasper' {
    assert "$src/_jasper" is_file
}

@test 'src has _java2html' {
    assert "$src/_java2html" is_file
}

@test 'src has _javavm' {
    assert "$src/_javavm" is_file
}

@test 'src has _javaws' {
    assert "$src/_javaws" is_file
}

@test 'src has _jbgtopbm' {
    assert "$src/_jbgtopbm" is_file
}

@test 'src has _jbgtopbm85' {
    assert "$src/_jbgtopbm85" is_file
}

@test 'src has _jbig2dec' {
    assert "$src/_jbig2dec" is_file
}

@test 'src has _jboss-linux' {
    assert "$src/_jboss-linux" is_file
}

@test 'src has _jboss-win' {
    assert "$src/_jboss-win" is_file
}

@test 'src has _jcat' {
    assert "$src/_jcat" is_file
}

@test 'src has _jcmd' {
    assert "$src/_jcmd" is_file
}

@test 'src has _jdeprscan' {
    assert "$src/_jdeprscan" is_file
}

@test 'src has _jdeps' {
    assert "$src/_jdeps" is_file
}

@test 'src has _jemalloc-config' {
    assert "$src/_jemalloc-config" is_file
}

@test 'src has _jemalloc.sh' {
    assert "$src/_jemalloc.sh" is_file
}

@test 'src has _jeprof' {
    assert "$src/_jeprof" is_file
}

@test 'src has _jest' {
    assert "$src/_jest" is_file
}

@test 'src has _jffs2dump' {
    assert "$src/_jffs2dump" is_file
}

@test 'src has _jfmutil' {
    assert "$src/_jfmutil" is_file
}

@test 'src has _jfs_fsck' {
    assert "$src/_jfs_fsck" is_file
}

@test 'src has _jfs_fscklog' {
    assert "$src/_jfs_fscklog" is_file
}

@test 'src has _jfs_mkfs' {
    assert "$src/_jfs_mkfs" is_file
}

@test 'src has _jfs_tune' {
    assert "$src/_jfs_tune" is_file
}

@test 'src has _jhat' {
    assert "$src/_jhat" is_file
}

@test 'src has _jimage' {
    assert "$src/_jimage" is_file
}

@test 'src has _jimsh' {
    assert "$src/_jimsh" is_file
}

@test 'src has _jinfo' {
    assert "$src/_jinfo" is_file
}

@test 'src has _jiv' {
    assert "$src/_jiv" is_file
}

@test 'src has _jjs' {
    assert "$src/_jjs" is_file
}

@test 'src has _jlink' {
    assert "$src/_jlink" is_file
}

@test 'src has _jmacs' {
    assert "$src/_jmacs" is_file
}

@test 'src has _jmap' {
    assert "$src/_jmap" is_file
}

@test 'src has _jmod' {
    assert "$src/_jmod" is_file
}

@test 'src has _jnettop' {
    assert "$src/_jnettop" is_file
}

@test 'src has _jobb' {
    assert "$src/_jobb" is_file
}

@test 'src has _jobparse.pl' {
    assert "$src/_jobparse.pl" is_file
}

@test 'src has _jobparser.py' {
    assert "$src/_jobparser.py" is_file
}

@test 'src has _joe' {
    assert "$src/_joe" is_file
}

@test 'src has _john' {
    assert "$src/_john" is_file
}

@test 'src has _join-dctrl' {
    assert "$src/_join-dctrl" is_file
}

@test 'src has _joomscan' {
    assert "$src/_joomscan" is_file
}

@test 'src has _jp.py' {
    assert "$src/_jp.py" is_file
}

@test 'src has _jp.py-2' {
    assert "$src/_jp.py-2" is_file
}

@test 'src has _jpackage' {
    assert "$src/_jpackage" is_file
}

@test 'src has _jpeg2yuv' {
    assert "$src/_jpeg2yuv" is_file
}

@test 'src has _jpegexiforient' {
    assert "$src/_jpegexiforient" is_file
}

@test 'src has _jpegtran' {
    assert "$src/_jpegtran" is_file
}

@test 'src has _jpgicc' {
    assert "$src/_jpgicc" is_file
}

@test 'src has _jpico' {
    assert "$src/_jpico" is_file
}

@test 'src has _jrunscript' {
    assert "$src/_jrunscript" is_file
}

@test 'src has _js' {
    assert "$src/_js" is_file
}

@test 'src has _js-beautify' {
    assert "$src/_js-beautify" is_file
}

@test 'src has _js-yaml' {
    assert "$src/_js-yaml" is_file
}

@test 'src has _js52' {
    assert "$src/_js52" is_file
}

@test 'src has _js60' {
    assert "$src/_js60" is_file
}

@test 'src has _js78' {
    assert "$src/_js78" is_file
}

@test 'src has _jsadebugd' {
    assert "$src/_jsadebugd" is_file
}

@test 'src has _jsc-4' {
    assert "$src/_jsc-4" is_file
}

@test 'src has _jscal' {
    assert "$src/_jscal" is_file
}

@test 'src has _jshell' {
    assert "$src/_jshell" is_file
}

@test 'src has _json-glib-format' {
    assert "$src/_json-glib-format" is_file
}

@test 'src has _json-glib-validate' {
    assert "$src/_json-glib-validate" is_file
}

@test 'src has _json2pas' {
    assert "$src/_json2pas" is_file
}

@test 'src has _json_reformat' {
    assert "$src/_json_reformat" is_file
}

@test 'src has _json_verify' {
    assert "$src/_json_verify" is_file
}

@test 'src has _json_xs' {
    assert "$src/_json_xs" is_file
}

@test 'src has _jsondiff' {
    assert "$src/_jsondiff" is_file
}

@test 'src has _jsonpatch' {
    assert "$src/_jsonpatch" is_file
}

@test 'src has _jsonpointer' {
    assert "$src/_jsonpointer" is_file
}

@test 'src has _jsonschema' {
    assert "$src/_jsonschema" is_file
}

@test 'src has _jspy' {
    assert "$src/_jspy" is_file
}

@test 'src has _jsr' {
    assert "$src/_jsr" is_file
}

@test 'src has _jstack' {
    assert "$src/_jstack" is_file
}

@test 'src has _jstar' {
    assert "$src/_jstar" is_file
}

@test 'src has _jstat' {
    assert "$src/_jstat" is_file
}

@test 'src has _jstest' {
    assert "$src/_jstest" is_file
}

@test 'src has _jsx' {
    assert "$src/_jsx" is_file
}

@test 'src has _jupyter' {
    assert "$src/_jupyter" is_file
}

@test 'src has _jupyter-bundlerextension' {
    assert "$src/_jupyter-bundlerextension" is_file
}

@test 'src has _jupyter-execute' {
    assert "$src/_jupyter-execute" is_file
}

@test 'src has _jupyter-kernel' {
    assert "$src/_jupyter-kernel" is_file
}

@test 'src has _jupyter-migrate' {
    assert "$src/_jupyter-migrate" is_file
}

@test 'src has _jupyter-nbclassic' {
    assert "$src/_jupyter-nbclassic" is_file
}

@test 'src has _jupyter-nbclassic-bundlerextension' {
    assert "$src/_jupyter-nbclassic-bundlerextension" is_file
}

@test 'src has _jupyter-nbclassic-extension' {
    assert "$src/_jupyter-nbclassic-extension" is_file
}

@test 'src has _jupyter-nbclassic-serverextension' {
    assert "$src/_jupyter-nbclassic-serverextension" is_file
}

@test 'src has _jupyter-nbconvert' {
    assert "$src/_jupyter-nbconvert" is_file
}

@test 'src has _jupyter-nbextension' {
    assert "$src/_jupyter-nbextension" is_file
}

@test 'src has _jupyter-notebook' {
    assert "$src/_jupyter-notebook" is_file
}

@test 'src has _jupyter-run' {
    assert "$src/_jupyter-run" is_file
}

@test 'src has _jupyter-server' {
    assert "$src/_jupyter-server" is_file
}

@test 'src has _jupyter-serverextension' {
    assert "$src/_jupyter-serverextension" is_file
}

@test 'src has _jupyter-trust' {
    assert "$src/_jupyter-trust" is_file
}

@test 'src has _jwhois' {
    assert "$src/_jwhois" is_file
}

@test 'src has _jxlinfo' {
    assert "$src/_jxlinfo" is_file
}

@test 'src has _k3s' {
    assert "$src/_k3s" is_file
}

@test 'src has _kactivities-cli' {
    assert "$src/_kactivities-cli" is_file
}

@test 'src has _kactivitymanagerd' {
    assert "$src/_kactivitymanagerd" is_file
}

@test 'src has _kadmin' {
    assert "$src/_kadmin" is_file
}

@test 'src has _kal' {
    assert "$src/_kal" is_file
}

@test 'src has _kanji-config-updmap-sys' {
    assert "$src/_kanji-config-updmap-sys" is_file
}

@test 'src has _katalyzer' {
    assert "$src/_katalyzer" is_file
}

@test 'src has _kate-syntax-highlighter' {
    assert "$src/_kate-syntax-highlighter" is_file
}

@test 'src has _katedec' {
    assert "$src/_katedec" is_file
}

@test 'src has _kateenc' {
    assert "$src/_kateenc" is_file
}

@test 'src has _kbd' {
    assert "$src/_kbd" is_file
}

@test 'src has _kbdinfo' {
    assert "$src/_kbdinfo" is_file
}

@test 'src has _kbroadcastnotification' {
    assert "$src/_kbroadcastnotification" is_file
}

@test 'src has _kbuildsycoca4' {
    assert "$src/_kbuildsycoca4" is_file
}

@test 'src has _kbuildsycoca5' {
    assert "$src/_kbuildsycoca5" is_file
}

@test 'src has _kbxutil' {
    assert "$src/_kbxutil" is_file
}

@test 'src has _kcmshell4' {
    assert "$src/_kcmshell4" is_file
}

@test 'src has _kcookiejar4' {
    assert "$src/_kcookiejar4" is_file
}

@test 'src has _kcookiejar5' {
    assert "$src/_kcookiejar5" is_file
}

@test 'src has _kde-cp' {
    assert "$src/_kde-cp" is_file
}

@test 'src has _kde-mv' {
    assert "$src/_kde-mv" is_file
}

@test 'src has _kde-open' {
    assert "$src/_kde-open" is_file
}

@test 'src has _kde4-config' {
    assert "$src/_kde4-config" is_file
}

@test 'src has _kde4-menu' {
    assert "$src/_kde4-menu" is_file
}

@test 'src has _kdebugdialog' {
    assert "$src/_kdebugdialog" is_file
}

@test 'src has _kdebugdialog5' {
    assert "$src/_kdebugdialog5" is_file
}

@test 'src has _kdeconnect-cli' {
    assert "$src/_kdeconnect-cli" is_file
}

@test 'src has _kdeconnect-handler' {
    assert "$src/_kdeconnect-handler" is_file
}

@test 'src has _kded4' {
    assert "$src/_kded4" is_file
}

@test 'src has _kdeinit4' {
    assert "$src/_kdeinit4" is_file
}

@test 'src has _kdeinit5' {
    assert "$src/_kdeinit5" is_file
}

@test 'src has _kdemv5' {
    assert "$src/_kdemv5" is_file
}

@test 'src has _kdestroy' {
    assert "$src/_kdestroy" is_file
}

@test 'src has _kdiff3' {
    assert "$src/_kdiff3" is_file
}

@test 'src has _keditfiletype' {
    assert "$src/_keditfiletype" is_file
}

@test 'src has _keditfiletype5' {
    assert "$src/_keditfiletype5" is_file
}

@test 'src has _keepassxc' {
    assert "$src/_keepassxc" is_file
}

@test 'src has _keepassxc-cli' {
    assert "$src/_keepassxc-cli" is_file
}

@test 'src has _keepnote' {
    assert "$src/_keepnote" is_file
}

@test 'src has _kexec' {
    assert "$src/_kexec" is_file
}

@test 'src has _kextcache' {
    assert "$src/_kextcache" is_file
}

@test 'src has _kextfind' {
    assert "$src/_kextfind" is_file
}

@test 'src has _kextlibs' {
    assert "$src/_kextlibs" is_file
}

@test 'src has _kextload' {
    assert "$src/_kextload" is_file
}

@test 'src has _kextstat' {
    assert "$src/_kextstat" is_file
}

@test 'src has _kextunload' {
    assert "$src/_kextunload" is_file
}

@test 'src has _kextutil' {
    assert "$src/_kextutil" is_file
}

@test 'src has _key.dns_resolver' {
    assert "$src/_key.dns_resolver" is_file
}

@test 'src has _key2raw' {
    assert "$src/_key2raw" is_file
}

@test 'src has _key2text' {
    assert "$src/_key2text" is_file
}

@test 'src has _key2xhtml' {
    assert "$src/_key2xhtml" is_file
}

@test 'src has _keychain' {
    assert "$src/_keychain" is_file
}

@test 'src has _keyring' {
    assert "$src/_keyring" is_file
}

@test 'src has _keyring2john' {
    assert "$src/_keyring2john" is_file
}

@test 'src has _keyserv' {
    assert "$src/_keyserv" is_file
}

@test 'src has _kf' {
    assert "$src/_kf" is_file
}

@test 'src has _kfile4' {
    assert "$src/_kfile4" is_file
}

@test 'src has _kgetcred' {
    assert "$src/_kgetcred" is_file
}

@test 'src has _kglobalaccel' {
    assert "$src/_kglobalaccel" is_file
}

@test 'src has _khotnewstuff-upload' {
    assert "$src/_khotnewstuff-upload" is_file
}

@test 'src has _khotnewstuff4' {
    assert "$src/_khotnewstuff4" is_file
}

@test 'src has _kiconfinder' {
    assert "$src/_kiconfinder" is_file
}

@test 'src has _kiconfinder5' {
    assert "$src/_kiconfinder5" is_file
}

@test 'src has _kill.d' {
    assert "$src/_kill.d" is_file
}

@test 'src has _kill_instance' {
    assert "$src/_kill_instance" is_file
}

@test 'src has _killall' {
    assert "$src/_killall" is_file
}

@test 'src has _kinit' {
    assert "$src/_kinit" is_file
}

@test 'src has _kioclient5' {
    assert "$src/_kioclient5" is_file
}

@test 'src has _kirbi2ccache' {
    assert "$src/_kirbi2ccache" is_file
}

@test 'src has _kirbi2john' {
    assert "$src/_kirbi2john" is_file
}

@test 'src has _kismet' {
    assert "$src/_kismet" is_file
}

@test 'src has _kismet_cap_kismetdb' {
    assert "$src/_kismet_cap_kismetdb" is_file
}

@test 'src has _kismet_cap_pcapfile' {
    assert "$src/_kismet_cap_pcapfile" is_file
}

@test 'src has _kismet_cap_sdr_rtl433' {
    assert "$src/_kismet_cap_sdr_rtl433" is_file
}

@test 'src has _kismet_cap_sdr_rtlamr' {
    assert "$src/_kismet_cap_sdr_rtlamr" is_file
}

@test 'src has _kismet_client' {
    assert "$src/_kismet_client" is_file
}

@test 'src has _kismet_drone' {
    assert "$src/_kismet_drone" is_file
}

@test 'src has _kismet_eventbus' {
    assert "$src/_kismet_eventbus" is_file
}

@test 'src has _kismet_proxytest' {
    assert "$src/_kismet_proxytest" is_file
}

@test 'src has _kismet_server' {
    assert "$src/_kismet_server" is_file
}

@test 'src has _kismetdb_dump_devices' {
    assert "$src/_kismetdb_dump_devices" is_file
}

@test 'src has _kismetdb_statistics' {
    assert "$src/_kismetdb_statistics" is_file
}

@test 'src has _kismetdb_strip_packets' {
    assert "$src/_kismetdb_strip_packets" is_file
}

@test 'src has _kismetdb_to_kml' {
    assert "$src/_kismetdb_to_kml" is_file
}

@test 'src has _kismetdb_to_wiglecsv' {
    assert "$src/_kismetdb_to_wiglecsv" is_file
}

@test 'src has _kjscmd' {
    assert "$src/_kjscmd" is_file
}

@test 'src has _kl2tpd' {
    assert "$src/_kl2tpd" is_file
}

@test 'src has _klist' {
    assert "$src/_klist" is_file
}

@test 'src has _kmailservice' {
    assert "$src/_kmailservice" is_file
}

@test 'src has _kmimetypefinder' {
    assert "$src/_kmimetypefinder" is_file
}

@test 'src has _kmimetypefinder5' {
    assert "$src/_kmimetypefinder5" is_file
}

@test 'src has _kmod' {
    assert "$src/_kmod" is_file
}

@test 'src has _kmodsign' {
    assert "$src/_kmodsign" is_file
}

@test 'src has _kmutil' {
    assert "$src/_kmutil" is_file
}

@test 'src has _knocker' {
    assert "$src/_knocker" is_file
}

@test 'src has _knotify4' {
    assert "$src/_knotify4" is_file
}

@test 'src has _kodak2ti3' {
    assert "$src/_kodak2ti3" is_file
}

@test 'src has _koi8rxterm' {
    assert "$src/_koi8rxterm" is_file
}

@test 'src has _kotlin' {
    assert "$src/_kotlin" is_file
}

@test 'src has _kpackagetool5' {
    assert "$src/_kpackagetool5" is_file
}

@test 'src has _kpartx' {
    assert "$src/_kpartx" is_file
}

@test 'src has _kpppoed' {
    assert "$src/_kpppoed" is_file
}

@test 'src has _kpseaccess' {
    assert "$src/_kpseaccess" is_file
}

@test 'src has _kpsepath' {
    assert "$src/_kpsepath" is_file
}

@test 'src has _kpsereadlink' {
    assert "$src/_kpsereadlink" is_file
}

@test 'src has _kpsestat' {
    assert "$src/_kpsestat" is_file
}

@test 'src has _kpsetool' {
    assert "$src/_kpsetool" is_file
}

@test 'src has _kpsewhere' {
    assert "$src/_kpsewhere" is_file
}

@test 'src has _kpsewhich' {
    assert "$src/_kpsewhich" is_file
}

@test 'src has _kpsexpand' {
    assert "$src/_kpsexpand" is_file
}

@test 'src has _kquitapp' {
    assert "$src/_kquitapp" is_file
}

@test 'src has _kquitapp5' {
    assert "$src/_kquitapp5" is_file
}

@test 'src has _kreadconfig' {
    assert "$src/_kreadconfig" is_file
}

@test 'src has _kreadconfig5' {
    assert "$src/_kreadconfig5" is_file
}

@test 'src has _kross' {
    assert "$src/_kross" is_file
}

@test 'src has _ksflatten' {
    assert "$src/_ksflatten" is_file
}

@test 'src has _ksh' {
    assert "$src/_ksh" is_file
}

@test 'src has _ksshell' {
    assert "$src/_ksshell" is_file
}

@test 'src has _kstart' {
    assert "$src/_kstart" is_file
}

@test 'src has _kstart5' {
    assert "$src/_kstart5" is_file
}

@test 'src has _kstash' {
    assert "$src/_kstash" is_file
}

@test 'src has _ksu' {
    assert "$src/_ksu" is_file
}

@test 'src has _ksvalidator' {
    assert "$src/_ksvalidator" is_file
}

@test 'src has _ksverdiff' {
    assert "$src/_ksverdiff" is_file
}

@test 'src has _kswitch' {
    assert "$src/_kswitch" is_file
}

@test 'src has _ktelnetservice' {
    assert "$src/_ktelnetservice" is_file
}

@test 'src has _ktrace' {
    assert "$src/_ktrace" is_file
}

@test 'src has _ktraderclient' {
    assert "$src/_ktraderclient" is_file
}

@test 'src has _ktraderclient5' {
    assert "$src/_ktraderclient5" is_file
}

@test 'src has _ktrash' {
    assert "$src/_ktrash" is_file
}

@test 'src has _ktrash5' {
    assert "$src/_ktrash5" is_file
}

@test 'src has _ktutil' {
    assert "$src/_ktutil" is_file
}

@test 'src has _kubeadm' {
    assert "$src/_kubeadm" is_file
}

@test 'src has _kubectl' {
    assert "$src/_kubectl" is_file
}

@test 'src has _kubelet' {
    assert "$src/_kubelet" is_file
}

@test 'src has _kuiserver' {
    assert "$src/_kuiserver" is_file
}

@test 'src has _kvm' {
    assert "$src/_kvm" is_file
}

@test 'src has _kwallet-query' {
    assert "$src/_kwallet-query" is_file
}

@test 'src has _kwallet2john' {
    assert "$src/_kwallet2john" is_file
}

@test 'src has _kwalletd' {
    assert "$src/_kwalletd" is_file
}

@test 'src has _kwalletd5' {
    assert "$src/_kwalletd5" is_file
}

@test 'src has _kwriteconfig' {
    assert "$src/_kwriteconfig" is_file
}

@test 'src has _kwriteconfig5' {
    assert "$src/_kwriteconfig5" is_file
}

@test 'src has _l2control' {
    assert "$src/_l2control" is_file
}

@test 'src has _l2ping' {
    assert "$src/_l2ping" is_file
}

@test 'src has _l2test' {
    assert "$src/_l2test" is_file
}

@test 'src has _l3build' {
    assert "$src/_l3build" is_file
}

@test 'src has _l3sys-query' {
    assert "$src/_l3sys-query" is_file
}

@test 'src has _labltk' {
    assert "$src/_labltk" is_file
}

@test 'src has _lamed' {
    assert "$src/_lamed" is_file
}

@test 'src has _languagesetup' {
    assert "$src/_languagesetup" is_file
}

@test 'src has _laptop-detect' {
    assert "$src/_laptop-detect" is_file
}

@test 'src has _lastb' {
    assert "$src/_lastb" is_file
}

@test 'src has _lastlog' {
    assert "$src/_lastlog" is_file
}

@test 'src has _lastpass2john' {
    assert "$src/_lastpass2john" is_file
}

@test 'src has _lastwords' {
    assert "$src/_lastwords" is_file
}

@test 'src has _latency' {
    assert "$src/_latency" is_file
}

@test 'src has _latex-dev' {
    assert "$src/_latex-dev" is_file
}

@test 'src has _latexdef' {
    assert "$src/_latexdef" is_file
}

@test 'src has _latexdiff' {
    assert "$src/_latexdiff" is_file
}

@test 'src has _latexminted' {
    assert "$src/_latexminted" is_file
}

@test 'src has _latexpand' {
    assert "$src/_latexpand" is_file
}

@test 'src has _latexrevise' {
    assert "$src/_latexrevise" is_file
}

@test 'src has _latrace' {
    assert "$src/_latrace" is_file
}

@test 'src has _latrace-ctl' {
    assert "$src/_latrace-ctl" is_file
}

@test 'src has _launch_instance' {
    assert "$src/_launch_instance" is_file
}

@test 'src has _launchctl' {
    assert "$src/_launchctl" is_file
}

@test 'src has _lav2wav' {
    assert "$src/_lav2wav" is_file
}

@test 'src has _lav2yuv' {
    assert "$src/_lav2yuv" is_file
}

@test 'src has _lavaddwav' {
    assert "$src/_lavaddwav" is_file
}

@test 'src has _lavadecode' {
    assert "$src/_lavadecode" is_file
}

@test 'src has _lavplay' {
    assert "$src/_lavplay" is_file
}

@test 'src has _lavrec' {
    assert "$src/_lavrec" is_file
}

@test 'src has _lavtrans' {
    assert "$src/_lavtrans" is_file
}

@test 'src has _lavvideo' {
    assert "$src/_lavvideo" is_file
}

@test 'src has _layerutil' {
    assert "$src/_layerutil" is_file
}

@test 'src has _lazygit' {
    assert "$src/_lazygit" is_file
}

@test 'src has _lbu' {
    assert "$src/_lbu" is_file
}

@test 'src has _lbu_commit' {
    assert "$src/_lbu_commit" is_file
}

@test 'src has _lbu_exclude' {
    assert "$src/_lbu_exclude" is_file
}

@test 'src has _lbu_include' {
    assert "$src/_lbu_include" is_file
}

@test 'src has _lbu_status' {
    assert "$src/_lbu_status" is_file
}

@test 'src has _lbu_update' {
    assert "$src/_lbu_update" is_file
}

@test 'src has _lbxproxy' {
    assert "$src/_lbxproxy" is_file
}

@test 'src has _lc' {
    assert "$src/_lc" is_file
}

@test 'src has _lcf' {
    assert "$src/_lcf" is_file
}

@test 'src has _lchage' {
    assert "$src/_lchage" is_file
}

@test 'src has _lchfn' {
    assert "$src/_lchfn" is_file
}

@test 'src has _lchsh' {
    assert "$src/_lchsh" is_file
}

@test 'src has _lconvert' {
    assert "$src/_lconvert" is_file
}

@test 'src has _lconvert-qt5' {
    assert "$src/_lconvert-qt5" is_file
}

@test 'src has _ld' {
    assert "$src/_ld" is_file
}

@test 'src has _ld.bfd' {
    assert "$src/_ld.bfd" is_file
}

@test 'src has _ld.gold' {
    assert "$src/_ld.gold" is_file
}

@test 'src has _ld.lld' {
    assert "$src/_ld.lld" is_file
}

@test 'src has _ld.lld12' {
    assert "$src/_ld.lld12" is_file
}

@test 'src has _ld.lld60' {
    assert "$src/_ld.lld60" is_file
}

@test 'src has _ld64.lld.darwinnew12' {
    assert "$src/_ld64.lld.darwinnew12" is_file
}

@test 'src has _ldapdomaindump' {
    assert "$src/_ldapdomaindump" is_file
}

@test 'src has _ldattach' {
    assert "$src/_ldattach" is_file
}

@test 'src has _ldbadd' {
    assert "$src/_ldbadd" is_file
}

@test 'src has _ldbdel' {
    assert "$src/_ldbdel" is_file
}

@test 'src has _ldbedit' {
    assert "$src/_ldbedit" is_file
}

@test 'src has _ldbmodify' {
    assert "$src/_ldbmodify" is_file
}

@test 'src has _ldbrename' {
    assert "$src/_ldbrename" is_file
}

@test 'src has _ldbsearch' {
    assert "$src/_ldbsearch" is_file
}

@test 'src has _ldconfig' {
    assert "$src/_ldconfig" is_file
}

@test 'src has _ldconfig.real' {
    assert "$src/_ldconfig.real" is_file
}

@test 'src has _ldd' {
    assert "$src/_ldd" is_file
}

@test 'src has _ldd2bloodhound' {
    assert "$src/_ldd2bloodhound" is_file
}

@test 'src has _lddtree' {
    assert "$src/_lddtree" is_file
}

@test 'src has _ldiff' {
    assert "$src/_ldiff" is_file
}

@test 'src has _ldmtool' {
    assert "$src/_ldmtool" is_file
}

@test 'src has _ldns-compare-zones' {
    assert "$src/_ldns-compare-zones" is_file
}

@test 'src has _ldns-dane' {
    assert "$src/_ldns-dane" is_file
}

@test 'src has _ldns-dpa' {
    assert "$src/_ldns-dpa" is_file
}

@test 'src has _ldns-gen-zone' {
    assert "$src/_ldns-gen-zone" is_file
}

@test 'src has _ldns-key2ds' {
    assert "$src/_ldns-key2ds" is_file
}

@test 'src has _ldns-keyfetcher' {
    assert "$src/_ldns-keyfetcher" is_file
}

@test 'src has _ldns-keygen' {
    assert "$src/_ldns-keygen" is_file
}

@test 'src has _ldns-notify' {
    assert "$src/_ldns-notify" is_file
}

@test 'src has _ldns-nsec3-hash' {
    assert "$src/_ldns-nsec3-hash" is_file
}

@test 'src has _ldns-read-zone' {
    assert "$src/_ldns-read-zone" is_file
}

@test 'src has _ldns-revoke' {
    assert "$src/_ldns-revoke" is_file
}

@test 'src has _ldns-signzone' {
    assert "$src/_ldns-signzone" is_file
}

@test 'src has _ldns-test-edns' {
    assert "$src/_ldns-test-edns" is_file
}

@test 'src has _ldns-testns' {
    assert "$src/_ldns-testns" is_file
}

@test 'src has _ldns-verify-zone' {
    assert "$src/_ldns-verify-zone" is_file
}

@test 'src has _ldns-zcat' {
    assert "$src/_ldns-zcat" is_file
}

@test 'src has _ldns-zsplit' {
    assert "$src/_ldns-zsplit" is_file
}

@test 'src has _ldrdf' {
    assert "$src/_ldrdf" is_file
}

@test 'src has _leafpad' {
    assert "$src/_leafpad" is_file
}

@test 'src has _leaks' {
    assert "$src/_leaks" is_file
}

@test 'src has _leaks32' {
    assert "$src/_leaks32" is_file
}

@test 'src has _lefty' {
    assert "$src/_lefty" is_file
}

@test 'src has _lessecho' {
    assert "$src/_lessecho" is_file
}

@test 'src has _lesskey' {
    assert "$src/_lesskey" is_file
}

@test 'src has _lex' {
    assert "$src/_lex" is_file
}

@test 'src has _lex++' {
    assert "$src/_lex++" is_file
}

@test 'src has _lexgrog' {
    assert "$src/_lexgrog" is_file
}

@test 'src has _lfle.pl' {
    assert "$src/_lfle.pl" is_file
}

@test 'src has _lft' {
    assert "$src/_lft" is_file
}

@test 'src has _lft.db' {
    assert "$src/_lft.db" is_file
}

@test 'src has _lgroupadd' {
    assert "$src/_lgroupadd" is_file
}

@test 'src has _lgroupdel' {
    assert "$src/_lgroupdel" is_file
}

@test 'src has _lgroupmod' {
    assert "$src/_lgroupmod" is_file
}

@test 'src has _libdeflate-gunzip' {
    assert "$src/_libdeflate-gunzip" is_file
}

@test 'src has _libdeflate-gzip' {
    assert "$src/_libdeflate-gzip" is_file
}

@test 'src has _libgtop_daemon2' {
    assert "$src/_libgtop_daemon2" is_file
}

@test 'src has _libguestfs-test-tool' {
    assert "$src/_libguestfs-test-tool" is_file
}

@test 'src has _libgvc6-config-update' {
    assert "$src/_libgvc6-config-update" is_file
}

@test 'src has _libinput' {
    assert "$src/_libinput" is_file
}

@test 'src has _libinput-list-devices' {
    assert "$src/_libinput-list-devices" is_file
}

@test 'src has _libnetcfg' {
    assert "$src/_libnetcfg" is_file
}

@test 'src has _libnetcfg5.18' {
    assert "$src/_libnetcfg5.18" is_file
}

@test 'src has _libnetcfg5.28' {
    assert "$src/_libnetcfg5.28" is_file
}

@test 'src has _libnetcfg5.30' {
    assert "$src/_libnetcfg5.30" is_file
}

@test 'src has _libnetcfg5.34' {
    assert "$src/_libnetcfg5.34" is_file
}

@test 'src has _libpng-config' {
    assert "$src/_libpng-config" is_file
}

@test 'src has _libpng12-config' {
    assert "$src/_libpng12-config" is_file
}

@test 'src has _libpng16-config' {
    assert "$src/_libpng16-config" is_file
}

@test 'src has _libreoffice' {
    assert "$src/_libreoffice" is_file
}

@test 'src has _libreoffice2john' {
    assert "$src/_libreoffice2john" is_file
}

@test 'src has _libtool' {
    assert "$src/_libtool" is_file
}

@test 'src has _libtoolize' {
    assert "$src/_libtoolize" is_file
}

@test 'src has _libvirtd' {
    assert "$src/_libvirtd" is_file
}

@test 'src has _libwacom-list-devices' {
    assert "$src/_libwacom-list-devices" is_file
}

@test 'src has _libwacom-list-local-devices' {
    assert "$src/_libwacom-list-local-devices" is_file
}

@test 'src has _lid' {
    assert "$src/_lid" is_file
}

@test 'src has _light-locker' {
    assert "$src/_light-locker" is_file
}

@test 'src has _lightdm' {
    assert "$src/_lightdm" is_file
}

@test 'src has _lightdm-gtk-greeter-settings-pkexec' {
    assert "$src/_lightdm-gtk-greeter-settings-pkexec" is_file
}

@test 'src has _lightsoff' {
    assert "$src/_lightsoff" is_file
}

@test 'src has _lighttpd' {
    assert "$src/_lighttpd" is_file
}

@test 'src has _lighttpd-angel' {
    assert "$src/_lighttpd-angel" is_file
}

@test 'src has _lily-glyph-commands' {
    assert "$src/_lily-glyph-commands" is_file
}

@test 'src has _lily-image-commands' {
    assert "$src/_lily-image-commands" is_file
}

@test 'src has _lily-rebuild-pdfs' {
    assert "$src/_lily-rebuild-pdfs" is_file
}

@test 'src has _lilypond' {
    assert "$src/_lilypond" is_file
}

@test 'src has _line' {
    assert "$src/_line" is_file
}

@test 'src has _link' {
    assert "$src/_link" is_file
}

@test 'src has _linkicc' {
    assert "$src/_linkicc" is_file
}

@test 'src has _links' {
    assert "$src/_links" is_file
}

@test 'src has _links2' {
    assert "$src/_links2" is_file
}

@test 'src has _lint' {
    assert "$src/_lint" is_file
}

@test 'src has _lintian-annotate-hints' {
    assert "$src/_lintian-annotate-hints" is_file
}

@test 'src has _lintian-explain-tags' {
    assert "$src/_lintian-explain-tags" is_file
}

@test 'src has _linux32' {
    assert "$src/_linux32" is_file
}

@test 'src has _linux64' {
    assert "$src/_linux64" is_file
}

@test 'src has _liquibase' {
    assert "$src/_liquibase" is_file
}

@test 'src has _list_audio_tracks' {
    assert "$src/_list_audio_tracks" is_file
}

@test 'src has _list_instances' {
    assert "$src/_list_instances" is_file
}

@test 'src has _list_titles' {
    assert "$src/_list_titles" is_file
}

@test 'src has _listbib' {
    assert "$src/_listbib" is_file
}

@test 'src has _listen' {
    assert "$src/_listen" is_file
}

@test 'src has _listres' {
    assert "$src/_listres" is_file
}

@test 'src has _lit12' {
    assert "$src/_lit12" is_file
}

@test 'src has _lit60' {
    assert "$src/_lit60" is_file
}

@test 'src has _llc' {
    assert "$src/_llc" is_file
}

@test 'src has _llc-13' {
    assert "$src/_llc-13" is_file
}

@test 'src has _llc-16' {
    assert "$src/_llc-16" is_file
}

@test 'src has _llc-17' {
    assert "$src/_llc-17" is_file
}

@test 'src has _llc-19' {
    assert "$src/_llc-19" is_file
}

@test 'src has _llc-4.0' {
    assert "$src/_llc-4.0" is_file
}

@test 'src has _llc-6.0' {
    assert "$src/_llc-6.0" is_file
}

@test 'src has _llc-7' {
    assert "$src/_llc-7" is_file
}

@test 'src has _llc-8' {
    assert "$src/_llc-8" is_file
}

@test 'src has _llc-9' {
    assert "$src/_llc-9" is_file
}

@test 'src has _llc12' {
    assert "$src/_llc12" is_file
}

@test 'src has _llc60' {
    assert "$src/_llc60" is_file
}

@test 'src has _lldb-mi60' {
    assert "$src/_lldb-mi60" is_file
}

@test 'src has _lldb-test60' {
    assert "$src/_lldb-test60" is_file
}

@test 'src has _lldb60' {
    assert "$src/_lldb60" is_file
}

@test 'src has _lldpad' {
    assert "$src/_lldpad" is_file
}

@test 'src has _lli' {
    assert "$src/_lli" is_file
}

@test 'src has _lli-10' {
    assert "$src/_lli-10" is_file
}

@test 'src has _lli-11' {
    assert "$src/_lli-11" is_file
}

@test 'src has _lli-13' {
    assert "$src/_lli-13" is_file
}

@test 'src has _lli-16' {
    assert "$src/_lli-16" is_file
}

@test 'src has _lli-17' {
    assert "$src/_lli-17" is_file
}

@test 'src has _lli-19' {
    assert "$src/_lli-19" is_file
}

@test 'src has _lli-3.5' {
    assert "$src/_lli-3.5" is_file
}

@test 'src has _lli-4.0' {
    assert "$src/_lli-4.0" is_file
}

@test 'src has _lli-6.0' {
    assert "$src/_lli-6.0" is_file
}

@test 'src has _lli-7' {
    assert "$src/_lli-7" is_file
}

@test 'src has _lli-8' {
    assert "$src/_lli-8" is_file
}

@test 'src has _lli-9' {
    assert "$src/_lli-9" is_file
}

@test 'src has _lli12' {
    assert "$src/_lli12" is_file
}

@test 'src has _lli60' {
    assert "$src/_lli60" is_file
}

@test 'src has _llmk' {
    assert "$src/_llmk" is_file
}

@test 'src has _lmon' {
    assert "$src/_lmon" is_file
}

@test 'src has _lmtpd' {
    assert "$src/_lmtpd" is_file
}

@test 'src has _lndir' {
    assert "$src/_lndir" is_file
}

@test 'src has _lnewusers' {
    assert "$src/_lnewusers" is_file
}

@test 'src has _lnstat' {
    assert "$src/_lnstat" is_file
}

@test 'src has _load_kernel_test' {
    assert "$src/_load_kernel_test" is_file
}

@test 'src has _load_roots' {
    assert "$src/_load_roots" is_file
}

@test 'src has _loadkeys' {
    assert "$src/_loadkeys" is_file
}

@test 'src has _loads.d' {
    assert "$src/_loads.d" is_file
}

@test 'src has _lobase' {
    assert "$src/_lobase" is_file
}

@test 'src has _local-getcert' {
    assert "$src/_local-getcert" is_file
}

@test 'src has _local-unbound' {
    assert "$src/_local-unbound" is_file
}

@test 'src has _local-unbound-anchor' {
    assert "$src/_local-unbound-anchor" is_file
}

@test 'src has _local-unbound-checkconf' {
    assert "$src/_local-unbound-checkconf" is_file
}

@test 'src has _local-unbound-control' {
    assert "$src/_local-unbound-control" is_file
}

@test 'src has _local-unbound-setup' {
    assert "$src/_local-unbound-setup" is_file
}

@test 'src has _local_tone_map' {
    assert "$src/_local_tone_map" is_file
}

@test 'src has _localc' {
    assert "$src/_localc" is_file
}

@test 'src has _locale' {
    assert "$src/_locale" is_file
}

@test 'src has _locale-gen' {
    assert "$src/_locale-gen" is_file
}

@test 'src has _localedef' {
    assert "$src/_localedef" is_file
}

@test 'src has _locate' {
    assert "$src/_locate" is_file
}

@test 'src has _locate.findutils' {
    assert "$src/_locate.findutils" is_file
}

@test 'src has _lockfile' {
    assert "$src/_lockfile" is_file
}

@test 'src has _lockstat' {
    assert "$src/_lockstat" is_file
}

@test 'src has _locktest' {
    assert "$src/_locktest" is_file
}

@test 'src has _lodraw' {
    assert "$src/_lodraw" is_file
}

@test 'src has _loffice' {
    assert "$src/_loffice" is_file
}

@test 'src has _lofromtemplate' {
    assert "$src/_lofromtemplate" is_file
}

@test 'src has _log2asc' {
    assert "$src/_log2asc" is_file
}

@test 'src has _log4cpp-config' {
    assert "$src/_log4cpp-config" is_file
}

@test 'src has _loggen' {
    assert "$src/_loggen" is_file
}

@test 'src has _logger' {
    assert "$src/_logger" is_file
}

@test 'src has _login' {
    assert "$src/_login" is_file
}

@test 'src has _loginall.py' {
    assert "$src/_loginall.py" is_file
}

@test 'src has _logread' {
    assert "$src/_logread" is_file
}

@test 'src has _logresolve' {
    assert "$src/_logresolve" is_file
}

@test 'src has _logrotate' {
    assert "$src/_logrotate" is_file
}

@test 'src has _logview' {
    assert "$src/_logview" is_file
}

@test 'src has _logwatch' {
    assert "$src/_logwatch" is_file
}

@test 'src has _logwatch.pl' {
    assert "$src/_logwatch.pl" is_file
}

@test 'src has _loimpress' {
    assert "$src/_loimpress" is_file
}

@test 'src has _lolcat' {
    assert "$src/_lolcat" is_file
}

@test 'src has _lolcatjs' {
    assert "$src/_lolcatjs" is_file
}

@test 'src has _lollipop' {
    assert "$src/_lollipop" is_file
}

@test 'src has _lomath' {
    assert "$src/_lomath" is_file
}

@test 'src has _look' {
    assert "$src/_look" is_file
}

@test 'src has _lorder' {
    assert "$src/_lorder" is_file
}

@test 'src has _losetup' {
    assert "$src/_losetup" is_file
}

@test 'src has _lou_allround' {
    assert "$src/_lou_allround" is_file
}

@test 'src has _lou_checkhyphens' {
    assert "$src/_lou_checkhyphens" is_file
}

@test 'src has _lou_checktable' {
    assert "$src/_lou_checktable" is_file
}

@test 'src has _lou_checkyaml' {
    assert "$src/_lou_checkyaml" is_file
}

@test 'src has _lou_debug' {
    assert "$src/_lou_debug" is_file
}

@test 'src has _lou_tableinfo' {
    assert "$src/_lou_tableinfo" is_file
}

@test 'src has _lou_trace' {
    assert "$src/_lou_trace" is_file
}

@test 'src has _lou_translate' {
    assert "$src/_lou_translate" is_file
}

@test 'src has _loupe' {
    assert "$src/_loupe" is_file
}

@test 'src has _loweb' {
    assert "$src/_loweb" is_file
}

@test 'src has _lowriter' {
    assert "$src/_lowriter" is_file
}

@test 'src has _lp2' {
    assert "$src/_lp2" is_file
}

@test 'src has _lp_solve' {
    assert "$src/_lp_solve" is_file
}

@test 'src has _lpasswd' {
    assert "$src/_lpasswd" is_file
}

@test 'src has _lpc' {
    assert "$src/_lpc" is_file
}

@test 'src has _lpc.cups' {
    assert "$src/_lpc.cups" is_file
}

@test 'src has _lpconvert' {
    assert "$src/_lpconvert" is_file
}

@test 'src has _lpr-cups' {
    assert "$src/_lpr-cups" is_file
}

@test 'src has _lpr.cups' {
    assert "$src/_lpr.cups" is_file
}

@test 'src has _lprodump' {
    assert "$src/_lprodump" is_file
}

@test 'src has _lprodump-qt5' {
    assert "$src/_lprodump-qt5" is_file
}

@test 'src has _lrelease' {
    assert "$src/_lrelease" is_file
}

@test 'src has _lrelease-pro' {
    assert "$src/_lrelease-pro" is_file
}

@test 'src has _lrelease-pro-qt5' {
    assert "$src/_lrelease-pro-qt5" is_file
}

@test 'src has _lrelease-qt4' {
    assert "$src/_lrelease-qt4" is_file
}

@test 'src has _lrelease-qt5' {
    assert "$src/_lrelease-qt5" is_file
}

@test 'src has _lsappinfo' {
    assert "$src/_lsappinfo" is_file
}

@test 'src has _lsassy' {
    assert "$src/_lsassy" is_file
}

@test 'src has _lsb-release' {
    assert "$src/_lsb-release" is_file
}

@test 'src has _lsb_release' {
    assert "$src/_lsb_release" is_file
}

@test 'src has _lsbom' {
    assert "$src/_lsbom" is_file
}

@test 'src has _lscgroup' {
    assert "$src/_lscgroup" is_file
}

@test 'src has _lscp' {
    assert "$src/_lscp" is_file
}

@test 'src has _lscpu' {
    assert "$src/_lscpu" is_file
}

@test 'src has _lshal' {
    assert "$src/_lshal" is_file
}

@test 'src has _lshw' {
    assert "$src/_lshw" is_file
}

@test 'src has _lsinitramfs' {
    assert "$src/_lsinitramfs" is_file
}

@test 'src has _lsinitrd' {
    assert "$src/_lsinitrd" is_file
}

@test 'src has _lsipc' {
    assert "$src/_lsipc" is_file
}

@test 'src has _lsirq' {
    assert "$src/_lsirq" is_file
}

@test 'src has _lslocks' {
    assert "$src/_lslocks" is_file
}

@test 'src has _lslogins' {
    assert "$src/_lslogins" is_file
}

@test 'src has _lsmd' {
    assert "$src/_lsmd" is_file
}

@test 'src has _lsmdev' {
    assert "$src/_lsmdev" is_file
}

@test 'src has _lsmem' {
    assert "$src/_lsmem" is_file
}

@test 'src has _lsmp' {
    assert "$src/_lsmp" is_file
}

@test 'src has _lsmtd' {
    assert "$src/_lsmtd" is_file
}

@test 'src has _lsns' {
    assert "$src/_lsns" is_file
}

@test 'src has _lsofng' {
    assert "$src/_lsofng" is_file
}

@test 'src has _lspci' {
    assert "$src/_lspci" is_file
}

@test 'src has _lspst' {
    assert "$src/_lspst" is_file
}

@test 'src has _lss3' {
    assert "$src/_lss3" is_file
}

@test 'src has _lsscsi' {
    assert "$src/_lsscsi" is_file
}

@test 'src has _lssu' {
    assert "$src/_lssu" is_file
}

@test 'src has _lssubsys' {
    assert "$src/_lssubsys" is_file
}

@test 'src has _lstmeval' {
    assert "$src/_lstmeval" is_file
}

@test 'src has _lstmtraining' {
    assert "$src/_lstmtraining" is_file
}

@test 'src has _lstopo' {
    assert "$src/_lstopo" is_file
}

@test 'src has _lstopo-no-graphics' {
    assert "$src/_lstopo-no-graphics" is_file
}

@test 'src has _lsusb' {
    assert "$src/_lsusb" is_file
}

@test 'src has _lsusb.py' {
    assert "$src/_lsusb.py" is_file
}

@test 'src has _lto-dump' {
    assert "$src/_lto-dump" is_file
}

@test 'src has _lto-dump10' {
    assert "$src/_lto-dump10" is_file
}

@test 'src has _ltx2unitxt' {
    assert "$src/_ltx2unitxt" is_file
}

@test 'src has _ltxfileinfo' {
    assert "$src/_ltxfileinfo" is_file
}

@test 'src has _lua' {
    assert "$src/_lua" is_file
}

@test 'src has _lua-5.1' {
    assert "$src/_lua-5.1" is_file
}

@test 'src has _lua-5.3' {
    assert "$src/_lua-5.3" is_file
}

@test 'src has _lua-5.4' {
    assert "$src/_lua-5.4" is_file
}

@test 'src has _lua5.1' {
    assert "$src/_lua5.1" is_file
}

@test 'src has _lua5.2' {
    assert "$src/_lua5.2" is_file
}

@test 'src has _lua5.3' {
    assert "$src/_lua5.3" is_file
}

@test 'src has _lua5.4' {
    assert "$src/_lua5.4" is_file
}

@test 'src has _lua52' {
    assert "$src/_lua52" is_file
}

@test 'src has _luac' {
    assert "$src/_luac" is_file
}

@test 'src has _luac-5.1' {
    assert "$src/_luac-5.1" is_file
}

@test 'src has _luac-5.3' {
    assert "$src/_luac-5.3" is_file
}

@test 'src has _luac-5.4' {
    assert "$src/_luac-5.4" is_file
}

@test 'src has _luac5.1' {
    assert "$src/_luac5.1" is_file
}

@test 'src has _luac5.2' {
    assert "$src/_luac5.2" is_file
}

@test 'src has _luac5.3' {
    assert "$src/_luac5.3" is_file
}

@test 'src has _luac5.4' {
    assert "$src/_luac5.4" is_file
}

@test 'src has _luac52' {
    assert "$src/_luac52" is_file
}

@test 'src has _luacsplain' {
    assert "$src/_luacsplain" is_file
}

@test 'src has _luahbtex' {
    assert "$src/_luahbtex" is_file
}

@test 'src has _luajit' {
    assert "$src/_luajit" is_file
}

@test 'src has _luajit-2.0.3' {
    assert "$src/_luajit-2.0.3" is_file
}

@test 'src has _luajit-2.0.5' {
    assert "$src/_luajit-2.0.5" is_file
}

@test 'src has _luajit-2.1.0-beta3' {
    assert "$src/_luajit-2.1.0-beta3" is_file
}

@test 'src has _luajit-2.1.1716656478' {
    assert "$src/_luajit-2.1.1716656478" is_file
}

@test 'src has _luajit-2.1.1720049189' {
    assert "$src/_luajit-2.1.1720049189" is_file
}

@test 'src has _luajit-2.1.1731601260' {
    assert "$src/_luajit-2.1.1731601260" is_file
}

@test 'src has _luajithbtex' {
    assert "$src/_luajithbtex" is_file
}

@test 'src has _luajittex' {
    assert "$src/_luajittex" is_file
}

@test 'src has _lualatex-dev' {
    assert "$src/_lualatex-dev" is_file
}

@test 'src has _luametatex' {
    assert "$src/_luametatex" is_file
}

@test 'src has _luarocks-admin' {
    assert "$src/_luarocks-admin" is_file
}

@test 'src has _luatex' {
    assert "$src/_luatex" is_file
}

@test 'src has _luatex53' {
    assert "$src/_luatex53" is_file
}

@test 'src has _luit' {
    assert "$src/_luit" is_file
}

@test 'src has _luitx' {
    assert "$src/_luitx" is_file
}

@test 'src has _luks2john' {
    assert "$src/_luks2john" is_file
}

@test 'src has _luksformat' {
    assert "$src/_luksformat" is_file
}

@test 'src has _lupdate' {
    assert "$src/_lupdate" is_file
}

@test 'src has _lupdate-pro' {
    assert "$src/_lupdate-pro" is_file
}

@test 'src has _lupdate-pro-qt5' {
    assert "$src/_lupdate-pro-qt5" is_file
}

@test 'src has _lupdate-qt4' {
    assert "$src/_lupdate-qt4" is_file
}

@test 'src has _lupdate-qt5' {
    assert "$src/_lupdate-qt5" is_file
}

@test 'src has _luseradd' {
    assert "$src/_luseradd" is_file
}

@test 'src has _luserdel' {
    assert "$src/_luserdel" is_file
}

@test 'src has _lusermod' {
    assert "$src/_lusermod" is_file
}

@test 'src has _lv2apply' {
    assert "$src/_lv2apply" is_file
}

@test 'src has _lv2info' {
    assert "$src/_lv2info" is_file
}

@test 'src has _lv2ls' {
    assert "$src/_lv2ls" is_file
}

@test 'src has _lvchange' {
    assert "$src/_lvchange" is_file
}

@test 'src has _lvmdump' {
    assert "$src/_lvmdump" is_file
}

@test 'src has _lvmetad' {
    assert "$src/_lvmetad" is_file
}

@test 'src has _lvmpolld' {
    assert "$src/_lvmpolld" is_file
}

@test 'src has _lwp-download' {
    assert "$src/_lwp-download" is_file
}

@test 'src has _lwp-download5.28' {
    assert "$src/_lwp-download5.28" is_file
}

@test 'src has _lwp-download5.30' {
    assert "$src/_lwp-download5.30" is_file
}

@test 'src has _lwp-download5.34' {
    assert "$src/_lwp-download5.34" is_file
}

@test 'src has _lwp-dump' {
    assert "$src/_lwp-dump" is_file
}

@test 'src has _lwp-dump5.18' {
    assert "$src/_lwp-dump5.18" is_file
}

@test 'src has _lwp-dump5.28' {
    assert "$src/_lwp-dump5.28" is_file
}

@test 'src has _lwp-dump5.30' {
    assert "$src/_lwp-dump5.30" is_file
}

@test 'src has _lwp-dump5.34' {
    assert "$src/_lwp-dump5.34" is_file
}

@test 'src has _lwp-mirror' {
    assert "$src/_lwp-mirror" is_file
}

@test 'src has _lwp-mirror5.18' {
    assert "$src/_lwp-mirror5.18" is_file
}

@test 'src has _lwp-mirror5.28' {
    assert "$src/_lwp-mirror5.28" is_file
}

@test 'src has _lwp-mirror5.30' {
    assert "$src/_lwp-mirror5.30" is_file
}

@test 'src has _lwp-mirror5.34' {
    assert "$src/_lwp-mirror5.34" is_file
}

@test 'src has _lwp-request' {
    assert "$src/_lwp-request" is_file
}

@test 'src has _lwp-request5.18' {
    assert "$src/_lwp-request5.18" is_file
}

@test 'src has _lwp-request5.28' {
    assert "$src/_lwp-request5.28" is_file
}

@test 'src has _lwp-request5.30' {
    assert "$src/_lwp-request5.30" is_file
}

@test 'src has _lwp-request5.34' {
    assert "$src/_lwp-request5.34" is_file
}

@test 'src has _lxappearance' {
    assert "$src/_lxappearance" is_file
}

@test 'src has _lxd.benchmark' {
    assert "$src/_lxd.benchmark" is_file
}

@test 'src has _lxd.lxc' {
    assert "$src/_lxd.lxc" is_file
}

@test 'src has _lxd.migrate' {
    assert "$src/_lxd.migrate" is_file
}

@test 'src has _lxkeymap' {
    assert "$src/_lxkeymap" is_file
}

@test 'src has _lxqt-globalkeysd' {
    assert "$src/_lxqt-globalkeysd" is_file
}

@test 'src has _lxsession' {
    assert "$src/_lxsession" is_file
}

@test 'src has _lxsession-db' {
    assert "$src/_lxsession-db" is_file
}

@test 'src has _lxsession-default' {
    assert "$src/_lxsession-default" is_file
}

@test 'src has _lxsession-xdg-autostart' {
    assert "$src/_lxsession-xdg-autostart" is_file
}

@test 'src has _lxsession-xsettings' {
    assert "$src/_lxsession-xsettings" is_file
}

@test 'src has _lxterm' {
    assert "$src/_lxterm" is_file
}

@test 'src has _lyrics' {
    assert "$src/_lyrics" is_file
}

@test 'src has _lz4' {
    assert "$src/_lz4" is_file
}

@test 'src has _lz4c' {
    assert "$src/_lz4c" is_file
}

@test 'src has _lz4cat' {
    assert "$src/_lz4cat" is_file
}

@test 'src has _lzcat' {
    assert "$src/_lzcat" is_file
}

@test 'src has _lzdec' {
    assert "$src/_lzdec" is_file
}

@test 'src has _lzf' {
    assert "$src/_lzf" is_file
}

@test 'src has _lzip-compressor' {
    assert "$src/_lzip-compressor" is_file
}

@test 'src has _lzip-decompressor' {
    assert "$src/_lzip-decompressor" is_file
}

@test 'src has _lzip.lzip' {
    assert "$src/_lzip.lzip" is_file
}

@test 'src has _lzless' {
    assert "$src/_lzless" is_file
}

@test 'src has _lzma' {
    assert "$src/_lzma" is_file
}

@test 'src has _lzmadec' {
    assert "$src/_lzmadec" is_file
}

@test 'src has _lzop' {
    assert "$src/_lzop" is_file
}

@test 'src has _lzopcat' {
    assert "$src/_lzopcat" is_file
}

@test 'src has _m17n-conv' {
    assert "$src/_m17n-conv" is_file
}

@test 'src has _m2300w' {
    assert "$src/_m2300w" is_file
}

@test 'src has _m2300w-wrapper' {
    assert "$src/_m2300w-wrapper" is_file
}

@test 'src has _m2400w' {
    assert "$src/_m2400w" is_file
}

@test 'src has _m2gmetis' {
    assert "$src/_m2gmetis" is_file
}

@test 'src has _m4' {
    assert "$src/_m4" is_file
}

@test 'src has _ma2asm' {
    assert "$src/_ma2asm" is_file
}

@test 'src has _mac2john' {
    assert "$src/_mac2john" is_file
}

@test 'src has _mac2unix' {
    assert "$src/_mac2unix" is_file
}

@test 'src has _macbinary' {
    assert "$src/_macbinary" is_file
}

@test 'src has _macchanger' {
    assert "$src/_macchanger" is_file
}

@test 'src has _macdeployqt' {
    assert "$src/_macdeployqt" is_file
}

@test 'src has _macdeployqt6' {
    assert "$src/_macdeployqt6" is_file
}

@test 'src has _macho-dump' {
    assert "$src/_macho-dump" is_file
}

@test 'src has _macho-dump-3.5' {
    assert "$src/_macho-dump-3.5" is_file
}

@test 'src has _macipgw' {
    assert "$src/_macipgw" is_file
}

@test 'src has _macpack' {
    assert "$src/_macpack" is_file
}

@test 'src has _mactime' {
    assert "$src/_mactime" is_file
}

@test 'src has _magicrescue' {
    assert "$src/_magicrescue" is_file
}

@test 'src has _magnet-link' {
    assert "$src/_magnet-link" is_file
}

@test 'src has _maidag' {
    assert "$src/_maidag" is_file
}

@test 'src has _mail.mailutils' {
    assert "$src/_mail.mailutils" is_file
}

@test 'src has _mailstat' {
    assert "$src/_mailstat" is_file
}

@test 'src has _mailtest' {
    assert "$src/_mailtest" is_file
}

@test 'src has _mailutils' {
    assert "$src/_mailutils" is_file
}

@test 'src has _make-bcache' {
    assert "$src/_make-bcache" is_file
}

@test 'src has _make-cadir' {
    assert "$src/_make-cadir" is_file
}

@test 'src has _make-pdf-embedded.py' {
    assert "$src/_make-pdf-embedded.py" is_file
}

@test 'src has _make-pdf-javascript.py' {
    assert "$src/_make-pdf-javascript.py" is_file
}

@test 'src has _make4ht' {
    assert "$src/_make4ht" is_file
}

@test 'src has _make_f2fs' {
    assert "$src/_make_f2fs" is_file
}

@test 'src has _make_f2fs_casefold' {
    assert "$src/_make_f2fs_casefold" is_file
}

@test 'src has _make_method' {
    assert "$src/_make_method" is_file
}

@test 'src has _makecert' {
    assert "$src/_makecert" is_file
}

@test 'src has _makeconv' {
    assert "$src/_makeconv" is_file
}

@test 'src has _makedb' {
    assert "$src/_makedb" is_file
}

@test 'src has _makedtx' {
    assert "$src/_makedtx" is_file
}

@test 'src has _makedumpfile' {
    assert "$src/_makedumpfile" is_file
}

@test 'src has _makeglossaries' {
    assert "$src/_makeglossaries" is_file
}

@test 'src has _makeglossaries-lite' {
    assert "$src/_makeglossaries-lite" is_file
}

@test 'src has _makeivs-ng' {
    assert "$src/_makeivs-ng" is_file
}

@test 'src has _makejvf' {
    assert "$src/_makejvf" is_file
}

@test 'src has _makemime' {
    assert "$src/_makemime" is_file
}

@test 'src has _makensis' {
    assert "$src/_makensis" is_file
}

@test 'src has _makepkg-template' {
    assert "$src/_makepkg-template" is_file
}

@test 'src has _makepqg' {
    assert "$src/_makepqg" is_file
}

@test 'src has _makeskel' {
    assert "$src/_makeskel" is_file
}

@test 'src has _mako-render' {
    assert "$src/_mako-render" is_file
}

@test 'src has _mako-render-3.12' {
    assert "$src/_mako-render-3.12" is_file
}

@test 'src has _mako-render-3.9' {
    assert "$src/_mako-render-3.9" is_file
}

@test 'src has _malcontent-control' {
    assert "$src/_malcontent-control" is_file
}

@test 'src has _malloc_history' {
    assert "$src/_malloc_history" is_file
}

@test 'src has _malloc_history32' {
    assert "$src/_malloc_history32" is_file
}

@test 'src has _man' {
    assert "$src/_man" is_file
}

@test 'src has _man-recode' {
    assert "$src/_man-recode" is_file
}

@test 'src has _man2html' {
    assert "$src/_man2html" is_file
}

@test 'src has _mandb' {
    assert "$src/_mandb" is_file
}

@test 'src has _manpath' {
    assert "$src/_manpath" is_file
}

@test 'src has _mantozshcomp.py' {
    assert "$src/_mantozshcomp.py" is_file
}

@test 'src has _marco' {
    assert "$src/_marco" is_file
}

@test 'src has _mariabackup' {
    assert "$src/_mariabackup" is_file
}

@test 'src has _mariadb' {
    assert "$src/_mariadb" is_file
}

@test 'src has _mariadb-access' {
    assert "$src/_mariadb-access" is_file
}

@test 'src has _mariadb-admin' {
    assert "$src/_mariadb-admin" is_file
}

@test 'src has _mariadb-analyze' {
    assert "$src/_mariadb-analyze" is_file
}

@test 'src has _mariadb-binlog' {
    assert "$src/_mariadb-binlog" is_file
}

@test 'src has _mariadb-check' {
    assert "$src/_mariadb-check" is_file
}

@test 'src has _mariadb-conv' {
    assert "$src/_mariadb-conv" is_file
}

@test 'src has _mariadb-convert-table-format' {
    assert "$src/_mariadb-convert-table-format" is_file
}

@test 'src has _mariadb-dump' {
    assert "$src/_mariadb-dump" is_file
}

@test 'src has _mariadb-dumpslow' {
    assert "$src/_mariadb-dumpslow" is_file
}

@test 'src has _mariadb-embedded' {
    assert "$src/_mariadb-embedded" is_file
}

@test 'src has _mariadb-find-rows' {
    assert "$src/_mariadb-find-rows" is_file
}

@test 'src has _mariadb-hotcopy' {
    assert "$src/_mariadb-hotcopy" is_file
}

@test 'src has _mariadb-import' {
    assert "$src/_mariadb-import" is_file
}

@test 'src has _mariadb-install-db' {
    assert "$src/_mariadb-install-db" is_file
}

@test 'src has _mariadb-ldb' {
    assert "$src/_mariadb-ldb" is_file
}

@test 'src has _mariadb-optimize' {
    assert "$src/_mariadb-optimize" is_file
}

@test 'src has _mariadb-plugin' {
    assert "$src/_mariadb-plugin" is_file
}

@test 'src has _mariadb-repair' {
    assert "$src/_mariadb-repair" is_file
}

@test 'src has _mariadb-report' {
    assert "$src/_mariadb-report" is_file
}

@test 'src has _mariadb-secure-installation' {
    assert "$src/_mariadb-secure-installation" is_file
}

@test 'src has _mariadb-setpermission' {
    assert "$src/_mariadb-setpermission" is_file
}

@test 'src has _mariadb-show' {
    assert "$src/_mariadb-show" is_file
}

@test 'src has _mariadb-slap' {
    assert "$src/_mariadb-slap" is_file
}

@test 'src has _mariadb-tzinfo-to-sql' {
    assert "$src/_mariadb-tzinfo-to-sql" is_file
}

@test 'src has _mariadb-upgrade' {
    assert "$src/_mariadb-upgrade" is_file
}

@test 'src has _mariadb-waitpid' {
    assert "$src/_mariadb-waitpid" is_file
}

@test 'src has _mariadb_config' {
    assert "$src/_mariadb_config" is_file
}

@test 'src has _mariadbcheck' {
    assert "$src/_mariadbcheck" is_file
}

@test 'src has _mariadbd-multi' {
    assert "$src/_mariadbd-multi" is_file
}

@test 'src has _mariadbd-safe' {
    assert "$src/_mariadbd-safe" is_file
}

@test 'src has _markdown-it' {
    assert "$src/_markdown-it" is_file
}

@test 'src has _markdown_py' {
    assert "$src/_markdown_py" is_file
}

@test 'src has _maskgen' {
    assert "$src/_maskgen" is_file
}

@test 'src has _masktest' {
    assert "$src/_masktest" is_file
}

@test 'src has _mason' {
    assert "$src/_mason" is_file
}

@test 'src has _massagevendor' {
    assert "$src/_massagevendor" is_file
}

@test 'src has _masscan' {
    assert "$src/_masscan" is_file
}

@test 'src has _mat2' {
    assert "$src/_mat2" is_file
}

@test 'src has _match_parens' {
    assert "$src/_match_parens" is_file
}

@test 'src has _mate-about' {
    assert "$src/_mate-about" is_file
}

@test 'src has _mate-appearance-properties' {
    assert "$src/_mate-appearance-properties" is_file
}

@test 'src has _mate-calc' {
    assert "$src/_mate-calc" is_file
}

@test 'src has _mate-calculator' {
    assert "$src/_mate-calculator" is_file
}

@test 'src has _mate-control-center' {
    assert "$src/_mate-control-center" is_file
}

@test 'src has _mate-cpufreq-selector' {
    assert "$src/_mate-cpufreq-selector" is_file
}

@test 'src has _mate-default-applications-properties' {
    assert "$src/_mate-default-applications-properties" is_file
}

@test 'src has _mate-desktop-item-edit' {
    assert "$src/_mate-desktop-item-edit" is_file
}

@test 'src has _mate-dictionary' {
    assert "$src/_mate-dictionary" is_file
}

@test 'src has _mate-disk-usage-analyzer' {
    assert "$src/_mate-disk-usage-analyzer" is_file
}

@test 'src has _mate-font-viewer' {
    assert "$src/_mate-font-viewer" is_file
}

@test 'src has _mate-keyboard-properties' {
    assert "$src/_mate-keyboard-properties" is_file
}

@test 'src has _mate-mouse-properties' {
    assert "$src/_mate-mouse-properties" is_file
}

@test 'src has _mate-panel' {
    assert "$src/_mate-panel" is_file
}

@test 'src has _mate-panel-screenshot' {
    assert "$src/_mate-panel-screenshot" is_file
}

@test 'src has _mate-panel-test-applets' {
    assert "$src/_mate-panel-test-applets" is_file
}

@test 'src has _mate-power-backlight-helper' {
    assert "$src/_mate-power-backlight-helper" is_file
}

@test 'src has _mate-power-manager' {
    assert "$src/_mate-power-manager" is_file
}

@test 'src has _mate-power-preferences' {
    assert "$src/_mate-power-preferences" is_file
}

@test 'src has _mate-power-statistics' {
    assert "$src/_mate-power-statistics" is_file
}

@test 'src has _mate-screensaver' {
    assert "$src/_mate-screensaver" is_file
}

@test 'src has _mate-screensaver-command' {
    assert "$src/_mate-screensaver-command" is_file
}

@test 'src has _mate-screenshot' {
    assert "$src/_mate-screenshot" is_file
}

@test 'src has _mate-search-tool' {
    assert "$src/_mate-search-tool" is_file
}

@test 'src has _mate-session' {
    assert "$src/_mate-session" is_file
}

@test 'src has _mate-session-inhibit' {
    assert "$src/_mate-session-inhibit" is_file
}

@test 'src has _mate-session-properties' {
    assert "$src/_mate-session-properties" is_file
}

@test 'src has _mate-session-save' {
    assert "$src/_mate-session-save" is_file
}

@test 'src has _mate-settings-daemon' {
    assert "$src/_mate-settings-daemon" is_file
}

@test 'src has _mate-system-log' {
    assert "$src/_mate-system-log" is_file
}

@test 'src has _mate-system-monitor' {
    assert "$src/_mate-system-monitor" is_file
}

@test 'src has _mate-terminal' {
    assert "$src/_mate-terminal" is_file
}

@test 'src has _mate-terminal.wrapper' {
    assert "$src/_mate-terminal.wrapper" is_file
}

@test 'src has _mate-thumbnail-font' {
    assert "$src/_mate-thumbnail-font" is_file
}

@test 'src has _mate-tweak' {
    assert "$src/_mate-tweak" is_file
}

@test 'src has _mate-typing-monitor' {
    assert "$src/_mate-typing-monitor" is_file
}

@test 'src has _mate-volume-control' {
    assert "$src/_mate-volume-control" is_file
}

@test 'src has _mate-volume-control-applet' {
    assert "$src/_mate-volume-control-applet" is_file
}

@test 'src has _materialeditor' {
    assert "$src/_materialeditor" is_file
}

@test 'src has _mathspic' {
    assert "$src/_mathspic" is_file
}

@test 'src has _mausezahn' {
    assert "$src/_mausezahn" is_file
}

@test 'src has _mbim-network' {
    assert "$src/_mbim-network" is_file
}

@test 'src has _mbimcli' {
    assert "$src/_mbimcli" is_file
}

@test 'src has _mbstream' {
    assert "$src/_mbstream" is_file
}

@test 'src has _mc' {
    assert "$src/_mc" is_file
}

@test 'src has _mc-wait-for-name' {
    assert "$src/_mc-wait-for-name" is_file
}

@test 'src has _mcaptest' {
    assert "$src/_mcaptest" is_file
}

@test 'src has _mcat' {
    assert "$src/_mcat" is_file
}

@test 'src has _mcdiff' {
    assert "$src/_mcdiff" is_file
}

@test 'src has _mcedit' {
    assert "$src/_mcedit" is_file
}

@test 'src has _mcelog' {
    assert "$src/_mcelog" is_file
}

@test 'src has _mckey' {
    assert "$src/_mckey" is_file
}

@test 'src has _mconfig' {
    assert "$src/_mconfig" is_file
}

@test 'src has _mcookie' {
    assert "$src/_mcookie" is_file
}

@test 'src has _mcpp' {
    assert "$src/_mcpp" is_file
}

@test 'src has _mcs' {
    assert "$src/_mcs" is_file
}

@test 'src has _mcview' {
    assert "$src/_mcview" is_file
}

@test 'src has _mcxquery' {
    assert "$src/_mcxquery" is_file
}

@test 'src has _md2html' {
    assert "$src/_md2html" is_file
}

@test 'src has _md5deep' {
    assert "$src/_md5deep" is_file
}

@test 'src has _md5sum.textutils' {
    assert "$src/_md5sum.textutils" is_file
}

@test 'src has _mda' {
    assert "$src/_mda" is_file
}

@test 'src has _mdassembler' {
    assert "$src/_mdassembler" is_file
}

@test 'src has _mdatopbm' {
    assert "$src/_mdatopbm" is_file
}

@test 'src has _mdb-export' {
    assert "$src/_mdb-export" is_file
}

@test 'src has _mdb-json' {
    assert "$src/_mdb-json" is_file
}

@test 'src has _mdb-queries' {
    assert "$src/_mdb-queries" is_file
}

@test 'src has _mdbrebase' {
    assert "$src/_mdbrebase" is_file
}

@test 'src has _mddiagnose' {
    assert "$src/_mddiagnose" is_file
}

@test 'src has _mdev' {
    assert "$src/_mdev" is_file
}

@test 'src has _mdevctl' {
    assert "$src/_mdevctl" is_file
}

@test 'src has _mdiff' {
    assert "$src/_mdiff" is_file
}

@test 'src has _mdig' {
    assert "$src/_mdig" is_file
}

@test 'src has _mdimport' {
    assert "$src/_mdimport" is_file
}

@test 'src has _mdimport32' {
    assert "$src/_mdimport32" is_file
}

@test 'src has _mdless' {
    assert "$src/_mdless" is_file
}

@test 'src has _mdmon' {
    assert "$src/_mdmon" is_file
}

@test 'src has _mdoc-assemble' {
    assert "$src/_mdoc-assemble" is_file
}

@test 'src has _mdoc-export-html' {
    assert "$src/_mdoc-export-html" is_file
}

@test 'src has _mdoc-export-msxdoc' {
    assert "$src/_mdoc-export-msxdoc" is_file
}

@test 'src has _mdoc-update' {
    assert "$src/_mdoc-update" is_file
}

@test 'src has _mdoc-validate' {
    assert "$src/_mdoc-validate" is_file
}

@test 'src has _measurefs.reiser4' {
    assert "$src/_measurefs.reiser4" is_file
}

@test 'src has _mech-dump' {
    assert "$src/_mech-dump" is_file
}

@test 'src has _media-ctl' {
    assert "$src/_media-ctl" is_file
}

@test 'src has _medusa' {
    assert "$src/_medusa" is_file
}

@test 'src has _meinproc4' {
    assert "$src/_meinproc4" is_file
}

@test 'src has _memdump' {
    assert "$src/_memdump" is_file
}

@test 'src has _meme' {
    assert "$src/_meme" is_file
}

@test 'src has _memhog' {
    assert "$src/_memhog" is_file
}

@test 'src has _memoize-clean.pl' {
    assert "$src/_memoize-clean.pl" is_file
}

@test 'src has _memoize-clean.py' {
    assert "$src/_memoize-clean.py" is_file
}

@test 'src has _memoize-extract.pl' {
    assert "$src/_memoize-extract.pl" is_file
}

@test 'src has _memoize-extract.py' {
    assert "$src/_memoize-extract.py" is_file
}

@test 'src has _memory_pressure' {
    assert "$src/_memory_pressure" is_file
}

@test 'src has _memstomp' {
    assert "$src/_memstomp" is_file
}

@test 'src has _memtest-setup' {
    assert "$src/_memtest-setup" is_file
}

@test 'src has _memusage' {
    assert "$src/_memusage" is_file
}

@test 'src has _mencoder' {
    assert "$src/_mencoder" is_file
}

@test 'src has _mendex' {
    assert "$src/_mendex" is_file
}

@test 'src has _menuexec' {
    assert "$src/_menuexec" is_file
}

@test 'src has _menuexecg' {
    assert "$src/_menuexecg" is_file
}

@test 'src has _mergecap' {
    assert "$src/_mergecap" is_file
}

@test 'src has _mergemaster' {
    assert "$src/_mergemaster" is_file
}

@test 'src has _mergerepo_c' {
    assert "$src/_mergerepo_c" is_file
}

@test 'src has _mesh-cfgtest' {
    assert "$src/_mesh-cfgtest" is_file
}

@test 'src has _meshctl' {
    assert "$src/_meshctl" is_file
}

@test 'src has _meshdebug' {
    assert "$src/_meshdebug" is_file
}

@test 'src has _meson' {
    assert "$src/_meson" is_file
}

@test 'src has _messages' {
    assert "$src/_messages" is_file
}

@test 'src has _messages.mailutils' {
    assert "$src/_messages.mailutils" is_file
}

@test 'src has _metacity' {
    assert "$src/_metacity" is_file
}

@test 'src has _metacity-theme-viewer' {
    assert "$src/_metacity-theme-viewer" is_file
}

@test 'src has _metagoofil' {
    assert "$src/_metagoofil" is_file
}

@test 'src has _metricbeat' {
    assert "$src/_metricbeat" is_file
}

@test 'src has _mev' {
    assert "$src/_mev" is_file
}

@test 'src has _mex' {
    assert "$src/_mex" is_file
}

@test 'src has _mf' {
    assert "$src/_mf" is_file
}

@test 'src has _mf-nowin' {
    assert "$src/_mf-nowin" is_file
}

@test 'src has _mf2pt1' {
    assert "$src/_mf2pt1" is_file
}

@test 'src has _mfbc' {
    assert "$src/_mfbc" is_file
}

@test 'src has _mfcuk' {
    assert "$src/_mfcuk" is_file
}

@test 'src has _mfile' {
    assert "$src/_mfile" is_file
}

@test 'src has _mflua' {
    assert "$src/_mflua" is_file
}

@test 'src has _mflua-nowin' {
    assert "$src/_mflua-nowin" is_file
}

@test 'src has _mfluajit' {
    assert "$src/_mfluajit" is_file
}

@test 'src has _mfluajit-nowin' {
    assert "$src/_mfluajit-nowin" is_file
}

@test 'src has _mfplain' {
    assert "$src/_mfplain" is_file
}

@test 'src has _mft' {
    assert "$src/_mft" is_file
}

@test 'src has _mfterm' {
    assert "$src/_mfterm" is_file
}

@test 'src has _mib2c' {
    assert "$src/_mib2c" is_file
}

@test 'src has _mib2c-update' {
    assert "$src/_mib2c-update" is_file
}

@test 'src has _microcom' {
    assert "$src/_microcom" is_file
}

@test 'src has _mid3cp' {
    assert "$src/_mid3cp" is_file
}

@test 'src has _mid3iconv' {
    assert "$src/_mid3iconv" is_file
}

@test 'src has _mid3v2' {
    assert "$src/_mid3v2" is_file
}

@test 'src has _mifare-classic-format' {
    assert "$src/_mifare-classic-format" is_file
}

@test 'src has _mifare-classic-read-ndef' {
    assert "$src/_mifare-classic-read-ndef" is_file
}

@test 'src has _mifare-classic-write-ndef' {
    assert "$src/_mifare-classic-write-ndef" is_file
}

@test 'src has _mifare-desfire-create-ndef' {
    assert "$src/_mifare-desfire-create-ndef" is_file
}

@test 'src has _mifare-desfire-ev1-configure-ats' {
    assert "$src/_mifare-desfire-ev1-configure-ats" is_file
}

@test 'src has _mifare-desfire-ev1-configure-default-key' {
    assert "$src/_mifare-desfire-ev1-configure-default-key" is_file
}

@test 'src has _mifare-desfire-ev1-configure-random-uid' {
    assert "$src/_mifare-desfire-ev1-configure-random-uid" is_file
}

@test 'src has _mifare-desfire-format' {
    assert "$src/_mifare-desfire-format" is_file
}

@test 'src has _mifare-desfire-read-ndef' {
    assert "$src/_mifare-desfire-read-ndef" is_file
}

@test 'src has _mifare-desfire-write-ndef' {
    assert "$src/_mifare-desfire-write-ndef" is_file
}

@test 'src has _migrate-pubring-from-classic-gpg' {
    assert "$src/_migrate-pubring-from-classic-gpg" is_file
}

@test 'src has _migspeed' {
    assert "$src/_migspeed" is_file
}

@test 'src has _mii-diag' {
    assert "$src/_mii-diag" is_file
}

@test 'src has _mimeopen' {
    assert "$src/_mimeopen" is_file
}

@test 'src has _mimetype' {
    assert "$src/_mimetype" is_file
}

@test 'src has _mimeview' {
    assert "$src/_mimeview" is_file
}

@test 'src has _min12xxw' {
    assert "$src/_min12xxw" is_file
}

@test 'src has _mingle' {
    assert "$src/_mingle" is_file
}

@test 'src has _minicom' {
    assert "$src/_minicom" is_file
}

@test 'src has _ministat' {
    assert "$src/_ministat" is_file
}

@test 'src has _miniterm' {
    assert "$src/_miniterm" is_file
}

@test 'src has _miniterm.py' {
    assert "$src/_miniterm.py" is_file
}

@test 'src has _miniterm.pyc' {
    assert "$src/_miniterm.pyc" is_file
}

@test 'src has _mintupdate' {
    assert "$src/_mintupdate" is_file
}

@test 'src has _miranda' {
    assert "$src/_miranda" is_file
}

@test 'src has _miredo' {
    assert "$src/_miredo" is_file
}

@test 'src has _miredo-server' {
    assert "$src/_miredo-server" is_file
}

@test 'src has _missidentify' {
    assert "$src/_missidentify" is_file
}

@test 'src has _mit-scheme' {
    assert "$src/_mit-scheme" is_file
}

@test 'src has _mit-scheme-native' {
    assert "$src/_mit-scheme-native" is_file
}

@test 'src has _mit-scheme-x86-64' {
    assert "$src/_mit-scheme-x86-64" is_file
}

@test 'src has _mit-scheme-x86-64-11.2' {
    assert "$src/_mit-scheme-x86-64-11.2" is_file
}

@test 'src has _mk_cmds' {
    assert "$src/_mk_cmds" is_file
}

@test 'src has _mkafmmap' {
    assert "$src/_mkafmmap" is_file
}

@test 'src has _mkbom' {
    assert "$src/_mkbom" is_file
}

@test 'src has _mkbundle' {
    assert "$src/_mkbundle" is_file
}

@test 'src has _mkcamlp4' {
    assert "$src/_mkcamlp4" is_file
}

@test 'src has _mkcp' {
    assert "$src/_mkcp" is_file
}

@test 'src has _mkdict' {
    assert "$src/_mkdict" is_file
}

@test 'src has _mkdirp' {
    assert "$src/_mkdirp" is_file
}

@test 'src has _mkdiskimage' {
    assert "$src/_mkdiskimage" is_file
}

@test 'src has _mkdoc' {
    assert "$src/_mkdoc" is_file
}

@test 'src has _mkdosfs' {
    assert "$src/_mkdosfs" is_file
}

@test 'src has _mkdumprd' {
    assert "$src/_mkdumprd" is_file
}

@test 'src has _mkenvimage' {
    assert "$src/_mkenvimage" is_file
}

@test 'src has _mkextunpack' {
    assert "$src/_mkextunpack" is_file
}

@test 'src has _mkfifo' {
    assert "$src/_mkfifo" is_file
}

@test 'src has _mkfs' {
    assert "$src/_mkfs" is_file
}

@test 'src has _mkfs.bfs' {
    assert "$src/_mkfs.bfs" is_file
}

@test 'src has _mkfs.btrfs' {
    assert "$src/_mkfs.btrfs" is_file
}

@test 'src has _mkfs.cramfs' {
    assert "$src/_mkfs.cramfs" is_file
}

@test 'src has _mkfs.exfat' {
    assert "$src/_mkfs.exfat" is_file
}

@test 'src has _mkfs.ext2' {
    assert "$src/_mkfs.ext2" is_file
}

@test 'src has _mkfs.ext3' {
    assert "$src/_mkfs.ext3" is_file
}

@test 'src has _mkfs.ext4' {
    assert "$src/_mkfs.ext4" is_file
}

@test 'src has _mkfs.f2fs' {
    assert "$src/_mkfs.f2fs" is_file
}

@test 'src has _mkfs.fat' {
    assert "$src/_mkfs.fat" is_file
}

@test 'src has _mkfs.hfs' {
    assert "$src/_mkfs.hfs" is_file
}

@test 'src has _mkfs.hfsplus' {
    assert "$src/_mkfs.hfsplus" is_file
}

@test 'src has _mkfs.jffs2' {
    assert "$src/_mkfs.jffs2" is_file
}

@test 'src has _mkfs.jfs' {
    assert "$src/_mkfs.jfs" is_file
}

@test 'src has _mkfs.minix' {
    assert "$src/_mkfs.minix" is_file
}

@test 'src has _mkfs.msdos' {
    assert "$src/_mkfs.msdos" is_file
}

@test 'src has _mkfs.ntfs' {
    assert "$src/_mkfs.ntfs" is_file
}

@test 'src has _mkfs.reiser4' {
    assert "$src/_mkfs.reiser4" is_file
}

@test 'src has _mkfs.reiserfs' {
    assert "$src/_mkfs.reiserfs" is_file
}

@test 'src has _mkfs.ubifs' {
    assert "$src/_mkfs.ubifs" is_file
}

@test 'src has _mkfs.udf' {
    assert "$src/_mkfs.udf" is_file
}

@test 'src has _mkfs.vfat' {
    assert "$src/_mkfs.vfat" is_file
}

@test 'src has _mkfs.xfs' {
    assert "$src/_mkfs.xfs" is_file
}

@test 'src has _mkgrkindex' {
    assert "$src/_mkgrkindex" is_file
}

@test 'src has _mkhybrid' {
    assert "$src/_mkhybrid" is_file
}

@test 'src has _mkimg' {
    assert "$src/_mkimg" is_file
}

@test 'src has _mkinitfs' {
    assert "$src/_mkinitfs" is_file
}

@test 'src has _mkinitramfs' {
    assert "$src/_mkinitramfs" is_file
}

@test 'src has _mkinitrd' {
    assert "$src/_mkinitrd" is_file
}

@test 'src has _mkisofs' {
    assert "$src/_mkisofs" is_file
}

@test 'src has _mknod' {
    assert "$src/_mknod" is_file
}

@test 'src has _mkntfs' {
    assert "$src/_mkntfs" is_file
}

@test 'src has _mkpasswd' {
    assert "$src/_mkpasswd" is_file
}

@test 'src has _mkpic' {
    assert "$src/_mkpic" is_file
}

@test 'src has _mkreiser4' {
    assert "$src/_mkreiser4" is_file
}

@test 'src has _mkreiserfs' {
    assert "$src/_mkreiserfs" is_file
}

@test 'src has _mkroot' {
    assert "$src/_mkroot" is_file
}

@test 'src has _mksmbpasswd' {
    assert "$src/_mksmbpasswd" is_file
}

@test 'src has _mksquashfs' {
    assert "$src/_mksquashfs" is_file
}

@test 'src has _mkt1font' {
    assert "$src/_mkt1font" is_file
}

@test 'src has _mktexfmt' {
    assert "$src/_mktexfmt" is_file
}

@test 'src has _mktexlsr' {
    assert "$src/_mktexlsr" is_file
}

@test 'src has _mktexpk' {
    assert "$src/_mktexpk" is_file
}

@test 'src has _mkudffs' {
    assert "$src/_mkudffs" is_file
}

@test 'src has _mkzftree' {
    assert "$src/_mkzftree" is_file
}

@test 'src has _mllatex' {
    assert "$src/_mllatex" is_file
}

@test 'src has _mltex' {
    assert "$src/_mltex" is_file
}

@test 'src has _mlx5tool' {
    assert "$src/_mlx5tool" is_file
}

@test 'src has _mm2gv' {
    assert "$src/_mm2gv" is_file
}

@test 'src has _mmafm' {
    assert "$src/_mmafm" is_file
}

@test 'src has _mmc-tool' {
    assert "$src/_mmc-tool" is_file
}

@test 'src has _mmcat' {
    assert "$src/_mmcat" is_file
}

@test 'src has _mmcli' {
    assert "$src/_mmcli" is_file
}

@test 'src has _mmdblookup' {
    assert "$src/_mmdblookup" is_file
}

@test 'src has _mmls' {
    assert "$src/_mmls" is_file
}

@test 'src has _mmpfb' {
    assert "$src/_mmpfb" is_file
}

@test 'src has _mmroff' {
    assert "$src/_mmroff" is_file
}

@test 'src has _mmstat' {
    assert "$src/_mmstat" is_file
}

@test 'src has _mntctl' {
    assert "$src/_mntctl" is_file
}

@test 'src has _mnthome' {
    assert "$src/_mnthome" is_file
}

@test 'src has _moar' {
    assert "$src/_moar" is_file
}

@test 'src has _moc' {
    assert "$src/_moc" is_file
}

@test 'src has _moc-qt4' {
    assert "$src/_moc-qt4" is_file
}

@test 'src has _moc-qt5' {
    assert "$src/_moc-qt5" is_file
}

@test 'src has _mocha' {
    assert "$src/_mocha" is_file
}

@test 'src has _modifyrepo_c' {
    assert "$src/_modifyrepo_c" is_file
}

@test 'src has _modinfo' {
    assert "$src/_modinfo" is_file
}

@test 'src has _modprobe' {
    assert "$src/_modprobe" is_file
}

@test 'src has _modularize' {
    assert "$src/_modularize" is_file
}

@test 'src has _modularize12' {
    assert "$src/_modularize12" is_file
}

@test 'src has _modularize60' {
    assert "$src/_modularize60" is_file
}

@test 'src has _module-deps' {
    assert "$src/_module-deps" is_file
}

@test 'src has _modulemd-validator' {
    assert "$src/_modulemd-validator" is_file
}

@test 'src has _modutil' {
    assert "$src/_modutil" is_file
}

@test 'src has _moggsplit' {
    assert "$src/_moggsplit" is_file
}

@test 'src has _mongo' {
    assert "$src/_mongo" is_file
}

@test 'src has _mongobridge' {
    assert "$src/_mongobridge" is_file
}

@test 'src has _mongod' {
    assert "$src/_mongod" is_file
}

@test 'src has _mongodump' {
    assert "$src/_mongodump" is_file
}

@test 'src has _mongoexport' {
    assert "$src/_mongoexport" is_file
}

@test 'src has _mongofiles' {
    assert "$src/_mongofiles" is_file
}

@test 'src has _mongoimport' {
    assert "$src/_mongoimport" is_file
}

@test 'src has _mongooplog' {
    assert "$src/_mongooplog" is_file
}

@test 'src has _mongoreplay' {
    assert "$src/_mongoreplay" is_file
}

@test 'src has _mongorestore' {
    assert "$src/_mongorestore" is_file
}

@test 'src has _mongos' {
    assert "$src/_mongos" is_file
}

@test 'src has _mongosh' {
    assert "$src/_mongosh" is_file
}

@test 'src has _mongosniff' {
    assert "$src/_mongosniff" is_file
}

@test 'src has _mongostat' {
    assert "$src/_mongostat" is_file
}

@test 'src has _mongotop' {
    assert "$src/_mongotop" is_file
}

@test 'src has _monkeyrunner' {
    assert "$src/_monkeyrunner" is_file
}

@test 'src has _mono' {
    assert "$src/_mono" is_file
}

@test 'src has _mono-api-html' {
    assert "$src/_mono-api-html" is_file
}

@test 'src has _mono-api-info' {
    assert "$src/_mono-api-info" is_file
}

@test 'src has _mono-boehm' {
    assert "$src/_mono-boehm" is_file
}

@test 'src has _mono-configuration-crypto' {
    assert "$src/_mono-configuration-crypto" is_file
}

@test 'src has _mono-sgen' {
    assert "$src/_mono-sgen" is_file
}

@test 'src has _mono-symbolicate' {
    assert "$src/_mono-symbolicate" is_file
}

@test 'src has _mono-xmltool' {
    assert "$src/_mono-xmltool" is_file
}

@test 'src has _monodocer' {
    assert "$src/_monodocer" is_file
}

@test 'src has _monodocs2html' {
    assert "$src/_monodocs2html" is_file
}

@test 'src has _monodocs2slashdoc' {
    assert "$src/_monodocs2slashdoc" is_file
}

@test 'src has _monograph' {
    assert "$src/_monograph" is_file
}

@test 'src has _monolinker' {
    assert "$src/_monolinker" is_file
}

@test 'src has _monop' {
    assert "$src/_monop" is_file
}

@test 'src has _monop2' {
    assert "$src/_monop2" is_file
}

@test 'src has _montage-im6' {
    assert "$src/_montage-im6" is_file
}

@test 'src has _montage-im6.q16' {
    assert "$src/_montage-im6.q16" is_file
}

@test 'src has _mosquitto' {
    assert "$src/_mosquitto" is_file
}

@test 'src has _mosquitto2john' {
    assert "$src/_mosquitto2john" is_file
}

@test 'src has _mosquitto_ctrl' {
    assert "$src/_mosquitto_ctrl" is_file
}

@test 'src has _mosquitto_passwd' {
    assert "$src/_mosquitto_passwd" is_file
}

@test 'src has _mount.cifs' {
    assert "$src/_mount.cifs" is_file
}

@test 'src has _mount.ecryptfs_private' {
    assert "$src/_mount.ecryptfs_private" is_file
}

@test 'src has _mount.exfat-fuse' {
    assert "$src/_mount.exfat-fuse" is_file
}

@test 'src has _mount.fuse.sshfs' {
    assert "$src/_mount.fuse.sshfs" is_file
}

@test 'src has _mount.nfs' {
    assert "$src/_mount.nfs" is_file
}

@test 'src has _mount.nfs4' {
    assert "$src/_mount.nfs4" is_file
}

@test 'src has _mount.smb3' {
    assert "$src/_mount.smb3" is_file
}

@test 'src has _mount.sshfs' {
    assert "$src/_mount.sshfs" is_file
}

@test 'src has _mount.ubifs' {
    assert "$src/_mount.ubifs" is_file
}

@test 'src has _mount_9p' {
    assert "$src/_mount_9p" is_file
}

@test 'src has _mount_fusefs' {
    assert "$src/_mount_fusefs" is_file
}

@test 'src has _mountpoint' {
    assert "$src/_mountpoint" is_file
}

@test 'src has _mountstats' {
    assert "$src/_mountstats" is_file
}

@test 'src has _mousepad' {
    assert "$src/_mousepad" is_file
}

@test 'src has _mousetweaks' {
    assert "$src/_mousetweaks" is_file
}

@test 'src has _movemail' {
    assert "$src/_movemail" is_file
}

@test 'src has _movemail.mailutils' {
    assert "$src/_movemail.mailutils" is_file
}

@test 'src has _movies' {
    assert "$src/_movies" is_file
}

@test 'src has _mozroots' {
    assert "$src/_mozroots" is_file
}

@test 'src has _mp2enc' {
    assert "$src/_mp2enc" is_file
}

@test 'src has _mp3-decoder' {
    assert "$src/_mp3-decoder" is_file
}

@test 'src has _mp32' {
    assert "$src/_mp32" is_file
}

@test 'src has _mp3blaster' {
    assert "$src/_mp3blaster" is_file
}

@test 'src has _mp64' {
    assert "$src/_mp64" is_file
}

@test 'src has _mpage' {
    assert "$src/_mpage" is_file
}

@test 'src has _mpaltalk' {
    assert "$src/_mpaltalk" is_file
}

@test 'src has _mpcdec' {
    assert "$src/_mpcdec" is_file
}

@test 'src has _mpcenc' {
    assert "$src/_mpcenc" is_file
}

@test 'src has _mpeg2desc' {
    assert "$src/_mpeg2desc" is_file
}

@test 'src has _mpeg2enc' {
    assert "$src/_mpeg2enc" is_file
}

@test 'src has _mpg123' {
    assert "$src/_mpg123" is_file
}

@test 'src has _mpg123-alsa' {
    assert "$src/_mpg123-alsa" is_file
}

@test 'src has _mpg123-id3dump' {
    assert "$src/_mpg123-id3dump" is_file
}

@test 'src has _mpg123-jack' {
    assert "$src/_mpg123-jack" is_file
}

@test 'src has _mpg123-nas' {
    assert "$src/_mpg123-nas" is_file
}

@test 'src has _mpg123-openal' {
    assert "$src/_mpg123-openal" is_file
}

@test 'src has _mpg123-oss' {
    assert "$src/_mpg123-oss" is_file
}

@test 'src has _mpg123-portaudio' {
    assert "$src/_mpg123-portaudio" is_file
}

@test 'src has _mpg123-pulse' {
    assert "$src/_mpg123-pulse" is_file
}

@test 'src has _mpg123-strip' {
    assert "$src/_mpg123-strip" is_file
}

@test 'src has _mpg123.bin' {
    assert "$src/_mpg123.bin" is_file
}

@test 'src has _mpic++' {
    assert "$src/_mpic++" is_file
}

@test 'src has _mpicalc' {
    assert "$src/_mpicalc" is_file
}

@test 'src has _mpicc' {
    assert "$src/_mpicc" is_file
}

@test 'src has _mpicxx' {
    assert "$src/_mpicxx" is_file
}

@test 'src has _mpiexec' {
    assert "$src/_mpiexec" is_file
}

@test 'src has _mpiexec.hydra' {
    assert "$src/_mpiexec.hydra" is_file
}

@test 'src has _mpif77' {
    assert "$src/_mpif77" is_file
}

@test 'src has _mpif90' {
    assert "$src/_mpif90" is_file
}

@test 'src has _mpifort' {
    assert "$src/_mpifort" is_file
}

@test 'src has _mpirun' {
    assert "$src/_mpirun" is_file
}

@test 'src has _mplex' {
    assert "$src/_mplex" is_file
}

@test 'src has _mpmetis' {
    assert "$src/_mpmetis" is_file
}

@test 'src has _mpost' {
    assert "$src/_mpost" is_file
}

@test 'src has _mppcheck' {
    assert "$src/_mppcheck" is_file
}

@test 'src has _mpplu' {
    assert "$src/_mpplu" is_file
}

@test 'src has _mppprof' {
    assert "$src/_mppprof" is_file
}

@test 'src has _mpris-proxy' {
    assert "$src/_mpris-proxy" is_file
}

@test 'src has _mprof-report' {
    assert "$src/_mprof-report" is_file
}

@test 'src has _mpsgraphtool' {
    assert "$src/_mpsgraphtool" is_file
}

@test 'src has _mqtt_check.py' {
    assert "$src/_mqtt_check.py" is_file
}

@test 'src has _mred' {
    assert "$src/_mred" is_file
}

@test 'src has _mred-text' {
    assert "$src/_mred-text" is_file
}

@test 'src has _ms_print' {
    assert "$src/_ms_print" is_file
}

@test 'src has _msbuild' {
    assert "$src/_msbuild" is_file
}

@test 'src has _mscompress' {
    assert "$src/_mscompress" is_file
}

@test 'src has _msexpand' {
    assert "$src/_msexpand" is_file
}

@test 'src has _msf-java_deserializer' {
    assert "$src/_msf-java_deserializer" is_file
}

@test 'src has _msf-pattern_create' {
    assert "$src/_msf-pattern_create" is_file
}

@test 'src has _msf-pattern_offset' {
    assert "$src/_msf-pattern_offset" is_file
}

@test 'src has _msfconsole' {
    assert "$src/_msfconsole" is_file
}

@test 'src has _msfvenom' {
    assert "$src/_msfvenom" is_file
}

@test 'src has _msgattrib' {
    assert "$src/_msgattrib" is_file
}

@test 'src has _msgcat' {
    assert "$src/_msgcat" is_file
}

@test 'src has _msgcmp' {
    assert "$src/_msgcmp" is_file
}

@test 'src has _msgcomm' {
    assert "$src/_msgcomm" is_file
}

@test 'src has _msgconv' {
    assert "$src/_msgconv" is_file
}

@test 'src has _msgen' {
    assert "$src/_msgen" is_file
}

@test 'src has _msgexec' {
    assert "$src/_msgexec" is_file
}

@test 'src has _msgfilter' {
    assert "$src/_msgfilter" is_file
}

@test 'src has _msgfmt' {
    assert "$src/_msgfmt" is_file
}

@test 'src has _msgfmt3.12.py' {
    assert "$src/_msgfmt3.12.py" is_file
}

@test 'src has _msgfmt3.py' {
    assert "$src/_msgfmt3.py" is_file
}

@test 'src has _msggrep' {
    assert "$src/_msggrep" is_file
}

@test 'src has _msghack' {
    assert "$src/_msghack" is_file
}

@test 'src has _msginit' {
    assert "$src/_msginit" is_file
}

@test 'src has _msgmerge' {
    assert "$src/_msgmerge" is_file
}

@test 'src has _msgunfmt' {
    assert "$src/_msgunfmt" is_file
}

@test 'src has _msguniq' {
    assert "$src/_msguniq" is_file
}

@test 'src has _msldapcompdns' {
    assert "$src/_msldapcompdns" is_file
}

@test 'src has _msoffice-pic-extractor.py' {
    assert "$src/_msoffice-pic-extractor.py" is_file
}

@test 'src has _mss' {
    assert "$src/_mss" is_file
}

@test 'src has _mt' {
    assert "$src/_mt" is_file
}

@test 'src has _mt-gnu' {
    assert "$src/_mt-gnu" is_file
}

@test 'src has _mtdinfo' {
    assert "$src/_mtdinfo" is_file
}

@test 'src has _mtdpart' {
    assert "$src/_mtdpart" is_file
}

@test 'src has _mtp-hotplug' {
    assert "$src/_mtp-hotplug" is_file
}

@test 'src has _mtrace' {
    assert "$src/_mtrace" is_file
}

@test 'src has _muffin' {
    assert "$src/_muffin" is_file
}

@test 'src has _mujs' {
    assert "$src/_mujs" is_file
}

@test 'src has _multimon-ng' {
    assert "$src/_multimon-ng" is_file
}

@test 'src has _multipath' {
    assert "$src/_multipath" is_file
}

@test 'src has _multixterm' {
    assert "$src/_multixterm" is_file
}

@test 'src has _munge' {
    assert "$src/_munge" is_file
}

@test 'src has _munged' {
    assert "$src/_munged" is_file
}

@test 'src has _mungekey' {
    assert "$src/_mungekey" is_file
}

@test 'src has _murge' {
    assert "$src/_murge" is_file
}

@test 'src has _mutagen-inspect' {
    assert "$src/_mutagen-inspect" is_file
}

@test 'src has _mutool' {
    assert "$src/_mutool" is_file
}

@test 'src has _mutt' {
    assert "$src/_mutt" is_file
}

@test 'src has _mutt-org' {
    assert "$src/_mutt-org" is_file
}

@test 'src has _mutt_dotlock' {
    assert "$src/_mutt_dotlock" is_file
}

@test 'src has _mutter' {
    assert "$src/_mutter" is_file
}

@test 'src has _muxer' {
    assert "$src/_muxer" is_file
}

@test 'src has _mview' {
    assert "$src/_mview" is_file
}

@test 'src has _mvim' {
    assert "$src/_mvim" is_file
}

@test 'src has _mvimdiff' {
    assert "$src/_mvimdiff" is_file
}

@test 'src has _mvimex' {
    assert "$src/_mvimex" is_file
}

@test 'src has _mvxattr' {
    assert "$src/_mvxattr" is_file
}

@test 'src has _mwaw2csv' {
    assert "$src/_mwaw2csv" is_file
}

@test 'src has _mwaw2html' {
    assert "$src/_mwaw2html" is_file
}

@test 'src has _mwaw2raw' {
    assert "$src/_mwaw2raw" is_file
}

@test 'src has _mwaw2svg' {
    assert "$src/_mwaw2svg" is_file
}

@test 'src has _mwaw2text' {
    assert "$src/_mwaw2text" is_file
}

@test 'src has _mwawFile' {
    assert "$src/_mwawFile" is_file
}

@test 'src has _mwawZip' {
    assert "$src/_mwawZip" is_file
}

@test 'src has _mwmail' {
    assert "$src/_mwmail" is_file
}

@test 'src has _mxtar' {
    assert "$src/_mxtar" is_file
}

@test 'src has _myWatchMaintainEscapes.sh' {
    assert "$src/_myWatchMaintainEscapes.sh" is_file
}

@test 'src has _myWatchNoBlink.sh' {
    assert "$src/_myWatchNoBlink.sh" is_file
}

@test 'src has _myWatchNoBlinkColorized.sh' {
    assert "$src/_myWatchNoBlinkColorized.sh" is_file
}

@test 'src has _my_print_defaults' {
    assert "$src/_my_print_defaults" is_file
}

@test 'src has _mycli' {
    assert "$src/_mycli" is_file
}

@test 'src has _myisam_ftdump' {
    assert "$src/_myisam_ftdump" is_file
}

@test 'src has _myisamchk' {
    assert "$src/_myisamchk" is_file
}

@test 'src has _myisampack' {
    assert "$src/_myisampack" is_file
}

@test 'src has _mysql_client_test' {
    assert "$src/_mysql_client_test" is_file
}

@test 'src has _mysql_config' {
    assert "$src/_mysql_config" is_file
}

@test 'src has _mysql_config_editor' {
    assert "$src/_mysql_config_editor" is_file
}

@test 'src has _mysql_convert_table_format' {
    assert "$src/_mysql_convert_table_format" is_file
}

@test 'src has _mysql_embedded' {
    assert "$src/_mysql_embedded" is_file
}

@test 'src has _mysql_find_rows' {
    assert "$src/_mysql_find_rows" is_file
}

@test 'src has _mysql_install_db' {
    assert "$src/_mysql_install_db" is_file
}

@test 'src has _mysql_keyring_encryption_test' {
    assert "$src/_mysql_keyring_encryption_test" is_file
}

@test 'src has _mysql_ldb' {
    assert "$src/_mysql_ldb" is_file
}

@test 'src has _mysql_migrate_keyring' {
    assert "$src/_mysql_migrate_keyring" is_file
}

@test 'src has _mysql_plugin' {
    assert "$src/_mysql_plugin" is_file
}

@test 'src has _mysql_secure_installation' {
    assert "$src/_mysql_secure_installation" is_file
}

@test 'src has _mysql_setpermission' {
    assert "$src/_mysql_setpermission" is_file
}

@test 'src has _mysql_ssl_rsa_setup' {
    assert "$src/_mysql_ssl_rsa_setup" is_file
}

@test 'src has _mysql_test_event_tracking' {
    assert "$src/_mysql_test_event_tracking" is_file
}

@test 'src has _mysql_tzinfo_to_sql' {
    assert "$src/_mysql_tzinfo_to_sql" is_file
}

@test 'src has _mysql_upgrade' {
    assert "$src/_mysql_upgrade" is_file
}

@test 'src has _mysql_waitpid' {
    assert "$src/_mysql_waitpid" is_file
}

@test 'src has _mysqlaccess' {
    assert "$src/_mysqlaccess" is_file
}

@test 'src has _mysqlanalyze' {
    assert "$src/_mysqlanalyze" is_file
}

@test 'src has _mysqlbinlog' {
    assert "$src/_mysqlbinlog" is_file
}

@test 'src has _mysqlcheck' {
    assert "$src/_mysqlcheck" is_file
}

@test 'src has _mysqld' {
    assert "$src/_mysqld" is_file
}

@test 'src has _mysqld_multi' {
    assert "$src/_mysqld_multi" is_file
}

@test 'src has _mysqld_safe' {
    assert "$src/_mysqld_safe" is_file
}

@test 'src has _mysqldumpslow' {
    assert "$src/_mysqldumpslow" is_file
}

@test 'src has _mysqlhotcopy' {
    assert "$src/_mysqlhotcopy" is_file
}

@test 'src has _mysqloptimize' {
    assert "$src/_mysqloptimize" is_file
}

@test 'src has _mysqlpump' {
    assert "$src/_mysqlpump" is_file
}

@test 'src has _mysqlrepair' {
    assert "$src/_mysqlrepair" is_file
}

@test 'src has _mysqlreport' {
    assert "$src/_mysqlreport" is_file
}

@test 'src has _mysqlrouter' {
    assert "$src/_mysqlrouter" is_file
}

@test 'src has _mysqlrouter_passwd' {
    assert "$src/_mysqlrouter_passwd" is_file
}

@test 'src has _mysqlrouter_plugin_info' {
    assert "$src/_mysqlrouter_plugin_info" is_file
}

@test 'src has _mysqlslap' {
    assert "$src/_mysqlslap" is_file
}

@test 'src has _mysqltest' {
    assert "$src/_mysqltest" is_file
}

@test 'src has _mysqlxtest' {
    assert "$src/_mysqlxtest" is_file
}

@test 'src has _mywatch.sh' {
    assert "$src/_mywatch.sh" is_file
}

@test 'src has _mzip' {
    assert "$src/_mzip" is_file
}

@test 'src has _mzpp' {
    assert "$src/_mzpp" is_file
}

@test 'src has _mzscheme' {
    assert "$src/_mzscheme" is_file
}

@test 'src has _mztext' {
    assert "$src/_mztext" is_file
}

@test 'src has _nInvaders' {
    assert "$src/_nInvaders" is_file
}

@test 'src has _nadheader' {
    assert "$src/_nadheader" is_file
}

@test 'src has _named-journalprint' {
    assert "$src/_named-journalprint" is_file
}

@test 'src has _namei' {
    assert "$src/_namei" is_file
}

@test 'src has _nanddump' {
    assert "$src/_nanddump" is_file
}

@test 'src has _nandflipbits' {
    assert "$src/_nandflipbits" is_file
}

@test 'src has _nandtest' {
    assert "$src/_nandtest" is_file
}

@test 'src has _nandwrite' {
    assert "$src/_nandwrite" is_file
}

@test 'src has _nasm' {
    assert "$src/_nasm" is_file
}

@test 'src has _natd' {
    assert "$src/_natd" is_file
}

@test 'src has _nautilus-desktop' {
    assert "$src/_nautilus-desktop" is_file
}

@test 'src has _nautilus-sendto' {
    assert "$src/_nautilus-sendto" is_file
}

@test 'src has _navigator-updater' {
    assert "$src/_navigator-updater" is_file
}

@test 'src has _nbackup' {
    assert "$src/_nbackup" is_file
}

@test 'src has _nbtscan' {
    assert "$src/_nbtscan" is_file
}

@test 'src has _nc.openbsd' {
    assert "$src/_nc.openbsd" is_file
}

@test 'src has _nc.traditional' {
    assert "$src/_nc.traditional" is_file
}

@test 'src has _ncctl' {
    assert "$src/_ncctl" is_file
}

@test 'src has _ncmpcpp' {
    assert "$src/_ncmpcpp" is_file
}

@test 'src has _ncrack' {
    assert "$src/_ncrack" is_file
}

@test 'src has _ncurses5-config' {
    assert "$src/_ncurses5-config" is_file
}

@test 'src has _ncurses5.4-config' {
    assert "$src/_ncurses5.4-config" is_file
}

@test 'src has _ncurses6-config' {
    assert "$src/_ncurses6-config" is_file
}

@test 'src has _ncursesw5-config' {
    assert "$src/_ncursesw5-config" is_file
}

@test 'src has _ncursesw6-config' {
    assert "$src/_ncursesw6-config" is_file
}

@test 'src has _ndg_httpclient' {
    assert "$src/_ndg_httpclient" is_file
}

@test 'src has _ndiff' {
    assert "$src/_ndiff" is_file
}

@test 'src has _ndisasm' {
    assert "$src/_ndisasm" is_file
}

@test 'src has _ndiswrapper' {
    assert "$src/_ndiswrapper" is_file
}

@test 'src has _ndmetis' {
    assert "$src/_ndmetis" is_file
}

@test 'src has _ndptool' {
    assert "$src/_ndptool" is_file
}

@test 'src has _ndrdump' {
    assert "$src/_ndrdump" is_file
}

@test 'src has _neato' {
    assert "$src/_neato" is_file
}

@test 'src has _needrestart' {
    assert "$src/_needrestart" is_file
}

@test 'src has _nemo' {
    assert "$src/_nemo" is_file
}

@test 'src has _nemo-connect-server' {
    assert "$src/_nemo-connect-server" is_file
}

@test 'src has _nemo-desktop' {
    assert "$src/_nemo-desktop" is_file
}

@test 'src has _nemo-open-with' {
    assert "$src/_nemo-open-with" is_file
}

@test 'src has _nenscript' {
    assert "$src/_nenscript" is_file
}

@test 'src has _neon-config' {
    assert "$src/_neon-config" is_file
}

@test 'src has _net-snmp-cert' {
    assert "$src/_net-snmp-cert" is_file
}

@test 'src has _net-snmp-config' {
    assert "$src/_net-snmp-config" is_file
}

@test 'src has _net-snmp-config-aarch64' {
    assert "$src/_net-snmp-config-aarch64" is_file
}

@test 'src has _net-snmp-config-x86_64' {
    assert "$src/_net-snmp-config-x86_64" is_file
}

@test 'src has _netatalk-uniconv' {
    assert "$src/_netatalk-uniconv" is_file
}

@test 'src has _netbiosd' {
    assert "$src/_netbiosd" is_file
}

@test 'src has _netdiscover' {
    assert "$src/_netdiscover" is_file
}

@test 'src has _netkey-tool' {
    assert "$src/_netkey-tool" is_file
}

@test 'src has _netkit-ftp' {
    assert "$src/_netkit-ftp" is_file
}

@test 'src has _netmask' {
    assert "$src/_netmask" is_file
}

@test 'src has _netplan' {
    assert "$src/_netplan" is_file
}

@test 'src has _netscsid' {
    assert "$src/_netscsid" is_file
}

@test 'src has _netsed' {
    assert "$src/_netsed" is_file
}

@test 'src has _netsniff-ng' {
    assert "$src/_netsniff-ng" is_file
}

@test 'src has _nettle-hash' {
    assert "$src/_nettle-hash" is_file
}

@test 'src has _nettle-pbkdf2' {
    assert "$src/_nettle-pbkdf2" is_file
}

@test 'src has _nettop' {
    assert "$src/_nettop" is_file
}

@test 'src has _netwag' {
    assert "$src/_netwag" is_file
}

@test 'src has _networkd-dispatcher' {
    assert "$src/_networkd-dispatcher" is_file
}

@test 'src has _networksetup' {
    assert "$src/_networksetup" is_file
}

@test 'src has _newaliases' {
    assert "$src/_newaliases" is_file
}

@test 'src has _newfs' {
    assert "$src/_newfs" is_file
}

@test 'src has _newfs_exfat' {
    assert "$src/_newfs_exfat" is_file
}

@test 'src has _newfs_hfs' {
    assert "$src/_newfs_hfs" is_file
}

@test 'src has _newfs_msdos' {
    assert "$src/_newfs_msdos" is_file
}

@test 'src has _newproc.d' {
    assert "$src/_newproc.d" is_file
}

@test 'src has _newton' {
    assert "$src/_newton" is_file
}

@test 'src has _newusers' {
    assert "$src/_newusers" is_file
}

@test 'src has _nf-ct-add' {
    assert "$src/_nf-ct-add" is_file
}

@test 'src has _nf-ct-list' {
    assert "$src/_nf-ct-list" is_file
}

@test 'src has _nf-exp-add' {
    assert "$src/_nf-exp-add" is_file
}

@test 'src has _nf-exp-delete' {
    assert "$src/_nf-exp-delete" is_file
}

@test 'src has _nf-exp-list' {
    assert "$src/_nf-exp-list" is_file
}

@test 'src has _nfanon' {
    assert "$src/_nfanon" is_file
}

@test 'src has _nfc-barcode' {
    assert "$src/_nfc-barcode" is_file
}

@test 'src has _nfc-emulate-forum-tag4' {
    assert "$src/_nfc-emulate-forum-tag4" is_file
}

@test 'src has _nfc-list' {
    assert "$src/_nfc-list" is_file
}

@test 'src has _nfc-read-forum-tag3' {
    assert "$src/_nfc-read-forum-tag3" is_file
}

@test 'src has _nfc-relay-picc' {
    assert "$src/_nfc-relay-picc" is_file
}

@test 'src has _nfc-scan-device' {
    assert "$src/_nfc-scan-device" is_file
}

@test 'src has _nfcapd' {
    assert "$src/_nfcapd" is_file
}

@test 'src has _nfdump' {
    assert "$src/_nfdump" is_file
}

@test 'src has _nfexpire' {
    assert "$src/_nfexpire" is_file
}

@test 'src has _nfprofile' {
    assert "$src/_nfprofile" is_file
}

@test 'src has _nfreplay' {
    assert "$src/_nfreplay" is_file
}

@test 'src has _nfs4_editfacl' {
    assert "$src/_nfs4_editfacl" is_file
}

@test 'src has _nfs4_getfacl' {
    assert "$src/_nfs4_getfacl" is_file
}

@test 'src has _nfs4_setfacl' {
    assert "$src/_nfs4_setfacl" is_file
}

@test 'src has _nfsconf' {
    assert "$src/_nfsconf" is_file
}

@test 'src has _nfsdcld' {
    assert "$src/_nfsdcld" is_file
}

@test 'src has _nfsdclddb' {
    assert "$src/_nfsdclddb" is_file
}

@test 'src has _nfsdclnts' {
    assert "$src/_nfsdclnts" is_file
}

@test 'src has _nfsiostat' {
    assert "$src/_nfsiostat" is_file
}

@test 'src has _nfspy' {
    assert "$src/_nfspy" is_file
}

@test 'src has _nfspysh' {
    assert "$src/_nfspysh" is_file
}

@test 'src has _nfsref' {
    assert "$src/_nfsref" is_file
}

@test 'src has _nfsstat' {
    assert "$src/_nfsstat" is_file
}

@test 'src has _nftrack' {
    assert "$src/_nftrack" is_file
}

@test 'src has _ngettext' {
    assert "$src/_ngettext" is_file
}

@test 'src has _nghttp' {
    assert "$src/_nghttp" is_file
}

@test 'src has _nghttpd' {
    assert "$src/_nghttpd" is_file
}

@test 'src has _nghttpx' {
    assert "$src/_nghttpx" is_file
}

@test 'src has _ngrok' {
    assert "$src/_ngrok" is_file
}

@test 'src has _nh' {
    assert "$src/_nh" is_file
}

@test 'src has _nikto' {
    assert "$src/_nikto" is_file
}

@test 'src has _nilfs-clean' {
    assert "$src/_nilfs-clean" is_file
}

@test 'src has _nilfs-resize' {
    assert "$src/_nilfs-resize" is_file
}

@test 'src has _nilfs_cleanerd' {
    assert "$src/_nilfs_cleanerd" is_file
}

@test 'src has _ninfod' {
    assert "$src/_ninfod" is_file
}

@test 'src has _nisdomainname' {
    assert "$src/_nisdomainname" is_file
}

@test 'src has _nl-addr-add' {
    assert "$src/_nl-addr-add" is_file
}

@test 'src has _nl-addr-delete' {
    assert "$src/_nl-addr-delete" is_file
}

@test 'src has _nl-addr-list' {
    assert "$src/_nl-addr-list" is_file
}

@test 'src has _nl-class-add' {
    assert "$src/_nl-class-add" is_file
}

@test 'src has _nl-class-delete' {
    assert "$src/_nl-class-delete" is_file
}

@test 'src has _nl-class-list' {
    assert "$src/_nl-class-list" is_file
}

@test 'src has _nl-classid-lookup' {
    assert "$src/_nl-classid-lookup" is_file
}

@test 'src has _nl-cls-add' {
    assert "$src/_nl-cls-add" is_file
}

@test 'src has _nl-cls-delete' {
    assert "$src/_nl-cls-delete" is_file
}

@test 'src has _nl-cls-list' {
    assert "$src/_nl-cls-list" is_file
}

@test 'src has _nl-fib-lookup' {
    assert "$src/_nl-fib-lookup" is_file
}

@test 'src has _nl-link-list' {
    assert "$src/_nl-link-list" is_file
}

@test 'src has _nl-link-set' {
    assert "$src/_nl-link-set" is_file
}

@test 'src has _nl-link-stats' {
    assert "$src/_nl-link-stats" is_file
}

@test 'src has _nl-monitor' {
    assert "$src/_nl-monitor" is_file
}

@test 'src has _nl-neigh-add' {
    assert "$src/_nl-neigh-add" is_file
}

@test 'src has _nl-neigh-delete' {
    assert "$src/_nl-neigh-delete" is_file
}

@test 'src has _nl-neigh-list' {
    assert "$src/_nl-neigh-list" is_file
}

@test 'src has _nl-neightbl-list' {
    assert "$src/_nl-neightbl-list" is_file
}

@test 'src has _nl-pktloc-lookup' {
    assert "$src/_nl-pktloc-lookup" is_file
}

@test 'src has _nl-qdisc-add' {
    assert "$src/_nl-qdisc-add" is_file
}

@test 'src has _nl-qdisc-delete' {
    assert "$src/_nl-qdisc-delete" is_file
}

@test 'src has _nl-qdisc-list' {
    assert "$src/_nl-qdisc-list" is_file
}

@test 'src has _nl-route-add' {
    assert "$src/_nl-route-add" is_file
}

@test 'src has _nl-route-delete' {
    assert "$src/_nl-route-delete" is_file
}

@test 'src has _nl-route-list' {
    assert "$src/_nl-route-list" is_file
}

@test 'src has _nl-rule-list' {
    assert "$src/_nl-rule-list" is_file
}

@test 'src has _nl-tctree-list' {
    assert "$src/_nl-tctree-list" is_file
}

@test 'src has _nlcontrol' {
    assert "$src/_nlcontrol" is_file
}

@test 'src has _nlplug-findfs' {
    assert "$src/_nlplug-findfs" is_file
}

@test 'src has _nm' {
    assert "$src/_nm" is_file
}

@test 'src has _nm-connection-editor' {
    assert "$src/_nm-connection-editor" is_file
}

@test 'src has _nm-online' {
    assert "$src/_nm-online" is_file
}

@test 'src has _nmapfe' {
    assert "$src/_nmapfe" is_file
}

@test 'src has _nmapsi4' {
    assert "$src/_nmapsi4" is_file
}

@test 'src has _nmbd' {
    assert "$src/_nmbd" is_file
}

@test 'src has _nmblookup' {
    assert "$src/_nmblookup" is_file
}

@test 'src has _nmbstatus' {
    assert "$src/_nmbstatus" is_file
}

@test 'src has _nmcli' {
    assert "$src/_nmcli" is_file
}

@test 'src has _nmeter' {
    assert "$src/_nmeter" is_file
}

@test 'src has _nmixer' {
    assert "$src/_nmixer" is_file
}

@test 'src has _nmon' {
    assert "$src/_nmon" is_file
}

@test 'src has _nmtui' {
    assert "$src/_nmtui" is_file
}

@test 'src has _nmtui-connect' {
    assert "$src/_nmtui-connect" is_file
}

@test 'src has _nmtui-edit' {
    assert "$src/_nmtui-edit" is_file
}

@test 'src has _nmtui-hostname' {
    assert "$src/_nmtui-hostname" is_file
}

@test 'src has _nnn' {
    assert "$src/_nnn" is_file
}

@test 'src has _node-20' {
    assert "$src/_node-20" is_file
}

@test 'src has _nodejs' {
    assert "$src/_nodejs" is_file
}

@test 'src has _nodemon' {
    assert "$src/_nodemon" is_file
}

@test 'src has _nokfw' {
    assert "$src/_nokfw" is_file
}

@test 'src has _nokogiri' {
    assert "$src/_nokogiri" is_file
}

@test 'src has _nologin' {
    assert "$src/_nologin" is_file
}

@test 'src has _normalize.py' {
    assert "$src/_normalize.py" is_file
}

@test 'src has _normalizer' {
    assert "$src/_normalizer" is_file
}

@test 'src has _nosetests' {
    assert "$src/_nosetests" is_file
}

@test 'src has _nosetests-2.7' {
    assert "$src/_nosetests-2.7" is_file
}

@test 'src has _nosetests3' {
    assert "$src/_nosetests3" is_file
}

@test 'src has _notary' {
    assert "$src/_notary" is_file
}

@test 'src has _notarytool' {
    assert "$src/_notarytool" is_file
}

@test 'src has _notify' {
    assert "$src/_notify" is_file
}

@test 'src has _notify-send' {
    assert "$src/_notify-send" is_file
}

@test 'src has _notifyutil' {
    assert "$src/_notifyutil" is_file
}

@test 'src has _nping' {
    assert "$src/_nping" is_file
}

@test 'src has _npm' {
    assert "$src/_npm" is_file
}

@test 'src has _npm-home' {
    assert "$src/_npm-home" is_file
}

@test 'src has _npm-run-all' {
    assert "$src/_npm-run-all" is_file
}

@test 'src has _nproc' {
    assert "$src/_nproc" is_file
}

@test 'src has _npx' {
    assert "$src/_npx" is_file
}

@test 'src has _nscd' {
    assert "$src/_nscd" is_file
}

@test 'src has _nscurl' {
    assert "$src/_nscurl" is_file
}

@test 'src has _nsenter' {
    assert "$src/_nsenter" is_file
}

@test 'src has _nslcd' {
    assert "$src/_nslcd" is_file
}

@test 'src has _nstat' {
    assert "$src/_nstat" is_file
}

@test 'src has _ntfs-3g.probe' {
    assert "$src/_ntfs-3g.probe" is_file
}

@test 'src has _ntfs-3g.secaudit' {
    assert "$src/_ntfs-3g.secaudit" is_file
}

@test 'src has _ntfs-read.py' {
    assert "$src/_ntfs-read.py" is_file
}

@test 'src has _ntfscat' {
    assert "$src/_ntfscat" is_file
}

@test 'src has _ntfsclone' {
    assert "$src/_ntfsclone" is_file
}

@test 'src has _ntfscluster' {
    assert "$src/_ntfscluster" is_file
}

@test 'src has _ntfscmp' {
    assert "$src/_ntfscmp" is_file
}

@test 'src has _ntfscp' {
    assert "$src/_ntfscp" is_file
}

@test 'src has _ntfsdecrypt' {
    assert "$src/_ntfsdecrypt" is_file
}

@test 'src has _ntfsfallocate' {
    assert "$src/_ntfsfallocate" is_file
}

@test 'src has _ntfsfix' {
    assert "$src/_ntfsfix" is_file
}

@test 'src has _ntfsinfo' {
    assert "$src/_ntfsinfo" is_file
}

@test 'src has _ntfslabel' {
    assert "$src/_ntfslabel" is_file
}

@test 'src has _ntfsls' {
    assert "$src/_ntfsls" is_file
}

@test 'src has _ntfsmftalloc' {
    assert "$src/_ntfsmftalloc" is_file
}

@test 'src has _ntfsmove' {
    assert "$src/_ntfsmove" is_file
}

@test 'src has _ntfsrecover' {
    assert "$src/_ntfsrecover" is_file
}

@test 'src has _ntfsresize' {
    assert "$src/_ntfsresize" is_file
}

@test 'src has _ntfssecaudit' {
    assert "$src/_ntfssecaudit" is_file
}

@test 'src has _ntfstruncate' {
    assert "$src/_ntfstruncate" is_file
}

@test 'src has _ntfsundelete' {
    assert "$src/_ntfsundelete" is_file
}

@test 'src has _ntfswipe' {
    assert "$src/_ntfswipe" is_file
}

@test 'src has _ntlm_auth' {
    assert "$src/_ntlm_auth" is_file
}

@test 'src has _ntp-keygen' {
    assert "$src/_ntp-keygen" is_file
}

@test 'src has _ntp-wait' {
    assert "$src/_ntp-wait" is_file
}

@test 'src has _ntpd' {
    assert "$src/_ntpd" is_file
}

@test 'src has _ntpdc' {
    assert "$src/_ntpdc" is_file
}

@test 'src has _ntpq' {
    assert "$src/_ntpq" is_file
}

@test 'src has _ntpsweep' {
    assert "$src/_ntpsweep" is_file
}

@test 'src has _ntptime' {
    assert "$src/_ntptime" is_file
}

@test 'src has _ntptrace' {
    assert "$src/_ntptrace" is_file
}

@test 'src has _numad' {
    assert "$src/_numad" is_file
}

@test 'src has _numademo' {
    assert "$src/_numademo" is_file
}

@test 'src has _numastat' {
    assert "$src/_numastat" is_file
}

@test 'src has _numbers2csv' {
    assert "$src/_numbers2csv" is_file
}

@test 'src has _numbers2raw' {
    assert "$src/_numbers2raw" is_file
}

@test 'src has _numbers2text' {
    assert "$src/_numbers2text" is_file
}

@test 'src has _nunit-console' {
    assert "$src/_nunit-console" is_file
}

@test 'src has _nunit-console2' {
    assert "$src/_nunit-console2" is_file
}

@test 'src has _nunit-console4' {
    assert "$src/_nunit-console4" is_file
}

@test 'src has _nvr' {
    assert "$src/_nvr" is_file
}

@test 'src has _nvram' {
    assert "$src/_nvram" is_file
}

@test 'src has _nvramtool' {
    assert "$src/_nvramtool" is_file
}

@test 'src has _nyancat' {
    assert "$src/_nyancat" is_file
}

@test 'src has _nytprofcalls' {
    assert "$src/_nytprofcalls" is_file
}

@test 'src has _nytprofcg' {
    assert "$src/_nytprofcg" is_file
}

@test 'src has _nytprofcsv' {
    assert "$src/_nytprofcsv" is_file
}

@test 'src has _nytprofhtml' {
    assert "$src/_nytprofhtml" is_file
}

@test 'src has _nytprofmerge' {
    assert "$src/_nytprofmerge" is_file
}

@test 'src has _nytprofpf' {
    assert "$src/_nytprofpf" is_file
}

@test 'src has _oLschema2ldif' {
    assert "$src/_oLschema2ldif" is_file
}

@test 'src has _oakdecode' {
    assert "$src/_oakdecode" is_file
}

@test 'src has _obex-client-tool' {
    assert "$src/_obex-client-tool" is_file
}

@test 'src has _obex-data-server' {
    assert "$src/_obex-data-server" is_file
}

@test 'src has _obexctl' {
    assert "$src/_obexctl" is_file
}

@test 'src has _obfs4proxy' {
    assert "$src/_obfs4proxy" is_file
}

@test 'src has _obj2yaml' {
    assert "$src/_obj2yaml" is_file
}

@test 'src has _obj2yaml-13' {
    assert "$src/_obj2yaml-13" is_file
}

@test 'src has _obj2yaml-14' {
    assert "$src/_obj2yaml-14" is_file
}

@test 'src has _obj2yaml-4.0' {
    assert "$src/_obj2yaml-4.0" is_file
}

@test 'src has _obj2yaml-6.0' {
    assert "$src/_obj2yaml-6.0" is_file
}

@test 'src has _obj2yaml-7' {
    assert "$src/_obj2yaml-7" is_file
}

@test 'src has _obj2yaml-8' {
    assert "$src/_obj2yaml-8" is_file
}

@test 'src has _obj2yaml-9' {
    assert "$src/_obj2yaml-9" is_file
}

@test 'src has _objcopy' {
    assert "$src/_objcopy" is_file
}

@test 'src has _objdump' {
    assert "$src/_objdump" is_file
}

@test 'src has _obxprop' {
    assert "$src/_obxprop" is_file
}

@test 'src has _ocaml' {
    assert "$src/_ocaml" is_file
}

@test 'src has _ocaml-instr-report' {
    assert "$src/_ocaml-instr-report" is_file
}

@test 'src has _ocamlbuild' {
    assert "$src/_ocamlbuild" is_file
}

@test 'src has _ocamlbuild.byte' {
    assert "$src/_ocamlbuild.byte" is_file
}

@test 'src has _ocamlbuild.native' {
    assert "$src/_ocamlbuild.native" is_file
}

@test 'src has _ocamlbyteinfo' {
    assert "$src/_ocamlbyteinfo" is_file
}

@test 'src has _ocamlc' {
    assert "$src/_ocamlc" is_file
}

@test 'src has _ocamlc.byte' {
    assert "$src/_ocamlc.byte" is_file
}

@test 'src has _ocamlc.opt' {
    assert "$src/_ocamlc.opt" is_file
}

@test 'src has _ocamlcmt' {
    assert "$src/_ocamlcmt" is_file
}

@test 'src has _ocamlcp' {
    assert "$src/_ocamlcp" is_file
}

@test 'src has _ocamlcp.byte' {
    assert "$src/_ocamlcp.byte" is_file
}

@test 'src has _ocamlcp.opt' {
    assert "$src/_ocamlcp.opt" is_file
}

@test 'src has _ocamldebug' {
    assert "$src/_ocamldebug" is_file
}

@test 'src has _ocamldep' {
    assert "$src/_ocamldep" is_file
}

@test 'src has _ocamldep.byte' {
    assert "$src/_ocamldep.byte" is_file
}

@test 'src has _ocamldep.opt' {
    assert "$src/_ocamldep.opt" is_file
}

@test 'src has _ocamldoc' {
    assert "$src/_ocamldoc" is_file
}

@test 'src has _ocamldoc.opt' {
    assert "$src/_ocamldoc.opt" is_file
}

@test 'src has _ocamldumpobj' {
    assert "$src/_ocamldumpobj" is_file
}

@test 'src has _ocamllex' {
    assert "$src/_ocamllex" is_file
}

@test 'src has _ocamllex.byte' {
    assert "$src/_ocamllex.byte" is_file
}

@test 'src has _ocamllex.opt' {
    assert "$src/_ocamllex.opt" is_file
}

@test 'src has _ocamlmklib' {
    assert "$src/_ocamlmklib" is_file
}

@test 'src has _ocamlmklib.byte' {
    assert "$src/_ocamlmklib.byte" is_file
}

@test 'src has _ocamlmklib.opt' {
    assert "$src/_ocamlmklib.opt" is_file
}

@test 'src has _ocamlmktop' {
    assert "$src/_ocamlmktop" is_file
}

@test 'src has _ocamlmktop.byte' {
    assert "$src/_ocamlmktop.byte" is_file
}

@test 'src has _ocamlmktop.opt' {
    assert "$src/_ocamlmktop.opt" is_file
}

@test 'src has _ocamlnat' {
    assert "$src/_ocamlnat" is_file
}

@test 'src has _ocamlobjinfo' {
    assert "$src/_ocamlobjinfo" is_file
}

@test 'src has _ocamlobjinfo.byte' {
    assert "$src/_ocamlobjinfo.byte" is_file
}

@test 'src has _ocamlobjinfo.opt' {
    assert "$src/_ocamlobjinfo.opt" is_file
}

@test 'src has _ocamlopt' {
    assert "$src/_ocamlopt" is_file
}

@test 'src has _ocamlopt.byte' {
    assert "$src/_ocamlopt.byte" is_file
}

@test 'src has _ocamlopt.opt' {
    assert "$src/_ocamlopt.opt" is_file
}

@test 'src has _ocamloptp' {
    assert "$src/_ocamloptp" is_file
}

@test 'src has _ocamloptp.byte' {
    assert "$src/_ocamloptp.byte" is_file
}

@test 'src has _ocamloptp.opt' {
    assert "$src/_ocamloptp.opt" is_file
}

@test 'src has _ocamlprof' {
    assert "$src/_ocamlprof" is_file
}

@test 'src has _ocamlprof.byte' {
    assert "$src/_ocamlprof.byte" is_file
}

@test 'src has _ocamlprof.opt' {
    assert "$src/_ocamlprof.opt" is_file
}

@test 'src has _ocamlrund' {
    assert "$src/_ocamlrund" is_file
}

@test 'src has _ocamlruni' {
    assert "$src/_ocamlruni" is_file
}

@test 'src has _oclhashcat' {
    assert "$src/_oclhashcat" is_file
}

@test 'src has _oclingo' {
    assert "$src/_oclingo" is_file
}

@test 'src has _ocs' {
    assert "$src/_ocs" is_file
}

@test 'src has _ocspd' {
    assert "$src/_ocspd" is_file
}

@test 'src has _ocsptool' {
    assert "$src/_ocsptool" is_file
}

@test 'src has _odf2xhtml' {
    assert "$src/_odf2xhtml" is_file
}

@test 'src has _odf2xml' {
    assert "$src/_odf2xml" is_file
}

@test 'src has _odfimgimport' {
    assert "$src/_odfimgimport" is_file
}

@test 'src has _odfmeta' {
    assert "$src/_odfmeta" is_file
}

@test 'src has _odfuserfield' {
    assert "$src/_odfuserfield" is_file
}

@test 'src has _odp2pdf' {
    assert "$src/_odp2pdf" is_file
}

@test 'src has _odp2ppt' {
    assert "$src/_odp2ppt" is_file
}

@test 'src has _ods-server' {
    assert "$src/_ods-server" is_file
}

@test 'src has _ods2pdf' {
    assert "$src/_ods2pdf" is_file
}

@test 'src has _odt2bib' {
    assert "$src/_odt2bib" is_file
}

@test 'src has _odt2doc' {
    assert "$src/_odt2doc" is_file
}

@test 'src has _odt2docbook' {
    assert "$src/_odt2docbook" is_file
}

@test 'src has _odt2html' {
    assert "$src/_odt2html" is_file
}

@test 'src has _odt2lt' {
    assert "$src/_odt2lt" is_file
}

@test 'src has _odt2pdf' {
    assert "$src/_odt2pdf" is_file
}

@test 'src has _odt2rtf' {
    assert "$src/_odt2rtf" is_file
}

@test 'src has _odt2sdw' {
    assert "$src/_odt2sdw" is_file
}

@test 'src has _odt2sxw' {
    assert "$src/_odt2sxw" is_file
}

@test 'src has _odt2txt' {
    assert "$src/_odt2txt" is_file
}

@test 'src has _odt2txt.unoconv' {
    assert "$src/_odt2txt.unoconv" is_file
}

@test 'src has _odt2xhtml' {
    assert "$src/_odt2xhtml" is_file
}

@test 'src has _odt2xml' {
    assert "$src/_odt2xml" is_file
}

@test 'src has _odvicopy' {
    assert "$src/_odvicopy" is_file
}

@test 'src has _odvitype' {
    assert "$src/_odvitype" is_file
}

@test 'src has _oem-getlogs' {
    assert "$src/_oem-getlogs" is_file
}

@test 'src has _oeminst' {
    assert "$src/_oeminst" is_file
}

@test 'src has _office2john' {
    assert "$src/_office2john" is_file
}

@test 'src has _ofm2opl' {
    assert "$src/_ofm2opl" is_file
}

@test 'src has _ofs2rva' {
    assert "$src/_ofs2rva" is_file
}

@test 'src has _ogg123' {
    assert "$src/_ogg123" is_file
}

@test 'src has _oggdec' {
    assert "$src/_oggdec" is_file
}

@test 'src has _oggenc' {
    assert "$src/_oggenc" is_file
}

@test 'src has _ogginfo' {
    assert "$src/_ogginfo" is_file
}

@test 'src has _ogonkify' {
    assert "$src/_ogonkify" is_file
}

@test 'src has _ohrwurm' {
    assert "$src/_ohrwurm" is_file
}

@test 'src has _oid2name' {
    assert "$src/_oid2name" is_file
}

@test 'src has _oinkmaster' {
    assert "$src/_oinkmaster" is_file
}

@test 'src has _old' {
    assert "$src/_old" is_file
}

@test 'src has _oldCounter.sh' {
    assert "$src/_oldCounter.sh" is_file
}

@test 'src has _oldfind' {
    assert "$src/_oldfind" is_file
}

@test 'src has _omp' {
    assert "$src/_omp" is_file
}

@test 'src has _ompi-clean' {
    assert "$src/_ompi-clean" is_file
}

@test 'src has _ompi-server' {
    assert "$src/_ompi-server" is_file
}

@test 'src has _omxregister-bellagio' {
    assert "$src/_omxregister-bellagio" is_file
}

@test 'src has _onboard' {
    assert "$src/_onboard" is_file
}

@test 'src has _onboard-settings' {
    assert "$src/_onboard-settings" is_file
}

@test 'src has _onesixtyone' {
    assert "$src/_onesixtyone" is_file
}

@test 'src has _onig-config' {
    assert "$src/_onig-config" is_file
}

@test 'src has _onioncircuits' {
    assert "$src/_onioncircuits" is_file
}

@test 'src has _onionshare' {
    assert "$src/_onionshare" is_file
}

@test 'src has _onsgmls' {
    assert "$src/_onsgmls" is_file
}

@test 'src has _oobtest' {
    assert "$src/_oobtest" is_file
}

@test 'src has _oocalc' {
    assert "$src/_oocalc" is_file
}

@test 'src has _ooffice' {
    assert "$src/_ooffice" is_file
}

@test 'src has _ooimpress' {
    assert "$src/_ooimpress" is_file
}

@test 'src has _oomctl' {
    assert "$src/_oomctl" is_file
}

@test 'src has _ooviewdoc' {
    assert "$src/_ooviewdoc" is_file
}

@test 'src has _oowriter' {
    assert "$src/_oowriter" is_file
}

@test 'src has _ooxml2doc' {
    assert "$src/_ooxml2doc" is_file
}

@test 'src has _ooxml2odt' {
    assert "$src/_ooxml2odt" is_file
}

@test 'src has _ooxml2pdf' {
    assert "$src/_ooxml2pdf" is_file
}

@test 'src has _op-check-perfevents' {
    assert "$src/_op-check-perfevents" is_file
}

@test 'src has _opannotate' {
    assert "$src/_opannotate" is_file
}

@test 'src has _oparchive' {
    assert "$src/_oparchive" is_file
}

@test 'src has _opcontrol' {
    assert "$src/_opcontrol" is_file
}

@test 'src has _openbox' {
    assert "$src/_openbox" is_file
}

@test 'src has _openbox-lxde' {
    assert "$src/_openbox-lxde" is_file
}

@test 'src has _openbox-lxde-pi' {
    assert "$src/_openbox-lxde-pi" is_file
}

@test 'src has _openbsd_softraid2john' {
    assert "$src/_openbsd_softraid2john" is_file
}

@test 'src has _openconnect' {
    assert "$src/_openconnect" is_file
}

@test 'src has _openfortivpn' {
    assert "$src/_openfortivpn" is_file
}

@test 'src has _openioc_10_to_11' {
    assert "$src/_openioc_10_to_11" is_file
}

@test 'src has _openipmi_eventd' {
    assert "$src/_openipmi_eventd" is_file
}

@test 'src has _openipmicmd' {
    assert "$src/_openipmicmd" is_file
}

@test 'src has _openipmish' {
    assert "$src/_openipmish" is_file
}

@test 'src has _openoffice.org' {
    assert "$src/_openoffice.org" is_file
}

@test 'src has _openpgp-tool' {
    assert "$src/_openpgp-tool" is_file
}

@test 'src has _openrc' {
    assert "$src/_openrc" is_file
}

@test 'src has _openrc-shutdown' {
    assert "$src/_openrc-shutdown" is_file
}

@test 'src has _opensc-asn1' {
    assert "$src/_opensc-asn1" is_file
}

@test 'src has _opensc-explorer' {
    assert "$src/_opensc-explorer" is_file
}

@test 'src has _opensc-notify' {
    assert "$src/_opensc-notify" is_file
}

@test 'src has _opensc-tool' {
    assert "$src/_opensc-tool" is_file
}

@test 'src has _opensnoop' {
    assert "$src/_opensnoop" is_file
}

@test 'src has _openssl2john' {
    assert "$src/_openssl2john" is_file
}

@test 'src has _openvas-manage-certs' {
    assert "$src/_openvas-manage-certs" is_file
}

@test 'src has _openvas-migrate-to-postgres' {
    assert "$src/_openvas-migrate-to-postgres" is_file
}

@test 'src has _openvasmd' {
    assert "$src/_openvasmd" is_file
}

@test 'src has _openvasmd-sqlite' {
    assert "$src/_openvasmd-sqlite" is_file
}

@test 'src has _openvassd' {
    assert "$src/_openvassd" is_file
}

@test 'src has _openvpn' {
    assert "$src/_openvpn" is_file
}

@test 'src has _openvt' {
    assert "$src/_openvt" is_file
}

@test 'src has _opgprof' {
    assert "$src/_opgprof" is_file
}

@test 'src has _ophcrack' {
    assert "$src/_ophcrack" is_file
}

@test 'src has _ophcrack-cli' {
    assert "$src/_ophcrack-cli" is_file
}

@test 'src has _ophelp' {
    assert "$src/_ophelp" is_file
}

@test 'src has _opimport' {
    assert "$src/_opimport" is_file
}

@test 'src has _opj_compress' {
    assert "$src/_opj_compress" is_file
}

@test 'src has _opj_decompress' {
    assert "$src/_opj_decompress" is_file
}

@test 'src has _opj_dump' {
    assert "$src/_opj_dump" is_file
}

@test 'src has _opl2ofm' {
    assert "$src/_opl2ofm" is_file
}

@test 'src has _opldecode' {
    assert "$src/_opldecode" is_file
}

@test 'src has _opreport' {
    assert "$src/_opreport" is_file
}

@test 'src has _oprofiled' {
    assert "$src/_oprofiled" is_file
}

@test 'src has _opt' {
    assert "$src/_opt" is_file
}

@test 'src has _opt-13' {
    assert "$src/_opt-13" is_file
}

@test 'src has _opt-16' {
    assert "$src/_opt-16" is_file
}

@test 'src has _opt-17' {
    assert "$src/_opt-17" is_file
}

@test 'src has _opt-19' {
    assert "$src/_opt-19" is_file
}

@test 'src has _opt-4.0' {
    assert "$src/_opt-4.0" is_file
}

@test 'src has _opt-6.0' {
    assert "$src/_opt-6.0" is_file
}

@test 'src has _opt-7' {
    assert "$src/_opt-7" is_file
}

@test 'src has _opt-8' {
    assert "$src/_opt-8" is_file
}

@test 'src has _opt-9' {
    assert "$src/_opt-9" is_file
}

@test 'src has _opt12' {
    assert "$src/_opt12" is_file
}

@test 'src has _opt60' {
    assert "$src/_opt60" is_file
}

@test 'src has _optex' {
    assert "$src/_optex" is_file
}

@test 'src has _optexcount' {
    assert "$src/_optexcount" is_file
}

@test 'src has _optscript' {
    assert "$src/_optscript" is_file
}

@test 'src has _orbd' {
    assert "$src/_orbd" is_file
}

@test 'src has _orbit-idl-2' {
    assert "$src/_orbit-idl-2" is_file
}

@test 'src has _orbit2-config' {
    assert "$src/_orbit2-config" is_file
}

@test 'src has _orc-bugreport' {
    assert "$src/_orc-bugreport" is_file
}

@test 'src has _orca' {
    assert "$src/_orca" is_file
}

@test 'src has _orcc' {
    assert "$src/_orcc" is_file
}

@test 'src has _orcus-csv' {
    assert "$src/_orcus-csv" is_file
}

@test 'src has _orcus-gnumeric' {
    assert "$src/_orcus-gnumeric" is_file
}

@test 'src has _orcus-json' {
    assert "$src/_orcus-json" is_file
}

@test 'src has _orcus-ods' {
    assert "$src/_orcus-ods" is_file
}

@test 'src has _orcus-xls-xml' {
    assert "$src/_orcus-xls-xml" is_file
}

@test 'src has _orcus-xlsx' {
    assert "$src/_orcus-xlsx" is_file
}

@test 'src has _orcus-xml' {
    assert "$src/_orcus-xml" is_file
}

@test 'src has _orcus-yaml' {
    assert "$src/_orcus-yaml" is_file
}

@test 'src has _orte-clean' {
    assert "$src/_orte-clean" is_file
}

@test 'src has _orte-server' {
    assert "$src/_orte-server" is_file
}

@test 'src has _ortecc' {
    assert "$src/_ortecc" is_file
}

@test 'src has _orted' {
    assert "$src/_orted" is_file
}

@test 'src has _orterun' {
    assert "$src/_orterun" is_file
}

@test 'src has _osage' {
    assert "$src/_osage" is_file
}

@test 'src has _oscanner' {
    assert "$src/_oscanner" is_file
}

@test 'src has _osd_login' {
    assert "$src/_osd_login" is_file
}

@test 'src has _osgmlnorm' {
    assert "$src/_osgmlnorm" is_file
}

@test 'src has _osinfo-db-export' {
    assert "$src/_osinfo-db-export" is_file
}

@test 'src has _osinfo-db-import' {
    assert "$src/_osinfo-db-import" is_file
}

@test 'src has _osinfo-db-path' {
    assert "$src/_osinfo-db-path" is_file
}

@test 'src has _osinfo-db-validate' {
    assert "$src/_osinfo-db-validate" is_file
}

@test 'src has _osinfo-detect' {
    assert "$src/_osinfo-detect" is_file
}

@test 'src has _osinfo-install-script' {
    assert "$src/_osinfo-install-script" is_file
}

@test 'src has _osinfo-query' {
    assert "$src/_osinfo-query" is_file
}

@test 'src has _osirrox' {
    assert "$src/_osirrox" is_file
}

@test 'src has _osmocom_spectrum_sense' {
    assert "$src/_osmocom_spectrum_sense" is_file
}

@test 'src has _ospam' {
    assert "$src/_ospam" is_file
}

@test 'src has _ospcat' {
    assert "$src/_ospcat" is_file
}

@test 'src has _ospent' {
    assert "$src/_ospent" is_file
}

@test 'src has _osslsigncode' {
    assert "$src/_osslsigncode" is_file
}

@test 'src has _ostree' {
    assert "$src/_ostree" is_file
}

@test 'src has _osx' {
    assert "$src/_osx" is_file
}

@test 'src has _otangle' {
    assert "$src/_otangle" is_file
}

@test 'src has _otctl' {
    assert "$src/_otctl" is_file
}

@test 'src has _otfinfo' {
    assert "$src/_otfinfo" is_file
}

@test 'src has _otftotfm' {
    assert "$src/_otftotfm" is_file
}

@test 'src has _otool' {
    assert "$src/_otool" is_file
}

@test 'src has _otool-classic' {
    assert "$src/_otool-classic" is_file
}

@test 'src has _out123' {
    assert "$src/_out123" is_file
}

@test 'src has _outguess' {
    assert "$src/_outguess" is_file
}

@test 'src has _outguess-extract' {
    assert "$src/_outguess-extract" is_file
}

@test 'src has _over' {
    assert "$src/_over" is_file
}

@test 'src has _ovf2ovp' {
    assert "$src/_ovf2ovp" is_file
}

@test 'src has _ovftool' {
    assert "$src/_ovftool" is_file
}

@test 'src has _ovp2ovf' {
    assert "$src/_ovp2ovf" is_file
}

@test 'src has _ownership' {
    assert "$src/_ownership" is_file
}

@test 'src has _p0f' {
    assert "$src/_p0f" is_file
}

@test 'src has _p11tool' {
    assert "$src/_p11tool" is_file
}

@test 'src has _p7content' {
    assert "$src/_p7content" is_file
}

@test 'src has _p7env' {
    assert "$src/_p7env" is_file
}

@test 'src has _p7sign' {
    assert "$src/_p7sign" is_file
}

@test 'src has _p7verify' {
    assert "$src/_p7verify" is_file
}

@test 'src has _p7zip' {
    assert "$src/_p7zip" is_file
}

@test 'src has _pacat' {
    assert "$src/_pacat" is_file
}

@test 'src has _paccache' {
    assert "$src/_paccache" is_file
}

@test 'src has _pack200' {
    assert "$src/_pack200" is_file
}

@test 'src has _packetbeat' {
    assert "$src/_packetbeat" is_file
}

@test 'src has _packetforge-ng' {
    assert "$src/_packetforge-ng" is_file
}

@test 'src has _pacman-conf' {
    assert "$src/_pacman-conf" is_file
}

@test 'src has _pacman-db-upgrade' {
    assert "$src/_pacman-db-upgrade" is_file
}

@test 'src has _pacmd' {
    assert "$src/_pacmd" is_file
}

@test 'src has _pacote' {
    assert "$src/_pacote" is_file
}

@test 'src has _pacscripts' {
    assert "$src/_pacscripts" is_file
}

@test 'src has _pacsearch' {
    assert "$src/_pacsearch" is_file
}

@test 'src has _pacsort' {
    assert "$src/_pacsort" is_file
}

@test 'src has _pactl' {
    assert "$src/_pactl" is_file
}

@test 'src has _pactree' {
    assert "$src/_pactree" is_file
}

@test 'src has _padbuster' {
    assert "$src/_padbuster" is_file
}

@test 'src has _padlock2john' {
    assert "$src/_padlock2john" is_file
}

@test 'src has _padsp' {
    assert "$src/_padsp" is_file
}

@test 'src has _padsp-32' {
    assert "$src/_padsp-32" is_file
}

@test 'src has _page' {
    assert "$src/_page" is_file
}

@test 'src has _page_brute-BETA.py' {
    assert "$src/_page_brute-BETA.py" is_file
}

@test 'src has _pagelayoutapi' {
    assert "$src/_pagelayoutapi" is_file
}

@test 'src has _pager' {
    assert "$src/_pager" is_file
}

@test 'src has _pages2html' {
    assert "$src/_pages2html" is_file
}

@test 'src has _pages2text' {
    assert "$src/_pages2text" is_file
}

@test 'src has _pal2rgb' {
    assert "$src/_pal2rgb" is_file
}

@test 'src has _pam-config' {
    assert "$src/_pam-config" is_file
}

@test 'src has _pam_tally' {
    assert "$src/_pam_tally" is_file
}

@test 'src has _pam_tally2' {
    assert "$src/_pam_tally2" is_file
}

@test 'src has _pamac-tray' {
    assert "$src/_pamac-tray" is_file
}

@test 'src has _pamac-tray-appindicator' {
    assert "$src/_pamac-tray-appindicator" is_file
}

@test 'src has _pamaltsat' {
    assert "$src/_pamaltsat" is_file
}

@test 'src has _pambrighten' {
    assert "$src/_pambrighten" is_file
}

@test 'src has _pamcat' {
    assert "$src/_pamcat" is_file
}

@test 'src has _pamenlarge' {
    assert "$src/_pamenlarge" is_file
}

@test 'src has _pamfind' {
    assert "$src/_pamfind" is_file
}

@test 'src has _pamgetcolor' {
    assert "$src/_pamgetcolor" is_file
}

@test 'src has _pamhomography' {
    assert "$src/_pamhomography" is_file
}

@test 'src has _pamhue' {
    assert "$src/_pamhue" is_file
}

@test 'src has _pamlevels' {
    assert "$src/_pamlevels" is_file
}

@test 'src has _pammixmulti' {
    assert "$src/_pammixmulti" is_file
}

@test 'src has _pamon' {
    assert "$src/_pamon" is_file
}

@test 'src has _pamphletangler' {
    assert "$src/_pamphletangler" is_file
}

@test 'src has _pamrestack' {
    assert "$src/_pamrestack" is_file
}

@test 'src has _pamshuffle' {
    assert "$src/_pamshuffle" is_file
}

@test 'src has _pamsplit' {
    assert "$src/_pamsplit" is_file
}

@test 'src has _pamstretch-gen' {
    assert "$src/_pamstretch-gen" is_file
}

@test 'src has _pamtable' {
    assert "$src/_pamtable" is_file
}

@test 'src has _pamtohdiff' {
    assert "$src/_pamtohdiff" is_file
}

@test 'src has _pamtris' {
    assert "$src/_pamtris" is_file
}

@test 'src has _panelctl' {
    assert "$src/_panelctl" is_file
}

@test 'src has _pango-list' {
    assert "$src/_pango-list" is_file
}

@test 'src has _pango-querymodules-64' {
    assert "$src/_pango-querymodules-64" is_file
}

@test 'src has _pango-segmentation' {
    assert "$src/_pango-segmentation" is_file
}

@test 'src has _pango-view' {
    assert "$src/_pango-view" is_file
}

@test 'src has _pap' {
    assert "$src/_pap" is_file
}

@test 'src has _paper' {
    assert "$src/_paper" is_file
}

@test 'src has _paperconfig' {
    assert "$src/_paperconfig" is_file
}

@test 'src has _paplay' {
    assert "$src/_paplay" is_file
}

@test 'src has _paps' {
    assert "$src/_paps" is_file
}

@test 'src has _papstatus' {
    assert "$src/_papstatus" is_file
}

@test 'src has _parallel' {
    assert "$src/_parallel" is_file
}

@test 'src has _parallel-nuke' {
    assert "$src/_parallel-nuke" is_file
}

@test 'src has _parallel-rsync' {
    assert "$src/_parallel-rsync" is_file
}

@test 'src has _parallel-scp' {
    assert "$src/_parallel-scp" is_file
}

@test 'src has _parallel-slurp' {
    assert "$src/_parallel-slurp" is_file
}

@test 'src has _parallel-ssh' {
    assert "$src/_parallel-ssh" is_file
}

@test 'src has _parec' {
    assert "$src/_parec" is_file
}

@test 'src has _parecord' {
    assert "$src/_parecord" is_file
}

@test 'src has _parole' {
    assert "$src/_parole" is_file
}

@test 'src has _parse-dashboard' {
    assert "$src/_parse-dashboard" is_file
}

@test 'src has _parse-edid' {
    assert "$src/_parse-edid" is_file
}

@test 'src has _parse.f2fs' {
    assert "$src/_parse.f2fs" is_file
}

@test 'src has _parse.pl' {
    assert "$src/_parse.pl" is_file
}

@test 'src has _parsechangelog' {
    assert "$src/_parsechangelog" is_file
}

@test 'src has _parseie.pl' {
    assert "$src/_parseie.pl" is_file
}

@test 'src has _parsero' {
    assert "$src/_parsero" is_file
}

@test 'src has _parseusn.py' {
    assert "$src/_parseusn.py" is_file
}

@test 'src has _partprobe' {
    assert "$src/_partprobe" is_file
}

@test 'src has _partx' {
    assert "$src/_partx" is_file
}

@test 'src has _pas2fpm' {
    assert "$src/_pas2fpm" is_file
}

@test 'src has _pas2js' {
    assert "$src/_pas2js" is_file
}

@test 'src has _pas2ut' {
    assert "$src/_pas2ut" is_file
}

@test 'src has _pasco' {
    assert "$src/_pasco" is_file
}

@test 'src has _passim' {
    assert "$src/_passim" is_file
}

@test 'src has _passwd' {
    assert "$src/_passwd" is_file
}

@test 'src has _pasta' {
    assert "$src/_pasta" is_file
}

@test 'src has _paster' {
    assert "$src/_paster" is_file
}

@test 'src has _pasteurize' {
    assert "$src/_pasteurize" is_file
}

@test 'src has _pasuspender' {
    assert "$src/_pasuspender" is_file
}

@test 'src has _patchwork' {
    assert "$src/_patchwork" is_file
}

@test 'src has _patgen' {
    assert "$src/_patgen" is_file
}

@test 'src has _pathchk' {
    assert "$src/_pathchk" is_file
}

@test 'src has _pathod' {
    assert "$src/_pathod" is_file
}

@test 'src has _pathopens.d' {
    assert "$src/_pathopens.d" is_file
}

@test 'src has _pathplot' {
    assert "$src/_pathplot" is_file
}

@test 'src has _pattrs' {
    assert "$src/_pattrs" is_file
}

@test 'src has _pavucontrol' {
    assert "$src/_pavucontrol" is_file
}

@test 'src has _pax11publish' {
    assert "$src/_pax11publish" is_file
}

@test 'src has _pbibtex' {
    assert "$src/_pbibtex" is_file
}

@test 'src has _pbm2ppa' {
    assert "$src/_pbm2ppa" is_file
}

@test 'src has _pbmnoise' {
    assert "$src/_pbmnoise" is_file
}

@test 'src has _pbmtocis' {
    assert "$src/_pbmtocis" is_file
}

@test 'src has _pbmtojbg' {
    assert "$src/_pbmtojbg" is_file
}

@test 'src has _pbmtojbg85' {
    assert "$src/_pbmtojbg85" is_file
}

@test 'src has _pbmtolps' {
    assert "$src/_pbmtolps" is_file
}

@test 'src has _pbmtomda' {
    assert "$src/_pbmtomda" is_file
}

@test 'src has _pbmtonokia' {
    assert "$src/_pbmtonokia" is_file
}

@test 'src has _pbmtopk' {
    assert "$src/_pbmtopk" is_file
}

@test 'src has _pbmtoppa' {
    assert "$src/_pbmtoppa" is_file
}

@test 'src has _pbr' {
    assert "$src/_pbr" is_file
}

@test 'src has _pcc' {
    assert "$src/_pcc" is_file
}

@test 'src has _pcdindex' {
    assert "$src/_pcdindex" is_file
}

@test 'src has _pcdovtoppm' {
    assert "$src/_pcdovtoppm" is_file
}

@test 'src has _pchrt' {
    assert "$src/_pchrt" is_file
}

@test 'src has _pcilmr' {
    assert "$src/_pcilmr" is_file
}

@test 'src has _pcp' {
    assert "$src/_pcp" is_file
}

@test 'src has _pcp2openmetrics' {
    assert "$src/_pcp2openmetrics" is_file
}

@test 'src has _pcprofiledump' {
    assert "$src/_pcprofiledump" is_file
}

@test 'src has _pcre2grep' {
    assert "$src/_pcre2grep" is_file
}

@test 'src has _pcre2test' {
    assert "$src/_pcre2test" is_file
}

@test 'src has _pcreate' {
    assert "$src/_pcreate" is_file
}

@test 'src has _pcregrep' {
    assert "$src/_pcregrep" is_file
}

@test 'src has _pcretest' {
    assert "$src/_pcretest" is_file
}

@test 'src has _pcsc_scan' {
    assert "$src/_pcsc_scan" is_file
}

@test 'src has _pcscd' {
    assert "$src/_pcscd" is_file
}

@test 'src has _pdb3' {
    assert "$src/_pdb3" is_file
}

@test 'src has _pdb3.10' {
    assert "$src/_pdb3.10" is_file
}

@test 'src has _pdb3.5' {
    assert "$src/_pdb3.5" is_file
}

@test 'src has _pdb3.6' {
    assert "$src/_pdb3.6" is_file
}

@test 'src has _pdb3.7' {
    assert "$src/_pdb3.7" is_file
}

@test 'src has _pdb3.8' {
    assert "$src/_pdb3.8" is_file
}

@test 'src has _pdbedit' {
    assert "$src/_pdbedit" is_file
}

@test 'src has _pdf-parser' {
    assert "$src/_pdf-parser" is_file
}

@test 'src has _pdf-parser.py' {
    assert "$src/_pdf-parser.py" is_file
}

@test 'src has _pdf-slatex' {
    assert "$src/_pdf-slatex" is_file
}

@test 'src has _pdf180' {
    assert "$src/_pdf180" is_file
}

@test 'src has _pdf270' {
    assert "$src/_pdf270" is_file
}

@test 'src has _pdf90' {
    assert "$src/_pdf90" is_file
}

@test 'src has _pdfannotextractor' {
    assert "$src/_pdfannotextractor" is_file
}

@test 'src has _pdfatfi' {
    assert "$src/_pdfatfi" is_file
}

@test 'src has _pdfattach' {
    assert "$src/_pdfattach" is_file
}

@test 'src has _pdfbook' {
    assert "$src/_pdfbook" is_file
}

@test 'src has _pdfbook2' {
    assert "$src/_pdfbook2" is_file
}

@test 'src has _pdfcrack' {
    assert "$src/_pdfcrack" is_file
}

@test 'src has _pdfcrop' {
    assert "$src/_pdfcrop" is_file
}

@test 'src has _pdfcslatex' {
    assert "$src/_pdfcslatex" is_file
}

@test 'src has _pdfcsplain' {
    assert "$src/_pdfcsplain" is_file
}

@test 'src has _pdfdetach' {
    assert "$src/_pdfdetach" is_file
}

@test 'src has _pdfetex' {
    assert "$src/_pdfetex" is_file
}

@test 'src has _pdfflip' {
    assert "$src/_pdfflip" is_file
}

@test 'src has _pdfid' {
    assert "$src/_pdfid" is_file
}

@test 'src has _pdfid.py' {
    assert "$src/_pdfid.py" is_file
}

@test 'src has _pdfjam' {
    assert "$src/_pdfjam" is_file
}

@test 'src has _pdfjam-slides3up' {
    assert "$src/_pdfjam-slides3up" is_file
}

@test 'src has _pdfjam-slides6up' {
    assert "$src/_pdfjam-slides6up" is_file
}

@test 'src has _pdfjoin' {
    assert "$src/_pdfjoin" is_file
}

@test 'src has _pdflatex-dev' {
    assert "$src/_pdflatex-dev" is_file
}

@test 'src has _pdflatexpicscale' {
    assert "$src/_pdflatexpicscale" is_file
}

@test 'src has _pdfmex' {
    assert "$src/_pdfmex" is_file
}

@test 'src has _pdfmom' {
    assert "$src/_pdfmom" is_file
}

@test 'src has _pdfnup' {
    assert "$src/_pdfnup" is_file
}

@test 'src has _pdfroff' {
    assert "$src/_pdfroff" is_file
}

@test 'src has _pdfseparate' {
    assert "$src/_pdfseparate" is_file
}

@test 'src has _pdfsig' {
    assert "$src/_pdfsig" is_file
}

@test 'src has _pdftex' {
    assert "$src/_pdftex" is_file
}

@test 'src has _pdftex-quiet' {
    assert "$src/_pdftex-quiet" is_file
}

@test 'src has _pdftexi2dvi' {
    assert "$src/_pdftexi2dvi" is_file
}

@test 'src has _pdftocairo' {
    assert "$src/_pdftocairo" is_file
}

@test 'src has _pdftohtml' {
    assert "$src/_pdftohtml" is_file
}

@test 'src has _pdftoppm' {
    assert "$src/_pdftoppm" is_file
}

@test 'src has _pdfunite' {
    assert "$src/_pdfunite" is_file
}

@test 'src has _pdfxmltex' {
    assert "$src/_pdfxmltex" is_file
}

@test 'src has _pdfxup' {
    assert "$src/_pdfxup" is_file
}

@test 'src has _pdgmail' {
    assert "$src/_pdgmail" is_file
}

@test 'src has _pdiff' {
    assert "$src/_pdiff" is_file
}

@test 'src has _pdisk' {
    assert "$src/_pdisk" is_file
}

@test 'src has _pdistreport' {
    assert "$src/_pdistreport" is_file
}

@test 'src has _pdvitomp' {
    assert "$src/_pdvitomp" is_file
}

@test 'src has _pdvitype' {
    assert "$src/_pdvitype" is_file
}

@test 'src has _peas-demo' {
    assert "$src/_peas-demo" is_file
}

@test 'src has _pecarve.py' {
    assert "$src/_pecarve.py" is_file
}

@test 'src has _peco' {
    assert "$src/_peco" is_file
}

@test 'src has _pedis' {
    assert "$src/_pedis" is_file
}

@test 'src has _peekfd' {
    assert "$src/_peekfd" is_file
}

@test 'src has _peepdf' {
    assert "$src/_peepdf" is_file
}

@test 'src has _pef-config' {
    assert "$src/_pef-config" is_file
}

@test 'src has _pehash' {
    assert "$src/_pehash" is_file
}

@test 'src has _peldd' {
    assert "$src/_peldd" is_file
}

@test 'src has _pep8' {
    assert "$src/_pep8" is_file
}

@test 'src has _pepack' {
    assert "$src/_pepack" is_file
}

@test 'src has _percol' {
    assert "$src/_percol" is_file
}

@test 'src has _peres' {
    assert "$src/_peres" is_file
}

@test 'src has _perfquery' {
    assert "$src/_perfquery" is_file
}

@test 'src has _perl5' {
    assert "$src/_perl5" is_file
}

@test 'src has _perl5.16.3' {
    assert "$src/_perl5.16.3" is_file
}

@test 'src has _perl5.18' {
    assert "$src/_perl5.18" is_file
}

@test 'src has _perl5.22-x86_64-linux-gnu' {
    assert "$src/_perl5.22-x86_64-linux-gnu" is_file
}

@test 'src has _perl5.22.1' {
    assert "$src/_perl5.22.1" is_file
}

@test 'src has _perl5.24-x86_64-linux-gnu' {
    assert "$src/_perl5.24-x86_64-linux-gnu" is_file
}

@test 'src has _perl5.24.1' {
    assert "$src/_perl5.24.1" is_file
}

@test 'src has _perl5.26-x86_64-linux-gnu' {
    assert "$src/_perl5.26-x86_64-linux-gnu" is_file
}

@test 'src has _perl5.26.1' {
    assert "$src/_perl5.26.1" is_file
}

@test 'src has _perl5.26.2' {
    assert "$src/_perl5.26.2" is_file
}

@test 'src has _perl5.26.3' {
    assert "$src/_perl5.26.3" is_file
}

@test 'src has _perl5.28' {
    assert "$src/_perl5.28" is_file
}

@test 'src has _perl5.28-aarch64-linux-gnu' {
    assert "$src/_perl5.28-aarch64-linux-gnu" is_file
}

@test 'src has _perl5.28-x86_64-linux-gnu' {
    assert "$src/_perl5.28-x86_64-linux-gnu" is_file
}

@test 'src has _perl5.28.0' {
    assert "$src/_perl5.28.0" is_file
}

@test 'src has _perl5.28.1' {
    assert "$src/_perl5.28.1" is_file
}

@test 'src has _perl5.30' {
    assert "$src/_perl5.30" is_file
}

@test 'src has _perl5.30-aarch64-linux-gnu' {
    assert "$src/_perl5.30-aarch64-linux-gnu" is_file
}

@test 'src has _perl5.30-x86_64-linux-gnu' {
    assert "$src/_perl5.30-x86_64-linux-gnu" is_file
}

@test 'src has _perl5.30.0' {
    assert "$src/_perl5.30.0" is_file
}

@test 'src has _perl5.32-aarch64-linux-gnu' {
    assert "$src/_perl5.32-aarch64-linux-gnu" is_file
}

@test 'src has _perl5.32.1' {
    assert "$src/_perl5.32.1" is_file
}

@test 'src has _perl5.34' {
    assert "$src/_perl5.34" is_file
}

@test 'src has _perl5.34.0' {
    assert "$src/_perl5.34.0" is_file
}

@test 'src has _perl5.36-aarch64-linux-gnu' {
    assert "$src/_perl5.36-aarch64-linux-gnu" is_file
}

@test 'src has _perl5.36.0' {
    assert "$src/_perl5.36.0" is_file
}

@test 'src has _perl5.36.1' {
    assert "$src/_perl5.36.1" is_file
}

@test 'src has _perl5.38-aarch64-linux-gnu' {
    assert "$src/_perl5.38-aarch64-linux-gnu" is_file
}

@test 'src has _perl5.38.2' {
    assert "$src/_perl5.38.2" is_file
}

@test 'src has _perl5.40-aarch64-linux-gnu' {
    assert "$src/_perl5.40-aarch64-linux-gnu" is_file
}

@test 'src has _perl5.40.0' {
    assert "$src/_perl5.40.0" is_file
}

@test 'src has _perl6' {
    assert "$src/_perl6" is_file
}

@test 'src has _perl6-debug' {
    assert "$src/_perl6-debug" is_file
}

@test 'src has _perl6-debug-m' {
    assert "$src/_perl6-debug-m" is_file
}

@test 'src has _perl6-m' {
    assert "$src/_perl6-m" is_file
}

@test 'src has _perlbug' {
    assert "$src/_perlbug" is_file
}

@test 'src has _perlbug5.18' {
    assert "$src/_perlbug5.18" is_file
}

@test 'src has _perlbug5.26.3' {
    assert "$src/_perlbug5.26.3" is_file
}

@test 'src has _perlbug5.28' {
    assert "$src/_perlbug5.28" is_file
}

@test 'src has _perlbug5.30' {
    assert "$src/_perlbug5.30" is_file
}

@test 'src has _perlbug5.34' {
    assert "$src/_perlbug5.34" is_file
}

@test 'src has _perldoc' {
    assert "$src/_perldoc" is_file
}

@test 'src has _perldoc5.18' {
    assert "$src/_perldoc5.18" is_file
}

@test 'src has _perldoc5.28' {
    assert "$src/_perldoc5.28" is_file
}

@test 'src has _perldoc5.30' {
    assert "$src/_perldoc5.30" is_file
}

@test 'src has _perldoc5.34' {
    assert "$src/_perldoc5.34" is_file
}

@test 'src has _perlivp' {
    assert "$src/_perlivp" is_file
}

@test 'src has _perlivp5.18' {
    assert "$src/_perlivp5.18" is_file
}

@test 'src has _perlivp5.26.3' {
    assert "$src/_perlivp5.26.3" is_file
}

@test 'src has _perlivp5.30' {
    assert "$src/_perlivp5.30" is_file
}

@test 'src has _perlivp5.34' {
    assert "$src/_perlivp5.34" is_file
}

@test 'src has _perltex' {
    assert "$src/_perltex" is_file
}

@test 'src has _perlthanks' {
    assert "$src/_perlthanks" is_file
}

@test 'src has _perlthanks5.18' {
    assert "$src/_perlthanks5.18" is_file
}

@test 'src has _perlthanks5.30' {
    assert "$src/_perlthanks5.30" is_file
}

@test 'src has _perlthanks5.34' {
    assert "$src/_perlthanks5.34" is_file
}

@test 'src has _perltidy' {
    assert "$src/_perltidy" is_file
}

@test 'src has _permview' {
    assert "$src/_permview" is_file
}

@test 'src has _perror' {
    assert "$src/_perror" is_file
}

@test 'src has _pescan' {
    assert "$src/_pescan" is_file
}

@test 'src has _pesec' {
    assert "$src/_pesec" is_file
}

@test 'src has _pestr' {
    assert "$src/_pestr" is_file
}

@test 'src has _pethtool' {
    assert "$src/_pethtool" is_file
}

@test 'src has _pevent' {
    assert "$src/_pevent" is_file
}

@test 'src has _pfarrei' {
    assert "$src/_pfarrei" is_file
}

@test 'src has _pfbtopfa' {
    assert "$src/_pfbtopfa" is_file
}

@test 'src has _pftp' {
    assert "$src/_pftp" is_file
}

@test 'src has _pg' {
    assert "$src/_pg" is_file
}

@test 'src has _pg_archivecleanup' {
    assert "$src/_pg_archivecleanup" is_file
}

@test 'src has _pg_basebackup' {
    assert "$src/_pg_basebackup" is_file
}

@test 'src has _pg_buildext' {
    assert "$src/_pg_buildext" is_file
}

@test 'src has _pg_checksums' {
    assert "$src/_pg_checksums" is_file
}

@test 'src has _pg_config' {
    assert "$src/_pg_config" is_file
}

@test 'src has _pg_config.libpq-dev' {
    assert "$src/_pg_config.libpq-dev" is_file
}

@test 'src has _pg_conftool' {
    assert "$src/_pg_conftool" is_file
}

@test 'src has _pg_controldata' {
    assert "$src/_pg_controldata" is_file
}

@test 'src has _pg_createcluster' {
    assert "$src/_pg_createcluster" is_file
}

@test 'src has _pg_ctl' {
    assert "$src/_pg_ctl" is_file
}

@test 'src has _pg_dump' {
    assert "$src/_pg_dump" is_file
}

@test 'src has _pg_dumpall' {
    assert "$src/_pg_dumpall" is_file
}

@test 'src has _pg_isready' {
    assert "$src/_pg_isready" is_file
}

@test 'src has _pg_lsclusters' {
    assert "$src/_pg_lsclusters" is_file
}

@test 'src has _pg_receivewal' {
    assert "$src/_pg_receivewal" is_file
}

@test 'src has _pg_receivexlog' {
    assert "$src/_pg_receivexlog" is_file
}

@test 'src has _pg_recvlogical' {
    assert "$src/_pg_recvlogical" is_file
}

@test 'src has _pg_resetwal' {
    assert "$src/_pg_resetwal" is_file
}

@test 'src has _pg_restore' {
    assert "$src/_pg_restore" is_file
}

@test 'src has _pg_restorecluster' {
    assert "$src/_pg_restorecluster" is_file
}

@test 'src has _pg_rewind' {
    assert "$src/_pg_rewind" is_file
}

@test 'src has _pg_standby' {
    assert "$src/_pg_standby" is_file
}

@test 'src has _pg_top' {
    assert "$src/_pg_top" is_file
}

@test 'src has _pg_upgrade' {
    assert "$src/_pg_upgrade" is_file
}

@test 'src has _pg_upgradecluster' {
    assert "$src/_pg_upgradecluster" is_file
}

@test 'src has _pg_verify_checksums' {
    assert "$src/_pg_verify_checksums" is_file
}

@test 'src has _pg_versions' {
    assert "$src/_pg_versions" is_file
}

@test 'src has _pg_virtualenv' {
    assert "$src/_pg_virtualenv" is_file
}

@test 'src has _pg_waldump' {
    assert "$src/_pg_waldump" is_file
}

@test 'src has _pgawk' {
    assert "$src/_pgawk" is_file
}

@test 'src has _pgbench' {
    assert "$src/_pgbench" is_file
}

@test 'src has _pgcli' {
    assert "$src/_pgcli" is_file
}

@test 'src has _pgmtexture' {
    assert "$src/_pgmtexture" is_file
}

@test 'src has _pgmtoppm' {
    assert "$src/_pgmtoppm" is_file
}

@test 'src has _phantomjs' {
    assert "$src/_phantomjs" is_file
}

@test 'src has _phar.default' {
    assert "$src/_phar.default" is_file
}

@test 'src has _phar.phar' {
    assert "$src/_phar.phar" is_file
}

@test 'src has _phar.phar.default' {
    assert "$src/_phar.phar.default" is_file
}

@test 'src has _phar.phar7.4' {
    assert "$src/_phar.phar7.4" is_file
}

@test 'src has _phar.phar8.2' {
    assert "$src/_phar.phar8.2" is_file
}

@test 'src has _phar7.4' {
    assert "$src/_phar7.4" is_file
}

@test 'src has _phar7.4.phar' {
    assert "$src/_phar7.4.phar" is_file
}

@test 'src has _phar8.2' {
    assert "$src/_phar8.2" is_file
}

@test 'src has _phar8.2.phar' {
    assert "$src/_phar8.2.phar" is_file
}

@test 'src has _php' {
    assert "$src/_php" is_file
}

@test 'src has _php-cgi' {
    assert "$src/_php-cgi" is_file
}

@test 'src has _php-config' {
    assert "$src/_php-config" is_file
}

@test 'src has _php-fpm' {
    assert "$src/_php-fpm" is_file
}

@test 'src has _php.default' {
    assert "$src/_php.default" is_file
}

@test 'src has _php7.0' {
    assert "$src/_php7.0" is_file
}

@test 'src has _php7.2' {
    assert "$src/_php7.2" is_file
}

@test 'src has _php7.3' {
    assert "$src/_php7.3" is_file
}

@test 'src has _php7.4' {
    assert "$src/_php7.4" is_file
}

@test 'src has _php8.1' {
    assert "$src/_php8.1" is_file
}

@test 'src has _php8.2' {
    assert "$src/_php8.2" is_file
}

@test 'src has _phpunit' {
    assert "$src/_phpunit" is_file
}

@test 'src has _pic2tpic' {
    assert "$src/_pic2tpic" is_file
}

@test 'src has _pico' {
    assert "$src/_pico" is_file
}

@test 'src has _piconv' {
    assert "$src/_piconv" is_file
}

@test 'src has _piconv5.18' {
    assert "$src/_piconv5.18" is_file
}

@test 'src has _piconv5.26.3' {
    assert "$src/_piconv5.26.3" is_file
}

@test 'src has _piconv5.28' {
    assert "$src/_piconv5.28" is_file
}

@test 'src has _piconv5.30' {
    assert "$src/_piconv5.30" is_file
}

@test 'src has _piconv5.34' {
    assert "$src/_piconv5.34" is_file
}

@test 'src has _picture_finder.sh' {
    assert "$src/_picture_finder.sh" is_file
}

@test 'src has _pidpersec.d' {
    assert "$src/_pidpersec.d" is_file
}

@test 'src has _pidwait' {
    assert "$src/_pidwait" is_file
}

@test 'src has _pifconfig' {
    assert "$src/_pifconfig" is_file
}

@test 'src has _pigz' {
    assert "$src/_pigz" is_file
}

@test 'src has _pilfont' {
    assert "$src/_pilfont" is_file
}

@test 'src has _pilot' {
    assert "$src/_pilot" is_file
}

@test 'src has _pinentry' {
    assert "$src/_pinentry" is_file
}

@test 'src has _pinentry-curses' {
    assert "$src/_pinentry-curses" is_file
}

@test 'src has _pinentry-gnome3' {
    assert "$src/_pinentry-gnome3" is_file
}

@test 'src has _pinentry-gtk' {
    assert "$src/_pinentry-gtk" is_file
}

@test 'src has _pinentry-gtk-2' {
    assert "$src/_pinentry-gtk-2" is_file
}

@test 'src has _pinentry-mac' {
    assert "$src/_pinentry-mac" is_file
}

@test 'src has _pinentry-qt' {
    assert "$src/_pinentry-qt" is_file
}

@test 'src has _pinentry-tty' {
    assert "$src/_pinentry-tty" is_file
}

@test 'src has _pinentry-x11' {
    assert "$src/_pinentry-x11" is_file
}

@test 'src has _pinfo' {
    assert "$src/_pinfo" is_file
}

@test 'src has _ping4' {
    assert "$src/_ping4" is_file
}

@test 'src has _pip' {
    assert "$src/_pip" is_file
}

@test 'src has _pip-3' {
    assert "$src/_pip-3" is_file
}

@test 'src has _pip2.7' {
    assert "$src/_pip2.7" is_file
}

@test 'src has _pip3.10' {
    assert "$src/_pip3.10" is_file
}

@test 'src has _pip3.11' {
    assert "$src/_pip3.11" is_file
}

@test 'src has _pip3.12' {
    assert "$src/_pip3.12" is_file
}

@test 'src has _pip3.7' {
    assert "$src/_pip3.7" is_file
}

@test 'src has _pip3.8' {
    assert "$src/_pip3.8" is_file
}

@test 'src has _pipal' {
    assert "$src/_pipal" is_file
}

@test 'src has _pipes.sh' {
    assert "$src/_pipes.sh" is_file
}

@test 'src has _pipewire' {
    assert "$src/_pipewire" is_file
}

@test 'src has _pipewire-aes67' {
    assert "$src/_pipewire-aes67" is_file
}

@test 'src has _pipewire-avb' {
    assert "$src/_pipewire-avb" is_file
}

@test 'src has _pipewire-media-session' {
    assert "$src/_pipewire-media-session" is_file
}

@test 'src has _pipewire-pulse' {
    assert "$src/_pipewire-pulse" is_file
}

@test 'src has _pipewire-vulkan' {
    assert "$src/_pipewire-vulkan" is_file
}

@test 'src has _piv-tool' {
    assert "$src/_piv-tool" is_file
}

@test 'src has _pivot_root' {
    assert "$src/_pivot_root" is_file
}

@test 'src has _pix' {
    assert "$src/_pix" is_file
}

@test 'src has _pixeltool' {
    assert "$src/_pixeltool" is_file
}

@test 'src has _pixiewps' {
    assert "$src/_pixiewps" is_file
}

@test 'src has _pjtoppm' {
    assert "$src/_pjtoppm" is_file
}

@test 'src has _pk-example-frobnicate' {
    assert "$src/_pk-example-frobnicate" is_file
}

@test 'src has _pkaction' {
    assert "$src/_pkaction" is_file
}

@test 'src has _pkcheck' {
    assert "$src/_pkcheck" is_file
}

@test 'src has _pkcs11-register' {
    assert "$src/_pkcs11-register" is_file
}

@test 'src has _pkcs11-tool' {
    assert "$src/_pkcs11-tool" is_file
}

@test 'src has _pkcs15-crypt' {
    assert "$src/_pkcs15-crypt" is_file
}

@test 'src has _pkcs15-init' {
    assert "$src/_pkcs15-init" is_file
}

@test 'src has _pkcs15-tool' {
    assert "$src/_pkcs15-tool" is_file
}

@test 'src has _pkexec' {
    assert "$src/_pkexec" is_file
}

@test 'src has _pkfix' {
    assert "$src/_pkfix" is_file
}

@test 'src has _pkg2ng' {
    assert "$src/_pkg2ng" is_file
}

@test 'src has _pkgconf' {
    assert "$src/_pkgconf" is_file
}

@test 'src has _pkgdata' {
    assert "$src/_pkgdata" is_file
}

@test 'src has _pkgutil' {
    assert "$src/_pkgutil" is_file
}

@test 'src has _pkla-admin-identities' {
    assert "$src/_pkla-admin-identities" is_file
}

@test 'src has _pkla-check-authorization' {
    assert "$src/_pkla-check-authorization" is_file
}

@test 'src has _pkmon' {
    assert "$src/_pkmon" is_file
}

@test 'src has _pktdumper' {
    assert "$src/_pktdumper" is_file
}

@test 'src has _pktogf' {
    assert "$src/_pktogf" is_file
}

@test 'src has _pkttyagent' {
    assert "$src/_pkttyagent" is_file
}

@test 'src has _pktype' {
    assert "$src/_pktype" is_file
}

@test 'src has _pl2wam' {
    assert "$src/_pl2wam" is_file
}

@test 'src has _planner' {
    assert "$src/_planner" is_file
}

@test 'src has _plasma-remote-helper' {
    assert "$src/_plasma-remote-helper" is_file
}

@test 'src has _plasma_waitforname' {
    assert "$src/_plasma_waitforname" is_file
}

@test 'src has _plasmapkg' {
    assert "$src/_plasmapkg" is_file
}

@test 'src has _plasmapkg2' {
    assert "$src/_plasmapkg2" is_file
}

@test 'src has _platex' {
    assert "$src/_platex" is_file
}

@test 'src has _platex-dev' {
    assert "$src/_platex-dev" is_file
}

@test 'src has _platformio' {
    assert "$src/_platformio" is_file
}

@test 'src has _play' {
    assert "$src/_play" is_file
}

@test 'src has _plaympeg' {
    assert "$src/_plaympeg" is_file
}

@test 'src has _plecost' {
    assert "$src/_plecost" is_file
}

@test 'src has _plg-zsh-notify' {
    assert "$src/_plg-zsh-notify" is_file
}

@test 'src has _plistutil' {
    assert "$src/_plistutil" is_file
}

@test 'src has _plocate' {
    assert "$src/_plocate" is_file
}

@test 'src has _plocate-build' {
    assert "$src/_plocate-build" is_file
}

@test 'src has _plockstat' {
    assert "$src/_plockstat" is_file
}

@test 'src has _plog' {
    assert "$src/_plog" is_file
}

@test 'src has _plookup' {
    assert "$src/_plookup" is_file
}

@test 'src has _plotframes' {
    assert "$src/_plotframes" is_file
}

@test 'src has _plt-r5rs' {
    assert "$src/_plt-r5rs" is_file
}

@test 'src has _plt-web-server' {
    assert "$src/_plt-web-server" is_file
}

@test 'src has _pltotf' {
    assert "$src/_pltotf" is_file
}

@test 'src has _plugin_test' {
    assert "$src/_plugin_test" is_file
}

@test 'src has _pluginviewer' {
    assert "$src/_pluginviewer" is_file
}

@test 'src has _pluma' {
    assert "$src/_pluma" is_file
}

@test 'src has _plymouth' {
    assert "$src/_plymouth" is_file
}

@test 'src has _plymouth-set-default-theme' {
    assert "$src/_plymouth-set-default-theme" is_file
}

@test 'src has _plymouthd' {
    assert "$src/_plymouthd" is_file
}

@test 'src has _pmap' {
    assert "$src/_pmap" is_file
}

@test 'src has _pmatop' {
    assert "$src/_pmatop" is_file
}

@test 'src has _pmclient_fg' {
    assert "$src/_pmclient_fg" is_file
}

@test 'src has _pmcstat' {
    assert "$src/_pmcstat" is_file
}

@test 'src has _pmd2raw' {
    assert "$src/_pmd2raw" is_file
}

@test 'src has _pmd2svg' {
    assert "$src/_pmd2svg" is_file
}

@test 'src has _pmd2text' {
    assert "$src/_pmd2text" is_file
}

@test 'src has _pmdate' {
    assert "$src/_pmdate" is_file
}

@test 'src has _pmdiff' {
    assert "$src/_pmdiff" is_file
}

@test 'src has _pmevent' {
    assert "$src/_pmevent" is_file
}

@test 'src has _pmfind' {
    assert "$src/_pmfind" is_file
}

@test 'src has _pmieconf' {
    assert "$src/_pmieconf" is_file
}

@test 'src has _pmiectl' {
    assert "$src/_pmiectl" is_file
}

@test 'src has _pminfo' {
    assert "$src/_pminfo" is_file
}

@test 'src has _pmix_info' {
    assert "$src/_pmix_info" is_file
}

@test 'src has _pmixcc' {
    assert "$src/_pmixcc" is_file
}

@test 'src has _pmjson' {
    assert "$src/_pmjson" is_file
}

@test 'src has _pmlc' {
    assert "$src/_pmlc" is_file
}

@test 'src has _pmlogbasename' {
    assert "$src/_pmlogbasename" is_file
}

@test 'src has _pmlogcompress' {
    assert "$src/_pmlogcompress" is_file
}

@test 'src has _pmlogconf' {
    assert "$src/_pmlogconf" is_file
}

@test 'src has _pmlogctl' {
    assert "$src/_pmlogctl" is_file
}

@test 'src has _pmlogdump' {
    assert "$src/_pmlogdump" is_file
}

@test 'src has _pmlogextract' {
    assert "$src/_pmlogextract" is_file
}

@test 'src has _pmlogger' {
    assert "$src/_pmlogger" is_file
}

@test 'src has _pmlogmv' {
    assert "$src/_pmlogmv" is_file
}

@test 'src has _pmlogpaste' {
    assert "$src/_pmlogpaste" is_file
}

@test 'src has _pmlogredact' {
    assert "$src/_pmlogredact" is_file
}

@test 'src has _pmlogreduce' {
    assert "$src/_pmlogreduce" is_file
}

@test 'src has _pmlogrewrite' {
    assert "$src/_pmlogrewrite" is_file
}

@test 'src has _pmlogsize' {
    assert "$src/_pmlogsize" is_file
}

@test 'src has _pmpost' {
    assert "$src/_pmpost" is_file
}

@test 'src has _pmpython' {
    assert "$src/_pmpython" is_file
}

@test 'src has _pmrep' {
    assert "$src/_pmrep" is_file
}

@test 'src has _pmseries' {
    assert "$src/_pmseries" is_file
}

@test 'src has _pmtrace' {
    assert "$src/_pmtrace" is_file
}

@test 'src has _pn2pdf' {
    assert "$src/_pn2pdf" is_file
}

@test 'src has _png2pnm' {
    assert "$src/_png2pnm" is_file
}

@test 'src has _png2theora' {
    assert "$src/_png2theora" is_file
}

@test 'src has _png2yuv' {
    assert "$src/_png2yuv" is_file
}

@test 'src has _pngfix' {
    assert "$src/_pngfix" is_file
}

@test 'src has _pnm2png' {
    assert "$src/_pnm2png" is_file
}

@test 'src has _pnm2ppa' {
    assert "$src/_pnm2ppa" is_file
}

@test 'src has _pnmnlfilt' {
    assert "$src/_pnmnlfilt" is_file
}

@test 'src has _pnmquant' {
    assert "$src/_pnmquant" is_file
}

@test 'src has _pnmtofiasco' {
    assert "$src/_pnmtofiasco" is_file
}

@test 'src has _pnmtoy4m' {
    assert "$src/_pnmtoy4m" is_file
}

@test 'src has _pnpx' {
    assert "$src/_pnpx" is_file
}

@test 'src has _pnuke' {
    assert "$src/_pnuke" is_file
}

@test 'src has _pnuke-2.7' {
    assert "$src/_pnuke-2.7" is_file
}

@test 'src has _po2debconf' {
    assert "$src/_po2debconf" is_file
}

@test 'src has _pod2html' {
    assert "$src/_pod2html" is_file
}

@test 'src has _pod2html5.18' {
    assert "$src/_pod2html5.18" is_file
}

@test 'src has _pod2html5.28' {
    assert "$src/_pod2html5.28" is_file
}

@test 'src has _pod2html5.30' {
    assert "$src/_pod2html5.30" is_file
}

@test 'src has _pod2html5.34' {
    assert "$src/_pod2html5.34" is_file
}

@test 'src has _pod2man' {
    assert "$src/_pod2man" is_file
}

@test 'src has _pod2man5.18' {
    assert "$src/_pod2man5.18" is_file
}

@test 'src has _pod2man5.26.3' {
    assert "$src/_pod2man5.26.3" is_file
}

@test 'src has _pod2man5.28' {
    assert "$src/_pod2man5.28" is_file
}

@test 'src has _pod2man5.30' {
    assert "$src/_pod2man5.30" is_file
}

@test 'src has _pod2man5.34' {
    assert "$src/_pod2man5.34" is_file
}

@test 'src has _pod2readme' {
    assert "$src/_pod2readme" is_file
}

@test 'src has _pod2readme5.30' {
    assert "$src/_pod2readme5.30" is_file
}

@test 'src has _pod2readme5.34' {
    assert "$src/_pod2readme5.34" is_file
}

@test 'src has _pod2texi' {
    assert "$src/_pod2texi" is_file
}

@test 'src has _pod2text' {
    assert "$src/_pod2text" is_file
}

@test 'src has _pod2text5.18' {
    assert "$src/_pod2text5.18" is_file
}

@test 'src has _pod2text5.26.3' {
    assert "$src/_pod2text5.26.3" is_file
}

@test 'src has _pod2text5.28' {
    assert "$src/_pod2text5.28" is_file
}

@test 'src has _pod2text5.30' {
    assert "$src/_pod2text5.30" is_file
}

@test 'src has _pod2text5.34' {
    assert "$src/_pod2text5.34" is_file
}

@test 'src has _pod2usage' {
    assert "$src/_pod2usage" is_file
}

@test 'src has _pod2usage5.34' {
    assert "$src/_pod2usage5.34" is_file
}

@test 'src has _podchecker' {
    assert "$src/_podchecker" is_file
}

@test 'src has _podchecker5.26.3' {
    assert "$src/_podchecker5.26.3" is_file
}

@test 'src has _podchecker5.34' {
    assert "$src/_podchecker5.34" is_file
}

@test 'src has _podebconf-report-po' {
    assert "$src/_podebconf-report-po" is_file
}

@test 'src has _podman-remote' {
    assert "$src/_podman-remote" is_file
}

@test 'src has _podselect' {
    assert "$src/_podselect" is_file
}

@test 'src has _podselect5.26.3' {
    assert "$src/_podselect5.26.3" is_file
}

@test 'src has _poetry' {
    assert "$src/_poetry" is_file
}

@test 'src has _pokemonsay' {
    assert "$src/_pokemonsay" is_file
}

@test 'src has _pokemonthink' {
    assert "$src/_pokemonthink" is_file
}

@test 'src has _polar_channel_construction' {
    assert "$src/_polar_channel_construction" is_file
}

@test 'src has _polenum' {
    assert "$src/_polenum" is_file
}

@test 'src has _policygen' {
    assert "$src/_policygen" is_file
}

@test 'src has _polkit-auth' {
    assert "$src/_polkit-auth" is_file
}

@test 'src has _polkit-policy-file-validate' {
    assert "$src/_polkit-policy-file-validate" is_file
}

@test 'src has _poly' {
    assert "$src/_poly" is_file
}

@test 'src has _polyc' {
    assert "$src/_polyc" is_file
}

@test 'src has _polyimport' {
    assert "$src/_polyimport" is_file
}

@test 'src has _pompem' {
    assert "$src/_pompem" is_file
}

@test 'src has _pon.wvdial' {
    assert "$src/_pon.wvdial" is_file
}

@test 'src has _ponysay-tool' {
    assert "$src/_ponysay-tool" is_file
}

@test 'src has _ponythink' {
    assert "$src/_ponythink" is_file
}

@test 'src has _pooltype' {
    assert "$src/_pooltype" is_file
}

@test 'src has _pop3d' {
    assert "$src/_pop3d" is_file
}

@test 'src has _popauth' {
    assert "$src/_popauth" is_file
}

@test 'src has _portablectl' {
    assert "$src/_portablectl" is_file
}

@test 'src has _postfix' {
    assert "$src/_postfix" is_file
}

@test 'src has _postfix-add-filter' {
    assert "$src/_postfix-add-filter" is_file
}

@test 'src has _postgres' {
    assert "$src/_postgres" is_file
}

@test 'src has _postgres14' {
    assert "$src/_postgres14" is_file
}

@test 'src has _postmaster' {
    assert "$src/_postmaster" is_file
}

@test 'src has _postscriptToPDFCreator.sh' {
    assert "$src/_postscriptToPDFCreator.sh" is_file
}

@test 'src has _postw32' {
    assert "$src/_postw32" is_file
}

@test 'src has _powerTo.sh' {
    assert "$src/_powerTo.sh" is_file
}

@test 'src has _powerline' {
    assert "$src/_powerline" is_file
}

@test 'src has _powerline-config' {
    assert "$src/_powerline-config" is_file
}

@test 'src has _powerline-daemon' {
    assert "$src/_powerline-daemon" is_file
}

@test 'src has _powerline-lint' {
    assert "$src/_powerline-lint" is_file
}

@test 'src has _powerline-render' {
    assert "$src/_powerline-render" is_file
}

@test 'src has _powermetrics' {
    assert "$src/_powermetrics" is_file
}

@test 'src has _poweroff' {
    assert "$src/_poweroff" is_file
}

@test 'src has _powershell-empire' {
    assert "$src/_powershell-empire" is_file
}

@test 'src has _powertop' {
    assert "$src/_powertop" is_file
}

@test 'src has _pp-trace12' {
    assert "$src/_pp-trace12" is_file
}

@test 'src has _ppa-purge' {
    assert "$src/_ppa-purge" is_file
}

@test 'src has _ppca64' {
    assert "$src/_ppca64" is_file
}

@test 'src has _ppcx64' {
    assert "$src/_ppcx64" is_file
}

@test 'src has _ppdc' {
    assert "$src/_ppdc" is_file
}

@test 'src has _ppdep' {
    assert "$src/_ppdep" is_file
}

@test 'src has _ppdhtml' {
    assert "$src/_ppdhtml" is_file
}

@test 'src has _ppdi' {
    assert "$src/_ppdi" is_file
}

@test 'src has _ppdmerge' {
    assert "$src/_ppdmerge" is_file
}

@test 'src has _ppdpo' {
    assert "$src/_ppdpo" is_file
}

@test 'src has _pphs' {
    assert "$src/_pphs" is_file
}

@test 'src has _ppltotf' {
    assert "$src/_ppltotf" is_file
}

@test 'src has _ppm2tiff' {
    assert "$src/_ppm2tiff" is_file
}

@test 'src has _ppmspread' {
    assert "$src/_ppmspread" is_file
}

@test 'src has _ppmtompeg' {
    assert "$src/_ppmtompeg" is_file
}

@test 'src has _ppmtoy4m' {
    assert "$src/_ppmtoy4m" is_file
}

@test 'src has _ppmwheel' {
    assert "$src/_ppmwheel" is_file
}

@test 'src has _pppctl' {
    assert "$src/_pppctl" is_file
}

@test 'src has _pppoe' {
    assert "$src/_pppoe" is_file
}

@test 'src has _pppoe-relay' {
    assert "$src/_pppoe-relay" is_file
}

@test 'src has _pppoe-server' {
    assert "$src/_pppoe-server" is_file
}

@test 'src has _pppoe-sniff' {
    assert "$src/_pppoe-sniff" is_file
}

@test 'src has _pprof' {
    assert "$src/_pprof" is_file
}

@test 'src has _pprof-symbolize' {
    assert "$src/_pprof-symbolize" is_file
}

@test 'src has _pps' {
    assert "$src/_pps" is_file
}

@test 'src has _ppt2odp' {
    assert "$src/_ppt2odp" is_file
}

@test 'src has _pptp' {
    assert "$src/_pptp" is_file
}

@test 'src has _pptpsetup' {
    assert "$src/_pptpsetup" is_file
}

@test 'src has _ppudump' {
    assert "$src/_ppudump" is_file
}

@test 'src has _ppufiles' {
    assert "$src/_ppufiles" is_file
}

@test 'src has _ppx-base' {
    assert "$src/_ppx-base" is_file
}

@test 'src has _ppx-jane' {
    assert "$src/_ppx-jane" is_file
}

@test 'src has _pq_to_hlg' {
    assert "$src/_pq_to_hlg" is_file
}

@test 'src has _pqos' {
    assert "$src/_pqos" is_file
}

@test 'src has _pqos-msr' {
    assert "$src/_pqos-msr" is_file
}

@test 'src has _pqos-os' {
    assert "$src/_pqos-os" is_file
}

@test 'src has _pquery' {
    assert "$src/_pquery" is_file
}

@test 'src has _prctl' {
    assert "$src/_prctl" is_file
}

@test 'src has _pre-grohtml' {
    assert "$src/_pre-grohtml" is_file
}

@test 'src has _precat' {
    assert "$src/_precat" is_file
}

@test 'src has _preconv' {
    assert "$src/_preconv" is_file
}

@test 'src has _predict' {
    assert "$src/_predict" is_file
}

@test 'src has _prefetch.py' {
    assert "$src/_prefetch.py" is_file
}

@test 'src has _prename' {
    assert "$src/_prename" is_file
}

@test 'src has _prepmx' {
    assert "$src/_prepmx" is_file
}

@test 'src has _prequest' {
    assert "$src/_prequest" is_file
}

@test 'src has _prettypacket' {
    assert "$src/_prettypacket" is_file
}

@test 'src has _preunzip' {
    assert "$src/_preunzip" is_file
}

@test 'src has _prezip' {
    assert "$src/_prezip" is_file
}

@test 'src has _priclass.d' {
    assert "$src/_priclass.d" is_file
}

@test 'src has _pridist.d' {
    assert "$src/_pridist.d" is_file
}

@test 'src has _print_apk_perms.py' {
    assert "$src/_print_apk_perms.py" is_file
}

@test 'src has _print_cookie_driver' {
    assert "$src/_print_cookie_driver" is_file
}

@test 'src has _print_greetings' {
    assert "$src/_print_greetings" is_file
}

@test 'src has _print_stuff' {
    assert "$src/_print_stuff" is_file
}

@test 'src has _printcal' {
    assert "$src/_printcal" is_file
}

@test 'src has _printenv' {
    assert "$src/_printenv" is_file
}

@test 'src has _printer-profile' {
    assert "$src/_printer-profile" is_file
}

@test 'src has _printtarg' {
    assert "$src/_printtarg" is_file
}

@test 'src has _prl_disk_tool' {
    assert "$src/_prl_disk_tool" is_file
}

@test 'src has _prl_fsd' {
    assert "$src/_prl_fsd" is_file
}

@test 'src has _prl_nettool' {
    assert "$src/_prl_nettool" is_file
}

@test 'src has _prl_perf_ctl' {
    assert "$src/_prl_perf_ctl" is_file
}

@test 'src has _prl_showvmcfg' {
    assert "$src/_prl_showvmcfg" is_file
}

@test 'src has _prlcc' {
    assert "$src/_prlcc" is_file
}

@test 'src has _prlcore2dmp' {
    assert "$src/_prlcore2dmp" is_file
}

@test 'src has _prlctl' {
    assert "$src/_prlctl" is_file
}

@test 'src has _prlexec' {
    assert "$src/_prlexec" is_file
}

@test 'src has _prlimit' {
    assert "$src/_prlimit" is_file
}

@test 'src has _prlsga' {
    assert "$src/_prlsga" is_file
}

@test 'src has _prlshprint' {
    assert "$src/_prlshprint" is_file
}

@test 'src has _prlshprof' {
    assert "$src/_prlshprof" is_file
}

@test 'src has _prltoolsd' {
    assert "$src/_prltoolsd" is_file
}

@test 'src has _procan' {
    assert "$src/_procan" is_file
}

@test 'src has _procinfo' {
    assert "$src/_procinfo" is_file
}

@test 'src has _procmail' {
    assert "$src/_procmail" is_file
}

@test 'src has _procsystime' {
    assert "$src/_procsystime" is_file
}

@test 'src has _profcheck' {
    assert "$src/_profcheck" is_file
}

@test 'src has _profiles' {
    assert "$src/_profiles" is_file
}

@test 'src has _projinfo' {
    assert "$src/_projinfo" is_file
}

@test 'src has _protoc-27.1.0' {
    assert "$src/_protoc-27.1.0" is_file
}

@test 'src has _protoc-28.3.0' {
    assert "$src/_protoc-28.3.0" is_file
}

@test 'src has _protocoltojson' {
    assert "$src/_protocoltojson" is_file
}

@test 'src has _protos' {
    assert "$src/_protos" is_file
}

@test 'src has _protos-sip' {
    assert "$src/_protos-sip" is_file
}

@test 'src has _proutes' {
    assert "$src/_proutes" is_file
}

@test 'src has _prove' {
    assert "$src/_prove" is_file
}

@test 'src has _prove5.26.3' {
    assert "$src/_prove5.26.3" is_file
}

@test 'src has _prove5.34' {
    assert "$src/_prove5.34" is_file
}

@test 'src has _prove6' {
    assert "$src/_prove6" is_file
}

@test 'src has _prove6-m' {
    assert "$src/_prove6-m" is_file
}

@test 'src has _proxychains' {
    assert "$src/_proxychains" is_file
}

@test 'src has _proxychains4' {
    assert "$src/_proxychains4" is_file
}

@test 'src has _proxytunnel' {
    assert "$src/_proxytunnel" is_file
}

@test 'src has _prsync' {
    assert "$src/_prsync" is_file
}

@test 'src has _prtstat' {
    assert "$src/_prtstat" is_file
}

@test 'src has _prune' {
    assert "$src/_prune" is_file
}

@test 'src has _pry' {
    assert "$src/_pry" is_file
}

@test 'src has _ps2ascii' {
    assert "$src/_ps2ascii" is_file
}

@test 'src has _ps2eps' {
    assert "$src/_ps2eps" is_file
}

@test 'src has _ps2txt' {
    assert "$src/_ps2txt" is_file
}

@test 'src has _ps4pdf' {
    assert "$src/_ps4pdf" is_file
}

@test 'src has _ps_token2john' {
    assert "$src/_ps_token2john" is_file
}

@test 'src has _pscan' {
    assert "$src/_pscan" is_file
}

@test 'src has _pscp.pssh' {
    assert "$src/_pscp.pssh" is_file
}

@test 'src has _pserve' {
    assert "$src/_pserve" is_file
}

@test 'src has _psfgettable' {
    assert "$src/_psfgettable" is_file
}

@test 'src has _pshell' {
    assert "$src/_pshell" is_file
}

@test 'src has _psicc' {
    assert "$src/_psicc" is_file
}

@test 'src has _psk-crack' {
    assert "$src/_psk-crack" is_file
}

@test 'src has _psktool' {
    assert "$src/_psktool" is_file
}

@test 'src has _psl' {
    assert "$src/_psl" is_file
}

@test 'src has _pslog' {
    assert "$src/_pslog" is_file
}

@test 'src has _pslurp' {
    assert "$src/_pslurp" is_file
}

@test 'src has _psmandup' {
    assert "$src/_psmandup" is_file
}

@test 'src has _psql' {
    assert "$src/_psql" is_file
}

@test 'src has _psroff' {
    assert "$src/_psroff" is_file
}

@test 'src has _psset' {
    assert "$src/_psset" is_file
}

@test 'src has _pssh' {
    assert "$src/_pssh" is_file
}

@test 'src has _pssh-2.7' {
    assert "$src/_pssh-2.7" is_file
}

@test 'src has _pssh-askpass' {
    assert "$src/_pssh-askpass" is_file
}

@test 'src has _pssh-askpass-2.7' {
    assert "$src/_pssh-askpass-2.7" is_file
}

@test 'src has _pst2dii' {
    assert "$src/_pst2dii" is_file
}

@test 'src has _pst2ldif' {
    assert "$src/_pst2ldif" is_file
}

@test 'src has _pst2pdf' {
    assert "$src/_pst2pdf" is_file
}

@test 'src has _pstree' {
    assert "$src/_pstree" is_file
}

@test 'src has _pstree.x11' {
    assert "$src/_pstree.x11" is_file
}

@test 'src has _pt2to3' {
    assert "$src/_pt2to3" is_file
}

@test 'src has _ptargrep' {
    assert "$src/_ptargrep" is_file
}

@test 'src has _ptargrep5.30' {
    assert "$src/_ptargrep5.30" is_file
}

@test 'src has _ptargrep5.34' {
    assert "$src/_ptargrep5.34" is_file
}

@test 'src has _ptaskset' {
    assert "$src/_ptaskset" is_file
}

@test 'src has _ptdump' {
    assert "$src/_ptdump" is_file
}

@test 'src has _ptekf' {
    assert "$src/_ptekf" is_file
}

@test 'src has _ptex' {
    assert "$src/_ptex" is_file
}

@test 'src has _ptex2pdf' {
    assert "$src/_ptex2pdf" is_file
}

@test 'src has _ptftopl' {
    assert "$src/_ptftopl" is_file
}

@test 'src has _pth-curl' {
    assert "$src/_pth-curl" is_file
}

@test 'src has _pth-rpcclient' {
    assert "$src/_pth-rpcclient" is_file
}

@test 'src has _pth-smbclient' {
    assert "$src/_pth-smbclient" is_file
}

@test 'src has _pth-smbget' {
    assert "$src/_pth-smbget" is_file
}

@test 'src has _pth-sqsh' {
    assert "$src/_pth-sqsh" is_file
}

@test 'src has _pth-winexe' {
    assert "$src/_pth-winexe" is_file
}

@test 'src has _pth-wmic' {
    assert "$src/_pth-wmic" is_file
}

@test 'src has _pth-wmis' {
    assert "$src/_pth-wmis" is_file
}

@test 'src has _ptiagent' {
    assert "$src/_ptiagent" is_file
}

@test 'src has _ptiagent-cmd' {
    assert "$src/_ptiagent-cmd" is_file
}

@test 'src has _ptop' {
    assert "$src/_ptop" is_file
}

@test 'src has _ptrepack' {
    assert "$src/_ptrepack" is_file
}

@test 'src has _pttree' {
    assert "$src/_pttree" is_file
}

@test 'src has _ptunnel' {
    assert "$src/_ptunnel" is_file
}

@test 'src has _ptweens' {
    assert "$src/_ptweens" is_file
}

@test 'src has _pub' {
    assert "$src/_pub" is_file
}

@test 'src has _pub2raw' {
    assert "$src/_pub2raw" is_file
}

@test 'src has _pub2xhtml' {
    assert "$src/_pub2xhtml" is_file
}

@test 'src has _pubsub' {
    assert "$src/_pubsub" is_file
}

@test 'src has _pulledpork.pl' {
    assert "$src/_pulledpork.pl" is_file
}

@test 'src has _pulseaudio' {
    assert "$src/_pulseaudio" is_file
}

@test 'src has _pumactl' {
    assert "$src/_pumactl" is_file
}

@test 'src has _purs' {
    assert "$src/_purs" is_file
}

@test 'src has _putmail' {
    assert "$src/_putmail" is_file
}

@test 'src has _pv' {
    assert "$src/_pv" is_file
}

@test 'src has _pvchange' {
    assert "$src/_pvchange" is_file
}

@test 'src has _pviews' {
    assert "$src/_pviews" is_file
}

@test 'src has _pw-cat' {
    assert "$src/_pw-cat" is_file
}

@test 'src has _pw-cli' {
    assert "$src/_pw-cli" is_file
}

@test 'src has _pw-dot' {
    assert "$src/_pw-dot" is_file
}

@test 'src has _pw-dsdplay' {
    assert "$src/_pw-dsdplay" is_file
}

@test 'src has _pw-dump' {
    assert "$src/_pw-dump" is_file
}

@test 'src has _pw-encplay' {
    assert "$src/_pw-encplay" is_file
}

@test 'src has _pw-inspector' {
    assert "$src/_pw-inspector" is_file
}

@test 'src has _pw-jack' {
    assert "$src/_pw-jack" is_file
}

@test 'src has _pw-link' {
    assert "$src/_pw-link" is_file
}

@test 'src has _pw-loopback' {
    assert "$src/_pw-loopback" is_file
}

@test 'src has _pw-metadata' {
    assert "$src/_pw-metadata" is_file
}

@test 'src has _pw-mididump' {
    assert "$src/_pw-mididump" is_file
}

@test 'src has _pw-midiplay' {
    assert "$src/_pw-midiplay" is_file
}

@test 'src has _pw-midirecord' {
    assert "$src/_pw-midirecord" is_file
}

@test 'src has _pw-mon' {
    assert "$src/_pw-mon" is_file
}

@test 'src has _pw-play' {
    assert "$src/_pw-play" is_file
}

@test 'src has _pw-profiler' {
    assert "$src/_pw-profiler" is_file
}

@test 'src has _pw-record' {
    assert "$src/_pw-record" is_file
}

@test 'src has _pw-reserve' {
    assert "$src/_pw-reserve" is_file
}

@test 'src has _pw-top' {
    assert "$src/_pw-top" is_file
}

@test 'src has _pw-v4l2' {
    assert "$src/_pw-v4l2" is_file
}

@test 'src has _pwck' {
    assert "$src/_pwck" is_file
}

@test 'src has _pwconv' {
    assert "$src/_pwconv" is_file
}

@test 'src has _pwd' {
    assert "$src/_pwd" is_file
}

@test 'src has _pwdx' {
    assert "$src/_pwdx" is_file
}

@test 'src has _pwhich' {
    assert "$src/_pwhich" is_file
}

@test 'src has _pwhich5.18' {
    assert "$src/_pwhich5.18" is_file
}

@test 'src has _pwnat' {
    assert "$src/_pwnat" is_file
}

@test 'src has _pwned' {
    assert "$src/_pwned" is_file
}

@test 'src has _pwpolicy' {
    assert "$src/_pwpolicy" is_file
}

@test 'src has _pwqcheck' {
    assert "$src/_pwqcheck" is_file
}

@test 'src has _pwqfilter' {
    assert "$src/_pwqfilter" is_file
}

@test 'src has _pwqgen' {
    assert "$src/_pwqgen" is_file
}

@test 'src has _pwsafe2john' {
    assert "$src/_pwsafe2john" is_file
}

@test 'src has _pwunconv' {
    assert "$src/_pwunconv" is_file
}

@test 'src has _pxelinux-options' {
    assert "$src/_pxelinux-options" is_file
}

@test 'src has _py3clean' {
    assert "$src/_py3clean" is_file
}

@test 'src has _py3compile' {
    assert "$src/_py3compile" is_file
}

@test 'src has _py3rsa-decrypt' {
    assert "$src/_py3rsa-decrypt" is_file
}

@test 'src has _py3rsa-encrypt' {
    assert "$src/_py3rsa-encrypt" is_file
}

@test 'src has _py3rsa-keygen' {
    assert "$src/_py3rsa-keygen" is_file
}

@test 'src has _py3rsa-priv2pub' {
    assert "$src/_py3rsa-priv2pub" is_file
}

@test 'src has _py3rsa-sign' {
    assert "$src/_py3rsa-sign" is_file
}

@test 'src has _py3rsa-verify' {
    assert "$src/_py3rsa-verify" is_file
}

@test 'src has _py3versions' {
    assert "$src/_py3versions" is_file
}

@test 'src has _pyami_sendmail' {
    assert "$src/_pyami_sendmail" is_file
}

@test 'src has _pybabel' {
    assert "$src/_pybabel" is_file
}

@test 'src has _pybabel-python2' {
    assert "$src/_pybabel-python2" is_file
}

@test 'src has _pybuild' {
    assert "$src/_pybuild" is_file
}

@test 'src has _pyclean' {
    assert "$src/_pyclean" is_file
}

@test 'src has _pycodestyle' {
    assert "$src/_pycodestyle" is_file
}

@test 'src has _pycompile' {
    assert "$src/_pycompile" is_file
}

@test 'src has _pydf' {
    assert "$src/_pydf" is_file
}

@test 'src has _pydocstyle' {
    assert "$src/_pydocstyle" is_file
}

@test 'src has _pyflakes' {
    assert "$src/_pyflakes" is_file
}

@test 'src has _pyftsubset' {
    assert "$src/_pyftsubset" is_file
}

@test 'src has _pygettext' {
    assert "$src/_pygettext" is_file
}

@test 'src has _pygettext2' {
    assert "$src/_pygettext2" is_file
}

@test 'src has _pygettext2.7' {
    assert "$src/_pygettext2.7" is_file
}

@test 'src has _pygettext3' {
    assert "$src/_pygettext3" is_file
}

@test 'src has _pygettext3.10' {
    assert "$src/_pygettext3.10" is_file
}

@test 'src has _pygettext3.11' {
    assert "$src/_pygettext3.11" is_file
}

@test 'src has _pygettext3.12' {
    assert "$src/_pygettext3.12" is_file
}

@test 'src has _pygettext3.12.py' {
    assert "$src/_pygettext3.12.py" is_file
}

@test 'src has _pygettext3.5' {
    assert "$src/_pygettext3.5" is_file
}

@test 'src has _pygettext3.6' {
    assert "$src/_pygettext3.6" is_file
}

@test 'src has _pygettext3.7' {
    assert "$src/_pygettext3.7" is_file
}

@test 'src has _pygettext3.7.py' {
    assert "$src/_pygettext3.7.py" is_file
}

@test 'src has _pygettext3.8' {
    assert "$src/_pygettext3.8" is_file
}

@test 'src has _pygettext3.py' {
    assert "$src/_pygettext3.py" is_file
}

@test 'src has _pyhtmlizer3' {
    assert "$src/_pyhtmlizer3" is_file
}

@test 'src has _pyi-archive_viewer' {
    assert "$src/_pyi-archive_viewer" is_file
}

@test 'src has _pyi-bindepend' {
    assert "$src/_pyi-bindepend" is_file
}

@test 'src has _pyi-grab_version' {
    assert "$src/_pyi-grab_version" is_file
}

@test 'src has _pyinotify' {
    assert "$src/_pyinotify" is_file
}

@test 'src has _pyjson5' {
    assert "$src/_pyjson5" is_file
}

@test 'src has _pyjwt' {
    assert "$src/_pyjwt" is_file
}

@test 'src has _pylint' {
    assert "$src/_pylint" is_file
}

@test 'src has _pyminifier' {
    assert "$src/_pyminifier" is_file
}

@test 'src has _pyproj' {
    assert "$src/_pyproj" is_file
}

@test 'src has _pyrcc5' {
    assert "$src/_pyrcc5" is_file
}

@test 'src has _pyreverse' {
    assert "$src/_pyreverse" is_file
}

@test 'src has _pyrit' {
    assert "$src/_pyrit" is_file
}

@test 'src has _pyrsa-decrypt' {
    assert "$src/_pyrsa-decrypt" is_file
}

@test 'src has _pyrsa-encrypt' {
    assert "$src/_pyrsa-encrypt" is_file
}

@test 'src has _pyrsa-keygen' {
    assert "$src/_pyrsa-keygen" is_file
}

@test 'src has _pyrsa-priv2pub' {
    assert "$src/_pyrsa-priv2pub" is_file
}

@test 'src has _pyrsa-sign' {
    assert "$src/_pyrsa-sign" is_file
}

@test 'src has _pyrsa-verify' {
    assert "$src/_pyrsa-verify" is_file
}

@test 'src has _pyserial-miniterm' {
    assert "$src/_pyserial-miniterm" is_file
}

@test 'src has _pyserial-ports' {
    assert "$src/_pyserial-ports" is_file
}

@test 'src has _pytest' {
    assert "$src/_pytest" is_file
}

@test 'src has _python.app' {
    assert "$src/_python.app" is_file
}

@test 'src has _python2' {
    assert "$src/_python2" is_file
}

@test 'src has _python2-futurize' {
    assert "$src/_python2-futurize" is_file
}

@test 'src has _python2-pbr' {
    assert "$src/_python2-pbr" is_file
}

@test 'src has _python2-qr' {
    assert "$src/_python2-qr" is_file
}

@test 'src has _python2-wsdump' {
    assert "$src/_python2-wsdump" is_file
}

@test 'src has _python2.7' {
    assert "$src/_python2.7" is_file
}

@test 'src has _python3' {
    assert "$src/_python3" is_file
}

@test 'src has _python3-bpython' {
    assert "$src/_python3-bpython" is_file
}

@test 'src has _python3-chardetect' {
    assert "$src/_python3-chardetect" is_file
}

@test 'src has _python3-commonmark' {
    assert "$src/_python3-commonmark" is_file
}

@test 'src has _python3-config' {
    assert "$src/_python3-config" is_file
}

@test 'src has _python3-futurize' {
    assert "$src/_python3-futurize" is_file
}

@test 'src has _python3-pasteurize' {
    assert "$src/_python3-pasteurize" is_file
}

@test 'src has _python3-qr' {
    assert "$src/_python3-qr" is_file
}

@test 'src has _python3-tor-prompt' {
    assert "$src/_python3-tor-prompt" is_file
}

@test 'src has _python3-wsdump' {
    assert "$src/_python3-wsdump" is_file
}

@test 'src has _python3.10' {
    assert "$src/_python3.10" is_file
}

@test 'src has _python3.11' {
    assert "$src/_python3.11" is_file
}

@test 'src has _python3.12' {
    assert "$src/_python3.12" is_file
}

@test 'src has _python3.12-config' {
    assert "$src/_python3.12-config" is_file
}

@test 'src has _python3.4' {
    assert "$src/_python3.4" is_file
}

@test 'src has _python3.4m' {
    assert "$src/_python3.4m" is_file
}

@test 'src has _python3.5' {
    assert "$src/_python3.5" is_file
}

@test 'src has _python3.5m' {
    assert "$src/_python3.5m" is_file
}

@test 'src has _python3.6' {
    assert "$src/_python3.6" is_file
}

@test 'src has _python3.6m' {
    assert "$src/_python3.6m" is_file
}

@test 'src has _python3.7' {
    assert "$src/_python3.7" is_file
}

@test 'src has _python3.7m' {
    assert "$src/_python3.7m" is_file
}

@test 'src has _python3.8' {
    assert "$src/_python3.8" is_file
}

@test 'src has _python3.9' {
    assert "$src/_python3.9" is_file
}

@test 'src has _python3.9-config' {
    assert "$src/_python3.9-config" is_file
}

@test 'src has _python36' {
    assert "$src/_python36" is_file
}

@test 'src has _python3m' {
    assert "$src/_python3m" is_file
}

@test 'src has _pythontex' {
    assert "$src/_pythontex" is_file
}

@test 'src has _pythonw' {
    assert "$src/_pythonw" is_file
}

@test 'src has _pythonw2' {
    assert "$src/_pythonw2" is_file
}

@test 'src has _pythonw2.7' {
    assert "$src/_pythonw2.7" is_file
}

@test 'src has _pyuic5' {
    assert "$src/_pyuic5" is_file
}

@test 'src has _pyvenv' {
    assert "$src/_pyvenv" is_file
}

@test 'src has _pyvenv-3.4' {
    assert "$src/_pyvenv-3.4" is_file
}

@test 'src has _pyvenv-3.6' {
    assert "$src/_pyvenv-3.6" is_file
}

@test 'src has _pyvenv-3.7' {
    assert "$src/_pyvenv-3.7" is_file
}

@test 'src has _pyversions' {
    assert "$src/_pyversions" is_file
}

@test 'src has _pywxrc' {
    assert "$src/_pywxrc" is_file
}

@test 'src has _pzstd' {
    assert "$src/_pzstd" is_file
}

@test 'src has _qalc' {
    assert "$src/_qalc" is_file
}

@test 'src has _qbittorrent' {
    assert "$src/_qbittorrent" is_file
}

@test 'src has _qcatool-qt5' {
    assert "$src/_qcatool-qt5" is_file
}

@test 'src has _qcollectiongenerator' {
    assert "$src/_qcollectiongenerator" is_file
}

@test 'src has _qcollectiongenerator-qt5' {
    assert "$src/_qcollectiongenerator-qt5" is_file
}

@test 'src has _qdarkstyle' {
    assert "$src/_qdarkstyle" is_file
}

@test 'src has _qdarkstyle.example' {
    assert "$src/_qdarkstyle.example" is_file
}

@test 'src has _qdbus' {
    assert "$src/_qdbus" is_file
}

@test 'src has _qdbus-qt5' {
    assert "$src/_qdbus-qt5" is_file
}

@test 'src has _qdbuscpp2xml' {
    assert "$src/_qdbuscpp2xml" is_file
}

@test 'src has _qdbuscpp2xml-qt5' {
    assert "$src/_qdbuscpp2xml-qt5" is_file
}

@test 'src has _qdbusxml2cpp' {
    assert "$src/_qdbusxml2cpp" is_file
}

@test 'src has _qdbusxml2cpp-qt5' {
    assert "$src/_qdbusxml2cpp-qt5" is_file
}

@test 'src has _qdistancefieldgenerator' {
    assert "$src/_qdistancefieldgenerator" is_file
}

@test 'src has _qdoc' {
    assert "$src/_qdoc" is_file
}

@test 'src has _qdoc-qt5' {
    assert "$src/_qdoc-qt5" is_file
}

@test 'src has _qemu-aarch64' {
    assert "$src/_qemu-aarch64" is_file
}

@test 'src has _qemu-aarch64-static' {
    assert "$src/_qemu-aarch64-static" is_file
}

@test 'src has _qemu-aarch64_be-static' {
    assert "$src/_qemu-aarch64_be-static" is_file
}

@test 'src has _qemu-alpha' {
    assert "$src/_qemu-alpha" is_file
}

@test 'src has _qemu-alpha-static' {
    assert "$src/_qemu-alpha-static" is_file
}

@test 'src has _qemu-arm' {
    assert "$src/_qemu-arm" is_file
}

@test 'src has _qemu-arm-static' {
    assert "$src/_qemu-arm-static" is_file
}

@test 'src has _qemu-armeb' {
    assert "$src/_qemu-armeb" is_file
}

@test 'src has _qemu-armeb-static' {
    assert "$src/_qemu-armeb-static" is_file
}

@test 'src has _qemu-cris' {
    assert "$src/_qemu-cris" is_file
}

@test 'src has _qemu-cris-static' {
    assert "$src/_qemu-cris-static" is_file
}

@test 'src has _qemu-ga' {
    assert "$src/_qemu-ga" is_file
}

@test 'src has _qemu-hexagon-static' {
    assert "$src/_qemu-hexagon-static" is_file
}

@test 'src has _qemu-hppa' {
    assert "$src/_qemu-hppa" is_file
}

@test 'src has _qemu-hppa-static' {
    assert "$src/_qemu-hppa-static" is_file
}

@test 'src has _qemu-i386' {
    assert "$src/_qemu-i386" is_file
}

@test 'src has _qemu-i386-static' {
    assert "$src/_qemu-i386-static" is_file
}

@test 'src has _qemu-img' {
    assert "$src/_qemu-img" is_file
}

@test 'src has _qemu-io' {
    assert "$src/_qemu-io" is_file
}

@test 'src has _qemu-keymap' {
    assert "$src/_qemu-keymap" is_file
}

@test 'src has _qemu-kvm' {
    assert "$src/_qemu-kvm" is_file
}

@test 'src has _qemu-loongarch64-static' {
    assert "$src/_qemu-loongarch64-static" is_file
}

@test 'src has _qemu-m68k' {
    assert "$src/_qemu-m68k" is_file
}

@test 'src has _qemu-m68k-static' {
    assert "$src/_qemu-m68k-static" is_file
}

@test 'src has _qemu-microblaze' {
    assert "$src/_qemu-microblaze" is_file
}

@test 'src has _qemu-microblaze-static' {
    assert "$src/_qemu-microblaze-static" is_file
}

@test 'src has _qemu-microblazeel' {
    assert "$src/_qemu-microblazeel" is_file
}

@test 'src has _qemu-microblazeel-static' {
    assert "$src/_qemu-microblazeel-static" is_file
}

@test 'src has _qemu-mips' {
    assert "$src/_qemu-mips" is_file
}

@test 'src has _qemu-mips-static' {
    assert "$src/_qemu-mips-static" is_file
}

@test 'src has _qemu-mips64' {
    assert "$src/_qemu-mips64" is_file
}

@test 'src has _qemu-mips64-static' {
    assert "$src/_qemu-mips64-static" is_file
}

@test 'src has _qemu-mips64el' {
    assert "$src/_qemu-mips64el" is_file
}

@test 'src has _qemu-mips64el-static' {
    assert "$src/_qemu-mips64el-static" is_file
}

@test 'src has _qemu-mipsel' {
    assert "$src/_qemu-mipsel" is_file
}

@test 'src has _qemu-mipsel-static' {
    assert "$src/_qemu-mipsel-static" is_file
}

@test 'src has _qemu-mipsn32' {
    assert "$src/_qemu-mipsn32" is_file
}

@test 'src has _qemu-mipsn32-static' {
    assert "$src/_qemu-mipsn32-static" is_file
}

@test 'src has _qemu-mipsn32el' {
    assert "$src/_qemu-mipsn32el" is_file
}

@test 'src has _qemu-mipsn32el-static' {
    assert "$src/_qemu-mipsn32el-static" is_file
}

@test 'src has _qemu-nbd' {
    assert "$src/_qemu-nbd" is_file
}

@test 'src has _qemu-nios2' {
    assert "$src/_qemu-nios2" is_file
}

@test 'src has _qemu-nios2-static' {
    assert "$src/_qemu-nios2-static" is_file
}

@test 'src has _qemu-or1k' {
    assert "$src/_qemu-or1k" is_file
}

@test 'src has _qemu-or1k-static' {
    assert "$src/_qemu-or1k-static" is_file
}

@test 'src has _qemu-ppc' {
    assert "$src/_qemu-ppc" is_file
}

@test 'src has _qemu-ppc-static' {
    assert "$src/_qemu-ppc-static" is_file
}

@test 'src has _qemu-ppc64' {
    assert "$src/_qemu-ppc64" is_file
}

@test 'src has _qemu-ppc64-static' {
    assert "$src/_qemu-ppc64-static" is_file
}

@test 'src has _qemu-ppc64abi32' {
    assert "$src/_qemu-ppc64abi32" is_file
}

@test 'src has _qemu-ppc64le' {
    assert "$src/_qemu-ppc64le" is_file
}

@test 'src has _qemu-ppc64le-static' {
    assert "$src/_qemu-ppc64le-static" is_file
}

@test 'src has _qemu-pr-helper' {
    assert "$src/_qemu-pr-helper" is_file
}

@test 'src has _qemu-riscv32-static' {
    assert "$src/_qemu-riscv32-static" is_file
}

@test 'src has _qemu-riscv64-static' {
    assert "$src/_qemu-riscv64-static" is_file
}

@test 'src has _qemu-s390x' {
    assert "$src/_qemu-s390x" is_file
}

@test 'src has _qemu-s390x-static' {
    assert "$src/_qemu-s390x-static" is_file
}

@test 'src has _qemu-sh4' {
    assert "$src/_qemu-sh4" is_file
}

@test 'src has _qemu-sh4-static' {
    assert "$src/_qemu-sh4-static" is_file
}

@test 'src has _qemu-sh4eb' {
    assert "$src/_qemu-sh4eb" is_file
}

@test 'src has _qemu-sh4eb-static' {
    assert "$src/_qemu-sh4eb-static" is_file
}

@test 'src has _qemu-sparc' {
    assert "$src/_qemu-sparc" is_file
}

@test 'src has _qemu-sparc-static' {
    assert "$src/_qemu-sparc-static" is_file
}

@test 'src has _qemu-sparc32plus' {
    assert "$src/_qemu-sparc32plus" is_file
}

@test 'src has _qemu-sparc32plus-static' {
    assert "$src/_qemu-sparc32plus-static" is_file
}

@test 'src has _qemu-sparc64' {
    assert "$src/_qemu-sparc64" is_file
}

@test 'src has _qemu-sparc64-static' {
    assert "$src/_qemu-sparc64-static" is_file
}

@test 'src has _qemu-system-aarch64' {
    assert "$src/_qemu-system-aarch64" is_file
}

@test 'src has _qemu-system-alpha' {
    assert "$src/_qemu-system-alpha" is_file
}

@test 'src has _qemu-system-arm' {
    assert "$src/_qemu-system-arm" is_file
}

@test 'src has _qemu-system-avr' {
    assert "$src/_qemu-system-avr" is_file
}

@test 'src has _qemu-system-cris' {
    assert "$src/_qemu-system-cris" is_file
}

@test 'src has _qemu-system-hppa' {
    assert "$src/_qemu-system-hppa" is_file
}

@test 'src has _qemu-system-i386' {
    assert "$src/_qemu-system-i386" is_file
}

@test 'src has _qemu-system-lm32' {
    assert "$src/_qemu-system-lm32" is_file
}

@test 'src has _qemu-system-loongarch64' {
    assert "$src/_qemu-system-loongarch64" is_file
}

@test 'src has _qemu-system-m68k' {
    assert "$src/_qemu-system-m68k" is_file
}

@test 'src has _qemu-system-microblaze' {
    assert "$src/_qemu-system-microblaze" is_file
}

@test 'src has _qemu-system-microblazeel' {
    assert "$src/_qemu-system-microblazeel" is_file
}

@test 'src has _qemu-system-mips' {
    assert "$src/_qemu-system-mips" is_file
}

@test 'src has _qemu-system-mips64' {
    assert "$src/_qemu-system-mips64" is_file
}

@test 'src has _qemu-system-mips64el' {
    assert "$src/_qemu-system-mips64el" is_file
}

@test 'src has _qemu-system-mipsel' {
    assert "$src/_qemu-system-mipsel" is_file
}

@test 'src has _qemu-system-moxie' {
    assert "$src/_qemu-system-moxie" is_file
}

@test 'src has _qemu-system-nios2' {
    assert "$src/_qemu-system-nios2" is_file
}

@test 'src has _qemu-system-or1k' {
    assert "$src/_qemu-system-or1k" is_file
}

@test 'src has _qemu-system-ppc' {
    assert "$src/_qemu-system-ppc" is_file
}

@test 'src has _qemu-system-ppc64' {
    assert "$src/_qemu-system-ppc64" is_file
}

@test 'src has _qemu-system-ppc64le' {
    assert "$src/_qemu-system-ppc64le" is_file
}

@test 'src has _qemu-system-ppcemb' {
    assert "$src/_qemu-system-ppcemb" is_file
}

@test 'src has _qemu-system-riscv32' {
    assert "$src/_qemu-system-riscv32" is_file
}

@test 'src has _qemu-system-riscv64' {
    assert "$src/_qemu-system-riscv64" is_file
}

@test 'src has _qemu-system-s390x' {
    assert "$src/_qemu-system-s390x" is_file
}

@test 'src has _qemu-system-sh4' {
    assert "$src/_qemu-system-sh4" is_file
}

@test 'src has _qemu-system-sh4eb' {
    assert "$src/_qemu-system-sh4eb" is_file
}

@test 'src has _qemu-system-sparc' {
    assert "$src/_qemu-system-sparc" is_file
}

@test 'src has _qemu-system-sparc64' {
    assert "$src/_qemu-system-sparc64" is_file
}

@test 'src has _qemu-system-tricore' {
    assert "$src/_qemu-system-tricore" is_file
}

@test 'src has _qemu-system-unicore32' {
    assert "$src/_qemu-system-unicore32" is_file
}

@test 'src has _qemu-system-x86_64' {
    assert "$src/_qemu-system-x86_64" is_file
}

@test 'src has _qemu-system-x86_64-microvm' {
    assert "$src/_qemu-system-x86_64-microvm" is_file
}

@test 'src has _qemu-system-xtensa' {
    assert "$src/_qemu-system-xtensa" is_file
}

@test 'src has _qemu-system-xtensaeb' {
    assert "$src/_qemu-system-xtensaeb" is_file
}

@test 'src has _qemu-tilegx' {
    assert "$src/_qemu-tilegx" is_file
}

@test 'src has _qemu-trace-stap' {
    assert "$src/_qemu-trace-stap" is_file
}

@test 'src has _qemu-x86_64' {
    assert "$src/_qemu-x86_64" is_file
}

@test 'src has _qemu-x86_64-static' {
    assert "$src/_qemu-x86_64-static" is_file
}

@test 'src has _qemu-xtensa-static' {
    assert "$src/_qemu-xtensa-static" is_file
}

@test 'src has _qemu-xtensaeb-static' {
    assert "$src/_qemu-xtensaeb-static" is_file
}

@test 'src has _qgltf' {
    assert "$src/_qgltf" is_file
}

@test 'src has _qhelpgenerator' {
    assert "$src/_qhelpgenerator" is_file
}

@test 'src has _qhelpgenerator-qt5' {
    assert "$src/_qhelpgenerator-qt5" is_file
}

@test 'src has _ql2tpd' {
    assert "$src/_ql2tpd" is_file
}

@test 'src has _qlalr' {
    assert "$src/_qlalr" is_file
}

@test 'src has _qlalr-qt5' {
    assert "$src/_qlalr-qt5" is_file
}

@test 'src has _qlmanage' {
    assert "$src/_qlmanage" is_file
}

@test 'src has _qmake' {
    assert "$src/_qmake" is_file
}

@test 'src has _qmake-qt4' {
    assert "$src/_qmake-qt4" is_file
}

@test 'src has _qmake-qt5' {
    assert "$src/_qmake-qt5" is_file
}

@test 'src has _qmake6' {
    assert "$src/_qmake6" is_file
}

@test 'src has _qmi-firmware-update' {
    assert "$src/_qmi-firmware-update" is_file
}

@test 'src has _qmi-network' {
    assert "$src/_qmi-network" is_file
}

@test 'src has _qmicli' {
    assert "$src/_qmicli" is_file
}

@test 'src has _qml' {
    assert "$src/_qml" is_file
}

@test 'src has _qmlcachegen' {
    assert "$src/_qmlcachegen" is_file
}

@test 'src has _qmlcachegen-qt5' {
    assert "$src/_qmlcachegen-qt5" is_file
}

@test 'src has _qmldom' {
    assert "$src/_qmldom" is_file
}

@test 'src has _qmlformat' {
    assert "$src/_qmlformat" is_file
}

@test 'src has _qmllint' {
    assert "$src/_qmllint" is_file
}

@test 'src has _qmllint-qt5' {
    assert "$src/_qmllint-qt5" is_file
}

@test 'src has _qmlls' {
    assert "$src/_qmlls" is_file
}

@test 'src has _qmlmin' {
    assert "$src/_qmlmin" is_file
}

@test 'src has _qmlmin-qt5' {
    assert "$src/_qmlmin-qt5" is_file
}

@test 'src has _qmlpreview' {
    assert "$src/_qmlpreview" is_file
}

@test 'src has _qmlpreview-qt5' {
    assert "$src/_qmlpreview-qt5" is_file
}

@test 'src has _qmlprofiler' {
    assert "$src/_qmlprofiler" is_file
}

@test 'src has _qmlprofiler-qt5' {
    assert "$src/_qmlprofiler-qt5" is_file
}

@test 'src has _qmlscene' {
    assert "$src/_qmlscene" is_file
}

@test 'src has _qmltc' {
    assert "$src/_qmltc" is_file
}

@test 'src has _qmltestrunner' {
    assert "$src/_qmltestrunner" is_file
}

@test 'src has _qmltyperegistrar' {
    assert "$src/_qmltyperegistrar" is_file
}

@test 'src has _qopcuaxmldatatypes2cpp' {
    assert "$src/_qopcuaxmldatatypes2cpp" is_file
}

@test 'src has _qpdldecode' {
    assert "$src/_qpdldecode" is_file
}

@test 'src has _qprofdiff' {
    assert "$src/_qprofdiff" is_file
}

@test 'src has _qqwing' {
    assert "$src/_qqwing" is_file
}

@test 'src has _qr' {
    assert "$src/_qr" is_file
}

@test 'src has _qrencode' {
    assert "$src/_qrencode" is_file
}

@test 'src has _qrify' {
    assert "$src/_qrify" is_file
}

@test 'src has _qsb' {
    assert "$src/_qsb" is_file
}

@test 'src has _qscxmlc' {
    assert "$src/_qscxmlc" is_file
}

@test 'src has _qsslcaudit' {
    assert "$src/_qsslcaudit" is_file
}

@test 'src has _qt-cmake' {
    assert "$src/_qt-cmake" is_file
}

@test 'src has _qt-cmake-private' {
    assert "$src/_qt-cmake-private" is_file
}

@test 'src has _qtattributionsscanner' {
    assert "$src/_qtattributionsscanner" is_file
}

@test 'src has _qtattributionsscanner-qt5' {
    assert "$src/_qtattributionsscanner-qt5" is_file
}

@test 'src has _qtdefaults' {
    assert "$src/_qtdefaults" is_file
}

@test 'src has _qtdiag' {
    assert "$src/_qtdiag" is_file
}

@test 'src has _qtdiag6' {
    assert "$src/_qtdiag6" is_file
}

@test 'src has _qtpaths' {
    assert "$src/_qtpaths" is_file
}

@test 'src has _qtpaths-qt5' {
    assert "$src/_qtpaths-qt5" is_file
}

@test 'src has _qtpaths-qt6' {
    assert "$src/_qtpaths-qt6" is_file
}

@test 'src has _qtpaths6' {
    assert "$src/_qtpaths6" is_file
}

@test 'src has _qtplugininfo' {
    assert "$src/_qtplugininfo" is_file
}

@test 'src has _qtplugininfo-qt5' {
    assert "$src/_qtplugininfo-qt5" is_file
}

@test 'src has _qtpy' {
    assert "$src/_qtpy" is_file
}

@test 'src has _quadrapassel' {
    assert "$src/_quadrapassel" is_file
}

@test 'src has _quartz-wm' {
    assert "$src/_quartz-wm" is_file
}

@test 'src has _query_compile_time_config' {
    assert "$src/_query_compile_time_config" is_file
}

@test 'src has _quirks-handler' {
    assert "$src/_quirks-handler" is_file
}

@test 'src has _quota' {
    assert "$src/_quota" is_file
}

@test 'src has _quota_nld' {
    assert "$src/_quota_nld" is_file
}

@test 'src has _quotacheck' {
    assert "$src/_quotacheck" is_file
}

@test 'src has _quotaoff' {
    assert "$src/_quotaoff" is_file
}

@test 'src has _quotaon' {
    assert "$src/_quotaon" is_file
}

@test 'src has _quotasync' {
    assert "$src/_quotasync" is_file
}

@test 'src has _qxp2raw' {
    assert "$src/_qxp2raw" is_file
}

@test 'src has _qxp2svg' {
    assert "$src/_qxp2svg" is_file
}

@test 'src has _qxp2text' {
    assert "$src/_qxp2text" is_file
}

@test 'src has _r-mpost' {
    assert "$src/_r-mpost" is_file
}

@test 'src has _r-pmpost' {
    assert "$src/_r-pmpost" is_file
}

@test 'src has _r-upmpost' {
    assert "$src/_r-upmpost" is_file
}

@test 'src has _r2agent' {
    assert "$src/_r2agent" is_file
}

@test 'src has _r2pm' {
    assert "$src/_r2pm" is_file
}

@test 'src has _racc' {
    assert "$src/_racc" is_file
}

@test 'src has _racc2.7' {
    assert "$src/_racc2.7" is_file
}

@test 'src has _racc2y' {
    assert "$src/_racc2y" is_file
}

@test 'src has _racc2y2.7' {
    assert "$src/_racc2y2.7" is_file
}

@test 'src has _racer' {
    assert "$src/_racer" is_file
}

@test 'src has _racket' {
    assert "$src/_racket" is_file
}

@test 'src has _rackup' {
    assert "$src/_rackup" is_file
}

@test 'src has _racoon' {
    assert "$src/_racoon" is_file
}

@test 'src has _rad_counter' {
    assert "$src/_rad_counter" is_file
}

@test 'src has _radclient' {
    assert "$src/_radclient" is_file
}

@test 'src has _radeapclient' {
    assert "$src/_radeapclient" is_file
}

@test 'src has _radlast' {
    assert "$src/_radlast" is_file
}

@test 'src has _radmin' {
    assert "$src/_radmin" is_file
}

@test 'src has _radsniff' {
    assert "$src/_radsniff" is_file
}

@test 'src has _radsqlrelay' {
    assert "$src/_radsqlrelay" is_file
}

@test 'src has _radtest' {
    assert "$src/_radtest" is_file
}

@test 'src has _radvd' {
    assert "$src/_radvd" is_file
}

@test 'src has _radwho' {
    assert "$src/_radwho" is_file
}

@test 'src has _radzap' {
    assert "$src/_radzap" is_file
}

@test 'src has _raidutil' {
    assert "$src/_raidutil" is_file
}

@test 'src has _raiser' {
    assert "$src/_raiser" is_file
}

@test 'src has _raku' {
    assert "$src/_raku" is_file
}

@test 'src has _raku-debug' {
    assert "$src/_raku-debug" is_file
}

@test 'src has _rakudo' {
    assert "$src/_rakudo" is_file
}

@test 'src has _rakudo-debug' {
    assert "$src/_rakudo-debug" is_file
}

@test 'src has _rakudo-debug-m' {
    assert "$src/_rakudo-debug-m" is_file
}

@test 'src has _rakudo-m' {
    assert "$src/_rakudo-m" is_file
}

@test 'src has _randomCow.sh' {
    assert "$src/_randomCow.sh" is_file
}

@test 'src has _randpkt' {
    assert "$src/_randpkt" is_file
}

@test 'src has _randpktdump' {
    assert "$src/_randpktdump" is_file
}

@test 'src has _rankmirrors' {
    assert "$src/_rankmirrors" is_file
}

@test 'src has _rapper' {
    assert "$src/_rapper" is_file
}

@test 'src has _rar2john' {
    assert "$src/_rar2john" is_file
}

@test 'src has _rarcrack' {
    assert "$src/_rarcrack" is_file
}

@test 'src has _rarian-sk-config' {
    assert "$src/_rarian-sk-config" is_file
}

@test 'src has _rarian-sk-update' {
    assert "$src/_rarian-sk-update" is_file
}

@test 'src has _rasign2' {
    assert "$src/_rasign2" is_file
}

@test 'src has _raspistill' {
    assert "$src/_raspistill" is_file
}

@test 'src has _raspivid' {
    assert "$src/_raspivid" is_file
}

@test 'src has _raspividyuv' {
    assert "$src/_raspividyuv" is_file
}

@test 'src has _raspiyuv' {
    assert "$src/_raspiyuv" is_file
}

@test 'src has _rasqal-config' {
    assert "$src/_rasqal-config" is_file
}

@test 'src has _rav1e' {
    assert "$src/_rav1e" is_file
}

@test 'src has _raw' {
    assert "$src/_raw" is_file
}

@test 'src has _raw-identify' {
    assert "$src/_raw-identify" is_file
}

@test 'src has _raw2dyna' {
    assert "$src/_raw2dyna" is_file
}

@test 'src has _raw2tiff' {
    assert "$src/_raw2tiff" is_file
}

@test 'src has _rawie.pl' {
    assert "$src/_rawie.pl" is_file
}

@test 'src has _rawshark' {
    assert "$src/_rawshark" is_file
}

@test 'src has _rb' {
    assert "$src/_rb" is_file
}

@test 'src has _rbash' {
    assert "$src/_rbash" is_file
}

@test 'src has _rbs' {
    assert "$src/_rbs" is_file
}

@test 'src has _rbspy' {
    assert "$src/_rbspy" is_file
}

@test 'src has _rcModemManager' {
    assert "$src/_rcModemManager" is_file
}

@test 'src has _rcSuSEfirewall2' {
    assert "$src/_rcSuSEfirewall2" is_file
}

@test 'src has _rcapparmor' {
    assert "$src/_rcapparmor" is_file
}

@test 'src has _rcatd' {
    assert "$src/_rcatd" is_file
}

@test 'src has _rcauditd' {
    assert "$src/_rcauditd" is_file
}

@test 'src has _rcautofs' {
    assert "$src/_rcautofs" is_file
}

@test 'src has _rcavahi-daemon' {
    assert "$src/_rcavahi-daemon" is_file
}

@test 'src has _rcavahi-dnsconfd' {
    assert "$src/_rcavahi-dnsconfd" is_file
}

@test 'src has _rcblk-availability' {
    assert "$src/_rcblk-availability" is_file
}

@test 'src has _rcbmc-snmp-proxy' {
    assert "$src/_rcbmc-snmp-proxy" is_file
}

@test 'src has _rcbtrfsmaintenance-refresh' {
    assert "$src/_rcbtrfsmaintenance-refresh" is_file
}

@test 'src has _rcc' {
    assert "$src/_rcc" is_file
}

@test 'src has _rcc-qt5' {
    assert "$src/_rcc-qt5" is_file
}

@test 'src has _rcca-certificates' {
    assert "$src/_rcca-certificates" is_file
}

@test 'src has _rcchrony-wait' {
    assert "$src/_rcchrony-wait" is_file
}

@test 'src has _rcchronyd' {
    assert "$src/_rcchronyd" is_file
}

@test 'src has _rcclamav-milter' {
    assert "$src/_rcclamav-milter" is_file
}

@test 'src has _rcclamd' {
    assert "$src/_rcclamd" is_file
}

@test 'src has _rccron' {
    assert "$src/_rccron" is_file
}

@test 'src has _rccups' {
    assert "$src/_rccups" is_file
}

@test 'src has _rccups-browsed' {
    assert "$src/_rccups-browsed" is_file
}

@test 'src has _rccups-lpd' {
    assert "$src/_rccups-lpd" is_file
}

@test 'src has _rcdbus' {
    assert "$src/_rcdbus" is_file
}

@test 'src has _rcdisplay-manager' {
    assert "$src/_rcdisplay-manager" is_file
}

@test 'src has _rcdm-event' {
    assert "$src/_rcdm-event" is_file
}

@test 'src has _rcdnsmasq' {
    assert "$src/_rcdnsmasq" is_file
}

@test 'src has _rcdocker' {
    assert "$src/_rcdocker" is_file
}

@test 'src has _rcebtables' {
    assert "$src/_rcebtables" is_file
}

@test 'src has _rcepmd' {
    assert "$src/_rcepmd" is_file
}

@test 'src has _rcexchange-bmc-os-info' {
    assert "$src/_rcexchange-bmc-os-info" is_file
}

@test 'src has _rcfirewalld' {
    assert "$src/_rcfirewalld" is_file
}

@test 'src has _rcfreshclam' {
    assert "$src/_rcfreshclam" is_file
}

@test 'src has _rcfstrim' {
    assert "$src/_rcfstrim" is_file
}

@test 'src has _rcgpm' {
    assert "$src/_rcgpm" is_file
}

@test 'src has _rchaveged' {
    assert "$src/_rchaveged" is_file
}

@test 'src has _rcipmi' {
    assert "$src/_rcipmi" is_file
}

@test 'src has _rcipmievd' {
    assert "$src/_rcipmievd" is_file
}

@test 'src has _rcirqbalance' {
    assert "$src/_rcirqbalance" is_file
}

@test 'src has _rckadmind' {
    assert "$src/_rckadmind" is_file
}

@test 'src has _rckpropd' {
    assert "$src/_rckpropd" is_file
}

@test 'src has _rckrb5kdc' {
    assert "$src/_rckrb5kdc" is_file
}

@test 'src has _rclogrotate' {
    assert "$src/_rclogrotate" is_file
}

@test 'src has _rclvm2-lvmetad' {
    assert "$src/_rclvm2-lvmetad" is_file
}

@test 'src has _rclvm2-lvmpolld' {
    assert "$src/_rclvm2-lvmpolld" is_file
}

@test 'src has _rclvm2-monitor' {
    assert "$src/_rclvm2-monitor" is_file
}

@test 'src has _rcmdmonitor' {
    assert "$src/_rcmdmonitor" is_file
}

@test 'src has _rcmultipathd' {
    assert "$src/_rcmultipathd" is_file
}

@test 'src has _rcmunge' {
    assert "$src/_rcmunge" is_file
}

@test 'src has _rcmysql' {
    assert "$src/_rcmysql" is_file
}

@test 'src has _rcnetwork' {
    assert "$src/_rcnetwork" is_file
}

@test 'src has _rcnfs' {
    assert "$src/_rcnfs" is_file
}

@test 'src has _rcnfs-client' {
    assert "$src/_rcnfs-client" is_file
}

@test 'src has _rcnginx' {
    assert "$src/_rcnginx" is_file
}

@test 'src has _rcnmb' {
    assert "$src/_rcnmb" is_file
}

@test 'src has _rcnscd' {
    assert "$src/_rcnscd" is_file
}

@test 'src has _rcntp-wait' {
    assert "$src/_rcntp-wait" is_file
}

@test 'src has _rcntpd' {
    assert "$src/_rcntpd" is_file
}

@test 'src has _rcpostfix' {
    assert "$src/_rcpostfix" is_file
}

@test 'src has _rcpostgresql' {
    assert "$src/_rcpostgresql" is_file
}

@test 'src has _rcrack' {
    assert "$src/_rcrack" is_file
}

@test 'src has _rcraw' {
    assert "$src/_rcraw" is_file
}

@test 'src has _rcrdma' {
    assert "$src/_rcrdma" is_file
}

@test 'src has _rcredis' {
    assert "$src/_rcredis" is_file
}

@test 'src has _rcrpcbind' {
    assert "$src/_rcrpcbind" is_file
}

@test 'src has _rcrsyncd' {
    assert "$src/_rcrsyncd" is_file
}

@test 'src has _rcrtkit-daemon' {
    assert "$src/_rcrtkit-daemon" is_file
}

@test 'src has _rcs2log' {
    assert "$src/_rcs2log" is_file
}

@test 'src has _rcsamba-ad-dc' {
    assert "$src/_rcsamba-ad-dc" is_file
}

@test 'src has _rcslurmctld' {
    assert "$src/_rcslurmctld" is_file
}

@test 'src has _rcslurmd' {
    assert "$src/_rcslurmd" is_file
}

@test 'src has _rcsmartd' {
    assert "$src/_rcsmartd" is_file
}

@test 'src has _rcsmb' {
    assert "$src/_rcsmb" is_file
}

@test 'src has _rcsnmpd' {
    assert "$src/_rcsnmpd" is_file
}

@test 'src has _rcsnmptrapd' {
    assert "$src/_rcsnmptrapd" is_file
}

@test 'src has _rcsshd' {
    assert "$src/_rcsshd" is_file
}

@test 'src has _rcsvnserve' {
    assert "$src/_rcsvnserve" is_file
}

@test 'src has _rcsysstat' {
    assert "$src/_rcsysstat" is_file
}

@test 'src has _rctcsd' {
    assert "$src/_rctcsd" is_file
}

@test 'src has _rctest' {
    assert "$src/_rctest" is_file
}

@test 'src has _rctor' {
    assert "$src/_rctor" is_file
}

@test 'src has _rctuned' {
    assert "$src/_rctuned" is_file
}

@test 'src has _rcupower' {
    assert "$src/_rcupower" is_file
}

@test 'src has _rcwicked' {
    assert "$src/_rcwicked" is_file
}

@test 'src has _rcwickedd' {
    assert "$src/_rcwickedd" is_file
}

@test 'src has _rcwickedd-auto4' {
    assert "$src/_rcwickedd-auto4" is_file
}

@test 'src has _rcwickedd-dhcp4' {
    assert "$src/_rcwickedd-dhcp4" is_file
}

@test 'src has _rcwickedd-dhcp6' {
    assert "$src/_rcwickedd-dhcp6" is_file
}

@test 'src has _rcwickedd-nanny' {
    assert "$src/_rcwickedd-nanny" is_file
}

@test 'src has _rcwpa_supplicant' {
    assert "$src/_rcwpa_supplicant" is_file
}

@test 'src has _rcxdm' {
    assert "$src/_rcxdm" is_file
}

@test 'src has _rcxinetd' {
    assert "$src/_rcxinetd" is_file
}

@test 'src has _rcxvnc' {
    assert "$src/_rcxvnc" is_file
}

@test 'src has _rcypbind' {
    assert "$src/_rcypbind" is_file
}

@test 'src has _rdate' {
    assert "$src/_rdate" is_file
}

@test 'src has _rdbg' {
    assert "$src/_rdbg" is_file
}

@test 'src has _rdf2bin' {
    assert "$src/_rdf2bin" is_file
}

@test 'src has _rdf2com' {
    assert "$src/_rdf2com" is_file
}

@test 'src has _rdf2ihx' {
    assert "$src/_rdf2ihx" is_file
}

@test 'src has _rdf2ith' {
    assert "$src/_rdf2ith" is_file
}

@test 'src has _rdf2srec' {
    assert "$src/_rdf2srec" is_file
}

@test 'src has _rdfproc' {
    assert "$src/_rdfproc" is_file
}

@test 'src has _rdjpgcom' {
    assert "$src/_rdjpgcom" is_file
}

@test 'src has _rdmd' {
    assert "$src/_rdmd" is_file
}

@test 'src has _rdmsr' {
    assert "$src/_rdmsr" is_file
}

@test 'src has _rdoc' {
    assert "$src/_rdoc" is_file
}

@test 'src has _rdoc2.3' {
    assert "$src/_rdoc2.3" is_file
}

@test 'src has _rdoc2.5' {
    assert "$src/_rdoc2.5" is_file
}

@test 'src has _rdoc2.7' {
    assert "$src/_rdoc2.7" is_file
}

@test 'src has _rdoc24' {
    assert "$src/_rdoc24" is_file
}

@test 'src has _rdoc3.1' {
    assert "$src/_rdoc3.1" is_file
}

@test 'src has _rds-ctl' {
    assert "$src/_rds-ctl" is_file
}

@test 'src has _rdtset' {
    assert "$src/_rdtset" is_file
}

@test 'src has _react-native' {
    assert "$src/_react-native" is_file
}

@test 'src has _readcd' {
    assert "$src/_readcd" is_file
}

@test 'src has _readelf' {
    assert "$src/_readelf" is_file
}

@test 'src has _readline-editor' {
    assert "$src/_readline-editor" is_file
}

@test 'src has _readmsg' {
    assert "$src/_readmsg" is_file
}

@test 'src has _readmsg.mailutils' {
    assert "$src/_readmsg.mailutils" is_file
}

@test 'src has _readom' {
    assert "$src/_readom" is_file
}

@test 'src has _readpe' {
    assert "$src/_readpe" is_file
}

@test 'src has _readprofile' {
    assert "$src/_readprofile" is_file
}

@test 'src has _readpst' {
    assert "$src/_readpst" is_file
}

@test 'src has _readtags' {
    assert "$src/_readtags" is_file
}

@test 'src has _readtapi' {
    assert "$src/_readtapi" is_file
}

@test 'src has _reaver' {
    assert "$src/_reaver" is_file
}

@test 'src has _reboot' {
    assert "$src/_reboot" is_file
}

@test 'src has _rec' {
    assert "$src/_rec" is_file
}

@test 'src has _recbin.pl' {
    assert "$src/_recbin.pl" is_file
}

@test 'src has _recode' {
    assert "$src/_recode" is_file
}

@test 'src has _recode-sr-latin' {
    assert "$src/_recode-sr-latin" is_file
}

@test 'src has _recon-cli' {
    assert "$src/_recon-cli" is_file
}

@test 'src has _recon-ng' {
    assert "$src/_recon-ng" is_file
}

@test 'src has _recon-rpc' {
    assert "$src/_recon-rpc" is_file
}

@test 'src has _recordmydesktop' {
    assert "$src/_recordmydesktop" is_file
}

@test 'src has _recoverjpeg' {
    assert "$src/_recoverjpeg" is_file
}

@test 'src has _recovermov' {
    assert "$src/_recovermov" is_file
}

@test 'src has _recvtty' {
    assert "$src/_recvtty" is_file
}

@test 'src has _red' {
    assert "$src/_red" is_file
}

@test 'src has _redcarpet' {
    assert "$src/_redcarpet" is_file
}

@test 'src has _redis-benchmark' {
    assert "$src/_redis-benchmark" is_file
}

@test 'src has _redis-cli' {
    assert "$src/_redis-cli" is_file
}

@test 'src has _redis-commander' {
    assert "$src/_redis-commander" is_file
}

@test 'src has _redis-sentinel' {
    assert "$src/_redis-sentinel" is_file
}

@test 'src has _redshift' {
    assert "$src/_redshift" is_file
}

@test 'src has _redsocks' {
    assert "$src/_redsocks" is_file
}

@test 'src has _refine' {
    assert "$src/_refine" is_file
}

@test 'src has _reformime' {
    assert "$src/_reformime" is_file
}

@test 'src has _regdiff' {
    assert "$src/_regdiff" is_file
}

@test 'src has _reged' {
    assert "$src/_reged" is_file
}

@test 'src has _regedit' {
    assert "$src/_regedit" is_file
}

@test 'src has _regfexport' {
    assert "$src/_regfexport" is_file
}

@test 'src has _regfinfo' {
    assert "$src/_regfinfo" is_file
}

@test 'src has _regfmount' {
    assert "$src/_regfmount" is_file
}

@test 'src has _register-python-argcomplete' {
    assert "$src/_register-python-argcomplete" is_file
}

@test 'src has _register-python-argcomplete3' {
    assert "$src/_register-python-argcomplete3" is_file
}

@test 'src has _registry-read.py' {
    assert "$src/_registry-read.py" is_file
}

@test 'src has _regmerge' {
    assert "$src/_regmerge" is_file
}

@test 'src has _regpatch' {
    assert "$src/_regpatch" is_file
}

@test 'src has _regshell' {
    assert "$src/_regshell" is_file
}

@test 'src has _regtime.pl' {
    assert "$src/_regtime.pl" is_file
}

@test 'src has _regtree' {
    assert "$src/_regtree" is_file
}

@test 'src has _reify' {
    assert "$src/_reify" is_file
}

@test 'src has _reindexdb' {
    assert "$src/_reindexdb" is_file
}

@test 'src has _reiserfsck' {
    assert "$src/_reiserfsck" is_file
}

@test 'src has _reiserfstune' {
    assert "$src/_reiserfstune" is_file
}

@test 'src has _rejarForAnalysis' {
    assert "$src/_rejarForAnalysis" is_file
}

@test 'src has _remmina' {
    assert "$src/_remmina" is_file
}

@test 'src has _remmina-file-wrapper' {
    assert "$src/_remmina-file-wrapper" is_file
}

@test 'src has _remote-share' {
    assert "$src/_remote-share" is_file
}

@test 'src has _remote-viewer' {
    assert "$src/_remote-viewer" is_file
}

@test 'src has _removeSpaces.sh' {
    assert "$src/_removeSpaces.sh" is_file
}

@test 'src has _remunge' {
    assert "$src/_remunge" is_file
}

@test 'src has _remuxer' {
    assert "$src/_remuxer" is_file
}

@test 'src has _rename' {
    assert "$src/_rename" is_file
}

@test 'src has _rename.ul' {
    assert "$src/_rename.ul" is_file
}

@test 'src has _render_hlg' {
    assert "$src/_render_hlg" is_file
}

@test 'src has _renew-dummy-cert' {
    assert "$src/_renew-dummy-cert" is_file
}

@test 'src has _renice' {
    assert "$src/_renice" is_file
}

@test 'src has _reordercap' {
    assert "$src/_reordercap" is_file
}

@test 'src has _repc' {
    assert "$src/_repc" is_file
}

@test 'src has _replay.pl' {
    assert "$src/_replay.pl" is_file
}

@test 'src has _repo-add' {
    assert "$src/_repo-add" is_file
}

@test 'src has _repo-remove' {
    assert "$src/_repo-remove" is_file
}

@test 'src has _repo2solv' {
    assert "$src/_repo2solv" is_file
}

@test 'src has _repodiff' {
    assert "$src/_repodiff" is_file
}

@test 'src has _repomdxml2solv' {
    assert "$src/_repomdxml2solv" is_file
}

@test 'src has _report-cli' {
    assert "$src/_report-cli" is_file
}

@test 'src has _report-gtk' {
    assert "$src/_report-gtk" is_file
}

@test 'src has _reporter-bugzilla' {
    assert "$src/_reporter-bugzilla" is_file
}

@test 'src has _reporter-kerneloops' {
    assert "$src/_reporter-kerneloops" is_file
}

@test 'src has _reporter-mailx' {
    assert "$src/_reporter-mailx" is_file
}

@test 'src has _reporter-mantisbt' {
    assert "$src/_reporter-mantisbt" is_file
}

@test 'src has _reporter-print' {
    assert "$src/_reporter-print" is_file
}

@test 'src has _reporter-rhtsupport' {
    assert "$src/_reporter-rhtsupport" is_file
}

@test 'src has _reporter-systemd-journal' {
    assert "$src/_reporter-systemd-journal" is_file
}

@test 'src has _reporter-upload' {
    assert "$src/_reporter-upload" is_file
}

@test 'src has _reporter-ureport' {
    assert "$src/_reporter-ureport" is_file
}

@test 'src has _reposync' {
    assert "$src/_reposync" is_file
}

@test 'src has _repotrack' {
    assert "$src/_repotrack" is_file
}

@test 'src has _repquota' {
    assert "$src/_repquota" is_file
}

@test 'src has _repstopdf' {
    assert "$src/_repstopdf" is_file
}

@test 'src has _reptyr' {
    assert "$src/_reptyr" is_file
}

@test 'src has _rescan-scsi-bus.sh' {
    assert "$src/_rescan-scsi-bus.sh" is_file
}

@test 'src has _resgen' {
    assert "$src/_resgen" is_file
}

@test 'src has _resgen2' {
    assert "$src/_resgen2" is_file
}

@test 'src has _resize.f2fs' {
    assert "$src/_resize.f2fs" is_file
}

@test 'src has _resizepart' {
    assert "$src/_resizepart" is_file
}

@test 'src has _resolvconf' {
    assert "$src/_resolvconf" is_file
}

@test 'src has _resolveLinks' {
    assert "$src/_resolveLinks" is_file
}

@test 'src has _resolve_stack_dump' {
    assert "$src/_resolve_stack_dump" is_file
}

@test 'src has _resolveip' {
    assert "$src/_resolveip" is_file
}

@test 'src has _respberry' {
    assert "$src/_respberry" is_file
}

@test 'src has _responder' {
    assert "$src/_responder" is_file
}

@test 'src has _responder-DHCP' {
    assert "$src/_responder-DHCP" is_file
}

@test 'src has _responder-Icmp-Redirect' {
    assert "$src/_responder-Icmp-Redirect" is_file
}

@test 'src has _responder-MultiRelay' {
    assert "$src/_responder-MultiRelay" is_file
}

@test 'src has _responder-RunFinger' {
    assert "$src/_responder-RunFinger" is_file
}

@test 'src has _restcli' {
    assert "$src/_restcli" is_file
}

@test 'src has _restic2john' {
    assert "$src/_restic2john" is_file
}

@test 'src has _restorecon_xattr' {
    assert "$src/_restorecon_xattr" is_file
}

@test 'src has _revfix' {
    assert "$src/_revfix" is_file
}

@test 'src has _revoke' {
    assert "$src/_revoke" is_file
}

@test 'src has _rfcat' {
    assert "$src/_rfcat" is_file
}

@test 'src has _rfcat_msfrelay' {
    assert "$src/_rfcat_msfrelay" is_file
}

@test 'src has _rfcomm' {
    assert "$src/_rfcomm" is_file
}

@test 'src has _rfcomm_pppd' {
    assert "$src/_rfcomm_pppd" is_file
}

@test 'src has _rfcomm_sppd' {
    assert "$src/_rfcomm_sppd" is_file
}

@test 'src has _rfddump' {
    assert "$src/_rfddump" is_file
}

@test 'src has _rfdformat' {
    assert "$src/_rfdformat" is_file
}

@test 'src has _rfidiot-cli.py' {
    assert "$src/_rfidiot-cli.py" is_file
}

@test 'src has _rfkill' {
    assert "$src/_rfkill" is_file
}

@test 'src has _rg' {
    assert "$src/_rg" is_file
}

@test 'src has _rgrep' {
    assert "$src/_rgrep" is_file
}

@test 'src has _rhash' {
    assert "$src/_rhash" is_file
}

@test 'src has _rhino' {
    assert "$src/_rhino" is_file
}

@test 'src has _rhino-idswitch' {
    assert "$src/_rhino-idswitch" is_file
}

@test 'src has _rhythmbox' {
    assert "$src/_rhythmbox" is_file
}

@test 'src has _rhythmbox-client' {
    assert "$src/_rhythmbox-client" is_file
}

@test 'src has _ri2.3' {
    assert "$src/_ri2.3" is_file
}

@test 'src has _ri2.5' {
    assert "$src/_ri2.5" is_file
}

@test 'src has _ri2.7' {
    assert "$src/_ri2.7" is_file
}

@test 'src has _ri24' {
    assert "$src/_ri24" is_file
}

@test 'src has _ri3.1' {
    assert "$src/_ri3.1" is_file
}

@test 'src has _richtext' {
    assert "$src/_richtext" is_file
}

@test 'src has _rifiuti' {
    assert "$src/_rifiuti" is_file
}

@test 'src has _rifiuti-vista' {
    assert "$src/_rifiuti-vista" is_file
}

@test 'src has _rifiuti2' {
    assert "$src/_rifiuti2" is_file
}

@test 'src has _rifle' {
    assert "$src/_rifle" is_file
}

@test 'src has _rig' {
    assert "$src/_rig" is_file
}

@test 'src has _rimraf' {
    assert "$src/_rimraf" is_file
}

@test 'src has _rip.pl' {
    assert "$src/_rip.pl" is_file
}

@test 'src has _rist2rist' {
    assert "$src/_rist2rist" is_file
}

@test 'src has _ristreceiver' {
    assert "$src/_ristreceiver" is_file
}

@test 'src has _ristsender' {
    assert "$src/_ristsender" is_file
}

@test 'src has _rita' {
    assert "$src/_rita" is_file
}

@test 'src has _rizin' {
    assert "$src/_rizin" is_file
}

@test 'src has _rjoe' {
    assert "$src/_rjoe" is_file
}

@test 'src has _rkhunter' {
    assert "$src/_rkhunter" is_file
}

@test 'src has _rlinetd' {
    assert "$src/_rlinetd" is_file
}

@test 'src has _rlm_ippool_tool' {
    assert "$src/_rlm_ippool_tool" is_file
}

@test 'src has _rlogind' {
    assert "$src/_rlogind" is_file
}

@test 'src has _rlwrap' {
    assert "$src/_rlwrap" is_file
}

@test 'src has _rmcp' {
    assert "$src/_rmcp" is_file
}

@test 'src has _rmcp-ping' {
    assert "$src/_rmcp-ping" is_file
}

@test 'src has _rmcpping' {
    assert "$src/_rmcpping" is_file
}

@test 'src has _rmmod' {
    assert "$src/_rmmod" is_file
}

@test 'src has _rmt' {
    assert "$src/_rmt" is_file
}

@test 'src has _rmt-tar' {
    assert "$src/_rmt-tar" is_file
}

@test 'src has _rnano' {
    assert "$src/_rnano" is_file
}

@test 'src has _rndc-confgen' {
    assert "$src/_rndc-confgen" is_file
}

@test 'src has _rngd' {
    assert "$src/_rngd" is_file
}

@test 'src has _rngtest' {
    assert "$src/_rngtest" is_file
}

@test 'src has _roff2dvi' {
    assert "$src/_roff2dvi" is_file
}

@test 'src has _roff2html' {
    assert "$src/_roff2html" is_file
}

@test 'src has _roff2pdf' {
    assert "$src/_roff2pdf" is_file
}

@test 'src has _roff2ps' {
    assert "$src/_roff2ps" is_file
}

@test 'src has _roff2text' {
    assert "$src/_roff2text" is_file
}

@test 'src has _roff2x' {
    assert "$src/_roff2x" is_file
}

@test 'src has _rofiles-fuse' {
    assert "$src/_rofiles-fuse" is_file
}

@test 'src has _rootlesskit' {
    assert "$src/_rootlesskit" is_file
}

@test 'src has _rootlesskit-docker-proxy' {
    assert "$src/_rootlesskit-docker-proxy" is_file
}

@test 'src has _roqet' {
    assert "$src/_roqet" is_file
}

@test 'src has _rotatelogs' {
    assert "$src/_rotatelogs" is_file
}

@test 'src has _route' {
    assert "$src/_route" is_file
}

@test 'src has _rpc.gssd' {
    assert "$src/_rpc.gssd" is_file
}

@test 'src has _rpc.idmapd' {
    assert "$src/_rpc.idmapd" is_file
}

@test 'src has _rpc.mountd' {
    assert "$src/_rpc.mountd" is_file
}

@test 'src has _rpc.nfsd' {
    assert "$src/_rpc.nfsd" is_file
}

@test 'src has _rpc.rquotad' {
    assert "$src/_rpc.rquotad" is_file
}

@test 'src has _rpc.statd' {
    assert "$src/_rpc.statd" is_file
}

@test 'src has _rpc.svcgssd' {
    assert "$src/_rpc.svcgssd" is_file
}

@test 'src has _rpcclient' {
    assert "$src/_rpcclient" is_file
}

@test 'src has _rpcctl' {
    assert "$src/_rpcctl" is_file
}

@test 'src has _rpcgen' {
    assert "$src/_rpcgen" is_file
}

@test 'src has _rpcinfo' {
    assert "$src/_rpcinfo" is_file
}

@test 'src has _rpdfcrop' {
    assert "$src/_rpdfcrop" is_file
}

@test 'src has _rping' {
    assert "$src/_rping" is_file
}

@test 'src has _rpm' {
    assert "$src/_rpm" is_file
}

@test 'src has _rpmbuild' {
    assert "$src/_rpmbuild" is_file
}

@test 'src has _rpmdb' {
    assert "$src/_rpmdb" is_file
}

@test 'src has _rpmdb2solv' {
    assert "$src/_rpmdb2solv" is_file
}

@test 'src has _rpmgraph' {
    assert "$src/_rpmgraph" is_file
}

@test 'src has _rpmkeys' {
    assert "$src/_rpmkeys" is_file
}

@test 'src has _rpmlua' {
    assert "$src/_rpmlua" is_file
}

@test 'src has _rpmmd2solv' {
    assert "$src/_rpmmd2solv" is_file
}

@test 'src has _rpmquery' {
    assert "$src/_rpmquery" is_file
}

@test 'src has _rpmsign' {
    assert "$src/_rpmsign" is_file
}

@test 'src has _rpmsort' {
    assert "$src/_rpmsort" is_file
}

@test 'src has _rpmspec' {
    assert "$src/_rpmspec" is_file
}

@test 'src has _rpmverify' {
    assert "$src/_rpmverify" is_file
}

@test 'src has _rq' {
    assert "$src/_rq" is_file
}

@test 'src has _rqinfo' {
    assert "$src/_rqinfo" is_file
}

@test 'src has _rqworker' {
    assert "$src/_rqworker" is_file
}

@test 'src has _rsaperf' {
    assert "$src/_rsaperf" is_file
}

@test 'src has _rscreen' {
    assert "$src/_rscreen" is_file
}

@test 'src has _rsh-redone-rlogin' {
    assert "$src/_rsh-redone-rlogin" is_file
}

@test 'src has _rsh-redone-rsh' {
    assert "$src/_rsh-redone-rsh" is_file
}

@test 'src has _rshd' {
    assert "$src/_rshd" is_file
}

@test 'src has _rsmangler' {
    assert "$src/_rsmangler" is_file
}

@test 'src has _rsmtp' {
    assert "$src/_rsmtp" is_file
}

@test 'src has _rst-buildhtml' {
    assert "$src/_rst-buildhtml" is_file
}

@test 'src has _rst2html' {
    assert "$src/_rst2html" is_file
}

@test 'src has _rst2html.py' {
    assert "$src/_rst2html.py" is_file
}

@test 'src has _rst2html4' {
    assert "$src/_rst2html4" is_file
}

@test 'src has _rst2html4.py' {
    assert "$src/_rst2html4.py" is_file
}

@test 'src has _rst2html5' {
    assert "$src/_rst2html5" is_file
}

@test 'src has _rst2html5.py' {
    assert "$src/_rst2html5.py" is_file
}

@test 'src has _rst2latex' {
    assert "$src/_rst2latex" is_file
}

@test 'src has _rst2latex.py' {
    assert "$src/_rst2latex.py" is_file
}

@test 'src has _rst2man' {
    assert "$src/_rst2man" is_file
}

@test 'src has _rst2man.py' {
    assert "$src/_rst2man.py" is_file
}

@test 'src has _rst2odt' {
    assert "$src/_rst2odt" is_file
}

@test 'src has _rst2odt.py' {
    assert "$src/_rst2odt.py" is_file
}

@test 'src has _rst2pseudoxml' {
    assert "$src/_rst2pseudoxml" is_file
}

@test 'src has _rst2pseudoxml.py' {
    assert "$src/_rst2pseudoxml.py" is_file
}

@test 'src has _rst2s5' {
    assert "$src/_rst2s5" is_file
}

@test 'src has _rst2s5.py' {
    assert "$src/_rst2s5.py" is_file
}

@test 'src has _rst2xetex' {
    assert "$src/_rst2xetex" is_file
}

@test 'src has _rst2xetex.py' {
    assert "$src/_rst2xetex.py" is_file
}

@test 'src has _rst2xml' {
    assert "$src/_rst2xml" is_file
}

@test 'src has _rst2xml.py' {
    assert "$src/_rst2xml.py" is_file
}

@test 'src has _rstart' {
    assert "$src/_rstart" is_file
}

@test 'src has _rstconv' {
    assert "$src/_rstconv" is_file
}

@test 'src has _rstpep2html' {
    assert "$src/_rstpep2html" is_file
}

@test 'src has _rstpep2html.py' {
    assert "$src/_rstpep2html.py" is_file
}

@test 'src has _rsvg-convert' {
    assert "$src/_rsvg-convert" is_file
}

@test 'src has _rsvg-view-3' {
    assert "$src/_rsvg-view-3" is_file
}

@test 'src has _rsyncd' {
    assert "$src/_rsyncd" is_file
}

@test 'src has _rsyncstats' {
    assert "$src/_rsyncstats" is_file
}

@test 'src has _rtail' {
    assert "$src/_rtail" is_file
}

@test 'src has _rtcwake' {
    assert "$src/_rtcwake" is_file
}

@test 'src has _rtfm' {
    assert "$src/_rtfm" is_file
}

@test 'src has _rtkitctl' {
    assert "$src/_rtkitctl" is_file
}

@test 'src has _rtl_fm' {
    assert "$src/_rtl_fm" is_file
}

@test 'src has _rtl_power' {
    assert "$src/_rtl_power" is_file
}

@test 'src has _rtlfw' {
    assert "$src/_rtlfw" is_file
}

@test 'src has _rtmpdump' {
    assert "$src/_rtmpdump" is_file
}

@test 'src has _rtmpgw' {
    assert "$src/_rtmpgw" is_file
}

@test 'src has _rtop' {
    assert "$src/_rtop" is_file
}

@test 'src has _rtpbreak' {
    assert "$src/_rtpbreak" is_file
}

@test 'src has _rtpinsertsound' {
    assert "$src/_rtpinsertsound" is_file
}

@test 'src has _rtpmixsound' {
    assert "$src/_rtpmixsound" is_file
}

@test 'src has _rtstat' {
    assert "$src/_rtstat" is_file
}

@test 'src has _rubberband' {
    assert "$src/_rubberband" is_file
}

@test 'src has _rubberband-r3' {
    assert "$src/_rubberband-r3" is_file
}

@test 'src has _ruby-parse' {
    assert "$src/_ruby-parse" is_file
}

@test 'src has _ruby-rewrite' {
    assert "$src/_ruby-rewrite" is_file
}

@test 'src has _ruby2.1' {
    assert "$src/_ruby2.1" is_file
}

@test 'src has _ruby2.3' {
    assert "$src/_ruby2.3" is_file
}

@test 'src has _ruby2.5' {
    assert "$src/_ruby2.5" is_file
}

@test 'src has _ruby2.7' {
    assert "$src/_ruby2.7" is_file
}

@test 'src has _ruby24' {
    assert "$src/_ruby24" is_file
}

@test 'src has _ruby27' {
    assert "$src/_ruby27" is_file
}

@test 'src has _ruby3.1' {
    assert "$src/_ruby3.1" is_file
}

@test 'src has _rubydns-check' {
    assert "$src/_rubydns-check" is_file
}

@test 'src has _rulegen' {
    assert "$src/_rulegen" is_file
}

@test 'src has _run-on-binaries-in.sh' {
    assert "$src/_run-on-binaries-in.sh" is_file
}

@test 'src has _run-p' {
    assert "$src/_run-p" is_file
}

@test 'src has _run-parts' {
    assert "$src/_run-parts" is_file
}

@test 'src has _run-s' {
    assert "$src/_run-s" is_file
}

@test 'src has _run-with-aspell' {
    assert "$src/_run-with-aspell" is_file
}

@test 'src has _runantlr' {
    assert "$src/_runantlr" is_file
}

@test 'src has _runcon' {
    assert "$src/_runcon" is_file
}

@test 'src has _runghc' {
    assert "$src/_runghc" is_file
}

@test 'src has _runghc-8.10.3' {
    assert "$src/_runghc-8.10.3" is_file
}

@test 'src has _runghc-8.10.7' {
    assert "$src/_runghc-8.10.7" is_file
}

@test 'src has _runghc-8.4.4' {
    assert "$src/_runghc-8.4.4" is_file
}

@test 'src has _runghc-8.6.5' {
    assert "$src/_runghc-8.6.5" is_file
}

@test 'src has _runghc-9.10.1' {
    assert "$src/_runghc-9.10.1" is_file
}

@test 'src has _rungs' {
    assert "$src/_rungs" is_file
}

@test 'src has _runhaskell' {
    assert "$src/_runhaskell" is_file
}

@test 'src has _runhaskell-9.4.4' {
    assert "$src/_runhaskell-9.4.4" is_file
}

@test 'src has _runhaskell-9.8.2' {
    assert "$src/_runhaskell-9.8.2" is_file
}

@test 'src has _runlevel' {
    assert "$src/_runlevel" is_file
}

@test 'src has _runq' {
    assert "$src/_runq" is_file
}

@test 'src has _runtexshebang' {
    assert "$src/_runtexshebang" is_file
}

@test 'src has _runuser' {
    assert "$src/_runuser" is_file
}

@test 'src has _runxlrd.py' {
    assert "$src/_runxlrd.py" is_file
}

@test 'src has _rust-gdb' {
    assert "$src/_rust-gdb" is_file
}

@test 'src has _rust-lldb' {
    assert "$src/_rust-lldb" is_file
}

@test 'src has _rustc' {
    assert "$src/_rustc" is_file
}

@test 'src has _rustdoc' {
    assert "$src/_rustdoc" is_file
}

@test 'src has _rustfmt' {
    assert "$src/_rustfmt" is_file
}

@test 'src has _rustup' {
    assert "$src/_rustup" is_file
}

@test 'src has _rustup-init' {
    assert "$src/_rustup-init" is_file
}

@test 'src has _rva2ofs' {
    assert "$src/_rva2ofs" is_file
}

@test 'src has _rvi' {
    assert "$src/_rvi" is_file
}

@test 'src has _rvictl' {
    assert "$src/_rvictl" is_file
}

@test 'src has _rview' {
    assert "$src/_rview" is_file
}

@test 'src has _rview.nvim' {
    assert "$src/_rview.nvim" is_file
}

@test 'src has _rvim' {
    assert "$src/_rvim" is_file
}

@test 'src has _rvim.nvim' {
    assert "$src/_rvim.nvim" is_file
}

@test 'src has _rwbypid.d' {
    assert "$src/_rwbypid.d" is_file
}

@test 'src has _rwbytype.d' {
    assert "$src/_rwbytype.d" is_file
}

@test 'src has _rwsnoop' {
    assert "$src/_rwsnoop" is_file
}

@test 'src has _rx' {
    assert "$src/_rx" is_file
}

@test 'src has _rygel' {
    assert "$src/_rygel" is_file
}

@test 'src has _rz' {
    assert "$src/_rz" is_file
}

@test 'src has _rz-agent' {
    assert "$src/_rz-agent" is_file
}

@test 'src has _rz-asm' {
    assert "$src/_rz-asm" is_file
}

@test 'src has _rz-ax' {
    assert "$src/_rz-ax" is_file
}

@test 'src has _rz-bin' {
    assert "$src/_rz-bin" is_file
}

@test 'src has _rz-diff' {
    assert "$src/_rz-diff" is_file
}

@test 'src has _rz-find' {
    assert "$src/_rz-find" is_file
}

@test 'src has _rz-gg' {
    assert "$src/_rz-gg" is_file
}

@test 'src has _rz-hash' {
    assert "$src/_rz-hash" is_file
}

@test 'src has _rz-pm' {
    assert "$src/_rz-pm" is_file
}

@test 'src has _rz-sign' {
    assert "$src/_rz-sign" is_file
}

@test 'src has _rzsh' {
    assert "$src/_rzsh" is_file
}

@test 'src has _s' {
    assert "$src/_s" is_file
}

@test 'src has _s2p5.18' {
    assert "$src/_s2p5.18" is_file
}

@test 'src has _s3fs' {
    assert "$src/_s3fs" is_file
}

@test 'src has _s3put' {
    assert "$src/_s3put" is_file
}

@test 'src has _sacctmgr' {
    assert "$src/_sacctmgr" is_file
}

@test 'src has _safaridriver' {
    assert "$src/_safaridriver" is_file
}

@test 'src has _safe_camlp4' {
    assert "$src/_safe_camlp4" is_file
}

@test 'src has _safecopy' {
    assert "$src/_safecopy" is_file
}

@test 'src has _saidar' {
    assert "$src/_saidar" is_file
}

@test 'src has _salloc' {
    assert "$src/_salloc" is_file
}

@test 'src has _salt-proxy' {
    assert "$src/_salt-proxy" is_file
}

@test 'src has _samba' {
    assert "$src/_samba" is_file
}

@test 'src has _samba-gpupdate' {
    assert "$src/_samba-gpupdate" is_file
}

@test 'src has _samba-ldbadd' {
    assert "$src/_samba-ldbadd" is_file
}

@test 'src has _samba-ldbdel' {
    assert "$src/_samba-ldbdel" is_file
}

@test 'src has _samba-ldbdump' {
    assert "$src/_samba-ldbdump" is_file
}

@test 'src has _samba-ldbedit' {
    assert "$src/_samba-ldbedit" is_file
}

@test 'src has _samba-ldbmodify' {
    assert "$src/_samba-ldbmodify" is_file
}

@test 'src has _samba-ldbrename' {
    assert "$src/_samba-ldbrename" is_file
}

@test 'src has _samba-ldbsearch' {
    assert "$src/_samba-ldbsearch" is_file
}

@test 'src has _samba-regedit' {
    assert "$src/_samba-regedit" is_file
}

@test 'src has _samba-tool' {
    assert "$src/_samba-tool" is_file
}

@test 'src has _samba_dnsupdate' {
    assert "$src/_samba_dnsupdate" is_file
}

@test 'src has _samba_downgrade_db' {
    assert "$src/_samba_downgrade_db" is_file
}

@test 'src has _samba_kcc' {
    assert "$src/_samba_kcc" is_file
}

@test 'src has _samba_spnupdate' {
    assert "$src/_samba_spnupdate" is_file
}

@test 'src has _samba_upgradedns' {
    assert "$src/_samba_upgradedns" is_file
}

@test 'src has _samdump2' {
    assert "$src/_samdump2" is_file
}

@test 'src has _samp_hub' {
    assert "$src/_samp_hub" is_file
}

@test 'src has _sampasswd' {
    assert "$src/_sampasswd" is_file
}

@test 'src has _sample' {
    assert "$src/_sample" is_file
}

@test 'src has _samunlock' {
    assert "$src/_samunlock" is_file
}

@test 'src has _samusrgrp' {
    assert "$src/_samusrgrp" is_file
}

@test 'src has _sancov' {
    assert "$src/_sancov" is_file
}

@test 'src has _sancov12' {
    assert "$src/_sancov12" is_file
}

@test 'src has _sancov60' {
    assert "$src/_sancov60" is_file
}

@test 'src has _sandbox-exec' {
    assert "$src/_sandbox-exec" is_file
}

@test 'src has _sandi' {
    assert "$src/_sandi" is_file
}

@test 'src has _sandstorm' {
    assert "$src/_sandstorm" is_file
}

@test 'src has _sane-find-scanner' {
    assert "$src/_sane-find-scanner" is_file
}

@test 'src has _saned' {
    assert "$src/_saned" is_file
}

@test 'src has _sanstats' {
    assert "$src/_sanstats" is_file
}

@test 'src has _sanstats-10' {
    assert "$src/_sanstats-10" is_file
}

@test 'src has _sanstats-11' {
    assert "$src/_sanstats-11" is_file
}

@test 'src has _sanstats-14' {
    assert "$src/_sanstats-14" is_file
}

@test 'src has _sanstats-4.0' {
    assert "$src/_sanstats-4.0" is_file
}

@test 'src has _sanstats-6.0' {
    assert "$src/_sanstats-6.0" is_file
}

@test 'src has _sanstats-7' {
    assert "$src/_sanstats-7" is_file
}

@test 'src has _sanstats-8' {
    assert "$src/_sanstats-8" is_file
}

@test 'src has _sanstats-9' {
    assert "$src/_sanstats-9" is_file
}

@test 'src has _saquery' {
    assert "$src/_saquery" is_file
}

@test 'src has _sar.sysstat' {
    assert "$src/_sar.sysstat" is_file
}

@test 'src has _saslauthd' {
    assert "$src/_saslauthd" is_file
}

@test 'src has _sasldblistusers2' {
    assert "$src/_sasldblistusers2" is_file
}

@test 'src has _saslpasswd2' {
    assert "$src/_saslpasswd2" is_file
}

@test 'src has _sass-convert' {
    assert "$src/_sass-convert" is_file
}

@test 'src has _sattach' {
    assert "$src/_sattach" is_file
}

@test 'src has _savelog' {
    assert "$src/_savelog" is_file
}

@test 'src has _sb' {
    assert "$src/_sb" is_file
}

@test 'src has _sbatch' {
    assert "$src/_sbatch" is_file
}

@test 'src has _sbattach' {
    assert "$src/_sbattach" is_file
}

@test 'src has _sbcast' {
    assert "$src/_sbcast" is_file
}

@test 'src has _sbcdec' {
    assert "$src/_sbcdec" is_file
}

@test 'src has _sbcenc' {
    assert "$src/_sbcenc" is_file
}

@test 'src has _sbd' {
    assert "$src/_sbd" is_file
}

@test 'src has _sbiload' {
    assert "$src/_sbiload" is_file
}

@test 'src has _sbkeysync' {
    assert "$src/_sbkeysync" is_file
}

@test 'src has _sbsiglist' {
    assert "$src/_sbsiglist" is_file
}

@test 'src has _sbsign' {
    assert "$src/_sbsign" is_file
}

@test 'src has _sbvarsign' {
    assert "$src/_sbvarsign" is_file
}

@test 'src has _sbverify' {
    assert "$src/_sbverify" is_file
}

@test 'src has _sc-hsm-tool' {
    assert "$src/_sc-hsm-tool" is_file
}

@test 'src has _scalpel' {
    assert "$src/_scalpel" is_file
}

@test 'src has _scan-build12' {
    assert "$src/_scan-build12" is_file
}

@test 'src has _scan-build60' {
    assert "$src/_scan-build60" is_file
}

@test 'src has _scan-view12' {
    assert "$src/_scan-view12" is_file
}

@test 'src has _scan-view60' {
    assert "$src/_scan-view60" is_file
}

@test 'src has _scancel' {
    assert "$src/_scancel" is_file
}

@test 'src has _scanelf' {
    assert "$src/_scanelf" is_file
}

@test 'src has _scanin' {
    assert "$src/_scanin" is_file
}

@test 'src has _scapy' {
    assert "$src/_scapy" is_file
}

@test 'src has _scapy3' {
    assert "$src/_scapy3" is_file
}

@test 'src has _scarb' {
    assert "$src/_scarb" is_file
}

@test 'src has _scarb-cairo-run' {
    assert "$src/_scarb-cairo-run" is_file
}

@test 'src has _scarb-cairo-test' {
    assert "$src/_scarb-cairo-test" is_file
}

@test 'src has _scarb-doc' {
    assert "$src/_scarb-doc" is_file
}

@test 'src has _scarb-snforge-test-collector' {
    assert "$src/_scarb-snforge-test-collector" is_file
}

@test 'src has _scdaemon' {
    assert "$src/_scdaemon" is_file
}

@test 'src has _scgcheck' {
    assert "$src/_scgcheck" is_file
}

@test 'src has _scgskeleton' {
    assert "$src/_scgskeleton" is_file
}

@test 'src has _schema2ldif' {
    assert "$src/_schema2ldif" is_file
}

@test 'src has _schemagen' {
    assert "$src/_schemagen" is_file
}

@test 'src has _scheme' {
    assert "$src/_scheme" is_file
}

@test 'src has _scl' {
    assert "$src/_scl" is_file
}

@test 'src has _scl_source' {
    assert "$src/_scl_source" is_file
}

@test 'src has _scontrol' {
    assert "$src/_scontrol" is_file
}

@test 'src has _scotest' {
    assert "$src/_scotest" is_file
}

@test 'src has _scour' {
    assert "$src/_scour" is_file
}

@test 'src has _scratch.old' {
    assert "$src/_scratch.old" is_file
}

@test 'src has _screencapture' {
    assert "$src/_screencapture" is_file
}

@test 'src has _scribble' {
    assert "$src/_scribble" is_file
}

@test 'src has _script' {
    assert "$src/_script" is_file
}

@test 'src has _scriptlive' {
    assert "$src/_scriptlive" is_file
}

@test 'src has _scriptor' {
    assert "$src/_scriptor" is_file
}

@test 'src has _scriptreplay' {
    assert "$src/_scriptreplay" is_file
}

@test 'src has _scrollkeeper-config' {
    assert "$src/_scrollkeeper-config" is_file
}

@test 'src has _scrollkeeper-update' {
    assert "$src/_scrollkeeper-update" is_file
}

@test 'src has _scrontab' {
    assert "$src/_scrontab" is_file
}

@test 'src has _scrot' {
    assert "$src/_scrot" is_file
}

@test 'src has _scrounge-ntfs' {
    assert "$src/_scrounge-ntfs" is_file
}

@test 'src has _scsi-rescan' {
    assert "$src/_scsi-rescan" is_file
}

@test 'src has _scsi_logging_level' {
    assert "$src/_scsi_logging_level" is_file
}

@test 'src has _scsi_mandat' {
    assert "$src/_scsi_mandat" is_file
}

@test 'src has _scsi_readcap' {
    assert "$src/_scsi_readcap" is_file
}

@test 'src has _scsi_ready' {
    assert "$src/_scsi_ready" is_file
}

@test 'src has _scsi_satl' {
    assert "$src/_scsi_satl" is_file
}

@test 'src has _scsi_start' {
    assert "$src/_scsi_start" is_file
}

@test 'src has _scsi_stop' {
    assert "$src/_scsi_stop" is_file
}

@test 'src has _scsi_temperature' {
    assert "$src/_scsi_temperature" is_file
}

@test 'src has _scss' {
    assert "$src/_scss" is_file
}

@test 'src has _sctest' {
    assert "$src/_sctest" is_file
}

@test 'src has _sctp_darn' {
    assert "$src/_sctp_darn" is_file
}

@test 'src has _sctp_status' {
    assert "$src/_sctp_status" is_file
}

@test 'src has _sctp_test' {
    assert "$src/_sctp_test" is_file
}

@test 'src has _sctpscan' {
    assert "$src/_sctpscan" is_file
}

@test 'src has _sd-helper' {
    assert "$src/_sd-helper" is_file
}

@test 'src has _sd2raw' {
    assert "$src/_sd2raw" is_file
}

@test 'src has _sd2svg' {
    assert "$src/_sd2svg" is_file
}

@test 'src has _sdc2csv' {
    assert "$src/_sdc2csv" is_file
}

@test 'src has _sdiag' {
    assert "$src/_sdiag" is_file
}

@test 'src has _sdiff' {
    assert "$src/_sdiff" is_file
}

@test 'src has _sdkmanager' {
    assert "$src/_sdkmanager" is_file
}

@test 'src has _sdpcontrol' {
    assert "$src/_sdpcontrol" is_file
}

@test 'src has _sdpd' {
    assert "$src/_sdpd" is_file
}

@test 'src has _sdptool' {
    assert "$src/_sdptool" is_file
}

@test 'src has _sdw2html' {
    assert "$src/_sdw2html" is_file
}

@test 'src has _sdw2odt' {
    assert "$src/_sdw2odt" is_file
}

@test 'src has _seahorse' {
    assert "$src/_seahorse" is_file
}

@test 'src has _seahorse-daemon' {
    assert "$src/_seahorse-daemon" is_file
}

@test 'src has _search' {
    assert "$src/_search" is_file
}

@test 'src has _searchsploit' {
    assert "$src/_searchsploit" is_file
}

@test 'src has _seccompagent' {
    assert "$src/_seccompagent" is_file
}

@test 'src has _secon' {
    assert "$src/_secon" is_file
}

@test 'src has _secureDelete.sh' {
    assert "$src/_secureDelete.sh" is_file
}

@test 'src has _security' {
    assert "$src/_security" is_file
}

@test 'src has _sedismod' {
    assert "$src/_sedismod" is_file
}

@test 'src has _sedispol' {
    assert "$src/_sedispol" is_file
}

@test 'src has _seeksize.d' {
    assert "$src/_seeksize.d" is_file
}

@test 'src has _sefcontext_compile' {
    assert "$src/_sefcontext_compile" is_file
}

@test 'src has _selabel_digest' {
    assert "$src/_selabel_digest" is_file
}

@test 'src has _selabel_get_digests_all_partial_matches' {
    assert "$src/_selabel_get_digests_all_partial_matches" is_file
}

@test 'src has _selabel_lookup' {
    assert "$src/_selabel_lookup" is_file
}

@test 'src has _selabel_lookup_best_match' {
    assert "$src/_selabel_lookup_best_match" is_file
}

@test 'src has _selabel_partial_match' {
    assert "$src/_selabel_partial_match" is_file
}

@test 'src has _selfsign-getcert' {
    assert "$src/_selfsign-getcert" is_file
}

@test 'src has _selinux_check_access' {
    assert "$src/_selinux_check_access" is_file
}

@test 'src has _selinux_check_securetty_context' {
    assert "$src/_selinux_check_securetty_context" is_file
}

@test 'src has _selinux_restorecon' {
    assert "$src/_selinux_restorecon" is_file
}

@test 'src has _sem' {
    assert "$src/_sem" is_file
}

@test 'src has _semodule' {
    assert "$src/_semodule" is_file
}

@test 'src has _semodule_package' {
    assert "$src/_semodule_package" is_file
}

@test 'src has _semver' {
    assert "$src/_semver" is_file
}

@test 'src has _send2trash' {
    assert "$src/_send2trash" is_file
}

@test 'src has _sendEmail' {
    assert "$src/_sendEmail" is_file
}

@test 'src has _sendiso' {
    assert "$src/_sendiso" is_file
}

@test 'src has _sensible-browser' {
    assert "$src/_sensible-browser" is_file
}

@test 'src has _sensible-editor' {
    assert "$src/_sensible-editor" is_file
}

@test 'src has _sensible-pager' {
    assert "$src/_sensible-pager" is_file
}

@test 'src has _sensors' {
    assert "$src/_sensors" is_file
}

@test 'src has _sepolgen' {
    assert "$src/_sepolgen" is_file
}

@test 'src has _sepolgen-ifgen' {
    assert "$src/_sepolgen-ifgen" is_file
}

@test 'src has _seq2bseq' {
    assert "$src/_seq2bseq" is_file
}

@test 'src has _serdi' {
    assert "$src/_serdi" is_file
}

@test 'src has _serve' {
    assert "$src/_serve" is_file
}

@test 'src has _serverinfo' {
    assert "$src/_serverinfo" is_file
}

@test 'src has _service' {
    assert "$src/_service" is_file
}

@test 'src has _session-migration' {
    assert "$src/_session-migration" is_file
}

@test 'src has _sestatus' {
    assert "$src/_sestatus" is_file
}

@test 'src has _set_unicharset_properties' {
    assert "$src/_set_unicharset_properties" is_file
}

@test 'src has _setarch' {
    assert "$src/_setarch" is_file
}

@test 'src has _setcifsacl' {
    assert "$src/_setcifsacl" is_file
}

@test 'src has _setconsole' {
    assert "$src/_setconsole" is_file
}

@test 'src has _setfacl' {
    assert "$src/_setfacl" is_file
}

@test 'src has _setfattr' {
    assert "$src/_setfattr" is_file
}

@test 'src has _setfont' {
    assert "$src/_setfont" is_file
}

@test 'src has _setkeycodes' {
    assert "$src/_setkeycodes" is_file
}

@test 'src has _setmetamode' {
    assert "$src/_setmetamode" is_file
}

@test 'src has _setpci' {
    assert "$src/_setpci" is_file
}

@test 'src has _setpriv' {
    assert "$src/_setpriv" is_file
}

@test 'src has _setquota' {
    assert "$src/_setquota" is_file
}

@test 'src has _setsid' {
    assert "$src/_setsid" is_file
}

@test 'src has _setterm' {
    assert "$src/_setterm" is_file
}

@test 'src has _setuids.d' {
    assert "$src/_setuids.d" is_file
}

@test 'src has _setup-alpine' {
    assert "$src/_setup-alpine" is_file
}

@test 'src has _setup-apkcache' {
    assert "$src/_setup-apkcache" is_file
}

@test 'src has _setup-bootable' {
    assert "$src/_setup-bootable" is_file
}

@test 'src has _setup-disk' {
    assert "$src/_setup-disk" is_file
}

@test 'src has _setup-dns' {
    assert "$src/_setup-dns" is_file
}

@test 'src has _setup-hostname' {
    assert "$src/_setup-hostname" is_file
}

@test 'src has _setup-interfaces' {
    assert "$src/_setup-interfaces" is_file
}

@test 'src has _setup-lbu' {
    assert "$src/_setup-lbu" is_file
}

@test 'src has _setup-ntp' {
    assert "$src/_setup-ntp" is_file
}

@test 'src has _setup-plt' {
    assert "$src/_setup-plt" is_file
}

@test 'src has _setup-proxy' {
    assert "$src/_setup-proxy" is_file
}

@test 'src has _setup-pulseaudio' {
    assert "$src/_setup-pulseaudio" is_file
}

@test 'src has _setup-sshd' {
    assert "$src/_setup-sshd" is_file
}

@test 'src has _setup-timezone' {
    assert "$src/_setup-timezone" is_file
}

@test 'src has _setup-udev' {
    assert "$src/_setup-udev" is_file
}

@test 'src has _setup-xorg-base' {
    assert "$src/_setup-xorg-base" is_file
}

@test 'src has _setupcon' {
    assert "$src/_setupcon" is_file
}

@test 'src has _setvtrgb' {
    assert "$src/_setvtrgb" is_file
}

@test 'src has _sexp-conv' {
    assert "$src/_sexp-conv" is_file
}

@test 'src has _sfdisk' {
    assert "$src/_sfdisk" is_file
}

@test 'src has _sfdp' {
    assert "$src/_sfdp" is_file
}

@test 'src has _sfuzz' {
    assert "$src/_sfuzz" is_file
}

@test 'src has _sfv-hash' {
    assert "$src/_sfv-hash" is_file
}

@test 'src has _sg' {
    assert "$src/_sg" is_file
}

@test 'src has _sg_bg_ctl' {
    assert "$src/_sg_bg_ctl" is_file
}

@test 'src has _sg_compare_and_write' {
    assert "$src/_sg_compare_and_write" is_file
}

@test 'src has _sg_copy_results' {
    assert "$src/_sg_copy_results" is_file
}

@test 'src has _sg_dd' {
    assert "$src/_sg_dd" is_file
}

@test 'src has _sg_decode_sense' {
    assert "$src/_sg_decode_sense" is_file
}

@test 'src has _sg_emc_trespass' {
    assert "$src/_sg_emc_trespass" is_file
}

@test 'src has _sg_format' {
    assert "$src/_sg_format" is_file
}

@test 'src has _sg_get_config' {
    assert "$src/_sg_get_config" is_file
}

@test 'src has _sg_get_lba_status' {
    assert "$src/_sg_get_lba_status" is_file
}

@test 'src has _sg_ident' {
    assert "$src/_sg_ident" is_file
}

@test 'src has _sg_inq' {
    assert "$src/_sg_inq" is_file
}

@test 'src has _sg_logs' {
    assert "$src/_sg_logs" is_file
}

@test 'src has _sg_luns' {
    assert "$src/_sg_luns" is_file
}

@test 'src has _sg_map' {
    assert "$src/_sg_map" is_file
}

@test 'src has _sg_map26' {
    assert "$src/_sg_map26" is_file
}

@test 'src has _sg_modes' {
    assert "$src/_sg_modes" is_file
}

@test 'src has _sg_opcodes' {
    assert "$src/_sg_opcodes" is_file
}

@test 'src has _sg_persist' {
    assert "$src/_sg_persist" is_file
}

@test 'src has _sg_prevent' {
    assert "$src/_sg_prevent" is_file
}

@test 'src has _sg_raw' {
    assert "$src/_sg_raw" is_file
}

@test 'src has _sg_rbuf' {
    assert "$src/_sg_rbuf" is_file
}

@test 'src has _sg_rdac' {
    assert "$src/_sg_rdac" is_file
}

@test 'src has _sg_read' {
    assert "$src/_sg_read" is_file
}

@test 'src has _sg_read_attr' {
    assert "$src/_sg_read_attr" is_file
}

@test 'src has _sg_read_block_limits' {
    assert "$src/_sg_read_block_limits" is_file
}

@test 'src has _sg_read_buffer' {
    assert "$src/_sg_read_buffer" is_file
}

@test 'src has _sg_read_long' {
    assert "$src/_sg_read_long" is_file
}

@test 'src has _sg_readcap' {
    assert "$src/_sg_readcap" is_file
}

@test 'src has _sg_reassign' {
    assert "$src/_sg_reassign" is_file
}

@test 'src has _sg_referrals' {
    assert "$src/_sg_referrals" is_file
}

@test 'src has _sg_rep_zones' {
    assert "$src/_sg_rep_zones" is_file
}

@test 'src has _sg_requests' {
    assert "$src/_sg_requests" is_file
}

@test 'src has _sg_reset' {
    assert "$src/_sg_reset" is_file
}

@test 'src has _sg_reset_wp' {
    assert "$src/_sg_reset_wp" is_file
}

@test 'src has _sg_rmsn' {
    assert "$src/_sg_rmsn" is_file
}

@test 'src has _sg_rtpg' {
    assert "$src/_sg_rtpg" is_file
}

@test 'src has _sg_safte' {
    assert "$src/_sg_safte" is_file
}

@test 'src has _sg_sanitize' {
    assert "$src/_sg_sanitize" is_file
}

@test 'src has _sg_sat_identify' {
    assert "$src/_sg_sat_identify" is_file
}

@test 'src has _sg_sat_phy_event' {
    assert "$src/_sg_sat_phy_event" is_file
}

@test 'src has _sg_sat_read_gplog' {
    assert "$src/_sg_sat_read_gplog" is_file
}

@test 'src has _sg_sat_set_features' {
    assert "$src/_sg_sat_set_features" is_file
}

@test 'src has _sg_scan' {
    assert "$src/_sg_scan" is_file
}

@test 'src has _sg_seek' {
    assert "$src/_sg_seek" is_file
}

@test 'src has _sg_senddiag' {
    assert "$src/_sg_senddiag" is_file
}

@test 'src has _sg_ses' {
    assert "$src/_sg_ses" is_file
}

@test 'src has _sg_ses_microcode' {
    assert "$src/_sg_ses_microcode" is_file
}

@test 'src has _sg_start' {
    assert "$src/_sg_start" is_file
}

@test 'src has _sg_stpg' {
    assert "$src/_sg_stpg" is_file
}

@test 'src has _sg_stream_ctl' {
    assert "$src/_sg_stream_ctl" is_file
}

@test 'src has _sg_sync' {
    assert "$src/_sg_sync" is_file
}

@test 'src has _sg_test_rwbuf' {
    assert "$src/_sg_test_rwbuf" is_file
}

@test 'src has _sg_timestamp' {
    assert "$src/_sg_timestamp" is_file
}

@test 'src has _sg_turs' {
    assert "$src/_sg_turs" is_file
}

@test 'src has _sg_unmap' {
    assert "$src/_sg_unmap" is_file
}

@test 'src has _sg_verify' {
    assert "$src/_sg_verify" is_file
}

@test 'src has _sg_vpd' {
    assert "$src/_sg_vpd" is_file
}

@test 'src has _sg_wr_mode' {
    assert "$src/_sg_wr_mode" is_file
}

@test 'src has _sg_write_buffer' {
    assert "$src/_sg_write_buffer" is_file
}

@test 'src has _sg_write_long' {
    assert "$src/_sg_write_long" is_file
}

@test 'src has _sg_write_same' {
    assert "$src/_sg_write_same" is_file
}

@test 'src has _sg_write_verify' {
    assert "$src/_sg_write_verify" is_file
}

@test 'src has _sg_write_x' {
    assert "$src/_sg_write_x" is_file
}

@test 'src has _sg_xcopy' {
    assert "$src/_sg_xcopy" is_file
}

@test 'src has _sg_zone' {
    assert "$src/_sg_zone" is_file
}

@test 'src has _sgather' {
    assert "$src/_sgather" is_file
}

@test 'src has _sgdisk' {
    assert "$src/_sgdisk" is_file
}

@test 'src has _sgen-grep-binprot' {
    assert "$src/_sgen-grep-binprot" is_file
}

@test 'src has _sginfo' {
    assert "$src/_sginfo" is_file
}

@test 'src has _sgm_dd' {
    assert "$src/_sgm_dd" is_file
}

@test 'src has _sgp_dd' {
    assert "$src/_sgp_dd" is_file
}

@test 'src has _sh' {
    assert "$src/_sh" is_file
}

@test 'src has _sh5util' {
    assert "$src/_sh5util" is_file
}

@test 'src has _sha1deep' {
    assert "$src/_sha1deep" is_file
}

@test 'src has _sha1hmac' {
    assert "$src/_sha1hmac" is_file
}

@test 'src has _sha1sum' {
    assert "$src/_sha1sum" is_file
}

@test 'src has _sha224hmac' {
    assert "$src/_sha224hmac" is_file
}

@test 'src has _sha224sum' {
    assert "$src/_sha224sum" is_file
}

@test 'src has _sha256deep' {
    assert "$src/_sha256deep" is_file
}

@test 'src has _sha256hmac' {
    assert "$src/_sha256hmac" is_file
}

@test 'src has _sha384hmac' {
    assert "$src/_sha384hmac" is_file
}

@test 'src has _sha384sum' {
    assert "$src/_sha384sum" is_file
}

@test 'src has _sha3sum' {
    assert "$src/_sha3sum" is_file
}

@test 'src has _sha512hmac' {
    assert "$src/_sha512hmac" is_file
}

@test 'src has _shadergen' {
    assert "$src/_shadergen" is_file
}

@test 'src has _shapeclustering' {
    assert "$src/_shapeclustering" is_file
}

@test 'src has _shapegen' {
    assert "$src/_shapegen" is_file
}

@test 'src has _shar' {
    assert "$src/_shar" is_file
}

@test 'src has _shards' {
    assert "$src/_shards" is_file
}

@test 'src has _shares-admin' {
    assert "$src/_shares-admin" is_file
}

@test 'src has _sharesec' {
    assert "$src/_sharesec" is_file
}

@test 'src has _sharing' {
    assert "$src/_sharing" is_file
}

@test 'src has _sharkd' {
    assert "$src/_sharkd" is_file
}

@test 'src has _shasum' {
    assert "$src/_shasum" is_file
}

@test 'src has _shasum5.18' {
    assert "$src/_shasum5.18" is_file
}

@test 'src has _shasum5.28' {
    assert "$src/_shasum5.28" is_file
}

@test 'src has _shasum5.30' {
    assert "$src/_shasum5.30" is_file
}

@test 'src has _shasum5.34' {
    assert "$src/_shasum5.34" is_file
}

@test 'src has _shazam' {
    assert "$src/_shazam" is_file
}

@test 'src has _sheep' {
    assert "$src/_sheep" is_file
}

@test 'src has _sheepfs' {
    assert "$src/_sheepfs" is_file
}

@test 'src has _shell-quote' {
    assert "$src/_shell-quote" is_file
}

@test 'src has _shellcheck' {
    assert "$src/_shellcheck" is_file
}

@test 'src has _shellinaboxd' {
    assert "$src/_shellinaboxd" is_file
}

@test 'src has _shepherd' {
    assert "$src/_shepherd" is_file
}

@test 'src has _shfmt' {
    assert "$src/_shfmt" is_file
}

@test 'src has _shiboken2' {
    assert "$src/_shiboken2" is_file
}

@test 'src has _shodan' {
    assert "$src/_shodan" is_file
}

@test 'src has _short' {
    assert "$src/_short" is_file
}

@test 'src has _shotgun' {
    assert "$src/_shotgun" is_file
}

@test 'src has _shotwell' {
    assert "$src/_shotwell" is_file
}

@test 'src has _shout' {
    assert "$src/_shout" is_file
}

@test 'src has _show-installed' {
    assert "$src/_show-installed" is_file
}

@test 'src has _showaudio' {
    assert "$src/_showaudio" is_file
}

@test 'src has _showconsolefont' {
    assert "$src/_showconsolefont" is_file
}

@test 'src has _showfigfonts' {
    assert "$src/_showfigfonts" is_file
}

@test 'src has _showkey' {
    assert "$src/_showkey" is_file
}

@test 'src has _showpicture' {
    assert "$src/_showpicture" is_file
}

@test 'src has _shutdown' {
    assert "$src/_shutdown" is_file
}

@test 'src has _sidguess' {
    assert "$src/_sidguess" is_file
}

@test 'src has _sieve' {
    assert "$src/_sieve" is_file
}

@test 'src has _sift' {
    assert "$src/_sift" is_file
}

@test 'src has _sigdist.d' {
    assert "$src/_sigdist.d" is_file
}

@test 'src has _sigfind' {
    assert "$src/_sigfind" is_file
}

@test 'src has _siggen' {
    assert "$src/_siggen" is_file
}

@test 'src has _signver' {
    assert "$src/_signver" is_file
}

@test 'src has _sigtool' {
    assert "$src/_sigtool" is_file
}

@test 'src has _simpdftex' {
    assert "$src/_simpdftex" is_file
}

@test 'src has _simple-scan' {
    assert "$src/_simple-scan" is_file
}

@test 'src has _simple_web_server' {
    assert "$src/_simple_web_server" is_file
}

@test 'src has _simpprof' {
    assert "$src/_simpprof" is_file
}

@test 'src has _sinfo' {
    assert "$src/_sinfo" is_file
}

@test 'src has _single2bin' {
    assert "$src/_single2bin" is_file
}

@test 'src has _sip' {
    assert "$src/_sip" is_file
}

@test 'src has _sip-build' {
    assert "$src/_sip-build" is_file
}

@test 'src has _sip-distinfo' {
    assert "$src/_sip-distinfo" is_file
}

@test 'src has _sip-install' {
    assert "$src/_sip-install" is_file
}

@test 'src has _sip-module' {
    assert "$src/_sip-module" is_file
}

@test 'src has _sip-sdist' {
    assert "$src/_sip-sdist" is_file
}

@test 'src has _sip-wheel' {
    assert "$src/_sip-wheel" is_file
}

@test 'src has _sip5' {
    assert "$src/_sip5" is_file
}

@test 'src has _sipcrack' {
    assert "$src/_sipcrack" is_file
}

@test 'src has _sipdump' {
    assert "$src/_sipdump" is_file
}

@test 'src has _sipp' {
    assert "$src/_sipp" is_file
}

@test 'src has _sips' {
    assert "$src/_sips" is_file
}

@test 'src has _sipvicious_svcrack' {
    assert "$src/_sipvicious_svcrack" is_file
}

@test 'src has _sipvicious_svmap' {
    assert "$src/_sipvicious_svmap" is_file
}

@test 'src has _sipvicious_svreport' {
    assert "$src/_sipvicious_svreport" is_file
}

@test 'src has _sipvicious_svwar' {
    assert "$src/_sipvicious_svwar" is_file
}

@test 'src has _siteciphers' {
    assert "$src/_siteciphers" is_file
}

@test 'src has _sixLangDisplayer.sh' {
    assert "$src/_sixLangDisplayer.sh" is_file
}

@test 'src has _size' {
    assert "$src/_size" is_file
}

@test 'src has _sj-commit-results' {
    assert "$src/_sj-commit-results" is_file
}

@test 'src has _sj-iptcpopt-probe' {
    assert "$src/_sj-iptcpopt-probe" is_file
}

@test 'src has _sjobexitmod' {
    assert "$src/_sjobexitmod" is_file
}

@test 'src has _skdump' {
    assert "$src/_skdump" is_file
}

@test 'src has _skill' {
    assert "$src/_skill" is_file
}

@test 'src has _skipfish' {
    assert "$src/_skipfish" is_file
}

@test 'src has _skywalkctl' {
    assert "$src/_skywalkctl" is_file
}

@test 'src has _slabinfo' {
    assert "$src/_slabinfo" is_file
}

@test 'src has _slabtop' {
    assert "$src/_slabtop" is_file
}

@test 'src has _slack-term' {
    assert "$src/_slack-term" is_file
}

@test 'src has _slapacl' {
    assert "$src/_slapacl" is_file
}

@test 'src has _slapconfig' {
    assert "$src/_slapconfig" is_file
}

@test 'src has _slappasswd' {
    assert "$src/_slappasswd" is_file
}

@test 'src has _slatex' {
    assert "$src/_slatex" is_file
}

@test 'src has _slattach' {
    assert "$src/_slattach" is_file
}

@test 'src has _slcan_attach' {
    assert "$src/_slcan_attach" is_file
}

@test 'src has _slcand' {
    assert "$src/_slcand" is_file
}

@test 'src has _slirp4netns' {
    assert "$src/_slirp4netns" is_file
}

@test 'src has _sln' {
    assert "$src/_sln" is_file
}

@test 'src has _sload.f2fs' {
    assert "$src/_sload.f2fs" is_file
}

@test 'src has _sload_f2fs' {
    assert "$src/_sload_f2fs" is_file
}

@test 'src has _slogencrypt' {
    assert "$src/_slogencrypt" is_file
}

@test 'src has _slowhttptest' {
    assert "$src/_slowhttptest" is_file
}

@test 'src has _slptool' {
    assert "$src/_slptool" is_file
}

@test 'src has _slsh' {
    assert "$src/_slsh" is_file
}

@test 'src has _slugify' {
    assert "$src/_slugify" is_file
}

@test 'src has _slurm' {
    assert "$src/_slurm" is_file
}

@test 'src has _slurm-setuser' {
    assert "$src/_slurm-setuser" is_file
}

@test 'src has _slurmctld' {
    assert "$src/_slurmctld" is_file
}

@test 'src has _slurmd' {
    assert "$src/_slurmd" is_file
}

@test 'src has _slurmsmwd' {
    assert "$src/_slurmsmwd" is_file
}

@test 'src has _slxdecode' {
    assert "$src/_slxdecode" is_file
}

@test 'src has _sm3hmac' {
    assert "$src/_sm3hmac" is_file
}

@test 'src has _smali' {
    assert "$src/_smali" is_file
}

@test 'src has _smap' {
    assert "$src/_smap" is_file
}

@test 'src has _smartctl' {
    assert "$src/_smartctl" is_file
}

@test 'src has _smartd' {
    assert "$src/_smartd" is_file
}

@test 'src has _smb2-quota' {
    assert "$src/_smb2-quota" is_file
}

@test 'src has _smbcacls' {
    assert "$src/_smbcacls" is_file
}

@test 'src has _smbclient' {
    assert "$src/_smbclient" is_file
}

@test 'src has _smbcontrol' {
    assert "$src/_smbcontrol" is_file
}

@test 'src has _smbcquotas' {
    assert "$src/_smbcquotas" is_file
}

@test 'src has _smbd' {
    assert "$src/_smbd" is_file
}

@test 'src has _smbdiagnose' {
    assert "$src/_smbdiagnose" is_file
}

@test 'src has _smbget' {
    assert "$src/_smbget" is_file
}

@test 'src has _smbpasswd' {
    assert "$src/_smbpasswd" is_file
}

@test 'src has _smbprngenpdf' {
    assert "$src/_smbprngenpdf" is_file
}

@test 'src has _smbstatus' {
    assert "$src/_smbstatus" is_file
}

@test 'src has _smbta-util' {
    assert "$src/_smbta-util" is_file
}

@test 'src has _smbtar' {
    assert "$src/_smbtar" is_file
}

@test 'src has _smbtorture' {
    assert "$src/_smbtorture" is_file
}

@test 'src has _smbtree' {
    assert "$src/_smbtree" is_file
}

@test 'src has _smicache' {
    assert "$src/_smicache" is_file
}

@test 'src has _smidiff' {
    assert "$src/_smidiff" is_file
}

@test 'src has _smidump' {
    assert "$src/_smidump" is_file
}

@test 'src has _smilint' {
    assert "$src/_smilint" is_file
}

@test 'src has _sminfo' {
    assert "$src/_sminfo" is_file
}

@test 'src has _smiquery' {
    assert "$src/_smiquery" is_file
}

@test 'src has _smistrip' {
    assert "$src/_smistrip" is_file
}

@test 'src has _smixlate' {
    assert "$src/_smixlate" is_file
}

@test 'src has _smp_conf_general' {
    assert "$src/_smp_conf_general" is_file
}

@test 'src has _smp_conf_phy_event' {
    assert "$src/_smp_conf_phy_event" is_file
}

@test 'src has _smp_conf_route_info' {
    assert "$src/_smp_conf_route_info" is_file
}

@test 'src has _smp_conf_zone_man_pass' {
    assert "$src/_smp_conf_zone_man_pass" is_file
}

@test 'src has _smp_conf_zone_perm_tbl' {
    assert "$src/_smp_conf_zone_perm_tbl" is_file
}

@test 'src has _smp_conf_zone_phy_info' {
    assert "$src/_smp_conf_zone_phy_info" is_file
}

@test 'src has _smp_discover' {
    assert "$src/_smp_discover" is_file
}

@test 'src has _smp_discover_list' {
    assert "$src/_smp_discover_list" is_file
}

@test 'src has _smp_ena_dis_zoning' {
    assert "$src/_smp_ena_dis_zoning" is_file
}

@test 'src has _smp_phy_control' {
    assert "$src/_smp_phy_control" is_file
}

@test 'src has _smp_phy_test' {
    assert "$src/_smp_phy_test" is_file
}

@test 'src has _smp_read_gpio' {
    assert "$src/_smp_read_gpio" is_file
}

@test 'src has _smp_rep_broadcast' {
    assert "$src/_smp_rep_broadcast" is_file
}

@test 'src has _smp_rep_exp_route_tbl' {
    assert "$src/_smp_rep_exp_route_tbl" is_file
}

@test 'src has _smp_rep_general' {
    assert "$src/_smp_rep_general" is_file
}

@test 'src has _smp_rep_manufacturer' {
    assert "$src/_smp_rep_manufacturer" is_file
}

@test 'src has _smp_rep_phy_err_log' {
    assert "$src/_smp_rep_phy_err_log" is_file
}

@test 'src has _smp_rep_phy_event' {
    assert "$src/_smp_rep_phy_event" is_file
}

@test 'src has _smp_rep_phy_event_list' {
    assert "$src/_smp_rep_phy_event_list" is_file
}

@test 'src has _smp_rep_phy_sata' {
    assert "$src/_smp_rep_phy_sata" is_file
}

@test 'src has _smp_rep_route_info' {
    assert "$src/_smp_rep_route_info" is_file
}

@test 'src has _smp_rep_self_conf_stat' {
    assert "$src/_smp_rep_self_conf_stat" is_file
}

@test 'src has _smp_rep_zone_man_pass' {
    assert "$src/_smp_rep_zone_man_pass" is_file
}

@test 'src has _smp_rep_zone_perm_tbl' {
    assert "$src/_smp_rep_zone_perm_tbl" is_file
}

@test 'src has _smp_write_gpio' {
    assert "$src/_smp_write_gpio" is_file
}

@test 'src has _smp_zone_activate' {
    assert "$src/_smp_zone_activate" is_file
}

@test 'src has _smp_zone_lock' {
    assert "$src/_smp_zone_lock" is_file
}

@test 'src has _smp_zone_unlock' {
    assert "$src/_smp_zone_unlock" is_file
}

@test 'src has _smp_zoned_broadcast' {
    assert "$src/_smp_zoned_broadcast" is_file
}

@test 'src has _smpdump' {
    assert "$src/_smpdump" is_file
}

@test 'src has _smpquery' {
    assert "$src/_smpquery" is_file
}

@test 'src has _sms-grep.pl' {
    assert "$src/_sms-grep.pl" is_file
}

@test 'src has _smtp-user-enum' {
    assert "$src/_smtp-user-enum" is_file
}

@test 'src has _smtpd.py' {
    assert "$src/_smtpd.py" is_file
}

@test 'src has _smtpd2.7.py' {
    assert "$src/_smtpd2.7.py" is_file
}

@test 'src has _smtpd2.py' {
    assert "$src/_smtpd2.py" is_file
}

@test 'src has _sn' {
    assert "$src/_sn" is_file
}

@test 'src has _snakeviz' {
    assert "$src/_snakeviz" is_file
}

@test 'src has _snapctl' {
    assert "$src/_snapctl" is_file
}

@test 'src has _snapfuse' {
    assert "$src/_snapfuse" is_file
}

@test 'src has _snapper' {
    assert "$src/_snapper" is_file
}

@test 'src has _snapperd' {
    assert "$src/_snapperd" is_file
}

@test 'src has _snapshot' {
    assert "$src/_snapshot" is_file
}

@test 'src has _sncfginstall' {
    assert "$src/_sncfginstall" is_file
}

@test 'src has _sncfgquery' {
    assert "$src/_sncfgquery" is_file
}

@test 'src has _sncfgremove' {
    assert "$src/_sncfgremove" is_file
}

@test 'src has _sncfgtemplate' {
    assert "$src/_sncfgtemplate" is_file
}

@test 'src has _sncfgvalidate' {
    assert "$src/_sncfgvalidate" is_file
}

@test 'src has _sndfile-convert' {
    assert "$src/_sndfile-convert" is_file
}

@test 'src has _sndfile-metadata-get' {
    assert "$src/_sndfile-metadata-get" is_file
}

@test 'src has _sndfile-metadata-set' {
    assert "$src/_sndfile-metadata-set" is_file
}

@test 'src has _sndiskmove' {
    assert "$src/_sndiskmove" is_file
}

@test 'src has _snice' {
    assert "$src/_snice" is_file
}

@test 'src has _sniffjoke' {
    assert "$src/_sniffjoke" is_file
}

@test 'src has _sniffjoke-autotest' {
    assert "$src/_sniffjoke-autotest" is_file
}

@test 'src has _sniffjokectl' {
    assert "$src/_sniffjokectl" is_file
}

@test 'src has _snmp-check' {
    assert "$src/_snmp-check" is_file
}

@test 'src has _snmpbulkget' {
    assert "$src/_snmpbulkget" is_file
}

@test 'src has _snmpbulkwalk' {
    assert "$src/_snmpbulkwalk" is_file
}

@test 'src has _snmpc' {
    assert "$src/_snmpc" is_file
}

@test 'src has _snmpconf' {
    assert "$src/_snmpconf" is_file
}

@test 'src has _snmpd' {
    assert "$src/_snmpd" is_file
}

@test 'src has _snmpdelta' {
    assert "$src/_snmpdelta" is_file
}

@test 'src has _snmpdf' {
    assert "$src/_snmpdf" is_file
}

@test 'src has _snmpget' {
    assert "$src/_snmpget" is_file
}

@test 'src has _snmpgetnext' {
    assert "$src/_snmpgetnext" is_file
}

@test 'src has _snmpinform' {
    assert "$src/_snmpinform" is_file
}

@test 'src has _snmpping' {
    assert "$src/_snmpping" is_file
}

@test 'src has _snmpps' {
    assert "$src/_snmpps" is_file
}

@test 'src has _snmpset' {
    assert "$src/_snmpset" is_file
}

@test 'src has _snmpstatus' {
    assert "$src/_snmpstatus" is_file
}

@test 'src has _snmptable' {
    assert "$src/_snmptable" is_file
}

@test 'src has _snmptest' {
    assert "$src/_snmptest" is_file
}

@test 'src has _snmptls' {
    assert "$src/_snmptls" is_file
}

@test 'src has _snmptranslate' {
    assert "$src/_snmptranslate" is_file
}

@test 'src has _snmptrap' {
    assert "$src/_snmptrap" is_file
}

@test 'src has _snmptrapd' {
    assert "$src/_snmptrapd" is_file
}

@test 'src has _snmpusm' {
    assert "$src/_snmpusm" is_file
}

@test 'src has _snmpvacm' {
    assert "$src/_snmpvacm" is_file
}

@test 'src has _snmpwalk' {
    assert "$src/_snmpwalk" is_file
}

@test 'src has _snort' {
    assert "$src/_snort" is_file
}

@test 'src has _snquota' {
    assert "$src/_snquota" is_file
}

@test 'src has _sntop' {
    assert "$src/_sntop" is_file
}

@test 'src has _sntp' {
    assert "$src/_sntp" is_file
}

@test 'src has _so-elastalert-test' {
    assert "$src/_so-elastalert-test" is_file
}

@test 'src has _so-elastic-clear' {
    assert "$src/_so-elastic-clear" is_file
}

@test 'src has _so-firewall' {
    assert "$src/_so-firewall" is_file
}

@test 'src has _so-raid-status' {
    assert "$src/_so-raid-status" is_file
}

@test 'src has _socat-broker.sh' {
    assert "$src/_socat-broker.sh" is_file
}

@test 'src has _socat-chain.sh' {
    assert "$src/_socat-chain.sh" is_file
}

@test 'src has _socat-mux.sh' {
    assert "$src/_socat-mux.sh" is_file
}

@test 'src has _socat1' {
    assert "$src/_socat1" is_file
}

@test 'src has _soelim.groff' {
    assert "$src/_soelim.groff" is_file
}

@test 'src has _soffice' {
    assert "$src/_soffice" is_file
}

@test 'src has _software-properties-gtk' {
    assert "$src/_software-properties-gtk" is_file
}

@test 'src has _sol' {
    assert "$src/_sol" is_file
}

@test 'src has _solid-hardware' {
    assert "$src/_solid-hardware" is_file
}

@test 'src has _solid-hardware5' {
    assert "$src/_solid-hardware5" is_file
}

@test 'src has _solid-power' {
    assert "$src/_solid-power" is_file
}

@test 'src has _sord_validate' {
    assert "$src/_sord_validate" is_file
}

@test 'src has _sordi' {
    assert "$src/_sordi" is_file
}

@test 'src has _sort-dctrl' {
    assert "$src/_sort-dctrl" is_file
}

@test 'src has _sorter' {
    assert "$src/_sorter" is_file
}

@test 'src has _sos' {
    assert "$src/_sos" is_file
}

@test 'src has _sos-collector' {
    assert "$src/_sos-collector" is_file
}

@test 'src has _sosreport' {
    assert "$src/_sosreport" is_file
}

@test 'src has _sotruss' {
    assert "$src/_sotruss" is_file
}

@test 'src has _soundstretch' {
    assert "$src/_soundstretch" is_file
}

@test 'src has _source-highlight' {
    assert "$src/_source-highlight" is_file
}

@test 'src has _soxi' {
    assert "$src/_soxi" is_file
}

@test 'src has _sp32' {
    assert "$src/_sp32" is_file
}

@test 'src has _sp64' {
    assert "$src/_sp64" is_file
}

@test 'src has _spa-acp-tool' {
    assert "$src/_spa-acp-tool" is_file
}

@test 'src has _spa-resample' {
    assert "$src/_spa-resample" is_file
}

@test 'src has _spago' {
    assert "$src/_spago" is_file
}

@test 'src has _spark-class' {
    assert "$src/_spark-class" is_file
}

@test 'src has _spark-shell' {
    assert "$src/_spark-shell" is_file
}

@test 'src has _spark-submit' {
    assert "$src/_spark-submit" is_file
}

@test 'src has _spawn-fcgi' {
    assert "$src/_spawn-fcgi" is_file
}

@test 'src has _spax' {
    assert "$src/_spax" is_file
}

@test 'src has _spd-conf' {
    assert "$src/_spd-conf" is_file
}

@test 'src has _spd-say' {
    assert "$src/_spd-say" is_file
}

@test 'src has _speaker-test' {
    assert "$src/_speaker-test" is_file
}

@test 'src has _spec2cie' {
    assert "$src/_spec2cie" is_file
}

@test 'src has _specplot' {
    assert "$src/_specplot" is_file
}

@test 'src has _spectool_raw' {
    assert "$src/_spectool_raw" is_file
}

@test 'src has _speech-dispatcher' {
    assert "$src/_speech-dispatcher" is_file
}

@test 'src has _speedtest' {
    assert "$src/_speedtest" is_file
}

@test 'src has _speexdec' {
    assert "$src/_speexdec" is_file
}

@test 'src has _speexenc' {
    assert "$src/_speexenc" is_file
}

@test 'src has _spfquery' {
    assert "$src/_spfquery" is_file
}

@test 'src has _spfquery5.18' {
    assert "$src/_spfquery5.18" is_file
}

@test 'src has _spfquery5.28' {
    assert "$src/_spfquery5.28" is_file
}

@test 'src has _spfquery5.30' {
    assert "$src/_spfquery5.30" is_file
}

@test 'src has _spfquery5.34' {
    assert "$src/_spfquery5.34" is_file
}

@test 'src has _sphinx-autogen' {
    assert "$src/_sphinx-autogen" is_file
}

@test 'src has _sphinx-build' {
    assert "$src/_sphinx-build" is_file
}

@test 'src has _sphinx-quickstart' {
    assert "$src/_sphinx-quickstart" is_file
}

@test 'src has _spi' {
    assert "$src/_spi" is_file
}

@test 'src has _spice-vdagent' {
    assert "$src/_spice-vdagent" is_file
}

@test 'src has _spice-vdagentd' {
    assert "$src/_spice-vdagentd" is_file
}

@test 'src has _spice-webdavd' {
    assert "$src/_spice-webdavd" is_file
}

@test 'src has _spicy' {
    assert "$src/_spicy" is_file
}

@test 'src has _spicy-build' {
    assert "$src/_spicy-build" is_file
}

@test 'src has _spicy-config' {
    assert "$src/_spicy-config" is_file
}

@test 'src has _spicy-driver' {
    assert "$src/_spicy-driver" is_file
}

@test 'src has _spicy-dump' {
    assert "$src/_spicy-dump" is_file
}

@test 'src has _spicy-screenshot' {
    assert "$src/_spicy-screenshot" is_file
}

@test 'src has _spicy-stats' {
    assert "$src/_spicy-stats" is_file
}

@test 'src has _spicyc' {
    assert "$src/_spicyc" is_file
}

@test 'src has _spicyz' {
    assert "$src/_spicyz" is_file
}

@test 'src has _spiderfoot-cli' {
    assert "$src/_spiderfoot-cli" is_file
}

@test 'src has _spindump' {
    assert "$src/_spindump" is_file
}

@test 'src has _spirv-as' {
    assert "$src/_spirv-as" is_file
}

@test 'src has _spirv-cfg' {
    assert "$src/_spirv-cfg" is_file
}

@test 'src has _spirv-dis' {
    assert "$src/_spirv-dis" is_file
}

@test 'src has _spirv-opt' {
    assert "$src/_spirv-opt" is_file
}

@test 'src has _spirv-reduce' {
    assert "$src/_spirv-reduce" is_file
}

@test 'src has _spirv-stats' {
    assert "$src/_spirv-stats" is_file
}

@test 'src has _spirv-val' {
    assert "$src/_spirv-val" is_file
}

@test 'src has _spix' {
    assert "$src/_spix" is_file
}

@test 'src has _spk' {
    assert "$src/_spk" is_file
}

@test 'src has _splay' {
    assert "$src/_splay" is_file
}

@test 'src has _split-file-13' {
    assert "$src/_split-file-13" is_file
}

@test 'src has _split-file12' {
    assert "$src/_split-file12" is_file
}

@test 'src has _splitReg.sh' {
    assert "$src/_splitReg.sh" is_file
}

@test 'src has _splitindex' {
    assert "$src/_splitindex" is_file
}

@test 'src has _splitti3' {
    assert "$src/_splitti3" is_file
}

@test 'src has _spoof' {
    assert "$src/_spoof" is_file
}

@test 'src has _spooftooph' {
    assert "$src/_spooftooph" is_file
}

@test 'src has _spotifycli' {
    assert "$src/_spotifycli" is_file
}

@test 'src has _spotread' {
    assert "$src/_spotread" is_file
}

@test 'src has _sprio' {
    assert "$src/_sprio" is_file
}

@test 'src has _sprockets' {
    assert "$src/_sprockets" is_file
}

@test 'src has _sprof' {
    assert "$src/_sprof" is_file
}

@test 'src has _spt' {
    assert "$src/_spt" is_file
}

@test 'src has _spumux' {
    assert "$src/_spumux" is_file
}

@test 'src has _spuunmux' {
    assert "$src/_spuunmux" is_file
}

@test 'src has _sqfstar' {
    assert "$src/_sqfstar" is_file
}

@test 'src has _sqldiff' {
    assert "$src/_sqldiff" is_file
}

@test 'src has _sqlformat' {
    assert "$src/_sqlformat" is_file
}

@test 'src has _sqlite-parser.pl' {
    assert "$src/_sqlite-parser.pl" is_file
}

@test 'src has _sqlite3_analyzer' {
    assert "$src/_sqlite3_analyzer" is_file
}

@test 'src has _sqlitebrowser' {
    assert "$src/_sqlitebrowser" is_file
}

@test 'src has _sqliterepo_c' {
    assert "$src/_sqliterepo_c" is_file
}

@test 'src has _sqlmap' {
    assert "$src/_sqlmap" is_file
}

@test 'src has _sqlmapapi' {
    assert "$src/_sqlmapapi" is_file
}

@test 'src has _sqlmetal' {
    assert "$src/_sqlmetal" is_file
}

@test 'src has _sqlninja' {
    assert "$src/_sqlninja" is_file
}

@test 'src has _sqlparser.py' {
    assert "$src/_sqlparser.py" is_file
}

@test 'src has _sqlsus' {
    assert "$src/_sqlsus" is_file
}

@test 'src has _squeak' {
    assert "$src/_squeak" is_file
}

@test 'src has _squeue' {
    assert "$src/_squeue" is_file
}

@test 'src has _squirrelgripper.pl' {
    assert "$src/_squirrelgripper.pl" is_file
}

@test 'src has _src-to-paps' {
    assert "$src/_src-to-paps" is_file
}

@test 'src has _srch_strings' {
    assert "$src/_srch_strings" is_file
}

@test 'src has _srcredact' {
    assert "$src/_srcredact" is_file
}

@test 'src has _srt-ffplay' {
    assert "$src/_srt-ffplay" is_file
}

@test 'src has _srt-file-transmit' {
    assert "$src/_srt-file-transmit" is_file
}

@test 'src has _srt-live-transmit' {
    assert "$src/_srt-live-transmit" is_file
}

@test 'src has _srun' {
    assert "$src/_srun" is_file
}

@test 'src has _sscop' {
    assert "$src/_sscop" is_file
}

@test 'src has _ssdeep' {
    assert "$src/_ssdeep" is_file
}

@test 'src has _ssh-copy-id' {
    assert "$src/_ssh-copy-id" is_file
}

@test 'src has _ssh-import-id' {
    assert "$src/_ssh-import-id" is_file
}

@test 'src has _ssh_hosts' {
    assert "$src/_ssh_hosts" is_file
}

@test 'src has _sshare' {
    assert "$src/_sshare" is_file
}

@test 'src has _sshdump' {
    assert "$src/_sshdump" is_file
}

@test 'src has _sshpass' {
    assert "$src/_sshpass" is_file
}

@test 'src has _sshpk-conv' {
    assert "$src/_sshpk-conv" is_file
}

@test 'src has _sshpk-sign' {
    assert "$src/_sshpk-sign" is_file
}

@test 'src has _sshpk-verify' {
    assert "$src/_sshpk-verify" is_file
}

@test 'src has _sshvnc' {
    assert "$src/_sshvnc" is_file
}

@test 'src has _ssl_context_info' {
    assert "$src/_ssl_context_info" is_file
}

@test 'src has _sslcaudit' {
    assert "$src/_sslcaudit" is_file
}

@test 'src has _sslh' {
    assert "$src/_sslh" is_file
}

@test 'src has _sslh-select' {
    assert "$src/_sslh-select" is_file
}

@test 'src has _sslsniff' {
    assert "$src/_sslsniff" is_file
}

@test 'src has _sslsplit' {
    assert "$src/_sslsplit" is_file
}

@test 'src has _sslstrip' {
    assert "$src/_sslstrip" is_file
}

@test 'src has _ssltap' {
    assert "$src/_ssltap" is_file
}

@test 'src has _sslyze' {
    assert "$src/_sslyze" is_file
}

@test 'src has _ssm-agent-worker' {
    assert "$src/_ssm-agent-worker" is_file
}

@test 'src has _sspr2john' {
    assert "$src/_sspr2john" is_file
}

@test 'src has _sss_cache' {
    assert "$src/_sss_cache" is_file
}

@test 'src has _sss_ssh_authorizedkeys' {
    assert "$src/_sss_ssh_authorizedkeys" is_file
}

@test 'src has _sss_ssh_knownhostsproxy' {
    assert "$src/_sss_ssh_knownhostsproxy" is_file
}

@test 'src has _sssd' {
    assert "$src/_sssd" is_file
}

@test 'src has _sst_dump' {
    assert "$src/_sst_dump" is_file
}

@test 'src has _sstablemetadata' {
    assert "$src/_sstablemetadata" is_file
}

@test 'src has _sstablescrub' {
    assert "$src/_sstablescrub" is_file
}

@test 'src has _sstablesplit' {
    assert "$src/_sstablesplit" is_file
}

@test 'src has _sstableupgrade' {
    assert "$src/_sstableupgrade" is_file
}

@test 'src has _sstableutil' {
    assert "$src/_sstableutil" is_file
}

@test 'src has _sstableverify' {
    assert "$src/_sstableverify" is_file
}

@test 'src has _sstat' {
    assert "$src/_sstat" is_file
}

@test 'src has _ssvnc' {
    assert "$src/_ssvnc" is_file
}

@test 'src has _ssvncviewer' {
    assert "$src/_ssvncviewer" is_file
}

@test 'src has _standalone_print_ctxt' {
    assert "$src/_standalone_print_ctxt" is_file
}

@test 'src has _stap' {
    assert "$src/_stap" is_file
}

@test 'src has _stapbpf' {
    assert "$src/_stapbpf" is_file
}

@test 'src has _stapdyn' {
    assert "$src/_stapdyn" is_file
}

@test 'src has _starship' {
    assert "$src/_starship" is_file
}

@test 'src has _start-pulseaudio-x11' {
    assert "$src/_start-pulseaudio-x11" is_file
}

@test 'src has _start-stop-daemon' {
    assert "$src/_start-stop-daemon" is_file
}

@test 'src has _startpar' {
    assert "$src/_startpar" is_file
}

@test 'src has _startxfce4' {
    assert "$src/_startxfce4" is_file
}

@test 'src has _states' {
    assert "$src/_states" is_file
}

@test 'src has _statsgen' {
    assert "$src/_statsgen" is_file
}

@test 'src has _stdbuf' {
    assert "$src/_stdbuf" is_file
}

@test 'src has _steghide' {
    assert "$src/_steghide" is_file
}

@test 'src has _stix-validator.py' {
    assert "$src/_stix-validator.py" is_file
}

@test 'src has _stl2gts' {
    assert "$src/_stl2gts" is_file
}

@test 'src has _stocks' {
    assert "$src/_stocks" is_file
}

@test 'src has _stomp' {
    assert "$src/_stomp" is_file
}

@test 'src has _storageShower.sh' {
    assert "$src/_storageShower.sh" is_file
}

@test 'src has _storageshower' {
    assert "$src/_storageshower" is_file
}

@test 'src has _strace.py' {
    assert "$src/_strace.py" is_file
}

@test 'src has _stream-im6' {
    assert "$src/_stream-im6" is_file
}

@test 'src has _stream-im6.q16' {
    assert "$src/_stream-im6.q16" is_file
}

@test 'src has _streamer' {
    assert "$src/_streamer" is_file
}

@test 'src has _streamzip' {
    assert "$src/_streamzip" is_file
}

@test 'src has _streamzip5.34' {
    assert "$src/_streamzip5.34" is_file
}

@test 'src has _strelka-fileshot' {
    assert "$src/_strelka-fileshot" is_file
}

@test 'src has _strelka-oneshot' {
    assert "$src/_strelka-oneshot" is_file
}

@test 'src has _strigger' {
    assert "$src/_strigger" is_file
}

@test 'src has _string2key' {
    assert "$src/_string2key" is_file
}

@test 'src has _stringdups' {
    assert "$src/_stringdups" is_file
}

@test 'src has _stringdups32' {
    assert "$src/_stringdups32" is_file
}

@test 'src has _strip' {
    assert "$src/_strip" is_file
}

@test 'src has _strip2john' {
    assert "$src/_strip2john" is_file
}

@test 'src has _strsclnt' {
    assert "$src/_strsclnt" is_file
}

@test 'src has _stunbdc' {
    assert "$src/_stunbdc" is_file
}

@test 'src has _stunnel' {
    assert "$src/_stunnel" is_file
}

@test 'src has _sty2dtx' {
    assert "$src/_sty2dtx" is_file
}

@test 'src has _su' {
    assert "$src/_su" is_file
}

@test 'src has _su-to-root' {
    assert "$src/_su-to-root" is_file
}

@test 'src has _sudo' {
    assert "$src/_sudo" is_file
}

@test 'src has _sudoedit' {
    assert "$src/_sudoedit" is_file
}

@test 'src has _sudoreplay' {
    assert "$src/_sudoreplay" is_file
}

@test 'src has _sulogin' {
    assert "$src/_sulogin" is_file
}

@test 'src has _sum' {
    assert "$src/_sum" is_file
}

@test 'src has _sumtool' {
    assert "$src/_sumtool" is_file
}

@test 'src has _sun-audio-file' {
    assert "$src/_sun-audio-file" is_file
}

@test 'src has _sun-message' {
    assert "$src/_sun-message" is_file
}

@test 'src has _sunrpcfuzz' {
    assert "$src/_sunrpcfuzz" is_file
}

@test 'src has _supermin' {
    assert "$src/_supermin" is_file
}

@test 'src has _susetags2solv' {
    assert "$src/_susetags2solv" is_file
}

@test 'src has _svcrack' {
    assert "$src/_svcrack" is_file
}

@test 'src has _svcutil' {
    assert "$src/_svcutil" is_file
}

@test 'src has _svgtoqml' {
    assert "$src/_svgtoqml" is_file
}

@test 'src has _svmap' {
    assert "$src/_svmap" is_file
}

@test 'src has _svn-multi' {
    assert "$src/_svn-multi" is_file
}

@test 'src has _svndiff' {
    assert "$src/_svndiff" is_file
}

@test 'src has _svndiff3' {
    assert "$src/_svndiff3" is_file
}

@test 'src has _svnlitemucc' {
    assert "$src/_svnlitemucc" is_file
}

@test 'src has _svnliteserve' {
    assert "$src/_svnliteserve" is_file
}

@test 'src has _svnliteversion' {
    assert "$src/_svnliteversion" is_file
}

@test 'src has _svnmover' {
    assert "$src/_svnmover" is_file
}

@test 'src has _svnmucc' {
    assert "$src/_svnmucc" is_file
}

@test 'src has _svnraisetreeconflict' {
    assert "$src/_svnraisetreeconflict" is_file
}

@test 'src has _svnserve' {
    assert "$src/_svnserve" is_file
}

@test 'src has _svnversion' {
    assert "$src/_svnversion" is_file
}

@test 'src has _svreport' {
    assert "$src/_svreport" is_file
}

@test 'src has _svwar' {
    assert "$src/_svwar" is_file
}

@test 'src has _swaplabel' {
    assert "$src/_swaplabel" is_file
}

@test 'src has _swcutil' {
    assert "$src/_swcutil" is_file
}

@test 'src has _swell-foop' {
    assert "$src/_swell-foop" is_file
}

@test 'src has _swfparser' {
    assert "$src/_swfparser" is_file
}

@test 'src has _swift-api-digester' {
    assert "$src/_swift-api-digester" is_file
}

@test 'src has _swift-api-extract' {
    assert "$src/_swift-api-extract" is_file
}

@test 'src has _swift-build' {
    assert "$src/_swift-build" is_file
}

@test 'src has _swift-build-tool' {
    assert "$src/_swift-build-tool" is_file
}

@test 'src has _swift-demangle' {
    assert "$src/_swift-demangle" is_file
}

@test 'src has _swift-experimental-sdk' {
    assert "$src/_swift-experimental-sdk" is_file
}

@test 'src has _swift-format' {
    assert "$src/_swift-format" is_file
}

@test 'src has _swift-frontend' {
    assert "$src/_swift-frontend" is_file
}

@test 'src has _swift-help' {
    assert "$src/_swift-help" is_file
}

@test 'src has _swift-inspect' {
    assert "$src/_swift-inspect" is_file
}

@test 'src has _swift-package-collection' {
    assert "$src/_swift-package-collection" is_file
}

@test 'src has _swift-package-registry' {
    assert "$src/_swift-package-registry" is_file
}

@test 'src has _swift-run' {
    assert "$src/_swift-run" is_file
}

@test 'src has _swift-stdlib-tool' {
    assert "$src/_swift-stdlib-tool" is_file
}

@test 'src has _swift-symbolgraph-extract' {
    assert "$src/_swift-symbolgraph-extract" is_file
}

@test 'src has _swift-test' {
    assert "$src/_swift-test" is_file
}

@test 'src has _swig' {
    assert "$src/_swig" is_file
}

@test 'src has _swig3.0' {
    assert "$src/_swig3.0" is_file
}

@test 'src has _swindle' {
    assert "$src/_swindle" is_file
}

@test 'src has _swipl' {
    assert "$src/_swipl" is_file
}

@test 'src has _switch_root' {
    assert "$src/_switch_root" is_file
}

@test 'src has _switcherooctl' {
    assert "$src/_switcherooctl" is_file
}

@test 'src has _sx' {
    assert "$src/_sx" is_file
}

@test 'src has _sxw2odt' {
    assert "$src/_sxw2odt" is_file
}

@test 'src has _symbolscache' {
    assert "$src/_symbolscache" is_file
}

@test 'src has _symcryptrun' {
    assert "$src/_symcryptrun" is_file
}

@test 'src has _symlinks' {
    assert "$src/_symlinks" is_file
}

@test 'src has _synaptic' {
    assert "$src/_synaptic" is_file
}

@test 'src has _sync' {
    assert "$src/_sync" is_file
}

@test 'src has _synclient' {
    assert "$src/_synclient" is_file
}

@test 'src has _syncqt.pl' {
    assert "$src/_syncqt.pl" is_file
}

@test 'src has _syncqt.pl-qt5' {
    assert "$src/_syncqt.pl-qt5" is_file
}

@test 'src has _syndaemon' {
    assert "$src/_syndaemon" is_file
}

@test 'src has _synthcal' {
    assert "$src/_synthcal" is_file
}

@test 'src has _synthread' {
    assert "$src/_synthread" is_file
}

@test 'src has _sysadminctl' {
    assert "$src/_sysadminctl" is_file
}

@test 'src has _sysbench' {
    assert "$src/_sysbench" is_file
}

@test 'src has _syscallbypid.d' {
    assert "$src/_syscallbypid.d" is_file
}

@test 'src has _syscallbyproc.d' {
    assert "$src/_syscallbyproc.d" is_file
}

@test 'src has _syscallbysysc.d' {
    assert "$src/_syscallbysysc.d" is_file
}

@test 'src has _sysconf_addword' {
    assert "$src/_sysconf_addword" is_file
}

@test 'src has _sysctl' {
    assert "$src/_sysctl" is_file
}

@test 'src has _syslinux' {
    assert "$src/_syslinux" is_file
}

@test 'src has _syslog' {
    assert "$src/_syslog" is_file
}

@test 'src has _syslog-ng' {
    assert "$src/_syslog-ng" is_file
}

@test 'src has _syslog-ng-debun' {
    assert "$src/_syslog-ng-debun" is_file
}

@test 'src has _syslog-ng-update-virtualenv' {
    assert "$src/_syslog-ng-update-virtualenv" is_file
}

@test 'src has _syspolicy_check' {
    assert "$src/_syspolicy_check" is_file
}

@test 'src has _system-config-abrt' {
    assert "$src/_system-config-abrt" is_file
}

@test 'src has _system-config-printer' {
    assert "$src/_system-config-printer" is_file
}

@test 'src has _system-tools-backends' {
    assert "$src/_system-tools-backends" is_file
}

@test 'src has _systemd' {
    assert "$src/_systemd" is_file
}

@test 'src has _systemd-analyze' {
    assert "$src/_systemd-analyze" is_file
}

@test 'src has _systemd-ask-password' {
    assert "$src/_systemd-ask-password" is_file
}

@test 'src has _systemd-cat' {
    assert "$src/_systemd-cat" is_file
}

@test 'src has _systemd-cgls' {
    assert "$src/_systemd-cgls" is_file
}

@test 'src has _systemd-cgtop' {
    assert "$src/_systemd-cgtop" is_file
}

@test 'src has _systemd-confext' {
    assert "$src/_systemd-confext" is_file
}

@test 'src has _systemd-coredumpctl' {
    assert "$src/_systemd-coredumpctl" is_file
}

@test 'src has _systemd-creds' {
    assert "$src/_systemd-creds" is_file
}

@test 'src has _systemd-cryptenroll' {
    assert "$src/_systemd-cryptenroll" is_file
}

@test 'src has _systemd-cryptsetup' {
    assert "$src/_systemd-cryptsetup" is_file
}

@test 'src has _systemd-delta' {
    assert "$src/_systemd-delta" is_file
}

@test 'src has _systemd-detect-virt' {
    assert "$src/_systemd-detect-virt" is_file
}

@test 'src has _systemd-dissect' {
    assert "$src/_systemd-dissect" is_file
}

@test 'src has _systemd-escape' {
    assert "$src/_systemd-escape" is_file
}

@test 'src has _systemd-firstboot' {
    assert "$src/_systemd-firstboot" is_file
}

@test 'src has _systemd-hwdb' {
    assert "$src/_systemd-hwdb" is_file
}

@test 'src has _systemd-id128' {
    assert "$src/_systemd-id128" is_file
}

@test 'src has _systemd-inhibit' {
    assert "$src/_systemd-inhibit" is_file
}

@test 'src has _systemd-loginctl' {
    assert "$src/_systemd-loginctl" is_file
}

@test 'src has _systemd-machine-id-setup' {
    assert "$src/_systemd-machine-id-setup" is_file
}

@test 'src has _systemd-mount' {
    assert "$src/_systemd-mount" is_file
}

@test 'src has _systemd-notify' {
    assert "$src/_systemd-notify" is_file
}

@test 'src has _systemd-nspawn' {
    assert "$src/_systemd-nspawn" is_file
}

@test 'src has _systemd-path' {
    assert "$src/_systemd-path" is_file
}

@test 'src has _systemd-repart' {
    assert "$src/_systemd-repart" is_file
}

@test 'src has _systemd-resolve' {
    assert "$src/_systemd-resolve" is_file
}

@test 'src has _systemd-run' {
    assert "$src/_systemd-run" is_file
}

@test 'src has _systemd-socket-activate' {
    assert "$src/_systemd-socket-activate" is_file
}

@test 'src has _systemd-stdio-bridge' {
    assert "$src/_systemd-stdio-bridge" is_file
}

@test 'src has _systemd-sysext' {
    assert "$src/_systemd-sysext" is_file
}

@test 'src has _systemd-sysusers' {
    assert "$src/_systemd-sysusers" is_file
}

@test 'src has _systemd-tmpfiles' {
    assert "$src/_systemd-tmpfiles" is_file
}

@test 'src has _systemd-tty-ask-password-agent' {
    assert "$src/_systemd-tty-ask-password-agent" is_file
}

@test 'src has _systemd-umount' {
    assert "$src/_systemd-umount" is_file
}

@test 'src has _systemd-vpick' {
    assert "$src/_systemd-vpick" is_file
}

@test 'src has _systemstats' {
    assert "$src/_systemstats" is_file
}

@test 'src has _systool' {
    assert "$src/_systool" is_file
}

@test 'src has _sz' {
    assert "$src/_sz" is_file
}

@test 'src has _t1ascii' {
    assert "$src/_t1ascii" is_file
}

@test 'src has _t1asm' {
    assert "$src/_t1asm" is_file
}

@test 'src has _t1binary' {
    assert "$src/_t1binary" is_file
}

@test 'src has _t1disasm' {
    assert "$src/_t1disasm" is_file
}

@test 'src has _t1dotlessj' {
    assert "$src/_t1dotlessj" is_file
}

@test 'src has _t1lint' {
    assert "$src/_t1lint" is_file
}

@test 'src has _t1mac' {
    assert "$src/_t1mac" is_file
}

@test 'src has _t1rawafm' {
    assert "$src/_t1rawafm" is_file
}

@test 'src has _t1reencode' {
    assert "$src/_t1reencode" is_file
}

@test 'src has _t1testpage' {
    assert "$src/_t1testpage" is_file
}

@test 'src has _t1unmac' {
    assert "$src/_t1unmac" is_file
}

@test 'src has _t4ht' {
    assert "$src/_t4ht" is_file
}

@test 'src has _t50' {
    assert "$src/_t50" is_file
}

@test 'src has _tab2space' {
    assert "$src/_tab2space" is_file
}

@test 'src has _tabtab' {
    assert "$src/_tabtab" is_file
}

@test 'src has _tagmedia' {
    assert "$src/_tagmedia" is_file
}

@test 'src has _tags_demo' {
    assert "$src/_tags_demo" is_file
}

@test 'src has _tailf' {
    assert "$src/_tailf" is_file
}

@test 'src has _tal' {
    assert "$src/_tal" is_file
}

@test 'src has _tali' {
    assert "$src/_tali" is_file
}

@test 'src has _talkd' {
    assert "$src/_talkd" is_file
}

@test 'src has _tangle' {
    assert "$src/_tangle" is_file
}

@test 'src has _tarcat' {
    assert "$src/_tarcat" is_file
}

@test 'src has _targen' {
    assert "$src/_targen" is_file
}

@test 'src has _target_dec_fate.sh' {
    assert "$src/_target_dec_fate.sh" is_file
}

@test 'src has _tasksel' {
    assert "$src/_tasksel" is_file
}

@test 'src has _taskset' {
    assert "$src/_taskset" is_file
}

@test 'src has _tbl-dctrl' {
    assert "$src/_tbl-dctrl" is_file
}

@test 'src has _tc' {
    assert "$src/_tc" is_file
}

@test 'src has _tcat' {
    assert "$src/_tcat" is_file
}

@test 'src has _tcpbridge' {
    assert "$src/_tcpbridge" is_file
}

@test 'src has _tcpcapinfo' {
    assert "$src/_tcpcapinfo" is_file
}

@test 'src has _tcpdchk' {
    assert "$src/_tcpdchk" is_file
}

@test 'src has _tcpdmatch' {
    assert "$src/_tcpdmatch" is_file
}

@test 'src has _tcpdump2xplot' {
    assert "$src/_tcpdump2xplot" is_file
}

@test 'src has _tcpflow' {
    assert "$src/_tcpflow" is_file
}

@test 'src has _tcpliveplay' {
    assert "$src/_tcpliveplay" is_file
}

@test 'src has _tcpprep' {
    assert "$src/_tcpprep" is_file
}

@test 'src has _tcpprof' {
    assert "$src/_tcpprof" is_file
}

@test 'src has _tcpreplay' {
    assert "$src/_tcpreplay" is_file
}

@test 'src has _tcpreplay-edit' {
    assert "$src/_tcpreplay-edit" is_file
}

@test 'src has _tcprewrite' {
    assert "$src/_tcprewrite" is_file
}

@test 'src has _tcpstat' {
    assert "$src/_tcpstat" is_file
}

@test 'src has _tcptrace' {
    assert "$src/_tcptrace" is_file
}

@test 'src has _tcptraceroute.db' {
    assert "$src/_tcptraceroute.db" is_file
}

@test 'src has _tcpwatch-httpproxy' {
    assert "$src/_tcpwatch-httpproxy" is_file
}

@test 'src has _tcpxtract' {
    assert "$src/_tcpxtract" is_file
}

@test 'src has _tcsd' {
    assert "$src/_tcsd" is_file
}

@test 'src has _tcsd_emu' {
    assert "$src/_tcsd_emu" is_file
}

@test 'src has _tcsh' {
    assert "$src/_tcsh" is_file
}

@test 'src has _tctrace' {
    assert "$src/_tctrace" is_file
}

@test 'src has _tdbbackup' {
    assert "$src/_tdbbackup" is_file
}

@test 'src has _tdbbackup.tdbtools' {
    assert "$src/_tdbbackup.tdbtools" is_file
}

@test 'src has _tdbdump' {
    assert "$src/_tdbdump" is_file
}

@test 'src has _teamdctl' {
    assert "$src/_teamdctl" is_file
}

@test 'src has _teamnl' {
    assert "$src/_teamnl" is_file
}

@test 'src has _teckit_compile' {
    assert "$src/_teckit_compile" is_file
}

@test 'src has _telinit' {
    assert "$src/_telinit" is_file
}

@test 'src has _telnet.netkit' {
    assert "$src/_telnet.netkit" is_file
}

@test 'src has _telnetd' {
    assert "$src/_telnetd" is_file
}

@test 'src has _tempfile' {
    assert "$src/_tempfile" is_file
}

@test 'src has _temprs' {
    assert "$src/_temprs" is_file
}

@test 'src has _term_display' {
    assert "$src/_term_display" is_file
}

@test 'src has _termcolors' {
    assert "$src/_termcolors" is_file
}

@test 'src has _termineter' {
    assert "$src/_termineter" is_file
}

@test 'src has _terraform' {
    assert "$src/_terraform" is_file
}

@test 'src has _test-runner' {
    assert "$src/_test-runner" is_file
}

@test 'src has _test_be' {
    assert "$src/_test_be" is_file
}

@test 'src has _testament' {
    assert "$src/_testament" is_file
}

@test 'src has _testgdbm' {
    assert "$src/_testgdbm" is_file
}

@test 'src has _testj1939' {
    assert "$src/_testj1939" is_file
}

@test 'src has _testparm' {
    assert "$src/_testparm" is_file
}

@test 'src has _testrec' {
    assert "$src/_testrec" is_file
}

@test 'src has _tex' {
    assert "$src/_tex" is_file
}

@test 'src has _tex4ebook' {
    assert "$src/_tex4ebook" is_file
}

@test 'src has _texblend' {
    assert "$src/_texblend" is_file
}

@test 'src has _texcount' {
    assert "$src/_texcount" is_file
}

@test 'src has _texdef' {
    assert "$src/_texdef" is_file
}

@test 'src has _texdoc' {
    assert "$src/_texdoc" is_file
}

@test 'src has _texfindpkg' {
    assert "$src/_texfindpkg" is_file
}

@test 'src has _texhash' {
    assert "$src/_texhash" is_file
}

@test 'src has _texi2any' {
    assert "$src/_texi2any" is_file
}

@test 'src has _texi2dvi' {
    assert "$src/_texi2dvi" is_file
}

@test 'src has _texi2dvi4a2ps' {
    assert "$src/_texi2dvi4a2ps" is_file
}

@test 'src has _texi2html' {
    assert "$src/_texi2html" is_file
}

@test 'src has _texi2pdf' {
    assert "$src/_texi2pdf" is_file
}

@test 'src has _texindex' {
    assert "$src/_texindex" is_file
}

@test 'src has _texlinks' {
    assert "$src/_texlinks" is_file
}

@test 'src has _texliveonfly' {
    assert "$src/_texliveonfly" is_file
}

@test 'src has _texlogfilter' {
    assert "$src/_texlogfilter" is_file
}

@test 'src has _texlua' {
    assert "$src/_texlua" is_file
}

@test 'src has _texlua53' {
    assert "$src/_texlua53" is_file
}

@test 'src has _texluac' {
    assert "$src/_texluac" is_file
}

@test 'src has _texluajit' {
    assert "$src/_texluajit" is_file
}

@test 'src has _texluajitc' {
    assert "$src/_texluajitc" is_file
}

@test 'src has _texosquery' {
    assert "$src/_texosquery" is_file
}

@test 'src has _texosquery-jre5' {
    assert "$src/_texosquery-jre5" is_file
}

@test 'src has _texosquery-jre8' {
    assert "$src/_texosquery-jre8" is_file
}

@test 'src has _texsis' {
    assert "$src/_texsis" is_file
}

@test 'src has _text2image' {
    assert "$src/_text2image" is_file
}

@test 'src has _text2pcap' {
    assert "$src/_text2pcap" is_file
}

@test 'src has _textestvis' {
    assert "$src/_textestvis" is_file
}

@test 'src has _textlint' {
    assert "$src/_textlint" is_file
}

@test 'src has _texture_to_cube' {
    assert "$src/_texture_to_cube" is_file
}

@test 'src has _textutil' {
    assert "$src/_textutil" is_file
}

@test 'src has _tezos2john' {
    assert "$src/_tezos2john" is_file
}

@test 'src has _tftopl' {
    assert "$src/_tftopl" is_file
}

@test 'src has _tftp' {
    assert "$src/_tftp" is_file
}

@test 'src has _tftpd' {
    assert "$src/_tftpd" is_file
}

@test 'src has _tgzLocalInstaller.sh' {
    assert "$src/_tgzLocalInstaller.sh" is_file
}

@test 'src has _thc-pptp-bruter' {
    assert "$src/_thc-pptp-bruter" is_file
}

@test 'src has _thc-ssl-dos' {
    assert "$src/_thc-ssl-dos" is_file
}

@test 'src has _thd' {
    assert "$src/_thd" is_file
}

@test 'src has _thefuck' {
    assert "$src/_thefuck" is_file
}

@test 'src has _themole' {
    assert "$src/_themole" is_file
}

@test 'src has _theora_encode' {
    assert "$src/_theora_encode" is_file
}

@test 'src has _thermald' {
    assert "$src/_thermald" is_file
}

@test 'src has _thin' {
    assert "$src/_thin" is_file
}

@test 'src has _thin_generate_metadata' {
    assert "$src/_thin_generate_metadata" is_file
}

@test 'src has _thin_metadata_pack' {
    assert "$src/_thin_metadata_pack" is_file
}

@test 'src has _thin_metadata_size' {
    assert "$src/_thin_metadata_size" is_file
}

@test 'src has _thin_metadata_unpack' {
    assert "$src/_thin_metadata_unpack" is_file
}

@test 'src has _thrift1' {
    assert "$src/_thrift1" is_file
}

@test 'src has _thumbpdf' {
    assert "$src/_thumbpdf" is_file
}

@test 'src has _thumbs' {
    assert "$src/_thumbs" is_file
}

@test 'src has _thunar-volman-settings' {
    assert "$src/_thunar-volman-settings" is_file
}

@test 'src has _thunderbird' {
    assert "$src/_thunderbird" is_file
}

@test 'src has _tic' {
    assert "$src/_tic" is_file
}

@test 'src has _tidy_changelog' {
    assert "$src/_tidy_changelog" is_file
}

@test 'src has _tidy_changelog5.30' {
    assert "$src/_tidy_changelog5.30" is_file
}

@test 'src has _tidy_changelog5.34' {
    assert "$src/_tidy_changelog5.34" is_file
}

@test 'src has _tiff2bw' {
    assert "$src/_tiff2bw" is_file
}

@test 'src has _tiff2fsspec' {
    assert "$src/_tiff2fsspec" is_file
}

@test 'src has _tiff2pdf' {
    assert "$src/_tiff2pdf" is_file
}

@test 'src has _tiff2ps' {
    assert "$src/_tiff2ps" is_file
}

@test 'src has _tiff2rgba' {
    assert "$src/_tiff2rgba" is_file
}

@test 'src has _tiffcmp' {
    assert "$src/_tiffcmp" is_file
}

@test 'src has _tiffcp' {
    assert "$src/_tiffcp" is_file
}

@test 'src has _tiffcrop' {
    assert "$src/_tiffcrop" is_file
}

@test 'src has _tiffdither' {
    assert "$src/_tiffdither" is_file
}

@test 'src has _tifffile' {
    assert "$src/_tifffile" is_file
}

@test 'src has _tiffgamut' {
    assert "$src/_tiffgamut" is_file
}

@test 'src has _tiffinfo' {
    assert "$src/_tiffinfo" is_file
}

@test 'src has _tiffmedian' {
    assert "$src/_tiffmedian" is_file
}

@test 'src has _tiffset' {
    assert "$src/_tiffset" is_file
}

@test 'src has _tiffsplit' {
    assert "$src/_tiffsplit" is_file
}

@test 'src has _tiffutil' {
    assert "$src/_tiffutil" is_file
}

@test 'src has _tificc' {
    assert "$src/_tificc" is_file
}

@test 'src has _tig' {
    assert "$src/_tig" is_file
}

@test 'src has _tiger-hash' {
    assert "$src/_tiger-hash" is_file
}

@test 'src has _tigerdeep' {
    assert "$src/_tigerdeep" is_file
}

@test 'src has _tightvncserver' {
    assert "$src/_tightvncserver" is_file
}

@test 'src has _tilt' {
    assert "$src/_tilt" is_file
}

@test 'src has _timage' {
    assert "$src/_timage" is_file
}

@test 'src has _time' {
    assert "$src/_time" is_file
}

@test 'src has _timediff32.pl' {
    assert "$src/_timediff32.pl" is_file
}

@test 'src has _timelineeditor' {
    assert "$src/_timelineeditor" is_file
}

@test 'src has _timer_analyser.d' {
    assert "$src/_timer_analyser.d" is_file
}

@test 'src has _timerfires' {
    assert "$src/_timerfires" is_file
}

@test 'src has _tini' {
    assert "$src/_tini" is_file
}

@test 'src has _tini-static' {
    assert "$src/_tini-static" is_file
}

@test 'src has _tipc' {
    assert "$src/_tipc" is_file
}

@test 'src has _tiv' {
    assert "$src/_tiv" is_file
}

@test 'src has _tjbench' {
    assert "$src/_tjbench" is_file
}

@test 'src has _tkcon' {
    assert "$src/_tkcon" is_file
}

@test 'src has _tkiptun-ng' {
    assert "$src/_tkiptun-ng" is_file
}

@test 'src has _tknewsbiff' {
    assert "$src/_tknewsbiff" is_file
}

@test 'src has _tlmgr' {
    assert "$src/_tlmgr" is_file
}

@test 'src has _tload' {
    assert "$src/_tload" is_file
}

@test 'src has _tlp-stat' {
    assert "$src/_tlp-stat" is_file
}

@test 'src has _tlshell' {
    assert "$src/_tlshell" is_file
}

@test 'src has _tmdiagnose' {
    assert "$src/_tmdiagnose" is_file
}

@test 'src has _tmux-thumbs' {
    assert "$src/_tmux-thumbs" is_file
}

@test 'src has _to_erl' {
    assert "$src/_to_erl" is_file
}

@test 'src has _toast' {
    assert "$src/_toast" is_file
}

@test 'src has _todos' {
    assert "$src/_todos" is_file
}

@test 'src has _tokei' {
    assert "$src/_tokei" is_file
}

@test 'src has _tomboy' {
    assert "$src/_tomboy" is_file
}

@test 'src has _topsyscall' {
    assert "$src/_topsyscall" is_file
}

@test 'src has _tor-prompt' {
    assert "$src/_tor-prompt" is_file
}

@test 'src has _torbrowser-launcher' {
    assert "$src/_torbrowser-launcher" is_file
}

@test 'src has _torsocks' {
    assert "$src/_torsocks" is_file
}

@test 'src has _totem' {
    assert "$src/_totem" is_file
}

@test 'src has _totem-audio-preview' {
    assert "$src/_totem-audio-preview" is_file
}

@test 'src has _totem-video-thumbnailer' {
    assert "$src/_totem-video-thumbnailer" is_file
}

@test 'src has _tpctl' {
    assert "$src/_tpctl" is_file
}

@test 'src has _tpic2pdftex' {
    assert "$src/_tpic2pdftex" is_file
}

@test 'src has _tpmtool' {
    assert "$src/_tpmtool" is_file
}

@test 'src has _tputcmd' {
    assert "$src/_tputcmd" is_file
}

@test 'src has _tqdm' {
    assert "$src/_tqdm" is_file
}

@test 'src has _trace' {
    assert "$src/_trace" is_file
}

@test 'src has _trace-summary' {
    assert "$src/_trace-summary" is_file
}

@test 'src has _traceproto' {
    assert "$src/_traceproto" is_file
}

@test 'src has _traceproto.db' {
    assert "$src/_traceproto.db" is_file
}

@test 'src has _traceroute-nanog' {
    assert "$src/_traceroute-nanog" is_file
}

@test 'src has _traceroute.db' {
    assert "$src/_traceroute.db" is_file
}

@test 'src has _traceroute6' {
    assert "$src/_traceroute6" is_file
}

@test 'src has _traceroute6.db' {
    assert "$src/_traceroute6.db" is_file
}

@test 'src has _traceroute6.iputils' {
    assert "$src/_traceroute6.iputils" is_file
}

@test 'src has _tracker-control' {
    assert "$src/_tracker-control" is_file
}

@test 'src has _tracker-import' {
    assert "$src/_tracker-import" is_file
}

@test 'src has _tracker-info' {
    assert "$src/_tracker-info" is_file
}

@test 'src has _tracker-needle' {
    assert "$src/_tracker-needle" is_file
}

@test 'src has _tracker-preferences' {
    assert "$src/_tracker-preferences" is_file
}

@test 'src has _tracker-search' {
    assert "$src/_tracker-search" is_file
}

@test 'src has _tracker-sparql' {
    assert "$src/_tracker-sparql" is_file
}

@test 'src has _tracker-stats' {
    assert "$src/_tracker-stats" is_file
}

@test 'src has _tracker-tag' {
    assert "$src/_tracker-tag" is_file
}

@test 'src has _tracker3-import' {
    assert "$src/_tracker3-import" is_file
}

@test 'src has _tracker3-index' {
    assert "$src/_tracker3-index" is_file
}

@test 'src has _trafgen' {
    assert "$src/_trafgen" is_file
}

@test 'src has _train' {
    assert "$src/_train" is_file
}

@test 'src has _transfer' {
    assert "$src/_transfer" is_file
}

@test 'src has _transform' {
    assert "$src/_transform" is_file
}

@test 'src has _transmission-gtk' {
    assert "$src/_transmission-gtk" is_file
}

@test 'src has _transset' {
    assert "$src/_transset" is_file
}

@test 'src has _traptoemail' {
    assert "$src/_traptoemail" is_file
}

@test 'src has _tree-sitter' {
    assert "$src/_tree-sitter" is_file
}

@test 'src has _treereg' {
    assert "$src/_treereg" is_file
}

@test 'src has _treereg5.18' {
    assert "$src/_treereg5.18" is_file
}

@test 'src has _treereg5.28' {
    assert "$src/_treereg5.28" is_file
}

@test 'src has _treereg5.30' {
    assert "$src/_treereg5.30" is_file
}

@test 'src has _treereg5.34' {
    assert "$src/_treereg5.34" is_file
}

@test 'src has _trietool' {
    assert "$src/_trietool" is_file
}

@test 'src has _trietool-0.2' {
    assert "$src/_trietool-0.2" is_file
}

@test 'src has _trigcap' {
    assert "$src/_trigcap" is_file
}

@test 'src has _troff' {
    assert "$src/_troff" is_file
}

@test 'src has _truecrack' {
    assert "$src/_truecrack" is_file
}

@test 'src has _truecrypt2john' {
    assert "$src/_truecrypt2john" is_file
}

@test 'src has _ts-node' {
    assert "$src/_ts-node" is_file
}

@test 'src has _ts-node-cwd' {
    assert "$src/_ts-node-cwd" is_file
}

@test 'src has _ts-node-esm' {
    assert "$src/_ts-node-esm" is_file
}

@test 'src has _ts-node-script' {
    assert "$src/_ts-node-script" is_file
}

@test 'src has _ts-node-transpile-only' {
    assert "$src/_ts-node-transpile-only" is_file
}

@test 'src has _ts-script' {
    assert "$src/_ts-script" is_file
}

@test 'src has _ts_calibrate' {
    assert "$src/_ts_calibrate" is_file
}

@test 'src has _ts_finddev' {
    assert "$src/_ts_finddev" is_file
}

@test 'src has _ts_print' {
    assert "$src/_ts_print" is_file
}

@test 'src has _ts_print_mt' {
    assert "$src/_ts_print_mt" is_file
}

@test 'src has _ts_print_raw' {
    assert "$src/_ts_print_raw" is_file
}

@test 'src has _ts_test' {
    assert "$src/_ts_test" is_file
}

@test 'src has _ts_test_mt' {
    assert "$src/_ts_test_mt" is_file
}

@test 'src has _ts_uinput' {
    assert "$src/_ts_uinput" is_file
}

@test 'src has _tsc' {
    assert "$src/_tsc" is_file
}

@test 'src has _tset' {
    assert "$src/_tset" is_file
}

@test 'src has _tsig-keygen' {
    assert "$src/_tsig-keygen" is_file
}

@test 'src has _tsk_comparedir' {
    assert "$src/_tsk_comparedir" is_file
}

@test 'src has _tsk_gettimes' {
    assert "$src/_tsk_gettimes" is_file
}

@test 'src has _tsk_imageinfo' {
    assert "$src/_tsk_imageinfo" is_file
}

@test 'src has _tsk_loaddb' {
    assert "$src/_tsk_loaddb" is_file
}

@test 'src has _tsk_recover' {
    assert "$src/_tsk_recover" is_file
}

@test 'src has _tsql' {
    assert "$src/_tsql" is_file
}

@test 'src has _tss2' {
    assert "$src/_tss2" is_file
}

@test 'src has _tsvnc' {
    assert "$src/_tsvnc" is_file
}

@test 'src has _tt' {
    assert "$src/_tt" is_file
}

@test 'src has _ttf2afm' {
    assert "$src/_ttf2afm" is_file
}

@test 'src has _ttf2kotexfont' {
    assert "$src/_ttf2kotexfont" is_file
}

@test 'src has _ttf2pk' {
    assert "$src/_ttf2pk" is_file
}

@test 'src has _ttf2tfm' {
    assert "$src/_ttf2tfm" is_file
}

@test 'src has _ttftotype42' {
    assert "$src/_ttftotype42" is_file
}

@test 'src has _tth-hash' {
    assert "$src/_tth-hash" is_file
}

@test 'src has _ttmkfdir' {
    assert "$src/_ttmkfdir" is_file
}

@test 'src has _tty' {
    assert "$src/_tty" is_file
}

@test 'src has _tunctl' {
    assert "$src/_tunctl" is_file
}

@test 'src has _tune.exfat' {
    assert "$src/_tune.exfat" is_file
}

@test 'src has _tuned-adm' {
    assert "$src/_tuned-adm" is_file
}

@test 'src has _tunefs.reiserfs' {
    assert "$src/_tunefs.reiserfs" is_file
}

@test 'src has _tunelp' {
    assert "$src/_tunelp" is_file
}

@test 'src has _turbostat' {
    assert "$src/_turbostat" is_file
}

@test 'src has _tvservice' {
    assert "$src/_tvservice" is_file
}

@test 'src has _twadmin' {
    assert "$src/_twadmin" is_file
}

@test 'src has _twigjs' {
    assert "$src/_twigjs" is_file
}

@test 'src has _twill' {
    assert "$src/_twill" is_file
}

@test 'src has _twist3' {
    assert "$src/_twist3" is_file
}

@test 'src has _twofi' {
    assert "$src/_twofi" is_file
}

@test 'src has _twopi' {
    assert "$src/_twopi" is_file
}

@test 'src has _twprint' {
    assert "$src/_twprint" is_file
}

@test 'src has _txt2ti3' {
    assert "$src/_txt2ti3" is_file
}

@test 'src has _typeprof' {
    assert "$src/_typeprof" is_file
}

@test 'src has _typer' {
    assert "$src/_typer" is_file
}

@test 'src has _tzselect' {
    assert "$src/_tzselect" is_file
}

@test 'src has _u3-tool' {
    assert "$src/_u3-tool" is_file
}

@test 'src has _ua-tester' {
    assert "$src/_ua-tester" is_file
}

@test 'src has _uasysdiagnose' {
    assert "$src/_uasysdiagnose" is_file
}

@test 'src has _ubertooth-afh' {
    assert "$src/_ubertooth-afh" is_file
}

@test 'src has _ubertooth-btle' {
    assert "$src/_ubertooth-btle" is_file
}

@test 'src has _ubertooth-debug' {
    assert "$src/_ubertooth-debug" is_file
}

@test 'src has _ubertooth-dfu' {
    assert "$src/_ubertooth-dfu" is_file
}

@test 'src has _ubertooth-ducky' {
    assert "$src/_ubertooth-ducky" is_file
}

@test 'src has _ubertooth-dump' {
    assert "$src/_ubertooth-dump" is_file
}

@test 'src has _ubertooth-ego' {
    assert "$src/_ubertooth-ego" is_file
}

@test 'src has _ubertooth-follow' {
    assert "$src/_ubertooth-follow" is_file
}

@test 'src has _ubertooth-rx' {
    assert "$src/_ubertooth-rx" is_file
}

@test 'src has _ubertooth-scan' {
    assert "$src/_ubertooth-scan" is_file
}

@test 'src has _ubertooth-specan' {
    assert "$src/_ubertooth-specan" is_file
}

@test 'src has _ubertooth-specan-ui' {
    assert "$src/_ubertooth-specan-ui" is_file
}

@test 'src has _ubertooth-util' {
    assert "$src/_ubertooth-util" is_file
}

@test 'src has _ubiattach' {
    assert "$src/_ubiattach" is_file
}

@test 'src has _ubiblock' {
    assert "$src/_ubiblock" is_file
}

@test 'src has _ubicrc32' {
    assert "$src/_ubicrc32" is_file
}

@test 'src has _ubidetach' {
    assert "$src/_ubidetach" is_file
}

@test 'src has _ubiformat' {
    assert "$src/_ubiformat" is_file
}

@test 'src has _ubimkvol' {
    assert "$src/_ubimkvol" is_file
}

@test 'src has _ubinfo' {
    assert "$src/_ubinfo" is_file
}

@test 'src has _ubinize' {
    assert "$src/_ubinize" is_file
}

@test 'src has _ubirmvol' {
    assert "$src/_ubirmvol" is_file
}

@test 'src has _ubirsvol' {
    assert "$src/_ubirsvol" is_file
}

@test 'src has _ubiscan' {
    assert "$src/_ubiscan" is_file
}

@test 'src has _ubiupdatevol' {
    assert "$src/_ubiupdatevol" is_file
}

@test 'src has _ubuntu-bug' {
    assert "$src/_ubuntu-bug" is_file
}

@test 'src has _ubuntu-drivers' {
    assert "$src/_ubuntu-drivers" is_file
}

@test 'src has _ubuntu-security-status' {
    assert "$src/_ubuntu-security-status" is_file
}

@test 'src has _ubuntu-software' {
    assert "$src/_ubuntu-software" is_file
}

@test 'src has _ubuntu-support-status' {
    assert "$src/_ubuntu-support-status" is_file
}

@test 'src has _ucf' {
    assert "$src/_ucf" is_file
}

@test 'src has _ucfq' {
    assert "$src/_ucfq" is_file
}

@test 'src has _ucfr' {
    assert "$src/_ucfr" is_file
}

@test 'src has _uchardet' {
    assert "$src/_uchardet" is_file
}

@test 'src has _uclampset' {
    assert "$src/_uclampset" is_file
}

@test 'src has _uconv' {
    assert "$src/_uconv" is_file
}

@test 'src has _udevd' {
    assert "$src/_udevd" is_file
}

@test 'src has _udflabel' {
    assert "$src/_udflabel" is_file
}

@test 'src has _udhcpc' {
    assert "$src/_udhcpc" is_file
}

@test 'src has _udhcpc6' {
    assert "$src/_udhcpc6" is_file
}

@test 'src has _udpdump' {
    assert "$src/_udpdump" is_file
}

@test 'src has _udptunnel' {
    assert "$src/_udptunnel" is_file
}

@test 'src has _ufraw-batch' {
    assert "$src/_ufraw-batch" is_file
}

@test 'src has _uhd_cal_rx_iq_balance' {
    assert "$src/_uhd_cal_rx_iq_balance" is_file
}

@test 'src has _uhd_cal_tx_dc_offset' {
    assert "$src/_uhd_cal_tx_dc_offset" is_file
}

@test 'src has _uhd_cal_tx_iq_balance' {
    assert "$src/_uhd_cal_tx_iq_balance" is_file
}

@test 'src has _uhd_config_info' {
    assert "$src/_uhd_config_info" is_file
}

@test 'src has _uhd_fft' {
    assert "$src/_uhd_fft" is_file
}

@test 'src has _uhd_find_devices' {
    assert "$src/_uhd_find_devices" is_file
}

@test 'src has _uhd_image_loader' {
    assert "$src/_uhd_image_loader" is_file
}

@test 'src has _uhd_images_downloader' {
    assert "$src/_uhd_images_downloader" is_file
}

@test 'src has _uhd_rx_cfile' {
    assert "$src/_uhd_rx_cfile" is_file
}

@test 'src has _uhd_rx_nogui' {
    assert "$src/_uhd_rx_nogui" is_file
}

@test 'src has _uhd_siggen_gui' {
    assert "$src/_uhd_siggen_gui" is_file
}

@test 'src has _uhd_usrp_probe' {
    assert "$src/_uhd_usrp_probe" is_file
}

@test 'src has _uic' {
    assert "$src/_uic" is_file
}

@test 'src has _uic-qt4' {
    assert "$src/_uic-qt4" is_file
}

@test 'src has _uic-qt5' {
    assert "$src/_uic-qt5" is_file
}

@test 'src has _uic3' {
    assert "$src/_uic3" is_file
}

@test 'src has _ul' {
    assert "$src/_ul" is_file
}

@test 'src has _ulqda' {
    assert "$src/_ulqda" is_file
}

@test 'src has _umask' {
    assert "$src/_umask" is_file
}

@test 'src has _umax_pp' {
    assert "$src/_umax_pp" is_file
}

@test 'src has _umd' {
    assert "$src/_umd" is_file
}

@test 'src has _umount' {
    assert "$src/_umount" is_file
}

@test 'src has _umount.ecryptfs' {
    assert "$src/_umount.ecryptfs" is_file
}

@test 'src has _umount.ecryptfs_private' {
    assert "$src/_umount.ecryptfs_private" is_file
}

@test 'src has _umount.nfs' {
    assert "$src/_umount.nfs" is_file
}

@test 'src has _umount.nfs4' {
    assert "$src/_umount.nfs4" is_file
}

@test 'src has _uname26' {
    assert "$src/_uname26" is_file
}

@test 'src has _unattended-upgrade' {
    assert "$src/_unattended-upgrade" is_file
}

@test 'src has _unattended-upgrades' {
    assert "$src/_unattended-upgrades" is_file
}

@test 'src has _unbin' {
    assert "$src/_unbin" is_file
}

@test 'src has _unbound' {
    assert "$src/_unbound" is_file
}

@test 'src has _unbound-anchor' {
    assert "$src/_unbound-anchor" is_file
}

@test 'src has _unbound-checkconf' {
    assert "$src/_unbound-checkconf" is_file
}

@test 'src has _unbound-control' {
    assert "$src/_unbound-control" is_file
}

@test 'src has _unbound-control-setup' {
    assert "$src/_unbound-control-setup" is_file
}

@test 'src has _unbound-host' {
    assert "$src/_unbound-host" is_file
}

@test 'src has _uncompress' {
    assert "$src/_uncompress" is_file
}

@test 'src has _uncompress.real' {
    assert "$src/_uncompress.real" is_file
}

@test 'src has _unflatten' {
    assert "$src/_unflatten" is_file
}

@test 'src has _unhex' {
    assert "$src/_unhex" is_file
}

@test 'src has _unhide-linux' {
    assert "$src/_unhide-linux" is_file
}

@test 'src has _unhide-posix' {
    assert "$src/_unhide-posix" is_file
}

@test 'src has _unhide_rb' {
    assert "$src/_unhide_rb" is_file
}

@test 'src has _unibrow' {
    assert "$src/_unibrow" is_file
}

@test 'src has _unicharset_extractor' {
    assert "$src/_unicharset_extractor" is_file
}

@test 'src has _unicornscan' {
    assert "$src/_unicornscan" is_file
}

@test 'src has _unidecode' {
    assert "$src/_unidecode" is_file
}

@test 'src has _unifdef' {
    assert "$src/_unifdef" is_file
}

@test 'src has _unify' {
    assert "$src/_unify" is_file
}

@test 'src has _unitdiff' {
    assert "$src/_unitdiff" is_file
}

@test 'src has _unity-scope-loader' {
    assert "$src/_unity-scope-loader" is_file
}

@test 'src has _unity-settings-daemon' {
    assert "$src/_unity-settings-daemon" is_file
}

@test 'src has _unix2dos' {
    assert "$src/_unix2dos" is_file
}

@test 'src has _unix2mac' {
    assert "$src/_unix2mac" is_file
}

@test 'src has _unlink' {
    assert "$src/_unlink" is_file
}

@test 'src has _unlz4' {
    assert "$src/_unlz4" is_file
}

@test 'src has _unlzf' {
    assert "$src/_unlzf" is_file
}

@test 'src has _unlzma' {
    assert "$src/_unlzma" is_file
}

@test 'src has _unlzop' {
    assert "$src/_unlzop" is_file
}

@test 'src has _unmkinitramfs' {
    assert "$src/_unmkinitramfs" is_file
}

@test 'src has _unmunge' {
    assert "$src/_unmunge" is_file
}

@test 'src has _unoconv' {
    assert "$src/_unoconv" is_file
}

@test 'src has _unopkg' {
    assert "$src/_unopkg" is_file
}

@test 'src has _unpack200' {
    assert "$src/_unpack200" is_file
}

@test 'src has _unpigz' {
    assert "$src/_unpigz" is_file
}

@test 'src has _unprocessed_raw' {
    assert "$src/_unprocessed_raw" is_file
}

@test 'src has _unshar' {
    assert "$src/_unshar" is_file
}

@test 'src has _unshare' {
    assert "$src/_unshare" is_file
}

@test 'src has _unshield' {
    assert "$src/_unshield" is_file
}

@test 'src has _unsingle' {
    assert "$src/_unsingle" is_file
}

@test 'src has _unsquashfs' {
    assert "$src/_unsquashfs" is_file
}

@test 'src has _untoast' {
    assert "$src/_untoast" is_file
}

@test 'src has _unxz' {
    assert "$src/_unxz" is_file
}

@test 'src has _unzip-plain' {
    assert "$src/_unzip-plain" is_file
}

@test 'src has _unzstd' {
    assert "$src/_unzstd" is_file
}

@test 'src has _upbibtex' {
    assert "$src/_upbibtex" is_file
}

@test 'src has _update-alternatives' {
    assert "$src/_update-alternatives" is_file
}

@test 'src has _update-binfmts' {
    assert "$src/_update-binfmts" is_file
}

@test 'src has _update-ca-certificates' {
    assert "$src/_update-ca-certificates" is_file
}

@test 'src has _update-catalog' {
    assert "$src/_update-catalog" is_file
}

@test 'src has _update-conf' {
    assert "$src/_update-conf" is_file
}

@test 'src has _update-desktop-database' {
    assert "$src/_update-desktop-database" is_file
}

@test 'src has _update-exim4.conf' {
    assert "$src/_update-exim4.conf" is_file
}

@test 'src has _update-exim4.conf.template' {
    assert "$src/_update-exim4.conf.template" is_file
}

@test 'src has _update-fmtutil' {
    assert "$src/_update-fmtutil" is_file
}

@test 'src has _update-fonts-alias' {
    assert "$src/_update-fonts-alias" is_file
}

@test 'src has _update-fonts-dir' {
    assert "$src/_update-fonts-dir" is_file
}

@test 'src has _update-fonts-scale' {
    assert "$src/_update-fonts-scale" is_file
}

@test 'src has _update-gconf-defaults' {
    assert "$src/_update-gconf-defaults" is_file
}

@test 'src has _update-grub' {
    assert "$src/_update-grub" is_file
}

@test 'src has _update-grub2' {
    assert "$src/_update-grub2" is_file
}

@test 'src has _update-inetd' {
    assert "$src/_update-inetd" is_file
}

@test 'src has _update-inetd.real' {
    assert "$src/_update-inetd.real" is_file
}

@test 'src has _update-initramfs' {
    assert "$src/_update-initramfs" is_file
}

@test 'src has _update-java-alternatives' {
    assert "$src/_update-java-alternatives" is_file
}

@test 'src has _update-language' {
    assert "$src/_update-language" is_file
}

@test 'src has _update-language-dat' {
    assert "$src/_update-language-dat" is_file
}

@test 'src has _update-language-def' {
    assert "$src/_update-language-def" is_file
}

@test 'src has _update-language-lua' {
    assert "$src/_update-language-lua" is_file
}

@test 'src has _update-leap' {
    assert "$src/_update-leap" is_file
}

@test 'src has _update-locale' {
    assert "$src/_update-locale" is_file
}

@test 'src has _update-menus' {
    assert "$src/_update-menus" is_file
}

@test 'src has _update-notifier' {
    assert "$src/_update-notifier" is_file
}

@test 'src has _update-passwd' {
    assert "$src/_update-passwd" is_file
}

@test 'src has _update-perl-sax-parsers' {
    assert "$src/_update-perl-sax-parsers" is_file
}

@test 'src has _update-secureboot-policy' {
    assert "$src/_update-secureboot-policy" is_file
}

@test 'src has _update-shells' {
    assert "$src/_update-shells" is_file
}

@test 'src has _update-smart-drivedb' {
    assert "$src/_update-smart-drivedb" is_file
}

@test 'src has _update-tld-names' {
    assert "$src/_update-tld-names" is_file
}

@test 'src has _update-updmap' {
    assert "$src/_update-updmap" is_file
}

@test 'src has _update-xmlcatalog' {
    assert "$src/_update-xmlcatalog" is_file
}

@test 'src has _update_mcdp29xx' {
    assert "$src/_update_mcdp29xx" is_file
}

@test 'src has _update_rubygems' {
    assert "$src/_update_rubygems" is_file
}

@test 'src has _updatecopyright' {
    assert "$src/_updatecopyright" is_file
}

@test 'src has _updatedb' {
    assert "$src/_updatedb" is_file
}

@test 'src has _updatedb.findutils' {
    assert "$src/_updatedb.findutils" is_file
}

@test 'src has _updatedb.mlocate' {
    assert "$src/_updatedb.mlocate" is_file
}

@test 'src has _updatedb.plocate' {
    assert "$src/_updatedb.plocate" is_file
}

@test 'src has _updateinfoxml2solv' {
    assert "$src/_updateinfoxml2solv" is_file
}

@test 'src has _updater' {
    assert "$src/_updater" is_file
}

@test 'src has _updater.sh' {
    assert "$src/_updater.sh" is_file
}

@test 'src has _updaterNoPip.sh' {
    assert "$src/_updaterNoPip.sh" is_file
}

@test 'src has _updmap' {
    assert "$src/_updmap" is_file
}

@test 'src has _updmap-sys' {
    assert "$src/_updmap-sys" is_file
}

@test 'src has _updmap-user' {
    assert "$src/_updmap-user" is_file
}

@test 'src has _updpkgsums' {
    assert "$src/_updpkgsums" is_file
}

@test 'src has _updvitomp' {
    assert "$src/_updvitomp" is_file
}

@test 'src has _updvitype' {
    assert "$src/_updvitype" is_file
}

@test 'src has _uplatex' {
    assert "$src/_uplatex" is_file
}

@test 'src has _uplatex-dev' {
    assert "$src/_uplatex-dev" is_file
}

@test 'src has _upmendex' {
    assert "$src/_upmendex" is_file
}

@test 'src has _upmpost' {
    assert "$src/_upmpost" is_file
}

@test 'src has _upower' {
    assert "$src/_upower" is_file
}

@test 'src has _uppltotf' {
    assert "$src/_uppltotf" is_file
}

@test 'src has _uptex' {
    assert "$src/_uptex" is_file
}

@test 'src has _uptftopl' {
    assert "$src/_uptftopl" is_file
}

@test 'src has _upx' {
    assert "$src/_upx" is_file
}

@test 'src has _upx-ucl' {
    assert "$src/_upx-ucl" is_file
}

@test 'src has _ureadahead' {
    assert "$src/_ureadahead" is_file
}

@test 'src has _urlbst' {
    assert "$src/_urlbst" is_file
}

@test 'src has _urlcrazy' {
    assert "$src/_urlcrazy" is_file
}

@test 'src has _urlgrabber' {
    assert "$src/_urlgrabber" is_file
}

@test 'src has _us' {
    assert "$src/_us" is_file
}

@test 'src has _usb-creator-gtk' {
    assert "$src/_usb-creator-gtk" is_file
}

@test 'src has _usb_modeswitch' {
    assert "$src/_usb_modeswitch" is_file
}

@test 'src has _usbdeviceforensics.py' {
    assert "$src/_usbdeviceforensics.py" is_file
}

@test 'src has _usbdeviceforensics.py.bak' {
    assert "$src/_usbdeviceforensics.py.bak" is_file
}

@test 'src has _usbdump' {
    assert "$src/_usbdump" is_file
}

@test 'src has _usbhid-dump' {
    assert "$src/_usbhid-dump" is_file
}

@test 'src has _usbkdp' {
    assert "$src/_usbkdp" is_file
}

@test 'src has _usbmuxd' {
    assert "$src/_usbmuxd" is_file
}

@test 'src has _usdcat' {
    assert "$src/_usdcat" is_file
}

@test 'src has _usdchecker' {
    assert "$src/_usdchecker" is_file
}

@test 'src has _usdcrush' {
    assert "$src/_usdcrush" is_file
}

@test 'src has _usdextract' {
    assert "$src/_usdextract" is_file
}

@test 'src has _usdrecord' {
    assert "$src/_usdrecord" is_file
}

@test 'src has _usdtree' {
    assert "$src/_usdtree" is_file
}

@test 'src has _usdzip' {
    assert "$src/_usdzip" is_file
}

@test 'src has _useradd' {
    assert "$src/_useradd" is_file
}

@test 'src has _userdbctl' {
    assert "$src/_userdbctl" is_file
}

@test 'src has _userdel' {
    assert "$src/_userdel" is_file
}

@test 'src has _usermod' {
    assert "$src/_usermod" is_file
}

@test 'src has _usleep' {
    assert "$src/_usleep" is_file
}

@test 'src has _usn.py' {
    assert "$src/_usn.py" is_file
}

@test 'src has _usnj.pl' {
    assert "$src/_usnj.pl" is_file
}

@test 'src has _usnjls' {
    assert "$src/_usnjls" is_file
}

@test 'src has _usrp2_card_burner' {
    assert "$src/_usrp2_card_burner" is_file
}

@test 'src has _usrp_flex' {
    assert "$src/_usrp_flex" is_file
}

@test 'src has _usrp_flex_all' {
    assert "$src/_usrp_flex_all" is_file
}

@test 'src has _usrp_flex_band' {
    assert "$src/_usrp_flex_band" is_file
}

@test 'src has _utf8mex' {
    assert "$src/_utf8mex" is_file
}

@test 'src has _utmpdump' {
    assert "$src/_utmpdump" is_file
}

@test 'src has _utop' {
    assert "$src/_utop" is_file
}

@test 'src has _utop-full' {
    assert "$src/_utop-full" is_file
}

@test 'src has _uttype' {
    assert "$src/_uttype" is_file
}

@test 'src has _uuchk' {
    assert "$src/_uuchk" is_file
}

@test 'src has _uucico' {
    assert "$src/_uucico" is_file
}

@test 'src has _uuconv' {
    assert "$src/_uuconv" is_file
}

@test 'src has _uucp' {
    assert "$src/_uucp" is_file
}

@test 'src has _uudecode' {
    assert "$src/_uudecode" is_file
}

@test 'src has _uuencode' {
    assert "$src/_uuencode" is_file
}

@test 'src has _uuidd' {
    assert "$src/_uuidd" is_file
}

@test 'src has _uuidgen' {
    assert "$src/_uuidgen" is_file
}

@test 'src has _uuidparse' {
    assert "$src/_uuidparse" is_file
}

@test 'src has _uulog' {
    assert "$src/_uulog" is_file
}

@test 'src has _uuname' {
    assert "$src/_uuname" is_file
}

@test 'src has _uupick' {
    assert "$src/_uupick" is_file
}

@test 'src has _uusched' {
    assert "$src/_uusched" is_file
}

@test 'src has _uustat' {
    assert "$src/_uustat" is_file
}

@test 'src has _uuto' {
    assert "$src/_uuto" is_file
}

@test 'src has _uux' {
    assert "$src/_uux" is_file
}

@test 'src has _uuxqt' {
    assert "$src/_uuxqt" is_file
}

@test 'src has _uv' {
    assert "$src/_uv" is_file
}

@test 'src has _uvicorn' {
    assert "$src/_uvicorn" is_file
}

@test 'src has _uxterm' {
    assert "$src/_uxterm" is_file
}

@test 'src has _v4l2-compliance' {
    assert "$src/_v4l2-compliance" is_file
}

@test 'src has _v4l2-ctl' {
    assert "$src/_v4l2-ctl" is_file
}

@test 'src has _v4l2-dbg' {
    assert "$src/_v4l2-dbg" is_file
}

@test 'src has _v4l2-sysfs-path' {
    assert "$src/_v4l2-sysfs-path" is_file
}

@test 'src has _vacuumlo' {
    assert "$src/_vacuumlo" is_file
}

@test 'src has _vala' {
    assert "$src/_vala" is_file
}

@test 'src has _vala-0.40' {
    assert "$src/_vala-0.40" is_file
}

@test 'src has _vala-0.42' {
    assert "$src/_vala-0.42" is_file
}

@test 'src has _vala-0.44' {
    assert "$src/_vala-0.44" is_file
}

@test 'src has _vala-0.46' {
    assert "$src/_vala-0.46" is_file
}

@test 'src has _vala-0.48' {
    assert "$src/_vala-0.48" is_file
}

@test 'src has _vala-0.50' {
    assert "$src/_vala-0.50" is_file
}

@test 'src has _vala-0.52' {
    assert "$src/_vala-0.52" is_file
}

@test 'src has _vala-0.54' {
    assert "$src/_vala-0.54" is_file
}

@test 'src has _vala-0.56' {
    assert "$src/_vala-0.56" is_file
}

@test 'src has _vala-gen-introspect-0.48' {
    assert "$src/_vala-gen-introspect-0.48" is_file
}

@test 'src has _valac-0.40' {
    assert "$src/_valac-0.40" is_file
}

@test 'src has _valac-0.42' {
    assert "$src/_valac-0.42" is_file
}

@test 'src has _valac-0.44' {
    assert "$src/_valac-0.44" is_file
}

@test 'src has _valac-0.46' {
    assert "$src/_valac-0.46" is_file
}

@test 'src has _valac-0.48' {
    assert "$src/_valac-0.48" is_file
}

@test 'src has _valac-0.50' {
    assert "$src/_valac-0.50" is_file
}

@test 'src has _valac-0.54' {
    assert "$src/_valac-0.54" is_file
}

@test 'src has _valac-0.56' {
    assert "$src/_valac-0.56" is_file
}

@test 'src has _valadoc' {
    assert "$src/_valadoc" is_file
}

@test 'src has _valadoc-0.40' {
    assert "$src/_valadoc-0.40" is_file
}

@test 'src has _valadoc-0.42' {
    assert "$src/_valadoc-0.42" is_file
}

@test 'src has _valadoc-0.44' {
    assert "$src/_valadoc-0.44" is_file
}

@test 'src has _valadoc-0.50' {
    assert "$src/_valadoc-0.50" is_file
}

@test 'src has _valadoc-0.54' {
    assert "$src/_valadoc-0.54" is_file
}

@test 'src has _valadoc-0.56' {
    assert "$src/_valadoc-0.56" is_file
}

@test 'src has _valectl' {
    assert "$src/_valectl" is_file
}

@test 'src has _valgrind-di-server' {
    assert "$src/_valgrind-di-server" is_file
}

@test 'src has _valgrind-listener' {
    assert "$src/_valgrind-listener" is_file
}

@test 'src has _valgrind.bin' {
    assert "$src/_valgrind.bin" is_file
}

@test 'src has _validator.py' {
    assert "$src/_validator.py" is_file
}

@test 'src has _validlocale' {
    assert "$src/_validlocale" is_file
}

@test 'src has _vapigen' {
    assert "$src/_vapigen" is_file
}

@test 'src has _vapigen-0.40' {
    assert "$src/_vapigen-0.40" is_file
}

@test 'src has _vapigen-0.42' {
    assert "$src/_vapigen-0.42" is_file
}

@test 'src has _vapigen-0.44' {
    assert "$src/_vapigen-0.44" is_file
}

@test 'src has _vapigen-0.46' {
    assert "$src/_vapigen-0.46" is_file
}

@test 'src has _vapigen-0.48' {
    assert "$src/_vapigen-0.48" is_file
}

@test 'src has _vapigen-0.50' {
    assert "$src/_vapigen-0.50" is_file
}

@test 'src has _vapigen-0.52' {
    assert "$src/_vapigen-0.52" is_file
}

@test 'src has _vapigen-0.54' {
    assert "$src/_vapigen-0.54" is_file
}

@test 'src has _vapigen-0.56' {
    assert "$src/_vapigen-0.56" is_file
}

@test 'src has _varlinkctl' {
    assert "$src/_varlinkctl" is_file
}

@test 'src has _vbindiff' {
    assert "$src/_vbindiff" is_file
}

@test 'src has _vbox-img' {
    assert "$src/_vbox-img" is_file
}

@test 'src has _vboxwebsrv' {
    assert "$src/_vboxwebsrv" is_file
}

@test 'src has _vbutil_firmware' {
    assert "$src/_vbutil_firmware" is_file
}

@test 'src has _vbutil_kernel' {
    assert "$src/_vbutil_kernel" is_file
}

@test 'src has _vbutil_key' {
    assert "$src/_vbutil_key" is_file
}

@test 'src has _vbutil_keyblock' {
    assert "$src/_vbutil_keyblock" is_file
}

@test 'src has _vbutil_what_keys' {
    assert "$src/_vbutil_what_keys" is_file
}

@test 'src has _vcdbg' {
    assert "$src/_vcdbg" is_file
}

@test 'src has _vchiq_test' {
    assert "$src/_vchiq_test" is_file
}

@test 'src has _vctl' {
    assert "$src/_vctl" is_file
}

@test 'src has _vdir' {
    assert "$src/_vdir" is_file
}

@test 'src has _vdo' {
    assert "$src/_vdo" is_file
}

@test 'src has _vdoformat' {
    assert "$src/_vdoformat" is_file
}

@test 'src has _vdostats' {
    assert "$src/_vdostats" is_file
}

@test 'src has _vdpa' {
    assert "$src/_vdpa" is_file
}

@test 'src has _vdpauinfo' {
    assert "$src/_vdpauinfo" is_file
}

@test 'src has _vendstat' {
    assert "$src/_vendstat" is_file
}

@test 'src has _verify-uselistorder' {
    assert "$src/_verify-uselistorder" is_file
}

@test 'src has _verify-uselistorder-13' {
    assert "$src/_verify-uselistorder-13" is_file
}

@test 'src has _verify-uselistorder-14' {
    assert "$src/_verify-uselistorder-14" is_file
}

@test 'src has _verify-uselistorder-4.0' {
    assert "$src/_verify-uselistorder-4.0" is_file
}

@test 'src has _verify-uselistorder-6.0' {
    assert "$src/_verify-uselistorder-6.0" is_file
}

@test 'src has _verify-uselistorder-7' {
    assert "$src/_verify-uselistorder-7" is_file
}

@test 'src has _verify-uselistorder-8' {
    assert "$src/_verify-uselistorder-8" is_file
}

@test 'src has _verify-uselistorder-9' {
    assert "$src/_verify-uselistorder-9" is_file
}

@test 'src has _verify_krb5_conf' {
    assert "$src/_verify_krb5_conf" is_file
}

@test 'src has _veritysetup' {
    assert "$src/_veritysetup" is_file
}

@test 'src has _vftovp' {
    assert "$src/_vftovp" is_file
}

@test 'src has _vfychain' {
    assert "$src/_vfychain" is_file
}

@test 'src has _vfyserv' {
    assert "$src/_vfyserv" is_file
}

@test 'src has _vgchange' {
    assert "$src/_vgchange" is_file
}

@test 'src has _vgdb' {
    assert "$src/_vgdb" is_file
}

@test 'src has _vi' {
    assert "$src/_vi" is_file
}

@test 'src has _view' {
    assert "$src/_view" is_file
}

@test 'src has _view.nvim' {
    assert "$src/_view.nvim" is_file
}

@test 'src has _viewdiagnostic' {
    assert "$src/_viewdiagnostic" is_file
}

@test 'src has _viewgam' {
    assert "$src/_viewgam" is_file
}

@test 'src has _viewres' {
    assert "$src/_viewres" is_file
}

@test 'src has _vigr' {
    assert "$src/_vigr" is_file
}

@test 'src has _vim-nox11' {
    assert "$src/_vim-nox11" is_file
}

@test 'src has _vim.basic' {
    assert "$src/_vim.basic" is_file
}

@test 'src has _vim.gtk' {
    assert "$src/_vim.gtk" is_file
}

@test 'src has _vim.tiny' {
    assert "$src/_vim.tiny" is_file
}

@test 'src has _vimdiff' {
    assert "$src/_vimdiff" is_file
}

@test 'src has _vimdiff.nvim' {
    assert "$src/_vimdiff.nvim" is_file
}

@test 'src has _vimdot' {
    assert "$src/_vimdot" is_file
}

@test 'src has _vimex' {
    assert "$src/_vimex" is_file
}

@test 'src has _vinagre' {
    assert "$src/_vinagre" is_file
}

@test 'src has _vinetto' {
    assert "$src/_vinetto" is_file
}

@test 'src has _vino-passwd' {
    assert "$src/_vino-passwd" is_file
}

@test 'src has _vino-preferences' {
    assert "$src/_vino-preferences" is_file
}

@test 'src has _vint' {
    assert "$src/_vint" is_file
}

@test 'src has _vipw' {
    assert "$src/_vipw" is_file
}

@test 'src has _virsh' {
    assert "$src/_virsh" is_file
}

@test 'src has _virt-alignment-scan' {
    assert "$src/_virt-alignment-scan" is_file
}

@test 'src has _virt-builder' {
    assert "$src/_virt-builder" is_file
}

@test 'src has _virt-cat' {
    assert "$src/_virt-cat" is_file
}

@test 'src has _virt-clone' {
    assert "$src/_virt-clone" is_file
}

@test 'src has _virt-customize' {
    assert "$src/_virt-customize" is_file
}

@test 'src has _virt-df' {
    assert "$src/_virt-df" is_file
}

@test 'src has _virt-dib' {
    assert "$src/_virt-dib" is_file
}

@test 'src has _virt-diff' {
    assert "$src/_virt-diff" is_file
}

@test 'src has _virt-edit' {
    assert "$src/_virt-edit" is_file
}

@test 'src has _virt-filesystems' {
    assert "$src/_virt-filesystems" is_file
}

@test 'src has _virt-format' {
    assert "$src/_virt-format" is_file
}

@test 'src has _virt-get-kernel' {
    assert "$src/_virt-get-kernel" is_file
}

@test 'src has _virt-host-validate' {
    assert "$src/_virt-host-validate" is_file
}

@test 'src has _virt-inspector' {
    assert "$src/_virt-inspector" is_file
}

@test 'src has _virt-install' {
    assert "$src/_virt-install" is_file
}

@test 'src has _virt-log' {
    assert "$src/_virt-log" is_file
}

@test 'src has _virt-login-shell' {
    assert "$src/_virt-login-shell" is_file
}

@test 'src has _virt-ls' {
    assert "$src/_virt-ls" is_file
}

@test 'src has _virt-manager' {
    assert "$src/_virt-manager" is_file
}

@test 'src has _virt-pki-validate' {
    assert "$src/_virt-pki-validate" is_file
}

@test 'src has _virt-qemu-run' {
    assert "$src/_virt-qemu-run" is_file
}

@test 'src has _virt-rescue' {
    assert "$src/_virt-rescue" is_file
}

@test 'src has _virt-resize' {
    assert "$src/_virt-resize" is_file
}

@test 'src has _virt-sparsify' {
    assert "$src/_virt-sparsify" is_file
}

@test 'src has _virt-sysprep' {
    assert "$src/_virt-sysprep" is_file
}

@test 'src has _virt-tail' {
    assert "$src/_virt-tail" is_file
}

@test 'src has _virt-tar' {
    assert "$src/_virt-tar" is_file
}

@test 'src has _virt-top' {
    assert "$src/_virt-top" is_file
}

@test 'src has _virt-v2v' {
    assert "$src/_virt-v2v" is_file
}

@test 'src has _virt-v2v-copy-to-local' {
    assert "$src/_virt-v2v-copy-to-local" is_file
}

@test 'src has _virt-viewer' {
    assert "$src/_virt-viewer" is_file
}

@test 'src has _virt-what' {
    assert "$src/_virt-what" is_file
}

@test 'src has _virt-win-reg' {
    assert "$src/_virt-win-reg" is_file
}

@test 'src has _virt-xml' {
    assert "$src/_virt-xml" is_file
}

@test 'src has _virt-xml-validate' {
    assert "$src/_virt-xml-validate" is_file
}

@test 'src has _virt_mail' {
    assert "$src/_virt_mail" is_file
}

@test 'src has _virtfs-proxy-helper' {
    assert "$src/_virtfs-proxy-helper" is_file
}

@test 'src has _virtlockd' {
    assert "$src/_virtlockd" is_file
}

@test 'src has _virtlogd' {
    assert "$src/_virtlogd" is_file
}

@test 'src has _virtualenv' {
    assert "$src/_virtualenv" is_file
}

@test 'src has _virustotal-search.py' {
    assert "$src/_virustotal-search.py" is_file
}

@test 'src has _visudo' {
    assert "$src/_visudo" is_file
}

@test 'src has _vitmp' {
    assert "$src/_vitmp" is_file
}

@test 'src has _vivid' {
    assert "$src/_vivid" is_file
}

@test 'src has _vlc' {
    assert "$src/_vlc" is_file
}

@test 'src has _vlc-wrapper' {
    assert "$src/_vlc-wrapper" is_file
}

@test 'src has _vlna' {
    assert "$src/_vlna" is_file
}

@test 'src has _vlock' {
    assert "$src/_vlock" is_file
}

@test 'src has _vm-support' {
    assert "$src/_vm-support" is_file
}

@test 'src has _vmaf' {
    assert "$src/_vmaf" is_file
}

@test 'src has _vmhgfs-fuse' {
    assert "$src/_vmhgfs-fuse" is_file
}

@test 'src has _vmmap' {
    assert "$src/_vmmap" is_file
}

@test 'src has _vmmap32' {
    assert "$src/_vmmap32" is_file
}

@test 'src has _vmnet-bridge' {
    assert "$src/_vmnet-bridge" is_file
}

@test 'src has _vmnet-cli' {
    assert "$src/_vmnet-cli" is_file
}

@test 'src has _vmnet-netifup' {
    assert "$src/_vmnet-netifup" is_file
}

@test 'src has _vmnet-sniffer' {
    assert "$src/_vmnet-sniffer" is_file
}

@test 'src has _vmrun' {
    assert "$src/_vmrun" is_file
}

@test 'src has _vmss2core' {
    assert "$src/_vmss2core" is_file
}

@test 'src has _vmtoolsd' {
    assert "$src/_vmtoolsd" is_file
}

@test 'src has _vmware-guestproxycerttool' {
    assert "$src/_vmware-guestproxycerttool" is_file
}

@test 'src has _vmware-namespace-cmd' {
    assert "$src/_vmware-namespace-cmd" is_file
}

@test 'src has _vmware-rpctool' {
    assert "$src/_vmware-rpctool" is_file
}

@test 'src has _vmware-usbarbitrator' {
    assert "$src/_vmware-usbarbitrator" is_file
}

@test 'src has _vmware-vdiskmanager' {
    assert "$src/_vmware-vdiskmanager" is_file
}

@test 'src has _vmware-vgauth-cmd' {
    assert "$src/_vmware-vgauth-cmd" is_file
}

@test 'src has _vmware-vmblock-fuse' {
    assert "$src/_vmware-vmblock-fuse" is_file
}

@test 'src has _vmware-vmx' {
    assert "$src/_vmware-vmx" is_file
}

@test 'src has _vmware-vmx-debug' {
    assert "$src/_vmware-vmx-debug" is_file
}

@test 'src has _vmware-vmx-stats' {
    assert "$src/_vmware-vmx-stats" is_file
}

@test 'src has _vmwgfxctrl' {
    assert "$src/_vmwgfxctrl" is_file
}

@test 'src has _vnstatd' {
    assert "$src/_vnstatd" is_file
}

@test 'src has _vnstati' {
    assert "$src/_vnstati" is_file
}

@test 'src has _voiphopper' {
    assert "$src/_voiphopper" is_file
}

@test 'src has _volafox' {
    assert "$src/_volafox" is_file
}

@test 'src has _volint' {
    assert "$src/_volint" is_file
}

@test 'src has _volk-config-info' {
    assert "$src/_volk-config-info" is_file
}

@test 'src has _volk_modtool' {
    assert "$src/_volk_modtool" is_file
}

@test 'src has _volk_profile' {
    assert "$src/_volk_profile" is_file
}

@test 'src has _volume_key' {
    assert "$src/_volume_key" is_file
}

@test 'src has _vorbiscomment' {
    assert "$src/_vorbiscomment" is_file
}

@test 'src has _vpddecode' {
    assert "$src/_vpddecode" is_file
}

@test 'src has _vpe' {
    assert "$src/_vpe" is_file
}

@test 'src has _vpl2ovp' {
    assert "$src/_vpl2ovp" is_file
}

@test 'src has _vpl2vpl' {
    assert "$src/_vpl2vpl" is_file
}

@test 'src has _vpnc' {
    assert "$src/_vpnc" is_file
}

@test 'src has _vpnc-disconnect' {
    assert "$src/_vpnc-disconnect" is_file
}

@test 'src has _vpnkit' {
    assert "$src/_vpnkit" is_file
}

@test 'src has _vptovf' {
    assert "$src/_vptovf" is_file
}

@test 'src has _vpxdec' {
    assert "$src/_vpxdec" is_file
}

@test 'src has _vpxenc' {
    assert "$src/_vpxenc" is_file
}

@test 'src has _vsd2raw' {
    assert "$src/_vsd2raw" is_file
}

@test 'src has _vsd2text' {
    assert "$src/_vsd2text" is_file
}

@test 'src has _vsd2xhtml' {
    assert "$src/_vsd2xhtml" is_file
}

@test 'src has _vsdbutil' {
    assert "$src/_vsdbutil" is_file
}

@test 'src has _vshadowdebug' {
    assert "$src/_vshadowdebug" is_file
}

@test 'src has _vshadowinfo' {
    assert "$src/_vshadowinfo" is_file
}

@test 'src has _vshadowmount' {
    assert "$src/_vshadowmount" is_file
}

@test 'src has _vss2raw' {
    assert "$src/_vss2raw" is_file
}

@test 'src has _vss2xhtml' {
    assert "$src/_vss2xhtml" is_file
}

@test 'src has _vstp' {
    assert "$src/_vstp" is_file
}

@test 'src has _vsyasm' {
    assert "$src/_vsyasm" is_file
}

@test 'src has _vte-2.91' {
    assert "$src/_vte-2.91" is_file
}

@test 'src has _vtop' {
    assert "$src/_vtop" is_file
}

@test 'src has _vue' {
    assert "$src/_vue" is_file
}

@test 'src has _vue-init' {
    assert "$src/_vue-init" is_file
}

@test 'src has _w.procps' {
    assert "$src/_w.procps" is_file
}

@test 'src has _w3m' {
    assert "$src/_w3m" is_file
}

@test 'src has _wafw00f' {
    assert "$src/_wafw00f" is_file
}

@test 'src has _waitress-serve' {
    assert "$src/_waitress-serve" is_file
}

@test 'src has _waitress-serve-python2' {
    assert "$src/_waitress-serve-python2" is_file
}

@test 'src has _wakeonlan' {
    assert "$src/_wakeonlan" is_file
}

@test 'src has _wam2ma' {
    assert "$src/_wam2ma" is_file
}

@test 'src has _wamp' {
    assert "$src/_wamp" is_file
}

@test 'src has _warnquota' {
    assert "$src/_warnquota" is_file
}

@test 'src has _wash' {
    assert "$src/_wash" is_file
}

@test 'src has _wasm-ld12' {
    assert "$src/_wasm-ld12" is_file
}

@test 'src has _wasm-ld60' {
    assert "$src/_wasm-ld60" is_file
}

@test 'src has _watchdog' {
    assert "$src/_watchdog" is_file
}

@test 'src has _watchgnupg' {
    assert "$src/_watchgnupg" is_file
}

@test 'src has _watchman' {
    assert "$src/_watchman" is_file
}

@test 'src has _watchman-make' {
    assert "$src/_watchman-make" is_file
}

@test 'src has _watchman-replicate-subscription' {
    assert "$src/_watchman-replicate-subscription" is_file
}

@test 'src has _watchman-wait' {
    assert "$src/_watchman-wait" is_file
}

@test 'src has _watchmanctl' {
    assert "$src/_watchmanctl" is_file
}

@test 'src has _watchmedo' {
    assert "$src/_watchmedo" is_file
}

@test 'src has _wavpack' {
    assert "$src/_wavpack" is_file
}

@test 'src has _wayland-scanner' {
    assert "$src/_wayland-scanner" is_file
}

@test 'src has _wbinfo' {
    assert "$src/_wbinfo" is_file
}

@test 'src has _wcurl' {
    assert "$src/_wcurl" is_file
}

@test 'src has _wdctl' {
    assert "$src/_wdctl" is_file
}

@test 'src has _wdiff' {
    assert "$src/_wdiff" is_file
}

@test 'src has _wdiff2' {
    assert "$src/_wdiff2" is_file
}

@test 'src has _wdutil' {
    assert "$src/_wdutil" is_file
}

@test 'src has _weak-modules' {
    assert "$src/_weak-modules" is_file
}

@test 'src has _weather' {
    assert "$src/_weather" is_file
}

@test 'src has _weave' {
    assert "$src/_weave" is_file
}

@test 'src has _webacoo' {
    assert "$src/_webacoo" is_file
}

@test 'src has _webcamd' {
    assert "$src/_webcamd" is_file
}

@test 'src has _webhandler' {
    assert "$src/_webhandler" is_file
}

@test 'src has _webidl2pas' {
    assert "$src/_webidl2pas" is_file
}

@test 'src has _webpack-cli' {
    assert "$src/_webpack-cli" is_file
}

@test 'src has _webpng' {
    assert "$src/_webpng" is_file
}

@test 'src has _weechat' {
    assert "$src/_weechat" is_file
}

@test 'src has _weechat-curses' {
    assert "$src/_weechat-curses" is_file
}

@test 'src has _weechat-headless' {
    assert "$src/_weechat-headless" is_file
}

@test 'src has _weevely' {
    assert "$src/_weevely" is_file
}

@test 'src has _wesside-ng' {
    assert "$src/_wesside-ng" is_file
}

@test 'src has _westcos-tool' {
    assert "$src/_westcos-tool" is_file
}

@test 'src has _wfpayload' {
    assert "$src/_wfpayload" is_file
}

@test 'src has _wfuzz' {
    assert "$src/_wfuzz" is_file
}

@test 'src has _wget2' {
    assert "$src/_wget2" is_file
}

@test 'src has _whatis' {
    assert "$src/_whatis" is_file
}

@test 'src has _whatis.man-db' {
    assert "$src/_whatis.man-db" is_file
}

@test 'src has _whatweb' {
    assert "$src/_whatweb" is_file
}

@test 'src has _wheel' {
    assert "$src/_wheel" is_file
}

@test 'src has _wheel3' {
    assert "$src/_wheel3" is_file
}

@test 'src has _wheel3.10' {
    assert "$src/_wheel3.10" is_file
}

@test 'src has _wheel3.11' {
    assert "$src/_wheel3.11" is_file
}

@test 'src has _wheel3.12' {
    assert "$src/_wheel3.12" is_file
}

@test 'src has _wheel3.13' {
    assert "$src/_wheel3.13" is_file
}

@test 'src has _wheel3.8' {
    assert "$src/_wheel3.8" is_file
}

@test 'src has _wheel3.9' {
    assert "$src/_wheel3.9" is_file
}

@test 'src has _whereis' {
    assert "$src/_whereis" is_file
}

@test 'src has _which' {
    assert "$src/_which" is_file
}

@test 'src has _which.debianutils' {
    assert "$src/_which.debianutils" is_file
}

@test 'src has _whiptail' {
    assert "$src/_whiptail" is_file
}

@test 'src has _whirlpool-hash' {
    assert "$src/_whirlpool-hash" is_file
}

@test 'src has _whirlpooldeep' {
    assert "$src/_whirlpooldeep" is_file
}

@test 'src has _whois.md' {
    assert "$src/_whois.md" is_file
}

@test 'src has _whoismac' {
    assert "$src/_whoismac" is_file
}

@test 'src has _whoopsie' {
    assert "$src/_whoopsie" is_file
}

@test 'src has _wicked' {
    assert "$src/_wicked" is_file
}

@test 'src has _wickedd' {
    assert "$src/_wickedd" is_file
}

@test 'src has _wickedd-nanny' {
    assert "$src/_wickedd-nanny" is_file
}

@test 'src has _wifiarp' {
    assert "$src/_wifiarp" is_file
}

@test 'src has _wifidns' {
    assert "$src/_wifidns" is_file
}

@test 'src has _wifiping' {
    assert "$src/_wifiping" is_file
}

@test 'src has _wifitap' {
    assert "$src/_wifitap" is_file
}

@test 'src has _wifite' {
    assert "$src/_wifite" is_file
}

@test 'src has _wig' {
    assert "$src/_wig" is_file
}

@test 'src has _winbindd' {
    assert "$src/_winbindd" is_file
}

@test 'src has _wine' {
    assert "$src/_wine" is_file
}

@test 'src has _wine64' {
    assert "$src/_wine64" is_file
}

@test 'src has _wineboot' {
    assert "$src/_wineboot" is_file
}

@test 'src has _wineboot-stable' {
    assert "$src/_wineboot-stable" is_file
}

@test 'src has _wineconsole' {
    assert "$src/_wineconsole" is_file
}

@test 'src has _winedbg' {
    assert "$src/_winedbg" is_file
}

@test 'src has _winepath' {
    assert "$src/_winepath" is_file
}

@test 'src has _winepath-stable' {
    assert "$src/_winepath-stable" is_file
}

@test 'src has _wineserver' {
    assert "$src/_wineserver" is_file
}

@test 'src has _wineserver-stable' {
    assert "$src/_wineserver-stable" is_file
}

@test 'src has _winetricks' {
    assert "$src/_winetricks" is_file
}

@test 'src has _winexe' {
    assert "$src/_winexe" is_file
}

@test 'src has _winpr-makecert' {
    assert "$src/_winpr-makecert" is_file
}

@test 'src has _wipefs' {
    assert "$src/_wipefs" is_file
}

@test 'src has _wireplumber' {
    assert "$src/_wireplumber" is_file
}

@test 'src has _wires' {
    assert "$src/_wires" is_file
}

@test 'src has _wireshark-gtk' {
    assert "$src/_wireshark-gtk" is_file
}

@test 'src has _wish' {
    assert "$src/_wish" is_file
}

@test 'src has _wish8.5' {
    assert "$src/_wish8.5" is_file
}

@test 'src has _wish8.6' {
    assert "$src/_wish8.6" is_file
}

@test 'src has _wish9.0' {
    assert "$src/_wish9.0" is_file
}

@test 'src has _with-readline' {
    assert "$src/_with-readline" is_file
}

@test 'src has _withsctp' {
    assert "$src/_withsctp" is_file
}

@test 'src has _wks2csv' {
    assert "$src/_wks2csv" is_file
}

@test 'src has _wks2raw' {
    assert "$src/_wks2raw" is_file
}

@test 'src has _wks2text' {
    assert "$src/_wks2text" is_file
}

@test 'src has _wlancap2wpasec' {
    assert "$src/_wlancap2wpasec" is_file
}

@test 'src has _wlancow2hcxpmk' {
    assert "$src/_wlancow2hcxpmk" is_file
}

@test 'src has _wlanhashhcx' {
    assert "$src/_wlanhashhcx" is_file
}

@test 'src has _wlanhc2hcx' {
    assert "$src/_wlanhc2hcx" is_file
}

@test 'src has _wlanhcx2essid' {
    assert "$src/_wlanhcx2essid" is_file
}

@test 'src has _wlanhcx2john' {
    assert "$src/_wlanhcx2john" is_file
}

@test 'src has _wlanhcx2ssid' {
    assert "$src/_wlanhcx2ssid" is_file
}

@test 'src has _wlanhcxcat' {
    assert "$src/_wlanhcxcat" is_file
}

@test 'src has _wlanhcxinfo' {
    assert "$src/_wlanhcxinfo" is_file
}

@test 'src has _wlanhcxmnc' {
    assert "$src/_wlanhcxmnc" is_file
}

@test 'src has _wlanjohn2hcx' {
    assert "$src/_wlanjohn2hcx" is_file
}

@test 'src has _wlanpmk2hcx' {
    assert "$src/_wlanpmk2hcx" is_file
}

@test 'src has _wlanwkp2hcx' {
    assert "$src/_wlanwkp2hcx" is_file
}

@test 'src has _wmctrl' {
    assert "$src/_wmctrl" is_file
}

@test 'src has _wmdocker' {
    assert "$src/_wmdocker" is_file
}

@test 'src has _wmf2eps' {
    assert "$src/_wmf2eps" is_file
}

@test 'src has _wmf2fig' {
    assert "$src/_wmf2fig" is_file
}

@test 'src has _wmf2gd' {
    assert "$src/_wmf2gd" is_file
}

@test 'src has _wmf2svg' {
    assert "$src/_wmf2svg" is_file
}

@test 'src has _wmf2x' {
    assert "$src/_wmf2x" is_file
}

@test 'src has _wnck-urgency-monitor' {
    assert "$src/_wnck-urgency-monitor" is_file
}

@test 'src has _wofm2opl' {
    assert "$src/_wofm2opl" is_file
}

@test 'src has _wol' {
    assert "$src/_wol" is_file
}

@test 'src has _wopl2ofm' {
    assert "$src/_wopl2ofm" is_file
}

@test 'src has _wordforms' {
    assert "$src/_wordforms" is_file
}

@test 'src has _wovf2ovp' {
    assert "$src/_wovf2ovp" is_file
}

@test 'src has _wovp2ovf' {
    assert "$src/_wovp2ovf" is_file
}

@test 'src has _wp8-1-callhistory.py' {
    assert "$src/_wp8-1-callhistory.py" is_file
}

@test 'src has _wp8-1-contacts.py' {
    assert "$src/_wp8-1-contacts.py" is_file
}

@test 'src has _wp8-1-mms-filesort.py' {
    assert "$src/_wp8-1-mms-filesort.py" is_file
}

@test 'src has _wp8-1-mms.py' {
    assert "$src/_wp8-1-mms.py" is_file
}

@test 'src has _wp8-1-sms.py' {
    assert "$src/_wp8-1-sms.py" is_file
}

@test 'src has _wp8-callhistory.py' {
    assert "$src/_wp8-callhistory.py" is_file
}

@test 'src has _wp8-contacts.py' {
    assert "$src/_wp8-contacts.py" is_file
}

@test 'src has _wp8-fb-msg.py' {
    assert "$src/_wp8-fb-msg.py" is_file
}

@test 'src has _wp8-sms.py' {
    assert "$src/_wp8-sms.py" is_file
}

@test 'src has _wpa_cli' {
    assert "$src/_wpa_cli" is_file
}

@test 'src has _wpa_supplicant' {
    assert "$src/_wpa_supplicant" is_file
}

@test 'src has _wpapcap2john' {
    assert "$src/_wpapcap2john" is_file
}

@test 'src has _wpd2html' {
    assert "$src/_wpd2html" is_file
}

@test 'src has _wpd2raw' {
    assert "$src/_wpd2raw" is_file
}

@test 'src has _wpd2text' {
    assert "$src/_wpd2text" is_file
}

@test 'src has _wpexec' {
    assert "$src/_wpexec" is_file
}

@test 'src has _wpg2raw' {
    assert "$src/_wpg2raw" is_file
}

@test 'src has _wpg2svg' {
    assert "$src/_wpg2svg" is_file
}

@test 'src has _wpg2svgbatch.pl' {
    assert "$src/_wpg2svgbatch.pl" is_file
}

@test 'src has _wps2html' {
    assert "$src/_wps2html" is_file
}

@test 'src has _wps2raw' {
    assert "$src/_wps2raw" is_file
}

@test 'src has _wps2text' {
    assert "$src/_wps2text" is_file
}

@test 'src has _wrapper' {
    assert "$src/_wrapper" is_file
}

@test 'src has _wren_cli' {
    assert "$src/_wren_cli" is_file
}

@test 'src has _wrenc' {
    assert "$src/_wrenc" is_file
}

@test 'src has _wrestool' {
    assert "$src/_wrestool" is_file
}

@test 'src has _wrjpgcom' {
    assert "$src/_wrjpgcom" is_file
}

@test 'src has _wrmsr' {
    assert "$src/_wrmsr" is_file
}

@test 'src has _wsdump' {
    assert "$src/_wsdump" is_file
}

@test 'src has _wsdump.py' {
    assert "$src/_wsdump.py" is_file
}

@test 'src has _wsgen' {
    assert "$src/_wsgen" is_file
}

@test 'src has _wsimport' {
    assert "$src/_wsimport" is_file
}

@test 'src has _wvdial' {
    assert "$src/_wvdial" is_file
}

@test 'src has _wvdialconf' {
    assert "$src/_wvdialconf" is_file
}

@test 'src has _wvgain' {
    assert "$src/_wvgain" is_file
}

@test 'src has _wvtag' {
    assert "$src/_wvtag" is_file
}

@test 'src has _wvunpack' {
    assert "$src/_wvunpack" is_file
}

@test 'src has _wwf-chat-parser.py' {
    assert "$src/_wwf-chat-parser.py" is_file
}

@test 'src has _www-browser' {
    assert "$src/_www-browser" is_file
}

@test 'src has _wx-config' {
    assert "$src/_wx-config" is_file
}

@test 'src has _wx-config-3.1' {
    assert "$src/_wx-config-3.1" is_file
}

@test 'src has _wx-config-3.2' {
    assert "$src/_wx-config-3.2" is_file
}

@test 'src has _wxrc' {
    assert "$src/_wxrc" is_file
}

@test 'src has _wxrc-3.0' {
    assert "$src/_wxrc-3.0" is_file
}

@test 'src has _wxrc-3.1' {
    assert "$src/_wxrc-3.1" is_file
}

@test 'src has _wxrc-3.2' {
    assert "$src/_wxrc-3.2" is_file
}

@test 'src has _x-session-manager' {
    assert "$src/_x-session-manager" is_file
}

@test 'src has _x-terminal-emulator' {
    assert "$src/_x-terminal-emulator" is_file
}

@test 'src has _x-window-manager' {
    assert "$src/_x-window-manager" is_file
}

@test 'src has _x-www-browser' {
    assert "$src/_x-www-browser" is_file
}

@test 'src has _x11perf' {
    assert "$src/_x11perf" is_file
}

@test 'src has _x264' {
    assert "$src/_x264" is_file
}

@test 'src has _x265' {
    assert "$src/_x265" is_file
}

@test 'src has _x86_64' {
    assert "$src/_x86_64" is_file
}

@test 'src has _x86_energy_perf_policy' {
    assert "$src/_x86_energy_perf_policy" is_file
}

@test 'src has _xar' {
    assert "$src/_xar" is_file
}

@test 'src has _xartutil' {
    assert "$src/_xartutil" is_file
}

@test 'src has _xattr-2.7' {
    assert "$src/_xattr-2.7" is_file
}

@test 'src has _xauth' {
    assert "$src/_xauth" is_file
}

@test 'src has _xb-tool' {
    assert "$src/_xb-tool" is_file
}

@test 'src has _xbacklight' {
    assert "$src/_xbacklight" is_file
}

@test 'src has _xbiff' {
    assert "$src/_xbiff" is_file
}

@test 'src has _xboard' {
    assert "$src/_xboard" is_file
}

@test 'src has _xbrlapi' {
    assert "$src/_xbrlapi" is_file
}

@test 'src has _xcam' {
    assert "$src/_xcam" is_file
}

@test 'src has _xclip' {
    assert "$src/_xclip" is_file
}

@test 'src has _xclip-cutfile' {
    assert "$src/_xclip-cutfile" is_file
}

@test 'src has _xclip-pastefile' {
    assert "$src/_xclip-pastefile" is_file
}

@test 'src has _xcmsdb' {
    assert "$src/_xcmsdb" is_file
}

@test 'src has _xcode-select' {
    assert "$src/_xcode-select" is_file
}

@test 'src has _xcompmgr' {
    assert "$src/_xcompmgr" is_file
}

@test 'src has _xcrun' {
    assert "$src/_xcrun" is_file
}

@test 'src has _xcursorgen' {
    assert "$src/_xcursorgen" is_file
}

@test 'src has _xdbedizzy' {
    assert "$src/_xdbedizzy" is_file
}

@test 'src has _xdg-user-dir' {
    assert "$src/_xdg-user-dir" is_file
}

@test 'src has _xdot' {
    assert "$src/_xdot" is_file
}

@test 'src has _xdotool' {
    assert "$src/_xdotool" is_file
}

@test 'src has _xdpyinfo' {
    assert "$src/_xdpyinfo" is_file
}

@test 'src has _xdvipdfmx' {
    assert "$src/_xdvipdfmx" is_file
}

@test 'src has _xed' {
    assert "$src/_xed" is_file
}

@test 'src has _xelatex-dev' {
    assert "$src/_xelatex-dev" is_file
}

@test 'src has _xev' {
    assert "$src/_xev" is_file
}

@test 'src has _xfce4-about' {
    assert "$src/_xfce4-about" is_file
}

@test 'src has _xfce4-appfinder' {
    assert "$src/_xfce4-appfinder" is_file
}

@test 'src has _xfce4-clipman-history' {
    assert "$src/_xfce4-clipman-history" is_file
}

@test 'src has _xfce4-color-settings' {
    assert "$src/_xfce4-color-settings" is_file
}

@test 'src has _xfce4-display-settings' {
    assert "$src/_xfce4-display-settings" is_file
}

@test 'src has _xfce4-mime-helper' {
    assert "$src/_xfce4-mime-helper" is_file
}

@test 'src has _xfce4-mime-settings' {
    assert "$src/_xfce4-mime-settings" is_file
}

@test 'src has _xfce4-notifyd-config' {
    assert "$src/_xfce4-notifyd-config" is_file
}

@test 'src has _xfce4-panel' {
    assert "$src/_xfce4-panel" is_file
}

@test 'src has _xfce4-pm-helper' {
    assert "$src/_xfce4-pm-helper" is_file
}

@test 'src has _xfce4-popup-applicationsmenu' {
    assert "$src/_xfce4-popup-applicationsmenu" is_file
}

@test 'src has _xfce4-popup-directorymenu' {
    assert "$src/_xfce4-popup-directorymenu" is_file
}

@test 'src has _xfce4-popup-windowmenu' {
    assert "$src/_xfce4-popup-windowmenu" is_file
}

@test 'src has _xfce4-power-manager-settings' {
    assert "$src/_xfce4-power-manager-settings" is_file
}

@test 'src has _xfce4-session' {
    assert "$src/_xfce4-session" is_file
}

@test 'src has _xfce4-session-logout' {
    assert "$src/_xfce4-session-logout" is_file
}

@test 'src has _xfce4-taskmanager' {
    assert "$src/_xfce4-taskmanager" is_file
}

@test 'src has _xfdesktop' {
    assert "$src/_xfdesktop" is_file
}

@test 'src has _xfdesktop-settings' {
    assert "$src/_xfdesktop-settings" is_file
}

@test 'src has _xfindproxy' {
    assert "$src/_xfindproxy" is_file
}

@test 'src has _xfpm-power-backlight-helper' {
    assert "$src/_xfpm-power-backlight-helper" is_file
}

@test 'src has _xfrun4' {
    assert "$src/_xfrun4" is_file
}

@test 'src has _xfs_estimate' {
    assert "$src/_xfs_estimate" is_file
}

@test 'src has _xfs_fsr' {
    assert "$src/_xfs_fsr" is_file
}

@test 'src has _xfs_growfs' {
    assert "$src/_xfs_growfs" is_file
}

@test 'src has _xfs_logprint' {
    assert "$src/_xfs_logprint" is_file
}

@test 'src has _xfs_repair' {
    assert "$src/_xfs_repair" is_file
}

@test 'src has _xfs_scrub' {
    assert "$src/_xfs_scrub" is_file
}

@test 'src has _xfs_scrub_all' {
    assert "$src/_xfs_scrub_all" is_file
}

@test 'src has _xfsettingsd' {
    assert "$src/_xfsettingsd" is_file
}

@test 'src has _xfwm4' {
    assert "$src/_xfwm4" is_file
}

@test 'src has _xfwm4-settings' {
    assert "$src/_xfwm4-settings" is_file
}

@test 'src has _xfwm4-tweaks-settings' {
    assert "$src/_xfwm4-tweaks-settings" is_file
}

@test 'src has _xgamma' {
    assert "$src/_xgamma" is_file
}

@test 'src has _xgettext' {
    assert "$src/_xgettext" is_file
}

@test 'src has _xgettext.pl' {
    assert "$src/_xgettext.pl" is_file
}

@test 'src has _xgettext5.18.pl' {
    assert "$src/_xgettext5.18.pl" is_file
}

@test 'src has _xgettext5.28.pl' {
    assert "$src/_xgettext5.28.pl" is_file
}

@test 'src has _xgettext5.30.pl' {
    assert "$src/_xgettext5.30.pl" is_file
}

@test 'src has _xgettext5.34.pl' {
    assert "$src/_xgettext5.34.pl" is_file
}

@test 'src has _xhlatex' {
    assert "$src/_xhlatex" is_file
}

@test 'src has _xicclu' {
    assert "$src/_xicclu" is_file
}

@test 'src has _xindex' {
    assert "$src/_xindex" is_file
}

@test 'src has _xindy.run' {
    assert "$src/_xindy.run" is_file
}

@test 'src has _xjc' {
    assert "$src/_xjc" is_file
}

@test 'src has _xkbcli' {
    assert "$src/_xkbcli" is_file
}

@test 'src has _xkbcomp' {
    assert "$src/_xkbcomp" is_file
}

@test 'src has _xkbevd' {
    assert "$src/_xkbevd" is_file
}

@test 'src has _xkbprint' {
    assert "$src/_xkbprint" is_file
}

@test 'src has _xkill' {
    assert "$src/_xkill" is_file
}

@test 'src has _xl2tpd-control' {
    assert "$src/_xl2tpd-control" is_file
}

@test 'src has _xld' {
    assert "$src/_xld" is_file
}

@test 'src has _xli' {
    assert "$src/_xli" is_file
}

@test 'src has _xlinks' {
    assert "$src/_xlinks" is_file
}

@test 'src has _xlinks2' {
    assert "$src/_xlinks2" is_file
}

@test 'src has _xlito' {
    assert "$src/_xlito" is_file
}

@test 'src has _xload' {
    assert "$src/_xload" is_file
}

@test 'src has _xloadimage' {
    assert "$src/_xloadimage" is_file
}

@test 'src has _xls2ods' {
    assert "$src/_xls2ods" is_file
}

@test 'src has _xlsatoms' {
    assert "$src/_xlsatoms" is_file
}

@test 'src has _xlsfonts' {
    assert "$src/_xlsfonts" is_file
}

@test 'src has _xman' {
    assert "$src/_xman" is_file
}

@test 'src has _xml2-config' {
    assert "$src/_xml2-config" is_file
}

@test 'src has _xml2-config.bak' {
    assert "$src/_xml2-config.bak" is_file
}

@test 'src has _xml2po' {
    assert "$src/_xml2po" is_file
}

@test 'src has _xmlcatalog' {
    assert "$src/_xmlcatalog" is_file
}

@test 'src has _xmlcatmgr' {
    assert "$src/_xmlcatmgr" is_file
}

@test 'src has _xmllint' {
    assert "$src/_xmllint" is_file
}

@test 'src has _xmlsec1' {
    assert "$src/_xmlsec1" is_file
}

@test 'src has _xmlsec1-config' {
    assert "$src/_xmlsec1-config" is_file
}

@test 'src has _xmltex' {
    assert "$src/_xmltex" is_file
}

@test 'src has _xmodmap' {
    assert "$src/_xmodmap" is_file
}

@test 'src has _xmount' {
    assert "$src/_xmount" is_file
}

@test 'src has _xnmap' {
    assert "$src/_xnmap" is_file
}

@test 'src has _xo' {
    assert "$src/_xo" is_file
}

@test 'src has _xorrecord' {
    assert "$src/_xorrecord" is_file
}

@test 'src has _xorriso' {
    assert "$src/_xorriso" is_file
}

@test 'src has _xorriso-tcltk' {
    assert "$src/_xorriso-tcltk" is_file
}

@test 'src has _xorrisofs' {
    assert "$src/_xorrisofs" is_file
}

@test 'src has _xpath' {
    assert "$src/_xpath" is_file
}

@test 'src has _xpath5.28' {
    assert "$src/_xpath5.28" is_file
}

@test 'src has _xpath5.30' {
    assert "$src/_xpath5.30" is_file
}

@test 'src has _xpath5.34' {
    assert "$src/_xpath5.34" is_file
}

@test 'src has _xpdf.real' {
    assert "$src/_xpdf.real" is_file
}

@test 'src has _xplayer' {
    assert "$src/_xplayer" is_file
}

@test 'src has _xplayer-audio-preview' {
    assert "$src/_xplayer-audio-preview" is_file
}

@test 'src has _xplayer-video-thumbnailer' {
    assert "$src/_xplayer-video-thumbnailer" is_file
}

@test 'src has _xplico' {
    assert "$src/_xplico" is_file
}

@test 'src has _xplsprinters' {
    assert "$src/_xplsprinters" is_file
}

@test 'src has _xpr' {
    assert "$src/_xpr" is_file
}

@test 'src has _xprehashprinterlist' {
    assert "$src/_xprehashprinterlist" is_file
}

@test 'src has _xprobe2' {
    assert "$src/_xprobe2" is_file
}

@test 'src has _xprotect' {
    assert "$src/_xprotect" is_file
}

@test 'src has _xpstojpeg' {
    assert "$src/_xpstojpeg" is_file
}

@test 'src has _xpstopdf' {
    assert "$src/_xpstopdf" is_file
}

@test 'src has _xpstopng' {
    assert "$src/_xpstopng" is_file
}

@test 'src has _xpstops' {
    assert "$src/_xpstops" is_file
}

@test 'src has _xpstosvg' {
    assert "$src/_xpstosvg" is_file
}

@test 'src has _xqxdecode' {
    assert "$src/_xqxdecode" is_file
}

@test 'src has _xrandr' {
    assert "$src/_xrandr" is_file
}

@test 'src has _xrced' {
    assert "$src/_xrced" is_file
}

@test 'src has _xrdb' {
    assert "$src/_xrdb" is_file
}

@test 'src has _xreader' {
    assert "$src/_xreader" is_file
}

@test 'src has _xreader-previewer' {
    assert "$src/_xreader-previewer" is_file
}

@test 'src has _xreader-thumbnailer' {
    assert "$src/_xreader-thumbnailer" is_file
}

@test 'src has _xrefresh' {
    assert "$src/_xrefresh" is_file
}

@test 'src has _xrestop' {
    assert "$src/_xrestop" is_file
}

@test 'src has _xscertadmin' {
    assert "$src/_xscertadmin" is_file
}

@test 'src has _xscreensaver-getimage' {
    assert "$src/_xscreensaver-getimage" is_file
}

@test 'src has _xscreensaver-text' {
    assert "$src/_xscreensaver-text" is_file
}

@test 'src has _xsetbg' {
    assert "$src/_xsetbg" is_file
}

@test 'src has _xsetroot' {
    assert "$src/_xsetroot" is_file
}

@test 'src has _xsetwacom' {
    assert "$src/_xsetwacom" is_file
}

@test 'src has _xslate' {
    assert "$src/_xslate" is_file
}

@test 'src has _xslt-config' {
    assert "$src/_xslt-config" is_file
}

@test 'src has _xsltproc' {
    assert "$src/_xsltproc" is_file
}

@test 'src has _xsser' {
    assert "$src/_xsser" is_file
}

@test 'src has _xstdcmap' {
    assert "$src/_xstdcmap" is_file
}

@test 'src has _xsubpp' {
    assert "$src/_xsubpp" is_file
}

@test 'src has _xtables-monitor' {
    assert "$src/_xtables-monitor" is_file
}

@test 'src has _xterm' {
    assert "$src/_xterm" is_file
}

@test 'src has _xtrace' {
    assert "$src/_xtrace" is_file
}

@test 'src has _xtractprotos' {
    assert "$src/_xtractprotos" is_file
}

@test 'src has _xvfb-run' {
    assert "$src/_xvfb-run" is_file
}

@test 'src has _xvidtune' {
    assert "$src/_xvidtune" is_file
}

@test 'src has _xview' {
    assert "$src/_xview" is_file
}

@test 'src has _xviewer' {
    assert "$src/_xviewer" is_file
}

@test 'src has _xwininfo' {
    assert "$src/_xwininfo" is_file
}

@test 'src has _xxd' {
    assert "$src/_xxd" is_file
}

@test 'src has _xxdiff' {
    assert "$src/_xxdiff" is_file
}

@test 'src has _xz' {
    assert "$src/_xz" is_file
}

@test 'src has _xzcat' {
    assert "$src/_xzcat" is_file
}

@test 'src has _xzdec' {
    assert "$src/_xzdec" is_file
}

@test 'src has _xzless' {
    assert "$src/_xzless" is_file
}

@test 'src has _xznew' {
    assert "$src/_xznew" is_file
}

@test 'src has _y2racc2.7' {
    assert "$src/_y2racc2.7" is_file
}

@test 'src has _y4mblack' {
    assert "$src/_y4mblack" is_file
}

@test 'src has _y4mcolorbars' {
    assert "$src/_y4mcolorbars" is_file
}

@test 'src has _y4mdenoise' {
    assert "$src/_y4mdenoise" is_file
}

@test 'src has _y4mhist' {
    assert "$src/_y4mhist" is_file
}

@test 'src has _y4mspatialfilter' {
    assert "$src/_y4mspatialfilter" is_file
}

@test 'src has _y4mstabilizer' {
    assert "$src/_y4mstabilizer" is_file
}

@test 'src has _y4mtopnm' {
    assert "$src/_y4mtopnm" is_file
}

@test 'src has _y4mtoppm' {
    assert "$src/_y4mtoppm" is_file
}

@test 'src has _yaa' {
    assert "$src/_yaa" is_file
}

@test 'src has _yacc' {
    assert "$src/_yacc" is_file
}

@test 'src has _yaml-bench' {
    assert "$src/_yaml-bench" is_file
}

@test 'src has _yaml-bench-13' {
    assert "$src/_yaml-bench-13" is_file
}

@test 'src has _yaml-bench-14' {
    assert "$src/_yaml-bench-14" is_file
}

@test 'src has _yaml-bench-4.0' {
    assert "$src/_yaml-bench-4.0" is_file
}

@test 'src has _yaml-bench-6.0' {
    assert "$src/_yaml-bench-6.0" is_file
}

@test 'src has _yaml-bench-7' {
    assert "$src/_yaml-bench-7" is_file
}

@test 'src has _yaml-bench-8' {
    assert "$src/_yaml-bench-8" is_file
}

@test 'src has _yaml-bench-9' {
    assert "$src/_yaml-bench-9" is_file
}

@test 'src has _yaml2obj' {
    assert "$src/_yaml2obj" is_file
}

@test 'src has _yaml2obj-14' {
    assert "$src/_yaml2obj-14" is_file
}

@test 'src has _yaml2obj-4.0' {
    assert "$src/_yaml2obj-4.0" is_file
}

@test 'src has _yaml2obj-6.0' {
    assert "$src/_yaml2obj-6.0" is_file
}

@test 'src has _yaml2obj-7' {
    assert "$src/_yaml2obj-7" is_file
}

@test 'src has _yaml2obj-8' {
    assert "$src/_yaml2obj-8" is_file
}

@test 'src has _yaml2obj-9' {
    assert "$src/_yaml2obj-9" is_file
}

@test 'src has _yamllint' {
    assert "$src/_yamllint" is_file
}

@test 'src has _yamlpp-events' {
    assert "$src/_yamlpp-events" is_file
}

@test 'src has _yamlpp-load' {
    assert "$src/_yamlpp-load" is_file
}

@test 'src has _yamlpp-load-dump' {
    assert "$src/_yamlpp-load-dump" is_file
}

@test 'src has _yamlpp-load-dump5.30' {
    assert "$src/_yamlpp-load-dump5.30" is_file
}

@test 'src has _yamlpp-load-dump5.34' {
    assert "$src/_yamlpp-load-dump5.34" is_file
}

@test 'src has _yamlpp-load5.30' {
    assert "$src/_yamlpp-load5.30" is_file
}

@test 'src has _yamlpp-load5.34' {
    assert "$src/_yamlpp-load5.34" is_file
}

@test 'src has _yamlpp-parse-emit' {
    assert "$src/_yamlpp-parse-emit" is_file
}

@test 'src has _yamlpp-parse-emit5.30' {
    assert "$src/_yamlpp-parse-emit5.30" is_file
}

@test 'src has _yamlpp-parse-emit5.34' {
    assert "$src/_yamlpp-parse-emit5.34" is_file
}

@test 'src has _yapf' {
    assert "$src/_yapf" is_file
}

@test 'src has _yapf-diff' {
    assert "$src/_yapf-diff" is_file
}

@test 'src has _yapp' {
    assert "$src/_yapp" is_file
}

@test 'src has _yapp5.30' {
    assert "$src/_yapp5.30" is_file
}

@test 'src has _yapp5.34' {
    assert "$src/_yapp5.34" is_file
}

@test 'src has _yara' {
    assert "$src/_yara" is_file
}

@test 'src has _yarac' {
    assert "$src/_yarac" is_file
}

@test 'src has _yarnpkg' {
    assert "$src/_yarnpkg" is_file
}

@test 'src has _yasm' {
    assert "$src/_yasm" is_file
}

@test 'src has _yast' {
    assert "$src/_yast" is_file
}

@test 'src has _yast2' {
    assert "$src/_yast2" is_file
}

@test 'src has _yat2m' {
    assert "$src/_yat2m" is_file
}

@test 'src has _ydump' {
    assert "$src/_ydump" is_file
}

@test 'src has _yelp' {
    assert "$src/_yelp" is_file
}

@test 'src has _yelp-new' {
    assert "$src/_yelp-new" is_file
}

@test 'src has _yersinia' {
    assert "$src/_yersinia" is_file
}

@test 'src has _yoe' {
    assert "$src/_yoe" is_file
}

@test 'src has _youtube-dl' {
    assert "$src/_youtube-dl" is_file
}

@test 'src has _yp_dump_binding' {
    assert "$src/_yp_dump_binding" is_file
}

@test 'src has _ypcat' {
    assert "$src/_ypcat" is_file
}

@test 'src has _ypchfn' {
    assert "$src/_ypchfn" is_file
}

@test 'src has _ypchsh' {
    assert "$src/_ypchsh" is_file
}

@test 'src has _ypdomainname' {
    assert "$src/_ypdomainname" is_file
}

@test 'src has _ypipe' {
    assert "$src/_ypipe" is_file
}

@test 'src has _ypmatch' {
    assert "$src/_ypmatch" is_file
}

@test 'src has _yppasswd' {
    assert "$src/_yppasswd" is_file
}

@test 'src has _yppoll' {
    assert "$src/_yppoll" is_file
}

@test 'src has _ypset' {
    assert "$src/_ypset" is_file
}

@test 'src has _ypwhich' {
    assert "$src/_ypwhich" is_file
}

@test 'src has _ys' {
    assert "$src/_ys" is_file
}

@test 'src has _ytview' {
    assert "$src/_ytview" is_file
}

@test 'src has _yum-complete-transaction' {
    assert "$src/_yum-complete-transaction" is_file
}

@test 'src has _yum-debug-dump' {
    assert "$src/_yum-debug-dump" is_file
}

@test 'src has _yuv2lav' {
    assert "$src/_yuv2lav" is_file
}

@test 'src has _yuv4mpeg' {
    assert "$src/_yuv4mpeg" is_file
}

@test 'src has _yuvcorrect' {
    assert "$src/_yuvcorrect" is_file
}

@test 'src has _yuvcorrect_tune' {
    assert "$src/_yuvcorrect_tune" is_file
}

@test 'src has _yuvfps' {
    assert "$src/_yuvfps" is_file
}

@test 'src has _yuvinactive' {
    assert "$src/_yuvinactive" is_file
}

@test 'src has _yuvmedianfilter' {
    assert "$src/_yuvmedianfilter" is_file
}

@test 'src has _yuvplay' {
    assert "$src/_yuvplay" is_file
}

@test 'src has _yuvscaler' {
    assert "$src/_yuvscaler" is_file
}

@test 'src has _yuy2topam' {
    assert "$src/_yuy2topam" is_file
}

@test 'src has _z3' {
    assert "$src/_z3" is_file
}

@test 'src has _zabbix_agent' {
    assert "$src/_zabbix_agent" is_file
}

@test 'src has _zabbix_agentd' {
    assert "$src/_zabbix_agentd" is_file
}

@test 'src has _zabbix_get' {
    assert "$src/_zabbix_get" is_file
}

@test 'src has _zabbix_sender' {
    assert "$src/_zabbix_sender" is_file
}

@test 'src has _zabbix_server' {
    assert "$src/_zabbix_server" is_file
}

@test 'src has _zbarimg' {
    assert "$src/_zbarimg" is_file
}

@test 'src has _zc' {
    assert "$src/_zc" is_file
}

@test 'src has _zc-all' {
    assert "$src/_zc-all" is_file
}

@test 'src has _zc-bg-notify' {
    assert "$src/_zc-bg-notify" is_file
}

@test 'src has _zc-rename' {
    assert "$src/_zc-rename" is_file
}

@test 'src has _zc-take' {
    assert "$src/_zc-take" is_file
}

@test 'src has _zdb' {
    assert "$src/_zdb" is_file
}

@test 'src has _zdump' {
    assert "$src/_zdump" is_file
}

@test 'src has _zeek-archiver' {
    assert "$src/_zeek-archiver" is_file
}

@test 'src has _zeek-client' {
    assert "$src/_zeek-client" is_file
}

@test 'src has _zeek-config' {
    assert "$src/_zeek-config" is_file
}

@test 'src has _zeek-cut' {
    assert "$src/_zeek-cut" is_file
}

@test 'src has _zef-m' {
    assert "$src/_zef-m" is_file
}

@test 'src has _zegrep' {
    assert "$src/_zegrep" is_file
}

@test 'src has _zeitgeist-daemon' {
    assert "$src/_zeitgeist-daemon" is_file
}

@test 'src has _zenity' {
    assert "$src/_zenity" is_file
}

@test 'src has _zenmap' {
    assert "$src/_zenmap" is_file
}

@test 'src has _zfgrep' {
    assert "$src/_zfgrep" is_file
}

@test 'src has _zforce' {
    assert "$src/_zforce" is_file
}

@test 'src has _zfp' {
    assert "$src/_zfp" is_file
}

@test 'src has _zfs-fuse' {
    assert "$src/_zfs-fuse" is_file
}

@test 'src has _zgrep' {
    assert "$src/_zgrep" is_file
}

@test 'src has _zhack' {
    assert "$src/_zhack" is_file
}

@test 'src has _zile' {
    assert "$src/_zile" is_file
}

@test 'src has _zim' {
    assert "$src/_zim" is_file
}

@test 'src has _zinject' {
    assert "$src/_zinject" is_file
}

@test 'src has _zip2john' {
    assert "$src/_zip2john" is_file
}

@test 'src has _zipcloak' {
    assert "$src/_zipcloak" is_file
}

@test 'src has _zipcmp' {
    assert "$src/_zipcmp" is_file
}

@test 'src has _zipdetails' {
    assert "$src/_zipdetails" is_file
}

@test 'src has _zipdetails5.18' {
    assert "$src/_zipdetails5.18" is_file
}

@test 'src has _zipdetails5.26.3' {
    assert "$src/_zipdetails5.26.3" is_file
}

@test 'src has _zipdetails5.28' {
    assert "$src/_zipdetails5.28" is_file
}

@test 'src has _zipdetails5.30' {
    assert "$src/_zipdetails5.30" is_file
}

@test 'src has _zipdetails5.34' {
    assert "$src/_zipdetails5.34" is_file
}

@test 'src has _zipinfo' {
    assert "$src/_zipinfo" is_file
}

@test 'src has _zipmerge' {
    assert "$src/_zipmerge" is_file
}

@test 'src has _zipnote' {
    assert "$src/_zipnote" is_file
}

@test 'src has _zipsplit' {
    assert "$src/_zipsplit" is_file
}

@test 'src has _ziptool' {
    assert "$src/_ziptool" is_file
}

@test 'src has _ziptorrent' {
    assert "$src/_ziptorrent" is_file
}

@test 'src has _zjsdecode' {
    assert "$src/_zjsdecode" is_file
}

@test 'src has _zkServer-initialize' {
    assert "$src/_zkServer-initialize" is_file
}

@test 'src has _zkSnapshotComparer' {
    assert "$src/_zkSnapshotComparer" is_file
}

@test 'src has _zkTxnLogToolkit' {
    assert "$src/_zkTxnLogToolkit" is_file
}

@test 'src has _zless' {
    assert "$src/_zless" is_file
}

@test 'src has _zmap' {
    assert "$src/_zmap" is_file
}

@test 'src has _zmf2raw' {
    assert "$src/_zmf2raw" is_file
}

@test 'src has _zmf2svg' {
    assert "$src/_zmf2svg" is_file
}

@test 'src has _zmore' {
    assert "$src/_zmore" is_file
}

@test 'src has _zmqsend' {
    assert "$src/_zmqsend" is_file
}

@test 'src has _znew' {
    assert "$src/_znew" is_file
}

@test 'src has _zopflipng' {
    assert "$src/_zopflipng" is_file
}

@test 'src has _zoxide' {
    assert "$src/_zoxide" is_file
}

@test 'src has _zprint' {
    assert "$src/_zprint" is_file
}

@test 'src has _zramctl' {
    assert "$src/_zramctl" is_file
}

@test 'src has _zsh-5.4.2-dev-0' {
    assert "$src/_zsh-5.4.2-dev-0" is_file
}

@test 'src has _zsh-5.6.2' {
    assert "$src/_zsh-5.6.2" is_file
}

@test 'src has _zsh-5.7.1' {
    assert "$src/_zsh-5.7.1" is_file
}

@test 'src has _zsh-5.8' {
    assert "$src/_zsh-5.8" is_file
}

@test 'src has _zsh-5.8.1' {
    assert "$src/_zsh-5.8.1" is_file
}

@test 'src has _zsh5' {
    assert "$src/_zsh5" is_file
}

@test 'src has _zshdb' {
    assert "$src/_zshdb" is_file
}

@test 'src has _zsoelim' {
    assert "$src/_zsoelim" is_file
}

@test 'src has _zstd' {
    assert "$src/_zstd" is_file
}

@test 'src has _zstd-frugal' {
    assert "$src/_zstd-frugal" is_file
}

@test 'src has _zstdcat' {
    assert "$src/_zstdcat" is_file
}

@test 'src has _zstdless' {
    assert "$src/_zstdless" is_file
}

@test 'src has _zstdmt' {
    assert "$src/_zstdmt" is_file
}

@test 'src has _zstreamdump' {
    assert "$src/_zstreamdump" is_file
}

@test 'src has _ztest' {
    assert "$src/_ztest" is_file
}

@test 'src has _zuluCrypt-gui' {
    assert "$src/_zuluCrypt-gui" is_file
}

@test 'src has _zuluMount-cli' {
    assert "$src/_zuluMount-cli" is_file
}

@test 'src has _zuluMount-gui' {
    assert "$src/_zuluMount-gui" is_file
}

@test 'src has _zvbi-ntsc-cc' {
    assert "$src/_zvbi-ntsc-cc" is_file
}

