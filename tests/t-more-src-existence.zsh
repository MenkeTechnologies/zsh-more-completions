#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Existence tests for more_src/ completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    xsrc="$pluginDir/more_src"
}

# ─── File existence tests ───────────────────────────────────────────────────

@test 'more_src has _1ls' {
    assert "$xsrc/_1ls" is_file
}
@test 'more_src has _Bifrost' {
    assert "$xsrc/_Bifrost" is_file
}
@test 'more_src has _CompileDaemon' {
    assert "$xsrc/_CompileDaemon" is_file
}
@test 'more_src has _DAS_Tool' {
    assert "$xsrc/_DAS_Tool" is_file
}
@test 'more_src has _ExpansionHunter' {
    assert "$xsrc/_ExpansionHunter" is_file
}
@test 'more_src has _GUESSmyLT' {
    assert "$xsrc/_GUESSmyLT" is_file
}
@test 'more_src has _Genrich' {
    assert "$xsrc/_Genrich" is_file
}
@test 'more_src has _GraphAligner' {
    assert "$xsrc/_GraphAligner" is_file
}
@test 'more_src has _HandBrakeCLI' {
    assert "$xsrc/_HandBrakeCLI" is_file
}
@test 'more_src has _MBG' {
    assert "$xsrc/_MBG" is_file
}
@test 'more_src has _MethylDackel' {
    assert "$xsrc/_MethylDackel" is_file
}
@test 'more_src has _NanoFilt' {
    assert "$xsrc/_NanoFilt" is_file
}
@test 'more_src has _NanoPlot' {
    assert "$xsrc/_NanoPlot" is_file
}
@test 'more_src has _NanoStat' {
    assert "$xsrc/_NanoStat" is_file
}
@test 'more_src has _PlistBuddy' {
    assert "$xsrc/_PlistBuddy" is_file
}
@test 'more_src has _ProcessRepeats' {
    assert "$xsrc/_ProcessRepeats" is_file
}
@test 'more_src has _RepeatMasker' {
    assert "$xsrc/_RepeatMasker" is_file
}
@test 'more_src has _RepeatModeler' {
    assert "$xsrc/_RepeatModeler" is_file
}
@test 'more_src has _RepeatProteinMask' {
    assert "$xsrc/_RepeatProteinMask" is_file
}
@test 'more_src has _SOT' {
    assert "$xsrc/_SOT" is_file
}
@test 'more_src has _STAR' {
    assert "$xsrc/_STAR" is_file
}
@test 'more_src has _STAR-Fusion' {
    assert "$xsrc/_STAR-Fusion" is_file
}
@test 'more_src has _SnpSift' {
    assert "$xsrc/_SnpSift" is_file
}
@test 'more_src has _TransDecoder.LongOrfs' {
    assert "$xsrc/_TransDecoder.LongOrfs" is_file
}
@test 'more_src has _TransDecoder.Predict' {
    assert "$xsrc/_TransDecoder.Predict" is_file
}
@test 'more_src has _Trinity' {
    assert "$xsrc/_Trinity" is_file
}
@test 'more_src has _VBoxManage' {
    assert "$xsrc/_VBoxManage" is_file
}
@test 'more_src has _Zzz' {
    assert "$xsrc/_Zzz" is_file
}
@test 'more_src has _aa-log.zsh' {
    assert "$xsrc/_aa-log.zsh" is_file
}
@test 'more_src has _ab-av1' {
    assert "$xsrc/_ab-av1" is_file
}
@test 'more_src has _abba-baba' {
    assert "$xsrc/_abba-baba" is_file
}
@test 'more_src has _abbr' {
    assert "$xsrc/_abbr" is_file
}
@test 'more_src has _abctl' {
    assert "$xsrc/_abctl" is_file
}
@test 'more_src has _abduco' {
    assert "$xsrc/_abduco" is_file
}
@test 'more_src has _abook' {
    assert "$xsrc/_abook" is_file
}
@test 'more_src has _abpoa' {
    assert "$xsrc/_abpoa" is_file
}
@test 'more_src has _abricate' {
    assert "$xsrc/_abricate" is_file
}
@test 'more_src has _abstouch' {
    assert "$xsrc/_abstouch" is_file
}
@test 'more_src has _abyss-align' {
    assert "$xsrc/_abyss-align" is_file
}
@test 'more_src has _abyss-bloom' {
    assert "$xsrc/_abyss-bloom" is_file
}
@test 'more_src has _abyss-fac' {
    assert "$xsrc/_abyss-fac" is_file
}
@test 'more_src has _abyss-fixmate' {
    assert "$xsrc/_abyss-fixmate" is_file
}
@test 'more_src has _abyss-index' {
    assert "$xsrc/_abyss-index" is_file
}
@test 'more_src has _abyss-map' {
    assert "$xsrc/_abyss-map" is_file
}
@test 'more_src has _abyss-pe' {
    assert "$xsrc/_abyss-pe" is_file
}
@test 'more_src has _acme' {
    assert "$xsrc/_acme" is_file
}
@test 'more_src has _acr' {
    assert "$xsrc/_acr" is_file
}
@test 'more_src has _act' {
    assert "$xsrc/_act" is_file
}
@test 'more_src has _act_runner' {
    assert "$xsrc/_act_runner" is_file
}
@test 'more_src has _actinia-server' {
    assert "$xsrc/_actinia-server" is_file
}
@test 'more_src has _activemq' {
    assert "$xsrc/_activemq" is_file
}
@test 'more_src has _ada' {
    assert "$xsrc/_ada" is_file
}
@test 'more_src has _addgnupghome' {
    assert "$xsrc/_addgnupghome" is_file
}
@test 'more_src has _addlicense' {
    assert "$xsrc/_addlicense" is_file
}
@test 'more_src has _aderyn' {
    assert "$xsrc/_aderyn" is_file
}
@test 'more_src has _advcp' {
    assert "$xsrc/_advcp" is_file
}
@test 'more_src has _advdef' {
    assert "$xsrc/_advdef" is_file
}
@test 'more_src has _advixe-cl' {
    assert "$xsrc/_advixe-cl" is_file
}
@test 'more_src has _aerc' {
    assert "$xsrc/_aerc" is_file
}
@test 'more_src has _afinfo' {
    assert "$xsrc/_afinfo" is_file
}
@test 'more_src has _aftman' {
    assert "$xsrc/_aftman" is_file
}
@test 'more_src has _agat' {
    assert "$xsrc/_agat" is_file
}
@test 'more_src has _agat_convert_bed2gff.pl' {
    assert "$xsrc/_agat_convert_bed2gff.pl" is_file
}
@test 'more_src has _agat_convert_embl2gff.pl' {
    assert "$xsrc/_agat_convert_embl2gff.pl" is_file
}
@test 'more_src has _agat_convert_genscan2gff.pl' {
    assert "$xsrc/_agat_convert_genscan2gff.pl" is_file
}
@test 'more_src has _agat_convert_mfannot2gff.pl' {
    assert "$xsrc/_agat_convert_mfannot2gff.pl" is_file
}
@test 'more_src has _agat_convert_minimap2_bam2gff.pl' {
    assert "$xsrc/_agat_convert_minimap2_bam2gff.pl" is_file
}
@test 'more_src has _agat_convert_sp_gff2bed.pl' {
    assert "$xsrc/_agat_convert_sp_gff2bed.pl" is_file
}
@test 'more_src has _agat_convert_sp_gff2gtf.pl' {
    assert "$xsrc/_agat_convert_sp_gff2gtf.pl" is_file
}
@test 'more_src has _agat_convert_sp_gff2tsv.pl' {
    assert "$xsrc/_agat_convert_sp_gff2tsv.pl" is_file
}
@test 'more_src has _agat_convert_sp_gff2zff.pl' {
    assert "$xsrc/_agat_convert_sp_gff2zff.pl" is_file
}
@test 'more_src has _agat_sp_Prokka_inferNameFromAttributes.pl' {
    assert "$xsrc/_agat_sp_Prokka_inferNameFromAttributes.pl" is_file
}
@test 'more_src has _agat_sp_add_attribute_shortest_exon_size.pl' {
    assert "$xsrc/_agat_sp_add_attribute_shortest_exon_size.pl" is_file
}
@test 'more_src has _agat_sp_add_attribute_shortest_intron_size.pl' {
    assert "$xsrc/_agat_sp_add_attribute_shortest_intron_size.pl" is_file
}
@test 'more_src has _agat_sp_add_introns.pl' {
    assert "$xsrc/_agat_sp_add_introns.pl" is_file
}
@test 'more_src has _age' {
    assert "$xsrc/_age" is_file
}
@test 'more_src has _age-keygen' {
    assert "$xsrc/_age-keygen" is_file
}
@test 'more_src has _agentic-shell' {
    assert "$xsrc/_agentic-shell" is_file
}
@test 'more_src has _agentvm' {
    assert "$xsrc/_agentvm" is_file
}
@test 'more_src has _agrind' {
    assert "$xsrc/_agrind" is_file
}
@test 'more_src has _agvtool' {
    assert "$xsrc/_agvtool" is_file
}
@test 'more_src has _ai-manager' {
    assert "$xsrc/_ai-manager" is_file
}
@test 'more_src has _aiautocommit' {
    assert "$xsrc/_aiautocommit" is_file
}
@test 'more_src has _aichat' {
    assert "$xsrc/_aichat" is_file
}
@test 'more_src has _aider' {
    assert "$xsrc/_aider" is_file
}
@test 'more_src has _air' {
    assert "$xsrc/_air" is_file
}
@test 'more_src has _airlift' {
    assert "$xsrc/_airlift" is_file
}
@test 'more_src has _airshare' {
    assert "$xsrc/_airshare" is_file
}
@test 'more_src has _akv.zsh' {
    assert "$xsrc/_akv.zsh" is_file
}
@test 'more_src has _alertmanager' {
    assert "$xsrc/_alertmanager" is_file
}
@test 'more_src has _alfons' {
    assert "$xsrc/_alfons" is_file
}
@test 'more_src has _alfred' {
    assert "$xsrc/_alfred" is_file
}
@test 'more_src has _all.sh' {
    assert "$xsrc/_all.sh" is_file
}
@test 'more_src has _alloydb-auth-proxy' {
    assert "$xsrc/_alloydb-auth-proxy" is_file
}
@test 'more_src has _alot' {
    assert "$xsrc/_alot" is_file
}
@test 'more_src has _alpen' {
    assert "$xsrc/_alpen" is_file
}
@test 'more_src has _alr' {
    assert "$xsrc/_alr" is_file
}
@test 'more_src has _amber' {
    assert "$xsrc/_amber" is_file
}
@test 'more_src has _amfora' {
    assert "$xsrc/_amfora" is_file
}
@test 'more_src has _amon2-setup.pl' {
    assert "$xsrc/_amon2-setup.pl" is_file
}
@test 'more_src has _android' {
    assert "$xsrc/_android" is_file
}
@test 'more_src has _anew' {
    assert "$xsrc/_anew" is_file
}
@test 'more_src has _anka' {
    assert "$xsrc/_anka" is_file
}
@test 'more_src has _anki' {
    assert "$xsrc/_anki" is_file
}
@test 'more_src has _ansi2image' {
    assert "$xsrc/_ansi2image" is_file
}
@test 'more_src has _ansible-cmdb' {
    assert "$xsrc/_ansible-cmdb" is_file
}
@test 'more_src has _ansible-language-server' {
    assert "$xsrc/_ansible-language-server" is_file
}
@test 'more_src has _ansible-lint' {
    assert "$xsrc/_ansible-lint" is_file
}
@test 'more_src has _ansible-navigator' {
    assert "$xsrc/_ansible-navigator" is_file
}
@test 'more_src has _antidote' {
    assert "$xsrc/_antidote" is_file
}
@test 'more_src has _anybar' {
    assert "$xsrc/_anybar" is_file
}
@test 'more_src has _apib' {
    assert "$xsrc/_apib" is_file
}
@test 'more_src has _apidoc' {
    assert "$xsrc/_apidoc" is_file
}
@test 'more_src has _apkanalyzer' {
    assert "$xsrc/_apkanalyzer" is_file
}
@test 'more_src has _apko' {
    assert "$xsrc/_apko" is_file
}
@test 'more_src has _apparix' {
    assert "$xsrc/_apparix" is_file
}
@test 'more_src has _apparmor-parser' {
    assert "$xsrc/_apparmor-parser" is_file
}
@test 'more_src has _appcfg.py' {
    assert "$xsrc/_appcfg.py" is_file
}
@test 'more_src has _applygnupgdefaults' {
    assert "$xsrc/_applygnupgdefaults" is_file
}
@test 'more_src has _apx' {
    assert "$xsrc/_apx" is_file
}
@test 'more_src has _arc' {
    assert "$xsrc/_arc" is_file
}
@test 'more_src has _archinstall' {
    assert "$xsrc/_archinstall" is_file
}
@test 'more_src has _archivemount' {
    assert "$xsrc/_archivemount" is_file
}
@test 'more_src has _ardour' {
    assert "$xsrc/_ardour" is_file
}
@test 'more_src has _arduino-builder' {
    assert "$xsrc/_arduino-builder" is_file
}
@test 'more_src has _arelo' {
    assert "$xsrc/_arelo" is_file
}
@test 'more_src has _argo' {
    assert "$xsrc/_argo" is_file
}
@test 'more_src has _argocd' {
    assert "$xsrc/_argocd" is_file
}
@test 'more_src has _args' {
    assert "$xsrc/_args" is_file
}
@test 'more_src has _argus' {
    assert "$xsrc/_argus" is_file
}
@test 'more_src has _aria2c' {
    assert "$xsrc/_aria2c" is_file
}
@test 'more_src has _artic' {
    assert "$xsrc/_artic" is_file
}
@test 'more_src has _artillery' {
    assert "$xsrc/_artillery" is_file
}
@test 'more_src has _artisan' {
    assert "$xsrc/_artisan" is_file
}
@test 'more_src has _arturo' {
    assert "$xsrc/_arturo" is_file
}
@test 'more_src has _asb' {
    assert "$xsrc/_asb" is_file
}
@test 'more_src has _asciidoctor-pdf' {
    assert "$xsrc/_asciidoctor-pdf" is_file
}
@test 'more_src has _asciiview' {
    assert "$xsrc/_asciiview" is_file
}
@test 'more_src has _asm2plan9s' {
    assert "$xsrc/_asm2plan9s" is_file
}
@test 'more_src has _asmcli' {
    assert "$xsrc/_asmcli" is_file
}
@test 'more_src has _asnmap' {
    assert "$xsrc/_asnmap" is_file
}
@test 'more_src has _assimp' {
    assert "$xsrc/_assimp" is_file
}
@test 'more_src has _ast-grep' {
    assert "$xsrc/_ast-grep" is_file
}
@test 'more_src has _atac' {
    assert "$xsrc/_atac" is_file
}
@test 'more_src has _atlantis' {
    assert "$xsrc/_atlantis" is_file
}
@test 'more_src has _atmos' {
    assert "$xsrc/_atmos" is_file
}
@test 'more_src has _atonal-util' {
    assert "$xsrc/_atonal-util" is_file
}
@test 'more_src has _atool' {
    assert "$xsrc/_atool" is_file
}
@test 'more_src has _atuin' {
    assert "$xsrc/_atuin" is_file
}
@test 'more_src has _atuin-server' {
    assert "$xsrc/_atuin-server" is_file
}
@test 'more_src has _audacity' {
    assert "$xsrc/_audacity" is_file
}
@test 'more_src has _audiowaveform' {
    assert "$xsrc/_audiowaveform" is_file
}
@test 'more_src has _aur-gc' {
    assert "$xsrc/_aur-gc" is_file
}
@test 'more_src has _aur-remove' {
    assert "$xsrc/_aur-remove" is_file
}
@test 'more_src has _aur-sync-asroot' {
    assert "$xsrc/_aur-sync-asroot" is_file
}
@test 'more_src has _aur-sync-devel' {
    assert "$xsrc/_aur-sync-devel" is_file
}
@test 'more_src has _aur-sync-list' {
    assert "$xsrc/_aur-sync-list" is_file
}
@test 'more_src has _aur-sync-rebuild' {
    assert "$xsrc/_aur-sync-rebuild" is_file
}
@test 'more_src has _aura' {
    assert "$xsrc/_aura" is_file
}
@test 'more_src has _auracle' {
    assert "$xsrc/_auracle" is_file
}
@test 'more_src has _authentik' {
    assert "$xsrc/_authentik" is_file
}
@test 'more_src has _autocode' {
    assert "$xsrc/_autocode" is_file
}
@test 'more_src has _autogen' {
    assert "$xsrc/_autogen" is_file
}
@test 'more_src has _automationmodetool' {
    assert "$xsrc/_automationmodetool" is_file
}
@test 'more_src has _autopkg' {
    assert "$xsrc/_autopkg" is_file
}
@test 'more_src has _autorandr' {
    assert "$xsrc/_autorandr" is_file
}
@test 'more_src has _autorest' {
    assert "$xsrc/_autorest" is_file
}
@test 'more_src has _autorotate' {
    assert "$xsrc/_autorotate" is_file
}
@test 'more_src has _av1an' {
    assert "$xsrc/_av1an" is_file
}
@test 'more_src has _avanor' {
    assert "$xsrc/_avanor" is_file
}
@test 'more_src has _avifgainmaputil' {
    assert "$xsrc/_avifgainmaputil" is_file
}
@test 'more_src has _awless' {
    assert "$xsrc/_awless" is_file
}
@test 'more_src has _aws-es-proxy' {
    assert "$xsrc/_aws-es-proxy" is_file
}
@test 'more_src has _aws-vault' {
    assert "$xsrc/_aws-vault" is_file
}
@test 'more_src has _aws_completer' {
    assert "$xsrc/_aws_completer" is_file
}
@test 'more_src has _az' {
    assert "$xsrc/_az" is_file
}
@test 'more_src has _azcopy' {
    assert "$xsrc/_azcopy" is_file
}
@test 'more_src has _azurehound' {
    assert "$xsrc/_azurehound" is_file
}
@test 'more_src has _b3sum' {
    assert "$xsrc/_b3sum" is_file
}
@test 'more_src has _b4' {
    assert "$xsrc/_b4" is_file
}
@test 'more_src has _babashka' {
    assert "$xsrc/_babashka" is_file
}
@test 'more_src has _babelfish' {
    assert "$xsrc/_babelfish" is_file
}
@test 'more_src has _backgroundremover' {
    assert "$xsrc/_backgroundremover" is_file
}
@test 'more_src has _bacon' {
    assert "$xsrc/_bacon" is_file
}
@test 'more_src has _bacon-ls' {
    assert "$xsrc/_bacon-ls" is_file
}
@test 'more_src has _badread' {
    assert "$xsrc/_badread" is_file
}
@test 'more_src has _baidupcs-go' {
    assert "$xsrc/_baidupcs-go" is_file
}
@test 'more_src has _bamrescue' {
    assert "$xsrc/_bamrescue" is_file
}
@test 'more_src has _bandcamp-dl' {
    assert "$xsrc/_bandcamp-dl" is_file
}
@test 'more_src has _bandit' {
    assert "$xsrc/_bandit" is_file
}
@test 'more_src has _bandwhich' {
    assert "$xsrc/_bandwhich" is_file
}
@test 'more_src has _bartib' {
    assert "$xsrc/_bartib" is_file
}
@test 'more_src has _bartycrouch' {
    assert "$xsrc/_bartycrouch" is_file
}
@test 'more_src has _base16_theme' {
    assert "$xsrc/_base16_theme" is_file
}
@test 'more_src has _bash-snippets' {
    assert "$xsrc/_bash-snippets" is_file
}
@test 'more_src has _basher' {
    assert "$xsrc/_basher" is_file
}
@test 'more_src has _bashly' {
    assert "$xsrc/_bashly" is_file
}
@test 'more_src has _bashtop' {
    assert "$xsrc/_bashtop" is_file
}
@test 'more_src has _basic-app-completion.zsh' {
    assert "$xsrc/_basic-app-completion.zsh" is_file
}
@test 'more_src has _batcat' {
    assert "$xsrc/_batcat" is_file
}
@test 'more_src has _bazel' {
    assert "$xsrc/_bazel" is_file
}
@test 'more_src has _bb' {
    assert "$xsrc/_bb" is_file
}
@test 'more_src has _bbedit' {
    assert "$xsrc/_bbedit" is_file
}
@test 'more_src has _bean-check' {
    assert "$xsrc/_bean-check" is_file
}
@test 'more_src has _bean-query' {
    assert "$xsrc/_bean-query" is_file
}
@test 'more_src has _beanstalkd' {
    assert "$xsrc/_beanstalkd" is_file
}
@test 'more_src has _bear' {
    assert "$xsrc/_bear" is_file
}
@test 'more_src has _beautysh' {
    assert "$xsrc/_beautysh" is_file
}
@test 'more_src has _bedtools' {
    assert "$xsrc/_bedtools" is_file
}
@test 'more_src has _beet' {
    assert "$xsrc/_beet" is_file
}
@test 'more_src has _bemenu' {
    assert "$xsrc/_bemenu" is_file
}
@test 'more_src has _bench' {
    assert "$xsrc/_bench" is_file
}
@test 'more_src has _bencher' {
    assert "$xsrc/_bencher" is_file
}
@test 'more_src has _benchinit' {
    assert "$xsrc/_benchinit" is_file
}
@test 'more_src has _benthos' {
    assert "$xsrc/_benthos" is_file
}
@test 'more_src has _bento' {
    assert "$xsrc/_bento" is_file
}
@test 'more_src has _bento4' {
    assert "$xsrc/_bento4" is_file
}
@test 'more_src has _betteralign' {
    assert "$xsrc/_betteralign" is_file
}
@test 'more_src has _betterleaks' {
    assert "$xsrc/_betterleaks" is_file
}
@test 'more_src has _bfg' {
    assert "$xsrc/_bfg" is_file
}
@test 'more_src has _bfs' {
    assert "$xsrc/_bfs" is_file
}
@test 'more_src has _biber' {
    assert "$xsrc/_biber" is_file
}
@test 'more_src has _biber-ms' {
    assert "$xsrc/_biber-ms" is_file
}
@test 'more_src has _bigquery-emulator' {
    assert "$xsrc/_bigquery-emulator" is_file
}
@test 'more_src has _bindgen' {
    assert "$xsrc/_bindgen" is_file
}
@test 'more_src has _binocle' {
    assert "$xsrc/_binocle" is_file
}
@test 'more_src has _binutils-config' {
    assert "$xsrc/_binutils-config" is_file
}
@test 'more_src has _bioawk' {
    assert "$xsrc/_bioawk" is_file
}
@test 'more_src has _biodiff' {
    assert "$xsrc/_biodiff" is_file
}
@test 'more_src has _biome' {
    assert "$xsrc/_biome" is_file
}
@test 'more_src has _bit' {
    assert "$xsrc/_bit" is_file
}
@test 'more_src has _bittersweet' {
    assert "$xsrc/_bittersweet" is_file
}
@test 'more_src has _bkcrack' {
    assert "$xsrc/_bkcrack" is_file
}
@test 'more_src has _bkmr' {
    assert "$xsrc/_bkmr" is_file
}
@test 'more_src has _bkt' {
    assert "$xsrc/_bkt" is_file
}
@test 'more_src has _black' {
    assert "$xsrc/_black" is_file
}
@test 'more_src has _blake3sum' {
    assert "$xsrc/_blake3sum" is_file
}
@test 'more_src has _blastem' {
    assert "$xsrc/_blastem" is_file
}
@test 'more_src has _blastshield' {
    assert "$xsrc/_blastshield" is_file
}
@test 'more_src has _blaze' {
    assert "$xsrc/_blaze" is_file
}
@test 'more_src has _blockhash' {
    assert "$xsrc/_blockhash" is_file
}
@test 'more_src has _blogc' {
    assert "$xsrc/_blogc" is_file
}
@test 'more_src has _bloodhound' {
    assert "$xsrc/_bloodhound" is_file
}
@test 'more_src has _bls' {
    assert "$xsrc/_bls" is_file
}
@test 'more_src has _bltool' {
    assert "$xsrc/_bltool" is_file
}
@test 'more_src has _blueutil' {
    assert "$xsrc/_blueutil" is_file
}
@test 'more_src has _bnfc' {
    assert "$xsrc/_bnfc" is_file
}
@test 'more_src has _bob' {
    assert "$xsrc/_bob" is_file
}
@test 'more_src has _bom' {
    assert "$xsrc/_bom" is_file
}
@test 'more_src has _bombardier' {
    assert "$xsrc/_bombardier" is_file
}
@test 'more_src has _bomber' {
    assert "$xsrc/_bomber" is_file
}
@test 'more_src has _bookokrat' {
    assert "$xsrc/_bookokrat" is_file
}
@test 'more_src has _bootterm' {
    assert "$xsrc/_bootterm" is_file
}
@test 'more_src has _bopca' {
    assert "$xsrc/_bopca" is_file
}
@test 'more_src has _bore' {
    assert "$xsrc/_bore" is_file
}
@test 'more_src has _borg' {
    assert "$xsrc/_borg" is_file
}
@test 'more_src has _borgmatic' {
    assert "$xsrc/_borgmatic" is_file
}
@test 'more_src has _boring' {
    assert "$xsrc/_boring" is_file
}
@test 'more_src has _boringtun' {
    assert "$xsrc/_boringtun" is_file
}
@test 'more_src has _bork' {
    assert "$xsrc/_bork" is_file
}
@test 'more_src has _bosh-cli' {
    assert "$xsrc/_bosh-cli" is_file
}
@test 'more_src has _botan' {
    assert "$xsrc/_botan" is_file
}
@test 'more_src has _bottom' {
    assert "$xsrc/_bottom" is_file
}
@test 'more_src has _boufin' {
    assert "$xsrc/_boufin" is_file
}
@test 'more_src has _bounceback' {
    assert "$xsrc/_bounceback" is_file
}
@test 'more_src has _boundbook' {
    assert "$xsrc/_boundbook" is_file
}
@test 'more_src has _bowtie2' {
    assert "$xsrc/_bowtie2" is_file
}
@test 'more_src has _bpftool' {
    assert "$xsrc/_bpftool" is_file
}
@test 'more_src has _bpftrace' {
    assert "$xsrc/_bpftrace" is_file
}
@test 'more_src has _bpmnlint' {
    assert "$xsrc/_bpmnlint" is_file
}
@test 'more_src has _bpytop' {
    assert "$xsrc/_bpytop" is_file
}
@test 'more_src has _brag' {
    assert "$xsrc/_brag" is_file
}
@test 'more_src has _braid' {
    assert "$xsrc/_braid" is_file
}
@test 'more_src has _brainfuck' {
    assert "$xsrc/_brainfuck" is_file
}
@test 'more_src has _breseq' {
    assert "$xsrc/_breseq" is_file
}
@test 'more_src has _brew_cask' {
    assert "$xsrc/_brew_cask" is_file
}
@test 'more_src has _brew_services' {
    assert "$xsrc/_brew_services" is_file
}
@test 'more_src has _brig' {
    assert "$xsrc/_brig" is_file
}
@test 'more_src has _brightness' {
    assert "$xsrc/_brightness" is_file
}
@test 'more_src has _briss' {
    assert "$xsrc/_briss" is_file
}
@test 'more_src has _broot' {
    assert "$xsrc/_broot" is_file
}
@test 'more_src has _browser-sync' {
    assert "$xsrc/_browser-sync" is_file
}
@test 'more_src has _browserslist' {
    assert "$xsrc/_browserslist" is_file
}
@test 'more_src has _browsh' {
    assert "$xsrc/_browsh" is_file
}
@test 'more_src has _brpc' {
    assert "$xsrc/_brpc" is_file
}
@test 'more_src has _bruno' {
    assert "$xsrc/_bruno" is_file
}
@test 'more_src has _brush' {
    assert "$xsrc/_brush" is_file
}
@test 'more_src has _bsdsfv' {
    assert "$xsrc/_bsdsfv" is_file
}
@test 'more_src has _bspatch' {
    assert "$xsrc/_bspatch" is_file
}
@test 'more_src has _btcli' {
    assert "$xsrc/_btcli" is_file
}
@test 'more_src has _btdu' {
    assert "$xsrc/_btdu" is_file
}
@test 'more_src has _btfs' {
    assert "$xsrc/_btfs" is_file
}
@test 'more_src has _btpd' {
    assert "$xsrc/_btpd" is_file
}
@test 'more_src has _btrbk' {
    assert "$xsrc/_btrbk" is_file
}
@test 'more_src has _buck2' {
    assert "$xsrc/_buck2" is_file
}
@test 'more_src has _buf' {
    assert "$xsrc/_buf" is_file
}
@test 'more_src has _buffrs' {
    assert "$xsrc/_buffrs" is_file
}
@test 'more_src has _bugz' {
    assert "$xsrc/_bugz" is_file
}
@test 'more_src has _build.sh' {
    assert "$xsrc/_build.sh" is_file
}
@test 'more_src has _buildah' {
    assert "$xsrc/_buildah" is_file
}
@test 'more_src has _buildctl' {
    assert "$xsrc/_buildctl" is_file
}
@test 'more_src has _buildifier' {
    assert "$xsrc/_buildifier" is_file
}
@test 'more_src has _buildkitd' {
    assert "$xsrc/_buildkitd" is_file
}
@test 'more_src has _buildozer' {
    assert "$xsrc/_buildozer" is_file
}
@test 'more_src has _buildpack' {
    assert "$xsrc/_buildpack" is_file
}
@test 'more_src has _buku' {
    assert "$xsrc/_buku" is_file
}
@test 'more_src has _bun' {
    assert "$xsrc/_bun" is_file
}
@test 'more_src has _burp' {
    assert "$xsrc/_burp" is_file
}
@test 'more_src has _burrow' {
    assert "$xsrc/_burrow" is_file
}
@test 'more_src has _bvi' {
    assert "$xsrc/_bvi" is_file
}
@test 'more_src has _bw' {
    assert "$xsrc/_bw" is_file
}
@test 'more_src has _bwa' {
    assert "$xsrc/_bwa" is_file
}
@test 'more_src has _byobu' {
    assert "$xsrc/_byobu" is_file
}
@test 'more_src has _bzcmp' {
    assert "$xsrc/_bzcmp" is_file
}
@test 'more_src has _bzdiff' {
    assert "$xsrc/_bzdiff" is_file
}
@test 'more_src has _bzip3' {
    assert "$xsrc/_bzip3" is_file
}
@test 'more_src has _c10t' {
    assert "$xsrc/_c10t" is_file
}
@test 'more_src has _c2048' {
    assert "$xsrc/_c2048" is_file
}
@test 'more_src has _c2goasm' {
    assert "$xsrc/_c2goasm" is_file
}
@test 'more_src has _c2rust' {
    assert "$xsrc/_c2rust" is_file
}
@test 'more_src has _c3c' {
    assert "$xsrc/_c3c" is_file
}
@test 'more_src has _cabin' {
    assert "$xsrc/_cabin" is_file
}
@test 'more_src has _cacademo' {
    assert "$xsrc/_cacademo" is_file
}
@test 'more_src has _cacafire' {
    assert "$xsrc/_cacafire" is_file
}
@test 'more_src has _cacaplay' {
    assert "$xsrc/_cacaplay" is_file
}
@test 'more_src has _cacaserver' {
    assert "$xsrc/_cacaserver" is_file
}
@test 'more_src has _cacaview' {
    assert "$xsrc/_cacaview" is_file
}
@test 'more_src has _cact.sh' {
    assert "$xsrc/_cact.sh" is_file
}
@test 'more_src has _caddy' {
    assert "$xsrc/_caddy" is_file
}
@test 'more_src has _cadical' {
    assert "$xsrc/_cadical" is_file
}
@test 'more_src has _cadubi' {
    assert "$xsrc/_cadubi" is_file
}
@test 'more_src has _caesiumclt' {
    assert "$xsrc/_caesiumclt" is_file
}
@test 'more_src has _cai' {
    assert "$xsrc/_cai" is_file
}
@test 'more_src has _calc' {
    assert "$xsrc/_calc" is_file
}
@test 'more_src has _calcurse' {
    assert "$xsrc/_calcurse" is_file
}
@test 'more_src has _calibre' {
    assert "$xsrc/_calibre" is_file
}
@test 'more_src has _calico' {
    assert "$xsrc/_calico" is_file
}
@test 'more_src has _capistrano' {
    assert "$xsrc/_capistrano" is_file
}
@test 'more_src has _capnp' {
    assert "$xsrc/_capnp" is_file
}
@test 'more_src has _carapace' {
    assert "$xsrc/_carapace" is_file
}
@test 'more_src has _cargo-add' {
    assert "$xsrc/_cargo-add" is_file
}
@test 'more_src has _cargo-audit' {
    assert "$xsrc/_cargo-audit" is_file
}
@test 'more_src has _cargo-auditable' {
    assert "$xsrc/_cargo-auditable" is_file
}
@test 'more_src has _cargo-bench' {
    assert "$xsrc/_cargo-bench" is_file
}
@test 'more_src has _cargo-binstall' {
    assert "$xsrc/_cargo-binstall" is_file
}
@test 'more_src has _cargo-bloat' {
    assert "$xsrc/_cargo-bloat" is_file
}
@test 'more_src has _cargo-careful' {
    assert "$xsrc/_cargo-careful" is_file
}
@test 'more_src has _cargo-check' {
    assert "$xsrc/_cargo-check" is_file
}
@test 'more_src has _cargo-clone' {
    assert "$xsrc/_cargo-clone" is_file
}
@test 'more_src has _cargo-component' {
    assert "$xsrc/_cargo-component" is_file
}
@test 'more_src has _cargo-deb' {
    assert "$xsrc/_cargo-deb" is_file
}
@test 'more_src has _cargo-deny' {
    assert "$xsrc/_cargo-deny" is_file
}
@test 'more_src has _cargo-depgraph' {
    assert "$xsrc/_cargo-depgraph" is_file
}
@test 'more_src has _cargo-dist' {
    assert "$xsrc/_cargo-dist" is_file
}
@test 'more_src has _cargo-doc' {
    assert "$xsrc/_cargo-doc" is_file
}
@test 'more_src has _cargo-flamegraph' {
    assert "$xsrc/_cargo-flamegraph" is_file
}
@test 'more_src has _cargo-fuzz' {
    assert "$xsrc/_cargo-fuzz" is_file
}
@test 'more_src has _cargo-geiger' {
    assert "$xsrc/_cargo-geiger" is_file
}
@test 'more_src has _cargo-generate' {
    assert "$xsrc/_cargo-generate" is_file
}
@test 'more_src has _cargo-info' {
    assert "$xsrc/_cargo-info" is_file
}
@test 'more_src has _cargo-insta' {
    assert "$xsrc/_cargo-insta" is_file
}
@test 'more_src has _cargo-lambda' {
    assert "$xsrc/_cargo-lambda" is_file
}
@test 'more_src has _cargo-leptos' {
    assert "$xsrc/_cargo-leptos" is_file
}
@test 'more_src has _cargo-license' {
    assert "$xsrc/_cargo-license" is_file
}
@test 'more_src has _cargo-llvm-cov' {
    assert "$xsrc/_cargo-llvm-cov" is_file
}
@test 'more_src has _cargo-machete' {
    assert "$xsrc/_cargo-machete" is_file
}
@test 'more_src has _cargo-make' {
    assert "$xsrc/_cargo-make" is_file
}
@test 'more_src has _cargo-miri' {
    assert "$xsrc/_cargo-miri" is_file
}
@test 'more_src has _cargo-modules' {
    assert "$xsrc/_cargo-modules" is_file
}
@test 'more_src has _cargo-msrv' {
    assert "$xsrc/_cargo-msrv" is_file
}
@test 'more_src has _cargo-mutants' {
    assert "$xsrc/_cargo-mutants" is_file
}
@test 'more_src has _cargo-ndk' {
    assert "$xsrc/_cargo-ndk" is_file
}
@test 'more_src has _cargo-nextest' {
    assert "$xsrc/_cargo-nextest" is_file
}
@test 'more_src has _cargo-outdated' {
    assert "$xsrc/_cargo-outdated" is_file
}
@test 'more_src has _cargo-pgo' {
    assert "$xsrc/_cargo-pgo" is_file
}
@test 'more_src has _cargo-release' {
    assert "$xsrc/_cargo-release" is_file
}
@test 'more_src has _cargo-rm' {
    assert "$xsrc/_cargo-rm" is_file
}
@test 'more_src has _cargo-semver-checks' {
    assert "$xsrc/_cargo-semver-checks" is_file
}
@test 'more_src has _cargo-show-asm' {
    assert "$xsrc/_cargo-show-asm" is_file
}
@test 'more_src has _cargo-shuttle' {
    assert "$xsrc/_cargo-shuttle" is_file
}
@test 'more_src has _cargo-spellcheck' {
    assert "$xsrc/_cargo-spellcheck" is_file
}
@test 'more_src has _cargo-sweep' {
    assert "$xsrc/_cargo-sweep" is_file
}
@test 'more_src has _cargo-tarpaulin' {
    assert "$xsrc/_cargo-tarpaulin" is_file
}
@test 'more_src has _cargo-udeps' {
    assert "$xsrc/_cargo-udeps" is_file
}
@test 'more_src has _cargo-upgrade' {
    assert "$xsrc/_cargo-upgrade" is_file
}
@test 'more_src has _cargo-upgrades' {
    assert "$xsrc/_cargo-upgrades" is_file
}
@test 'more_src has _cargo-vendor' {
    assert "$xsrc/_cargo-vendor" is_file
}
@test 'more_src has _cargo-vet' {
    assert "$xsrc/_cargo-vet" is_file
}
@test 'more_src has _cargo-watch' {
    assert "$xsrc/_cargo-watch" is_file
}
@test 'more_src has _cargo-workspaces' {
    assert "$xsrc/_cargo-workspaces" is_file
}
@test 'more_src has _cargo-zigbuild' {
    assert "$xsrc/_cargo-zigbuild" is_file
}
@test 'more_src has _carmel' {
    assert "$xsrc/_carmel" is_file
}
@test 'more_src has _cassandra' {
    assert "$xsrc/_cassandra" is_file
}
@test 'more_src has _cassandra-stress' {
    assert "$xsrc/_cassandra-stress" is_file
}
@test 'more_src has _castero' {
    assert "$xsrc/_castero" is_file
}
@test 'more_src has _cava' {
    assert "$xsrc/_cava" is_file
}
@test 'more_src has _cayley' {
    assert "$xsrc/_cayley" is_file
}
@test 'more_src has _cbfmt' {
    assert "$xsrc/_cbfmt" is_file
}
@test 'more_src has _cbonsai' {
    assert "$xsrc/_cbonsai" is_file
}
@test 'more_src has _cbor-edn' {
    assert "$xsrc/_cbor-edn" is_file
}
@test 'more_src has _cc-test-reporter' {
    assert "$xsrc/_cc-test-reporter" is_file
}
@test 'more_src has _ccc-override.sh' {
    assert "$xsrc/_ccc-override.sh" is_file
}
@test 'more_src has _ccc-rmobjs.sh' {
    assert "$xsrc/_ccc-rmobjs.sh" is_file
}
@test 'more_src has _ccls' {
    assert "$xsrc/_ccls" is_file
}
@test 'more_src has _cd-gitroot' {
    assert "$xsrc/_cd-gitroot" is_file
}
@test 'more_src has _cdg.zsh' {
    assert "$xsrc/_cdg.zsh" is_file
}
@test 'more_src has _cdk' {
    assert "$xsrc/_cdk" is_file
}
@test 'more_src has _cdktf' {
    assert "$xsrc/_cdktf" is_file
}
@test 'more_src has _cdls_popdls_pushdls' {
    assert "$xsrc/_cdls_popdls_pushdls" is_file
}
@test 'more_src has _celery' {
    assert "$xsrc/_celery" is_file
}
@test 'more_src has _ceph' {
    assert "$xsrc/_ceph" is_file
}
@test 'more_src has _certigo' {
    assert "$xsrc/_certigo" is_file
}
@test 'more_src has _cf-tool' {
    assert "$xsrc/_cf-tool" is_file
}
@test 'more_src has _cfn-lint' {
    assert "$xsrc/_cfn-lint" is_file
}
@test 'more_src has _cfssl' {
    assert "$xsrc/_cfssl" is_file
}
@test 'more_src has _cgrep' {
    assert "$xsrc/_cgrep" is_file
}
@test 'more_src has _chafa' {
    assert "$xsrc/_chafa" is_file
}
@test 'more_src has _changelogger.zsh' {
    assert "$xsrc/_changelogger.zsh" is_file
}
@test 'more_src has _changie' {
    assert "$xsrc/_changie" is_file
}
@test 'more_src has _charm' {
    assert "$xsrc/_charm" is_file
}
@test 'more_src has _charmcraft' {
    assert "$xsrc/_charmcraft" is_file
}
@test 'more_src has _chawan' {
    assert "$xsrc/_chawan" is_file
}
@test 'more_src has _checkmake' {
    assert "$xsrc/_checkmake" is_file
}
@test 'more_src has _checkov' {
    assert "$xsrc/_checkov" is_file
}
@test 'more_src has _checkpointctl' {
    assert "$xsrc/_checkpointctl" is_file
}
@test 'more_src has _checksec' {
    assert "$xsrc/_checksec" is_file
}
@test 'more_src has _chef-cli' {
    assert "$xsrc/_chef-cli" is_file
}
@test 'more_src has _chezmoi' {
    assert "$xsrc/_chezmoi" is_file
}
@test 'more_src has _chezscheme' {
    assert "$xsrc/_chezscheme" is_file
}
@test 'more_src has _chisel' {
    assert "$xsrc/_chisel" is_file
}
@test 'more_src has _chkbit' {
    assert "$xsrc/_chkbit" is_file
}
@test 'more_src has _choose' {
    assert "$xsrc/_choose" is_file
}
@test 'more_src has _chpst' {
    assert "$xsrc/_chpst" is_file
}
@test 'more_src has _chroma' {
    assert "$xsrc/_chroma" is_file
}
@test 'more_src has _chrome-bookmark-browser' {
    assert "$xsrc/_chrome-bookmark-browser" is_file
}
@test 'more_src has _chrome-history' {
    assert "$xsrc/_chrome-history" is_file
}
@test 'more_src has _chrpath' {
    assert "$xsrc/_chrpath" is_file
}
@test 'more_src has _chtf' {
    assert "$xsrc/_chtf" is_file
}
@test 'more_src has _cilium' {
    assert "$xsrc/_cilium" is_file
}
@test 'more_src has _circleci' {
    assert "$xsrc/_circleci" is_file
}
@test 'more_src has _circleci-cli' {
    assert "$xsrc/_circleci-cli" is_file
}
@test 'more_src has _civo' {
    assert "$xsrc/_civo" is_file
}
@test 'more_src has _ckipper' {
    assert "$xsrc/_ckipper" is_file
}
@test 'more_src has _cksfv' {
    assert "$xsrc/_cksfv" is_file
}
@test 'more_src has _clabstop.sh' {
    assert "$xsrc/_clabstop.sh" is_file
}
@test 'more_src has _clair' {
    assert "$xsrc/_clair" is_file
}
@test 'more_src has _clangd-indexer' {
    assert "$xsrc/_clangd-indexer" is_file
}
@test 'more_src has _clarinet' {
    assert "$xsrc/_clarinet" is_file
}
@test 'more_src has _class-dump' {
    assert "$xsrc/_class-dump" is_file
}
@test 'more_src has _claude-mcp-manager' {
    assert "$xsrc/_claude-mcp-manager" is_file
}
@test 'more_src has _claudectx' {
    assert "$xsrc/_claudectx" is_file
}
@test 'more_src has _clean' {
    assert "$xsrc/_clean" is_file
}
@test 'more_src has _cleos' {
    assert "$xsrc/_cleos" is_file
}
@test 'more_src has _clerk' {
    assert "$xsrc/_clerk" is_file
}
@test 'more_src has _cliapp' {
    assert "$xsrc/_cliapp" is_file
}
@test 'more_src has _clickhouse-client' {
    assert "$xsrc/_clickhouse-client" is_file
}
@test 'more_src has _cliclick' {
    assert "$xsrc/_cliclick" is_file
}
@test 'more_src has _clifm' {
    assert "$xsrc/_clifm" is_file
}
@test 'more_src has _clinfo' {
    assert "$xsrc/_clinfo" is_file
}
@test 'more_src has _clion' {
    assert "$xsrc/_clion" is_file
}
@test 'more_src has _clipcatctl' {
    assert "$xsrc/_clipcatctl" is_file
}
@test 'more_src has _cloak' {
    assert "$xsrc/_cloak" is_file
}
@test 'more_src has _cloc' {
    assert "$xsrc/_cloc" is_file
}
@test 'more_src has _clonedigger' {
    assert "$xsrc/_clonedigger" is_file
}
@test 'more_src has _cloud_sql_proxy' {
    assert "$xsrc/_cloud_sql_proxy" is_file
}
@test 'more_src has _cloudflared' {
    assert "$xsrc/_cloudflared" is_file
}
@test 'more_src has _cloudquery' {
    assert "$xsrc/_cloudquery" is_file
}
@test 'more_src has _clouds' {
    assert "$xsrc/_clouds" is_file
}
@test 'more_src has _cmctl' {
    assert "$xsrc/_cmctl" is_file
}
@test 'more_src has _cmdshelf' {
    assert "$xsrc/_cmdshelf" is_file
}
@test 'more_src has _cmigemo' {
    assert "$xsrc/_cmigemo" is_file
}
@test 'more_src has _cmus' {
    assert "$xsrc/_cmus" is_file
}
@test 'more_src has _cmus-remote' {
    assert "$xsrc/_cmus-remote" is_file
}
@test 'more_src has _cntr' {
    assert "$xsrc/_cntr" is_file
}
@test 'more_src has _cobra-cli' {
    assert "$xsrc/_cobra-cli" is_file
}
@test 'more_src has _cockroach' {
    assert "$xsrc/_cockroach" is_file
}
@test 'more_src has _cocogitto' {
    assert "$xsrc/_cocogitto" is_file
}
@test 'more_src has _code-git' {
    assert "$xsrc/_code-git" is_file
}
@test 'more_src has _code-minimap' {
    assert "$xsrc/_code-minimap" is_file
}
@test 'more_src has _code-tunnel' {
    assert "$xsrc/_code-tunnel" is_file
}
@test 'more_src has _codebook-lsp' {
    assert "$xsrc/_codebook-lsp" is_file
}
@test 'more_src has _codeclimate' {
    assert "$xsrc/_codeclimate" is_file
}
@test 'more_src has _codelimit' {
    assert "$xsrc/_codelimit" is_file
}
@test 'more_src has _codemod' {
    assert "$xsrc/_codemod" is_file
}
@test 'more_src has _codeql' {
    assert "$xsrc/_codeql" is_file
}
@test 'more_src has _codespell' {
    assert "$xsrc/_codespell" is_file
}
@test 'more_src has _codex-acp' {
    assert "$xsrc/_codex-acp" is_file
}
@test 'more_src has _cog' {
    assert "$xsrc/_cog" is_file
}
@test 'more_src has _cointop' {
    assert "$xsrc/_cointop" is_file
}
@test 'more_src has _colima' {
    assert "$xsrc/_colima" is_file
}
@test 'more_src has _colix' {
    assert "$xsrc/_colix" is_file
}
@test 'more_src has _colmap' {
    assert "$xsrc/_colmap" is_file
}
@test 'more_src has _colorcoke' {
    assert "$xsrc/_colorcoke" is_file
}
@test 'more_src has _comby' {
    assert "$xsrc/_comby" is_file
}
@test 'more_src has _commitizen' {
    assert "$xsrc/_commitizen" is_file
}
@test 'more_src has _commitlint' {
    assert "$xsrc/_commitlint" is_file
}
@test 'more_src has _complete_shellgenius.zsh' {
    assert "$xsrc/_complete_shellgenius.zsh" is_file
}
@test 'more_src has _complete_vocabmaster.zsh' {
    assert "$xsrc/_complete_vocabmaster.zsh" is_file
}
@test 'more_src has _compstyle' {
    assert "$xsrc/_compstyle" is_file
}
@test 'more_src has _concurrently' {
    assert "$xsrc/_concurrently" is_file
}
@test 'more_src has _conductor' {
    assert "$xsrc/_conductor" is_file
}
@test 'more_src has _conform' {
    assert "$xsrc/_conform" is_file
}
@test 'more_src has _conftest' {
    assert "$xsrc/_conftest" is_file
}
@test 'more_src has _conga' {
    assert "$xsrc/_conga" is_file
}
@test 'more_src has _connect-distributed' {
    assert "$xsrc/_connect-distributed" is_file
}
@test 'more_src has _connect-mirror-maker' {
    assert "$xsrc/_connect-mirror-maker" is_file
}
@test 'more_src has _connect-plugin-path' {
    assert "$xsrc/_connect-plugin-path" is_file
}
@test 'more_src has _connect-standalone' {
    assert "$xsrc/_connect-standalone" is_file
}
@test 'more_src has _console' {
    assert "$xsrc/_console" is_file
}
@test 'more_src has _consul' {
    assert "$xsrc/_consul" is_file
}
@test 'more_src has _consul-template' {
    assert "$xsrc/_consul-template" is_file
}
@test 'more_src has _container-builder-local' {
    assert "$xsrc/_container-builder-local" is_file
}
@test 'more_src has _container-diff' {
    assert "$xsrc/_container-diff" is_file
}
@test 'more_src has _cook' {
    assert "$xsrc/_cook" is_file
}
@test 'more_src has _copier' {
    assert "$xsrc/_copier" is_file
}
@test 'more_src has _copilot' {
    assert "$xsrc/_copilot" is_file
}
@test 'more_src has _copy_from_container.sh' {
    assert "$xsrc/_copy_from_container.sh" is_file
}
@test 'more_src has _copyq' {
    assert "$xsrc/_copyq" is_file
}
@test 'more_src has _coredns' {
    assert "$xsrc/_coredns" is_file
}
@test 'more_src has _corepack' {
    assert "$xsrc/_corepack" is_file
}
@test 'more_src has _coretop' {
    assert "$xsrc/_coretop" is_file
}
@test 'more_src has _correct_filename' {
    assert "$xsrc/_correct_filename" is_file
}
@test 'more_src has _corteca' {
    assert "$xsrc/_corteca" is_file
}
@test 'more_src has _cosign' {
    assert "$xsrc/_cosign" is_file
}
@test 'more_src has _costpilot' {
    assert "$xsrc/_costpilot" is_file
}
@test 'more_src has _cosy' {
    assert "$xsrc/_cosy" is_file
}
@test 'more_src has _cot' {
    assert "$xsrc/_cot" is_file
}
@test 'more_src has _coverage' {
    assert "$xsrc/_coverage" is_file
}
@test 'more_src has _cpdt.zsh' {
    assert "$xsrc/_cpdt.zsh" is_file
}
@test 'more_src has _cppi' {
    assert "$xsrc/_cppi" is_file
}
@test 'more_src has _cpuctl' {
    assert "$xsrc/_cpuctl" is_file
}
@test 'more_src has _cpufetch' {
    assert "$xsrc/_cpufetch" is_file
}
@test 'more_src has _cpulimit' {
    assert "$xsrc/_cpulimit" is_file
}
@test 'more_src has _cql' {
    assert "$xsrc/_cql" is_file
}
@test 'more_src has _crane' {
    assert "$xsrc/_crane" is_file
}
@test 'more_src has _crashlog' {
    assert "$xsrc/_crashlog" is_file
}
@test 'more_src has _crates-tui' {
    assert "$xsrc/_crates-tui" is_file
}
@test 'more_src has _crc32' {
    assert "$xsrc/_crc32" is_file
}
@test 'more_src has _create-dmg' {
    assert "$xsrc/_create-dmg" is_file
}
@test 'more_src has _createml' {
    assert "$xsrc/_createml" is_file
}
@test 'more_src has _credo' {
    assert "$xsrc/_credo" is_file
}
@test 'more_src has _crf++' {
    assert "$xsrc/_crf++" is_file
}
@test 'more_src has _crfsuite' {
    assert "$xsrc/_crfsuite" is_file
}
@test 'more_src has _cri-tools' {
    assert "$xsrc/_cri-tools" is_file
}
@test 'more_src has _crip' {
    assert "$xsrc/_crip" is_file
}
@test 'more_src has _crm114' {
    assert "$xsrc/_crm114" is_file
}
@test 'more_src has _croc' {
    assert "$xsrc/_croc" is_file
}
@test 'more_src has _cronboard' {
    assert "$xsrc/_cronboard" is_file
}
@test 'more_src has _crossplane' {
    assert "$xsrc/_crossplane" is_file
}
@test 'more_src has _crosstool-ng' {
    assert "$xsrc/_crosstool-ng" is_file
}
@test 'more_src has _crowdin' {
    assert "$xsrc/_crowdin" is_file
}
@test 'more_src has _crunchy-cli' {
    assert "$xsrc/_crunchy-cli" is_file
}
@test 'more_src has _cryptol' {
    assert "$xsrc/_cryptol" is_file
}
@test 'more_src has _cryptominisat' {
    assert "$xsrc/_cryptominisat" is_file
}
@test 'more_src has _crytic-compile' {
    assert "$xsrc/_crytic-compile" is_file
}
@test 'more_src has _cscli' {
    assert "$xsrc/_cscli" is_file
}
@test 'more_src has _csmith' {
    assert "$xsrc/_csmith" is_file
}
@test 'more_src has _csrutil' {
    assert "$xsrc/_csrutil" is_file
}
@test 'more_src has _csshX' {
    assert "$xsrc/_csshX" is_file
}
@test 'more_src has _csvclean' {
    assert "$xsrc/_csvclean" is_file
}
@test 'more_src has _csvcut' {
    assert "$xsrc/_csvcut" is_file
}
@test 'more_src has _csvformat' {
    assert "$xsrc/_csvformat" is_file
}
@test 'more_src has _csvgrep' {
    assert "$xsrc/_csvgrep" is_file
}
@test 'more_src has _csview' {
    assert "$xsrc/_csview" is_file
}
@test 'more_src has _csvjoin' {
    assert "$xsrc/_csvjoin" is_file
}
@test 'more_src has _csvlens' {
    assert "$xsrc/_csvlens" is_file
}
@test 'more_src has _csvlook' {
    assert "$xsrc/_csvlook" is_file
}
@test 'more_src has _csvprintf' {
    assert "$xsrc/_csvprintf" is_file
}
@test 'more_src has _csvpy' {
    assert "$xsrc/_csvpy" is_file
}
@test 'more_src has _csvq' {
    assert "$xsrc/_csvq" is_file
}
@test 'more_src has _csvsort' {
    assert "$xsrc/_csvsort" is_file
}
@test 'more_src has _csvsql' {
    assert "$xsrc/_csvsql" is_file
}
@test 'more_src has _csvstack' {
    assert "$xsrc/_csvstack" is_file
}
@test 'more_src has _csvstat' {
    assert "$xsrc/_csvstat" is_file
}
@test 'more_src has _csvtk' {
    assert "$xsrc/_csvtk" is_file
}
@test 'more_src has _ctags-lsp' {
    assert "$xsrc/_ctags-lsp" is_file
}
@test 'more_src has _ctail' {
    assert "$xsrc/_ctail" is_file
}
@test 'more_src has _ctl' {
    assert "$xsrc/_ctl" is_file
}
@test 'more_src has _ctlptl' {
    assert "$xsrc/_ctlptl" is_file
}
@test 'more_src has _ctpv' {
    assert "$xsrc/_ctpv" is_file
}
@test 'more_src has _ctrld' {
    assert "$xsrc/_ctrld" is_file
}
@test 'more_src has _ctx7' {
    assert "$xsrc/_ctx7" is_file
}
@test 'more_src has _cubejs' {
    assert "$xsrc/_cubejs" is_file
}
@test 'more_src has _cucumber-cpp' {
    assert "$xsrc/_cucumber-cpp" is_file
}
@test 'more_src has _cue' {
    assert "$xsrc/_cue" is_file
}
@test 'more_src has _cuetools' {
    assert "$xsrc/_cuetools" is_file
}
@test 'more_src has _curlie' {
    assert "$xsrc/_curlie" is_file
}
@test 'more_src has _curseofwar' {
    assert "$xsrc/_curseofwar" is_file
}
@test 'more_src has _cursor-agent' {
    assert "$xsrc/_cursor-agent" is_file
}
@test 'more_src has _custom-install' {
    assert "$xsrc/_custom-install" is_file
}
@test 'more_src has _cutter' {
    assert "$xsrc/_cutter" is_file
}
@test 'more_src has _cvsconvert' {
    assert "$xsrc/_cvsconvert" is_file
}
@test 'more_src has _cvsutils' {
    assert "$xsrc/_cvsutils" is_file
}
@test 'more_src has _cvsync' {
    assert "$xsrc/_cvsync" is_file
}
@test 'more_src has _cw' {
    assert "$xsrc/_cw" is_file
}
@test 'more_src has _cwalk' {
    assert "$xsrc/_cwalk" is_file
}
@test 'more_src has _cwb-config' {
    assert "$xsrc/_cwb-config" is_file
}
@test 'more_src has _cxgo' {
    assert "$xsrc/_cxgo" is_file
}
@test 'more_src has _cxxtest' {
    assert "$xsrc/_cxxtest" is_file
}
@test 'more_src has _cyclonedx-gomod' {
    assert "$xsrc/_cyclonedx-gomod" is_file
}
@test 'more_src has _cyclonedx-python' {
    assert "$xsrc/_cyclonedx-python" is_file
}
@test 'more_src has _cycode' {
    assert "$xsrc/_cycode" is_file
}
@test 'more_src has _cyctl' {
    assert "$xsrc/_cyctl" is_file
}
@test 'more_src has _cyphernetes' {
    assert "$xsrc/_cyphernetes" is_file
}
@test 'more_src has _czkawka' {
    assert "$xsrc/_czkawka" is_file
}
@test 'more_src has _d2' {
    assert "$xsrc/_d2" is_file
}
@test 'more_src has _daemonize' {
    assert "$xsrc/_daemonize" is_file
}
@test 'more_src has _daemonlogger' {
    assert "$xsrc/_daemonlogger" is_file
}
@test 'more_src has _dagger' {
    assert "$xsrc/_dagger" is_file
}
@test 'more_src has _dagu' {
    assert "$xsrc/_dagu" is_file
}
@test 'more_src has _dalfox' {
    assert "$xsrc/_dalfox" is_file
}
@test 'more_src has _dancer2' {
    assert "$xsrc/_dancer2" is_file
}
@test 'more_src has _dante' {
    assert "$xsrc/_dante" is_file
}
@test 'more_src has _dapr' {
    assert "$xsrc/_dapr" is_file
}
@test 'more_src has _dark-mode' {
    assert "$xsrc/_dark-mode" is_file
}
@test 'more_src has _darktable' {
    assert "$xsrc/_darktable" is_file
}
@test 'more_src has _darwin-debug' {
    assert "$xsrc/_darwin-debug" is_file
}
@test 'more_src has _dasel' {
    assert "$xsrc/_dasel" is_file
}
@test 'more_src has _dash-mpd-cli' {
    assert "$xsrc/_dash-mpd-cli" is_file
}
@test 'more_src has _dashing' {
    assert "$xsrc/_dashing" is_file
}
@test 'more_src has _dasht' {
    assert "$xsrc/_dasht" is_file
}
@test 'more_src has _dasht_docsets' {
    assert "$xsrc/_dasht_docsets" is_file
}
@test 'more_src has _dasht_query_exec' {
    assert "$xsrc/_dasht_query_exec" is_file
}
@test 'more_src has _datalad' {
    assert "$xsrc/_datalad" is_file
}
@test 'more_src has _datasette' {
    assert "$xsrc/_datasette" is_file
}
@test 'more_src has _datree' {
    assert "$xsrc/_datree" is_file
}
@test 'more_src has _dbeaver-cli' {
    assert "$xsrc/_dbeaver-cli" is_file
}
@test 'more_src has _dbhash' {
    assert "$xsrc/_dbhash" is_file
}
@test 'more_src has _dbilogstrip' {
    assert "$xsrc/_dbilogstrip" is_file
}
@test 'more_src has _dbmate' {
    assert "$xsrc/_dbmate" is_file
}
@test 'more_src has _dbml-cli' {
    assert "$xsrc/_dbml-cli" is_file
}
@test 'more_src has _dbtoepub' {
    assert "$xsrc/_dbtoepub" is_file
}
@test 'more_src has _dcd-client' {
    assert "$xsrc/_dcd-client" is_file
}
@test 'more_src has _dcutil' {
    assert "$xsrc/_dcutil" is_file
}
@test 'more_src has _ddgr' {
    assert "$xsrc/_ddgr" is_file
}
@test 'more_src has _ddlctl' {
    assert "$xsrc/_ddlctl" is_file
}
@test 'more_src has _de-macro' {
    assert "$xsrc/_de-macro" is_file
}
@test 'more_src has _debian_rules' {
    assert "$xsrc/_debian_rules" is_file
}
@test 'more_src has _deheader' {
    assert "$xsrc/_deheader" is_file
}
@test 'more_src has _demucs' {
    assert "$xsrc/_demucs" is_file
}
@test 'more_src has _demumble' {
    assert "$xsrc/_demumble" is_file
}
@test 'more_src has _deno' {
    assert "$xsrc/_deno" is_file
}
@test 'more_src has _denominator' {
    assert "$xsrc/_denominator" is_file
}
@test 'more_src has _depcheck' {
    assert "$xsrc/_depcheck" is_file
}
@test 'more_src has _deplist' {
    assert "$xsrc/_deplist" is_file
}
@test 'more_src has _desed' {
    assert "$xsrc/_desed" is_file
}
@test 'more_src has _desktoppr' {
    assert "$xsrc/_desktoppr" is_file
}
@test 'more_src has _detach' {
    assert "$xsrc/_detach" is_file
}
@test 'more_src has _detect-secrets' {
    assert "$xsrc/_detect-secrets" is_file
}
@test 'more_src has _devbox' {
    assert "$xsrc/_devbox" is_file
}
@test 'more_src has _devcontainer' {
    assert "$xsrc/_devcontainer" is_file
}
@test 'more_src has _devenv' {
    assert "$xsrc/_devenv" is_file
}
@test 'more_src has _devicectl' {
    assert "$xsrc/_devicectl" is_file
}
@test 'more_src has _devin' {
    assert "$xsrc/_devin" is_file
}
@test 'more_src has _devpod' {
    assert "$xsrc/_devpod" is_file
}
@test 'more_src has _devspace' {
    assert "$xsrc/_devspace" is_file
}
@test 'more_src has _deweb' {
    assert "$xsrc/_deweb" is_file
}
@test 'more_src has _dexp' {
    assert "$xsrc/_dexp" is_file
}
@test 'more_src has _dfmt' {
    assert "$xsrc/_dfmt" is_file
}
@test 'more_src has _dhall' {
    assert "$xsrc/_dhall" is_file
}
@test 'more_src has _dhall-lsp-server' {
    assert "$xsrc/_dhall-lsp-server" is_file
}
@test 'more_src has _dhcpdump' {
    assert "$xsrc/_dhcpdump" is_file
}
@test 'more_src has _di' {
    assert "$xsrc/_di" is_file
}
@test 'more_src has _diesel' {
    assert "$xsrc/_diesel" is_file
}
@test 'more_src has _diff-pdf' {
    assert "$xsrc/_diff-pdf" is_file
}
@test 'more_src has _diff-so-fancy' {
    assert "$xsrc/_diff-so-fancy" is_file
}
@test 'more_src has _diffimg' {
    assert "$xsrc/_diffimg" is_file
}
@test 'more_src has _diffsitter' {
    assert "$xsrc/_diffsitter" is_file
}
@test 'more_src has _difftastic' {
    assert "$xsrc/_difftastic" is_file
}
@test 'more_src has _digdag' {
    assert "$xsrc/_digdag" is_file
}
@test 'more_src has _digikam' {
    assert "$xsrc/_digikam" is_file
}
@test 'more_src has _diraction' {
    assert "$xsrc/_diraction" is_file
}
@test 'more_src has _direnv' {
    assert "$xsrc/_direnv" is_file
}
@test 'more_src has _dirsearch' {
    assert "$xsrc/_dirsearch" is_file
}
@test 'more_src has _disko' {
    assert "$xsrc/_disko" is_file
}
@test 'more_src has _diskonaut' {
    assert "$xsrc/_diskonaut" is_file
}
@test 'more_src has _diskusage' {
    assert "$xsrc/_diskusage" is_file
}
@test 'more_src has _dispatcher' {
    assert "$xsrc/_dispatcher" is_file
}
@test 'more_src has _distcc' {
    assert "$xsrc/_distcc" is_file
}
@test 'more_src has _distro_info' {
    assert "$xsrc/_distro_info" is_file
}
@test 'more_src has _distrobox' {
    assert "$xsrc/_distrobox" is_file
}
@test 'more_src has _distrobox-assemble' {
    assert "$xsrc/_distrobox-assemble" is_file
}
@test 'more_src has _distrobox-ephemeral' {
    assert "$xsrc/_distrobox-ephemeral" is_file
}
@test 'more_src has _distrobox-generate-entry' {
    assert "$xsrc/_distrobox-generate-entry" is_file
}
@test 'more_src has _distrobox-host-exec' {
    assert "$xsrc/_distrobox-host-exec" is_file
}
@test 'more_src has _ditz' {
    assert "$xsrc/_ditz" is_file
}
@test 'more_src has _diun' {
    assert "$xsrc/_diun" is_file
}
@test 'more_src has _dive' {
    assert "$xsrc/_dive" is_file
}
@test 'more_src has _dlt' {
    assert "$xsrc/_dlt" is_file
}
@test 'more_src has _dndmake' {
    assert "$xsrc/_dndmake" is_file
}
@test 'more_src has _dnf5' {
    assert "$xsrc/_dnf5" is_file
}
@test 'more_src has _dnote' {
    assert "$xsrc/_dnote" is_file
}
@test 'more_src has _dns-sd' {
    assert "$xsrc/_dns-sd" is_file
}
@test 'more_src has _dnscontrol' {
    assert "$xsrc/_dnscontrol" is_file
}
@test 'more_src has _dnsgen' {
    assert "$xsrc/_dnsgen" is_file
}
@test 'more_src has _dnstwist' {
    assert "$xsrc/_dnstwist" is_file
}
@test 'more_src has _dnsx' {
    assert "$xsrc/_dnsx" is_file
}
@test 'more_src has _doc-comparator.py' {
    assert "$xsrc/_doc-comparator.py" is_file
}
@test 'more_src has _docker-app' {
    assert "$xsrc/_docker-app" is_file
}
@test 'more_src has _docker-compose-langserver' {
    assert "$xsrc/_docker-compose-langserver" is_file
}
@test 'more_src has _docker-container-volumes' {
    assert "$xsrc/_docker-container-volumes" is_file
}
@test 'more_src has _docker-credential-gcloud' {
    assert "$xsrc/_docker-credential-gcloud" is_file
}
@test 'more_src has _docker-credential-osxkeychain' {
    assert "$xsrc/_docker-credential-osxkeychain" is_file
}
@test 'more_src has _docker-machine-nfs' {
    assert "$xsrc/_docker-machine-nfs" is_file
}
@test 'more_src has _docker-shell' {
    assert "$xsrc/_docker-shell" is_file
}
@test 'more_src has _docker-slim' {
    assert "$xsrc/_docker-slim" is_file
}
@test 'more_src has _dockeye' {
    assert "$xsrc/_dockeye" is_file
}
@test 'more_src has _dockry' {
    assert "$xsrc/_dockry" is_file
}
@test 'more_src has _dockutil' {
    assert "$xsrc/_dockutil" is_file
}
@test 'more_src has _docmd' {
    assert "$xsrc/_docmd" is_file
}
@test 'more_src has _doctl' {
    assert "$xsrc/_doctl" is_file
}
@test 'more_src has _docuum' {
    assert "$xsrc/_docuum" is_file
}
@test 'more_src has _dog' {
    assert "$xsrc/_dog" is_file
}
@test 'more_src has _doggo' {
    assert "$xsrc/_doggo" is_file
}
@test 'more_src has _dogshell' {
    assert "$xsrc/_dogshell" is_file
}
@test 'more_src has _dokku' {
    assert "$xsrc/_dokku" is_file
}
@test 'more_src has _dokploy' {
    assert "$xsrc/_dokploy" is_file
}
@test 'more_src has _dolphin-emu' {
    assert "$xsrc/_dolphin-emu" is_file
}
@test 'more_src has _dolt' {
    assert "$xsrc/_dolt" is_file
}
@test 'more_src has _doppler' {
    assert "$xsrc/_doppler" is_file
}
@test 'more_src has _dosbox' {
    assert "$xsrc/_dosbox" is_file
}
@test 'more_src has _dotdrop.sh-completion.zsh' {
    assert "$xsrc/_dotdrop.sh-completion.zsh" is_file
}
@test 'more_src has _dotenv-vault' {
    assert "$xsrc/_dotenv-vault" is_file
}
@test 'more_src has _dotenvage' {
    assert "$xsrc/_dotenvage" is_file
}
@test 'more_src has _dotenvx' {
    assert "$xsrc/_dotenvx" is_file
}
@test 'more_src has _dotfiles_cli' {
    assert "$xsrc/_dotfiles_cli" is_file
}
@test 'more_src has _dotnet-install.sh' {
    assert "$xsrc/_dotnet-install.sh" is_file
}
@test 'more_src has _dots' {
    assert "$xsrc/_dots" is_file
}
@test 'more_src has _dotter' {
    assert "$xsrc/_dotter" is_file
}
@test 'more_src has _dprint' {
    assert "$xsrc/_dprint" is_file
}
@test 'more_src has _dr' {
    assert "$xsrc/_dr" is_file
}
@test 'more_src has _drafter' {
    assert "$xsrc/_drafter" is_file
}
@test 'more_src has _driftctl' {
    assert "$xsrc/_driftctl" is_file
}
@test 'more_src has _drizzle-kit' {
    assert "$xsrc/_drizzle-kit" is_file
}
@test 'more_src has _drone' {
    assert "$xsrc/_drone" is_file
}
@test 'more_src has _drush' {
    assert "$xsrc/_drush" is_file
}
@test 'more_src has _drutil' {
    assert "$xsrc/_drutil" is_file
}
@test 'more_src has _dry' {
    assert "$xsrc/_dry" is_file
}
@test 'more_src has _dscl' {
    assert "$xsrc/_dscl" is_file
}
@test 'more_src has _dsq' {
    assert "$xsrc/_dsq" is_file
}
@test 'more_src has _dssim' {
    assert "$xsrc/_dssim" is_file
}
@test 'more_src has _dstack' {
    assert "$xsrc/_dstack" is_file
}
@test 'more_src has _dsv' {
    assert "$xsrc/_dsv" is_file
}
@test 'more_src has _dt-cli' {
    assert "$xsrc/_dt-cli" is_file
}
@test 'more_src has _dtools' {
    assert "$xsrc/_dtools" is_file
}
@test 'more_src has _dtplite' {
    assert "$xsrc/_dtplite" is_file
}
@test 'more_src has _dua' {
    assert "$xsrc/_dua" is_file
}
@test 'more_src has _duc' {
    assert "$xsrc/_duc" is_file
}
@test 'more_src has _duca' {
    assert "$xsrc/_duca" is_file
}
@test 'more_src has _duckdb' {
    assert "$xsrc/_duckdb" is_file
}
@test 'more_src has _duf' {
    assert "$xsrc/_duf" is_file
}
@test 'more_src has _dufs' {
    assert "$xsrc/_dufs" is_file
}
@test 'more_src has _dug' {
    assert "$xsrc/_dug" is_file
}
@test 'more_src has _dumbpipe' {
    assert "$xsrc/_dumbpipe" is_file
}
@test 'more_src has _dunstctl' {
    assert "$xsrc/_dunstctl" is_file
}
@test 'more_src has _duotone' {
    assert "$xsrc/_duotone" is_file
}
@test 'more_src has _dupe-krill' {
    assert "$xsrc/_dupe-krill" is_file
}
@test 'more_src has _duplicacy' {
    assert "$xsrc/_duplicacy" is_file
}
@test 'more_src has _dura' {
    assert "$xsrc/_dura" is_file
}
@test 'more_src has _dusage' {
    assert "$xsrc/_dusage" is_file
}
@test 'more_src has _dut' {
    assert "$xsrc/_dut" is_file
}
@test 'more_src has _dutree' {
    assert "$xsrc/_dutree" is_file
}
@test 'more_src has _dvtm' {
    assert "$xsrc/_dvtm" is_file
}
@test 'more_src has _dyff' {
    assert "$xsrc/_dyff" is_file
}
@test 'more_src has _dynaconf' {
    assert "$xsrc/_dynaconf" is_file
}
@test 'more_src has _dynomite' {
    assert "$xsrc/_dynomite" is_file
}
@test 'more_src has _dzil' {
    assert "$xsrc/_dzil" is_file
}
@test 'more_src has _e' {
    assert "$xsrc/_e" is_file
}
@test 'more_src has _earlyoom' {
    assert "$xsrc/_earlyoom" is_file
}
@test 'more_src has _earthly' {
    assert "$xsrc/_earthly" is_file
}
@test 'more_src has _eask' {
    assert "$xsrc/_eask" is_file
}
@test 'more_src has _ebook-convert' {
    assert "$xsrc/_ebook-convert" is_file
}
@test 'more_src has _ebook-meta' {
    assert "$xsrc/_ebook-meta" is_file
}
@test 'more_src has _ec_probe.in' {
    assert "$xsrc/_ec_probe.in" is_file
}
@test 'more_src has _edactl' {
    assert "$xsrc/_edactl" is_file
}
@test 'more_src has _edgedb' {
    assert "$xsrc/_edgedb" is_file
}
@test 'more_src has _editres' {
    assert "$xsrc/_editres" is_file
}
@test 'more_src has _eget' {
    assert "$xsrc/_eget" is_file
}
@test 'more_src has _ekeyword' {
    assert "$xsrc/_ekeyword" is_file
}
@test 'more_src has _eksctl' {
    assert "$xsrc/_eksctl" is_file
}
@test 'more_src has _elan-init' {
    assert "$xsrc/_elan-init" is_file
}
@test 'more_src has _elf2uf2-rs' {
    assert "$xsrc/_elf2uf2-rs" is_file
}
@test 'more_src has _elles' {
    assert "$xsrc/_elles" is_file
}
@test 'more_src has _elm' {
    assert "$xsrc/_elm" is_file
}
@test 'more_src has _elm-new' {
    assert "$xsrc/_elm-new" is_file
}
@test 'more_src has _elvish' {
    assert "$xsrc/_elvish" is_file
}
@test 'more_src has _ember-cli' {
    assert "$xsrc/_ember-cli" is_file
}
@test 'more_src has _emcc' {
    assert "$xsrc/_emcc" is_file
}
@test 'more_src has _emlop' {
    assert "$xsrc/_emlop" is_file
}
@test 'more_src has _emmylua_ls' {
    assert "$xsrc/_emmylua_ls" is_file
}
@test 'more_src has _emojify' {
    assert "$xsrc/_emojify" is_file
}
@test 'more_src has _enc2xs' {
    assert "$xsrc/_enc2xs" is_file
}
@test 'more_src has _envchain' {
    assert "$xsrc/_envchain" is_file
}
@test 'more_src has _envio' {
    assert "$xsrc/_envio" is_file
}
@test 'more_src has _eolas-util' {
    assert "$xsrc/_eolas-util" is_file
}
@test 'more_src has _epoch2date' {
    assert "$xsrc/_epoch2date" is_file
}
@test 'more_src has _epochal' {
    assert "$xsrc/_epochal" is_file
}
@test 'more_src has _eps2eps' {
    assert "$xsrc/_eps2eps" is_file
}
@test 'more_src has _epy' {
    assert "$xsrc/_epy" is_file
}
@test 'more_src has _erd' {
    assert "$xsrc/_erd" is_file
}
@test 'more_src has _erdtree' {
    assert "$xsrc/_erdtree" is_file
}
@test 'more_src has _erg' {
    assert "$xsrc/_erg" is_file
}
@test 'more_src has _erlang' {
    assert "$xsrc/_erlang" is_file
}
@test 'more_src has _esbuild' {
    assert "$xsrc/_esbuild" is_file
}
@test 'more_src has _espanso' {
    assert "$xsrc/_espanso" is_file
}
@test 'more_src has _espflash' {
    assert "$xsrc/_espflash" is_file
}
@test 'more_src has _esphome' {
    assert "$xsrc/_esphome" is_file
}
@test 'more_src has _et' {
    assert "$xsrc/_et" is_file
}
@test 'more_src has _etckeeper' {
    assert "$xsrc/_etckeeper" is_file
}
@test 'more_src has _eternal-terminal' {
    assert "$xsrc/_eternal-terminal" is_file
}
@test 'more_src has _ets' {
    assert "$xsrc/_ets" is_file
}
@test 'more_src has _etu' {
    assert "$xsrc/_etu" is_file
}
@test 'more_src has _evans' {
    assert "$xsrc/_evans" is_file
}
@test 'more_src has _evremap' {
    assert "$xsrc/_evremap" is_file
}
@test 'more_src has _example' {
    assert "$xsrc/_example" is_file
}
@test 'more_src has _exceltex' {
    assert "$xsrc/_exceltex" is_file
}
@test 'more_src has _exercism' {
    assert "$xsrc/_exercism" is_file
}
@test 'more_src has _exo' {
    assert "$xsrc/_exo" is_file
}
@test 'more_src has _expect' {
    assert "$xsrc/_expect" is_file
}
@test 'more_src has _ezgdal' {
    assert "$xsrc/_ezgdal" is_file
}
@test 'more_src has _f-f-f-find.sh' {
    assert "$xsrc/_f-f-f-find.sh" is_file
}
@test 'more_src has _f2' {
    assert "$xsrc/_f2" is_file
}
@test 'more_src has _faas-cli' {
    assert "$xsrc/_faas-cli" is_file
}
@test 'more_src has _factorix.zsh' {
    assert "$xsrc/_factorix.zsh" is_file
}
@test 'more_src has _fail2ban-client' {
    assert "$xsrc/_fail2ban-client" is_file
}
@test 'more_src has _fakedata' {
    assert "$xsrc/_fakedata" is_file
}
@test 'more_src has _falco' {
    assert "$xsrc/_falco" is_file
}
@test 'more_src has _falkor' {
    assert "$xsrc/_falkor" is_file
}
@test 'more_src has _fast-theme' {
    assert "$xsrc/_fast-theme" is_file
}
@test 'more_src has _fastanime' {
    assert "$xsrc/_fastanime" is_file
}
@test 'more_src has _fastfetch' {
    assert "$xsrc/_fastfetch" is_file
}
@test 'more_src has _fastgron' {
    assert "$xsrc/_fastgron" is_file
}
@test 'more_src has _fastmod' {
    assert "$xsrc/_fastmod" is_file
}
@test 'more_src has _fatpack' {
    assert "$xsrc/_fatpack" is_file
}
@test 'more_src has _fava' {
    assert "$xsrc/_fava" is_file
}
@test 'more_src has _fbd' {
    assert "$xsrc/_fbd" is_file
}
@test 'more_src has _fblog' {
    assert "$xsrc/_fblog" is_file
}
@test 'more_src has _fclones' {
    assert "$xsrc/_fclones" is_file
}
@test 'more_src has _fcp' {
    assert "$xsrc/_fcp" is_file
}
@test 'more_src has _fence' {
    assert "$xsrc/_fence" is_file
}
@test 'more_src has _fend' {
    assert "$xsrc/_fend" is_file
}
@test 'more_src has _fennel' {
    assert "$xsrc/_fennel" is_file
}
@test 'more_src has _ferium' {
    assert "$xsrc/_ferium" is_file
}
@test 'more_src has _feroxbuster' {
    assert "$xsrc/_feroxbuster" is_file
}
@test 'more_src has _fez.zsh' {
    assert "$xsrc/_fez.zsh" is_file
}
@test 'more_src has _ff2mpv' {
    assert "$xsrc/_ff2mpv" is_file
}
@test 'more_src has _ffmpeg-normalize' {
    assert "$xsrc/_ffmpeg-normalize" is_file
}
@test 'more_src has _ffsend' {
    assert "$xsrc/_ffsend" is_file
}
@test 'more_src has _ffuf' {
    assert "$xsrc/_ffuf" is_file
}
@test 'more_src has _fgfs' {
    assert "$xsrc/_fgfs" is_file
}
@test 'more_src has _filemon' {
    assert "$xsrc/_filemon" is_file
}
@test 'more_src has _filite' {
    assert "$xsrc/_filite" is_file
}
@test 'more_src has _findomain' {
    assert "$xsrc/_findomain" is_file
}
@test 'more_src has _findrule' {
    assert "$xsrc/_findrule" is_file
}
@test 'more_src has _findup' {
    assert "$xsrc/_findup" is_file
}
@test 'more_src has _fio' {
    assert "$xsrc/_fio" is_file
}
@test 'more_src has _firebase' {
    assert "$xsrc/_firebase" is_file
}
@test 'more_src has _firecracker' {
    assert "$xsrc/_firecracker" is_file
}
@test 'more_src has _fisher' {
    assert "$xsrc/_fisher" is_file
}
@test 'more_src has _fjord' {
    assert "$xsrc/_fjord" is_file
}
@test 'more_src has _fk.zsh' {
    assert "$xsrc/_fk.zsh" is_file
}
@test 'more_src has _flamegraph' {
    assert "$xsrc/_flamegraph" is_file
}
@test 'more_src has _flamelens' {
    assert "$xsrc/_flamelens" is_file
}
@test 'more_src has _flameshot' {
    assert "$xsrc/_flameshot" is_file
}
@test 'more_src has _flatc' {
    assert "$xsrc/_flatc" is_file
}
@test 'more_src has _flexget' {
    assert "$xsrc/_flexget" is_file
}
@test 'more_src has _flipt' {
    assert "$xsrc/_flipt" is_file
}
@test 'more_src has _florestad' {
    assert "$xsrc/_florestad" is_file
}
@test 'more_src has _flux' {
    assert "$xsrc/_flux" is_file
}
@test 'more_src has _fluxctl' {
    assert "$xsrc/_fluxctl" is_file
}
@test 'more_src has _flyctl' {
    assert "$xsrc/_flyctl" is_file
}
@test 'more_src has _flyway' {
    assert "$xsrc/_flyway" is_file
}
@test 'more_src has _fnm' {
    assert "$xsrc/_fnm" is_file
}
@test 'more_src has _fnott' {
    assert "$xsrc/_fnott" is_file
}
@test 'more_src has _fnox' {
    assert "$xsrc/_fnox" is_file
}
@test 'more_src has _fonttools' {
    assert "$xsrc/_fonttools" is_file
}
@test 'more_src has _foot' {
    assert "$xsrc/_foot" is_file
}
@test 'more_src has _foreman' {
    assert "$xsrc/_foreman" is_file
}
@test 'more_src has _fork' {
    assert "$xsrc/_fork" is_file
}
@test 'more_src has _fortio' {
    assert "$xsrc/_fortio" is_file
}
@test 'more_src has _fossa' {
    assert "$xsrc/_fossa" is_file
}
@test 'more_src has _fossil' {
    assert "$xsrc/_fossil" is_file
}
@test 'more_src has _fpm' {
    assert "$xsrc/_fpm" is_file
}
@test 'more_src has _fpp' {
    assert "$xsrc/_fpp" is_file
}
@test 'more_src has _fq' {
    assert "$xsrc/_fq" is_file
}
@test 'more_src has _frankenphp' {
    assert "$xsrc/_frankenphp" is_file
}
@test 'more_src has _freckles' {
    assert "$xsrc/_freckles" is_file
}
@test 'more_src has _freelance' {
    assert "$xsrc/_freelance" is_file
}
@test 'more_src has _frontend' {
    assert "$xsrc/_frontend" is_file
}
@test 'more_src has _frum' {
    assert "$xsrc/_frum" is_file
}
@test 'more_src has _fselect' {
    assert "$xsrc/_fselect" is_file
}
@test 'more_src has _fuck' {
    assert "$xsrc/_fuck" is_file
}
@test 'more_src has _func' {
    assert "$xsrc/_func" is_file
}
@test 'more_src has _funchelp' {
    assert "$xsrc/_funchelp" is_file
}
@test 'more_src has _funzip' {
    assert "$xsrc/_funzip" is_file
}
@test 'more_src has _fuzzel' {
    assert "$xsrc/_fuzzel" is_file
}
@test 'more_src has _fvm' {
    assert "$xsrc/_fvm" is_file
}
@test 'more_src has _fx' {
    assert "$xsrc/_fx" is_file
}
@test 'more_src has _fzpac' {
    assert "$xsrc/_fzpac" is_file
}
@test 'more_src has _fzy' {
    assert "$xsrc/_fzy" is_file
}
@test 'more_src has _g-cpan' {
    assert "$xsrc/_g-cpan" is_file
}
@test 'more_src has _g.zsh' {
    assert "$xsrc/_g.zsh" is_file
}
@test 'more_src has _gallery-dl' {
    assert "$xsrc/_gallery-dl" is_file
}
@test 'more_src has _gammaray' {
    assert "$xsrc/_gammaray" is_file
}
@test 'more_src has _gardenctl' {
    assert "$xsrc/_gardenctl" is_file
}
@test 'more_src has _gat' {
    assert "$xsrc/_gat" is_file
}
@test 'more_src has _gateway-go' {
    assert "$xsrc/_gateway-go" is_file
}
@test 'more_src has _gatsby' {
    assert "$xsrc/_gatsby" is_file
}
@test 'more_src has _gau' {
    assert "$xsrc/_gau" is_file
}
@test 'more_src has _gb' {
    assert "$xsrc/_gb" is_file
}
@test 'more_src has _gbox' {
    assert "$xsrc/_gbox" is_file
}
@test 'more_src has _gcc-config' {
    assert "$xsrc/_gcc-config" is_file
}
@test 'more_src has _gclone' {
    assert "$xsrc/_gclone" is_file
}
@test 'more_src has _gcloud-crc32c' {
    assert "$xsrc/_gcloud-crc32c" is_file
}
@test 'more_src has _gcsfuse' {
    assert "$xsrc/_gcsfuse" is_file
}
@test 'more_src has _gdbgui' {
    assert "$xsrc/_gdbgui" is_file
}
@test 'more_src has _gebug' {
    assert "$xsrc/_gebug" is_file
}
@test 'more_src has _gec' {
    assert "$xsrc/_gec" is_file
}
@test 'more_src has _geeknote' {
    assert "$xsrc/_geeknote" is_file
}
@test 'more_src has _genact' {
    assert "$xsrc/_genact" is_file
}
@test 'more_src has _generator_spec' {
    assert "$xsrc/_generator_spec" is_file
}
@test 'more_src has _genlop' {
    assert "$xsrc/_genlop" is_file
}
@test 'more_src has _gerbil' {
    assert "$xsrc/_gerbil" is_file
}
@test 'more_src has _get-repo' {
    assert "$xsrc/_get-repo" is_file
}
@test 'more_src has _getraw' {
    assert "$xsrc/_getraw" is_file
}
@test 'more_src has _gf' {
    assert "$xsrc/_gf" is_file
}
@test 'more_src has _gh-copilot' {
    assert "$xsrc/_gh-copilot" is_file
}
@test 'more_src has _gh-dash' {
    assert "$xsrc/_gh-dash" is_file
}
@test 'more_src has _gh-todo' {
    assert "$xsrc/_gh-todo" is_file
}
@test 'more_src has _ghb' {
    assert "$xsrc/_ghb" is_file
}
@test 'more_src has _ghcup' {
    assert "$xsrc/_ghcup" is_file
}
@test 'more_src has _ghorg' {
    assert "$xsrc/_ghorg" is_file
}
@test 'more_src has _ghostty' {
    assert "$xsrc/_ghostty" is_file
}
@test 'more_src has _ghq' {
    assert "$xsrc/_ghq" is_file
}
@test 'more_src has _git-absorb' {
    assert "$xsrc/_git-absorb" is_file
}
@test 'more_src has _git-branchless' {
    assert "$xsrc/_git-branchless" is_file
}
@test 'more_src has _git-cliff' {
    assert "$xsrc/_git-cliff" is_file
}
@test 'more_src has _git-credential-gcloud' {
    assert "$xsrc/_git-credential-gcloud" is_file
}
@test 'more_src has _git-crypt' {
    assert "$xsrc/_git-crypt" is_file
}
@test 'more_src has _git-fame' {
    assert "$xsrc/_git-fame" is_file
}
@test 'more_src has _git-filter-repo' {
    assert "$xsrc/_git-filter-repo" is_file
}
@test 'more_src has _git-fuzzy' {
    assert "$xsrc/_git-fuzzy" is_file
}
@test 'more_src has _git-gh' {
    assert "$xsrc/_git-gh" is_file
}
@test 'more_src has _git-gone' {
    assert "$xsrc/_git-gone" is_file
}
@test 'more_src has _git-grab' {
    assert "$xsrc/_git-grab" is_file
}
@test 'more_src has _git-hub-browse' {
    assert "$xsrc/_git-hub-browse" is_file
}
@test 'more_src has _git-hub-shorten-url' {
    assert "$xsrc/_git-hub-shorten-url" is_file
}
@test 'more_src has _git-info' {
    assert "$xsrc/_git-info" is_file
}
@test 'more_src has _git-issue' {
    assert "$xsrc/_git-issue" is_file
}
@test 'more_src has _git-journal' {
    assert "$xsrc/_git-journal" is_file
}
@test 'more_src has _git-lfs' {
    assert "$xsrc/_git-lfs" is_file
}
@test 'more_src has _git-link' {
    assert "$xsrc/_git-link" is_file
}
@test 'more_src has _git-machete' {
    assert "$xsrc/_git-machete" is_file
}
@test 'more_src has _git-modified-branches.sh' {
    assert "$xsrc/_git-modified-branches.sh" is_file
}
@test 'more_src has _git-open' {
    assert "$xsrc/_git-open" is_file
}
@test 'more_src has _git-rec' {
    assert "$xsrc/_git-rec" is_file
}
@test 'more_src has _git-recent' {
    assert "$xsrc/_git-recent" is_file
}
@test 'more_src has _git-secret' {
    assert "$xsrc/_git-secret" is_file
}
@test 'more_src has _git-sizer' {
    assert "$xsrc/_git-sizer" is_file
}
@test 'more_src has _git-standup' {
    assert "$xsrc/_git-standup" is_file
}
@test 'more_src has _git-stats' {
    assert "$xsrc/_git-stats" is_file
}
@test 'more_src has _git-submodule-move' {
    assert "$xsrc/_git-submodule-move" is_file
}
@test 'more_src has _git-submodule-remove' {
    assert "$xsrc/_git-submodule-remove" is_file
}
@test 'more_src has _git-town' {
    assert "$xsrc/_git-town" is_file
}
@test 'more_src has _git-trim' {
    assert "$xsrc/_git-trim" is_file
}
@test 'more_src has _git-who' {
    assert "$xsrc/_git-who" is_file
}
@test 'more_src has _git-wt-feature-branch' {
    assert "$xsrc/_git-wt-feature-branch" is_file
}
@test 'more_src has _git-wt-review' {
    assert "$xsrc/_git-wt-review" is_file
}
@test 'more_src has _gitbatch' {
    assert "$xsrc/_gitbatch" is_file
}
@test 'more_src has _gitbcheckout' {
    assert "$xsrc/_gitbcheckout" is_file
}
@test 'more_src has _gitea' {
    assert "$xsrc/_gitea" is_file
}
@test 'more_src has _gitlab' {
    assert "$xsrc/_gitlab" is_file
}
@test 'more_src has _gitlab-runner' {
    assert "$xsrc/_gitlab-runner" is_file
}
@test 'more_src has _gitleaks' {
    assert "$xsrc/_gitleaks" is_file
}
@test 'more_src has _gitlint' {
    assert "$xsrc/_gitlint" is_file
}
@test 'more_src has _gitmoji' {
    assert "$xsrc/_gitmoji" is_file
}
@test 'more_src has _gitto' {
    assert "$xsrc/_gitto" is_file
}
@test 'more_src has _gitu' {
    assert "$xsrc/_gitu" is_file
}
@test 'more_src has _gitui' {
    assert "$xsrc/_gitui" is_file
}
@test 'more_src has _gitwatch' {
    assert "$xsrc/_gitwatch" is_file
}
@test 'more_src has _gix' {
    assert "$xsrc/_gix" is_file
}
@test 'more_src has _gke-gcloud-auth-plugin' {
    assert "$xsrc/_gke-gcloud-auth-plugin" is_file
}
@test 'more_src has _glab' {
    assert "$xsrc/_glab" is_file
}
@test 'more_src has _glf' {
    assert "$xsrc/_glf" is_file
}
@test 'more_src has _glide' {
    assert "$xsrc/_glide" is_file
}
@test 'more_src has _glooctl' {
    assert "$xsrc/_glooctl" is_file
}
@test 'more_src has _glow' {
    assert "$xsrc/_glow" is_file
}
@test 'more_src has _go' {
    assert "$xsrc/_go" is_file
}
@test 'more_src has _go-ai-cli' {
    assert "$xsrc/_go-ai-cli" is_file
}
@test 'more_src has _go-blueprint' {
    assert "$xsrc/_go-blueprint" is_file
}
@test 'more_src has _go-callvis' {
    assert "$xsrc/_go-callvis" is_file
}
@test 'more_src has _go-jsonnet' {
    assert "$xsrc/_go-jsonnet" is_file
}
@test 'more_src has _go-langserver' {
    assert "$xsrc/_go-langserver" is_file
}
@test 'more_src has _go-librespot' {
    assert "$xsrc/_go-librespot" is_file
}
@test 'more_src has _go-musicfox' {
    assert "$xsrc/_go-musicfox" is_file
}
@test 'more_src has _go-swagger' {
    assert "$xsrc/_go-swagger" is_file
}
@test 'more_src has _go-task' {
    assert "$xsrc/_go-task" is_file
}
@test 'more_src has _go-torch' {
    assert "$xsrc/_go-torch" is_file
}
@test 'more_src has _go_windapsearch' {
    assert "$xsrc/_go_windapsearch" is_file
}
@test 'more_src has _goaccess' {
    assert "$xsrc/_goaccess" is_file
}
@test 'more_src has _goapp' {
    assert "$xsrc/_goapp" is_file
}
@test 'more_src has _goawk' {
    assert "$xsrc/_goawk" is_file
}
@test 'more_src has _gocc' {
    assert "$xsrc/_gocc" is_file
}
@test 'more_src has _gocode' {
    assert "$xsrc/_gocode" is_file
}
@test 'more_src has _goconfig' {
    assert "$xsrc/_goconfig" is_file
}
@test 'more_src has _gocritic' {
    assert "$xsrc/_gocritic" is_file
}
@test 'more_src has _godep' {
    assert "$xsrc/_godep" is_file
}
@test 'more_src has _godot' {
    assert "$xsrc/_godot" is_file
}
@test 'more_src has _goenv' {
    assert "$xsrc/_goenv" is_file
}
@test 'more_src has _gogrep' {
    assert "$xsrc/_gogrep" is_file
}
@test 'more_src has _gojq' {
    assert "$xsrc/_gojq" is_file
}
@test 'more_src has _gojson' {
    assert "$xsrc/_gojson" is_file
}
@test 'more_src has _golang' {
    assert "$xsrc/_golang" is_file
}
@test 'more_src has _golangci-lint' {
    assert "$xsrc/_golangci-lint" is_file
}
@test 'more_src has _golines' {
    assert "$xsrc/_golines" is_file
}
@test 'more_src has _golint' {
    assert "$xsrc/_golint" is_file
}
@test 'more_src has _gometalinter' {
    assert "$xsrc/_gometalinter" is_file
}
@test 'more_src has _gonzo' {
    assert "$xsrc/_gonzo" is_file
}
@test 'more_src has _google' {
    assert "$xsrc/_google" is_file
}
@test 'more_src has _googler' {
    assert "$xsrc/_googler" is_file
}
@test 'more_src has _goose' {
    assert "$xsrc/_goose" is_file
}
@test 'more_src has _gopackages' {
    assert "$xsrc/_gopackages" is_file
}
@test 'more_src has _gopass' {
    assert "$xsrc/_gopass" is_file
}
@test 'more_src has _gopassgen' {
    assert "$xsrc/_gopassgen" is_file
}
@test 'more_src has _gopls' {
    assert "$xsrc/_gopls" is_file
}
@test 'more_src has _goreleaser' {
    assert "$xsrc/_goreleaser" is_file
}
@test 'more_src has _goreman' {
    assert "$xsrc/_goreman" is_file
}
@test 'more_src has _gorename' {
    assert "$xsrc/_gorename" is_file
}
@test 'more_src has _gosec' {
    assert "$xsrc/_gosec" is_file
}
@test 'more_src has _goss' {
    assert "$xsrc/_goss" is_file
}
@test 'more_src has _gost' {
    assert "$xsrc/_gost" is_file
}
@test 'more_src has _gosumcheck' {
    assert "$xsrc/_gosumcheck" is_file
}
@test 'more_src has _gotests' {
    assert "$xsrc/_gotests" is_file
}
@test 'more_src has _gotestsum' {
    assert "$xsrc/_gotestsum" is_file
}
@test 'more_src has _goto' {
    assert "$xsrc/_goto" is_file
}
@test 'more_src has _gotty' {
    assert "$xsrc/_gotty" is_file
}
@test 'more_src has _gource' {
    assert "$xsrc/_gource" is_file
}
@test 'more_src has _govulncheck' {
    assert "$xsrc/_govulncheck" is_file
}
@test 'more_src has _goweight' {
    assert "$xsrc/_goweight" is_file
}
@test 'more_src has _goyacc' {
    assert "$xsrc/_goyacc" is_file
}
@test 'more_src has _gpt' {
    assert "$xsrc/_gpt" is_file
}
@test 'more_src has _gpt-engineer' {
    assert "$xsrc/_gpt-engineer" is_file
}
@test 'more_src has _gpt-pilot' {
    assert "$xsrc/_gpt-pilot" is_file
}
@test 'more_src has _grafana-cli' {
    assert "$xsrc/_grafana-cli" is_file
}
@test 'more_src has _granian' {
    assert "$xsrc/_granian" is_file
}
@test 'more_src has _granted' {
    assert "$xsrc/_granted" is_file
}
@test 'more_src has _grcat' {
    assert "$xsrc/_grcat" is_file
}
@test 'more_src has _grex' {
    assert "$xsrc/_grex" is_file
}
@test 'more_src has _grimaur.zsh' {
    assert "$xsrc/_grimaur.zsh" is_file
}
@test 'more_src has _grin' {
    assert "$xsrc/_grin" is_file
}
@test 'more_src has _grind' {
    assert "$xsrc/_grind" is_file
}
@test 'more_src has _grml-debootstrap' {
    assert "$xsrc/_grml-debootstrap" is_file
}
@test 'more_src has _grml-wallpaper' {
    assert "$xsrc/_grml-wallpaper" is_file
}
@test 'more_src has _gron' {
    assert "$xsrc/_gron" is_file
}
@test 'more_src has _groonga-query-log-analyzer' {
    assert "$xsrc/_groonga-query-log-analyzer" is_file
}
@test 'more_src has _groonga-suggest-httpd' {
    assert "$xsrc/_groonga-suggest-httpd" is_file
}
@test 'more_src has _groonga-suggest-learner' {
    assert "$xsrc/_groonga-suggest-learner" is_file
}
@test 'more_src has _grpc_cli' {
    assert "$xsrc/_grpc_cli" is_file
}
@test 'more_src has _grpcui' {
    assert "$xsrc/_grpcui" is_file
}
@test 'more_src has _grpcurl' {
    assert "$xsrc/_grpcurl" is_file
}
@test 'more_src has _grr' {
    assert "$xsrc/_grr" is_file
}
@test 'more_src has _gruyere' {
    assert "$xsrc/_gruyere" is_file
}
@test 'more_src has _grype' {
    assert "$xsrc/_grype" is_file
}
@test 'more_src has _gtop' {
    assert "$xsrc/_gtop" is_file
}
@test 'more_src has _guild' {
    assert "$xsrc/_guild" is_file
}
@test 'more_src has _guix' {
    assert "$xsrc/_guix" is_file
}
@test 'more_src has _guru' {
    assert "$xsrc/_guru" is_file
}
@test 'more_src has _gut' {
    assert "$xsrc/_gut" is_file
}
@test 'more_src has _gvt' {
    assert "$xsrc/_gvt" is_file
}
@test 'more_src has _gwin' {
    assert "$xsrc/_gwin" is_file
}
@test 'more_src has _gwt' {
    assert "$xsrc/_gwt" is_file
}
@test 'more_src has _hadolint' {
    assert "$xsrc/_hadolint" is_file
}
@test 'more_src has _hako' {
    assert "$xsrc/_hako" is_file
}
@test 'more_src has _hakrawler' {
    assert "$xsrc/_hakrawler" is_file
}
@test 'more_src has _haku' {
    assert "$xsrc/_haku" is_file
}
@test 'more_src has _halloy' {
    assert "$xsrc/_halloy" is_file
}
@test 'more_src has _halmos' {
    assert "$xsrc/_halmos" is_file
}
@test 'more_src has _halp' {
    assert "$xsrc/_halp" is_file
}
@test 'more_src has _handlr' {
    assert "$xsrc/_handlr" is_file
}
@test 'more_src has _harlequin' {
    assert "$xsrc/_harlequin" is_file
}
@test 'more_src has _harper' {
    assert "$xsrc/_harper" is_file
}
@test 'more_src has _harsh' {
    assert "$xsrc/_harsh" is_file
}
@test 'more_src has _hatch' {
    assert "$xsrc/_hatch" is_file
}
@test 'more_src has _haxe' {
    assert "$xsrc/_haxe" is_file
}
@test 'more_src has _hck' {
    assert "$xsrc/_hck" is_file
}
@test 'more_src has _hcl2json' {
    assert "$xsrc/_hcl2json" is_file
}
@test 'more_src has _hcloud' {
    assert "$xsrc/_hcloud" is_file
}
@test 'more_src has _head' {
    assert "$xsrc/_head" is_file
}
@test 'more_src has _headscale' {
    assert "$xsrc/_headscale" is_file
}
@test 'more_src has _heaptrack' {
    assert "$xsrc/_heaptrack" is_file
}
@test 'more_src has _helix' {
    assert "$xsrc/_helix" is_file
}
@test 'more_src has _hellomate' {
    assert "$xsrc/_hellomate" is_file
}
@test 'more_src has _helmfile' {
    assert "$xsrc/_helmfile" is_file
}
@test 'more_src has _helmsman' {
    assert "$xsrc/_helmsman" is_file
}
@test 'more_src has _hermit' {
    assert "$xsrc/_hermit" is_file
}
@test 'more_src has _heroku' {
    assert "$xsrc/_heroku" is_file
}
@test 'more_src has _hey' {
    assert "$xsrc/_hey" is_file
}
@test 'more_src has _hidutil' {
    assert "$xsrc/_hidutil" is_file
}
@test 'more_src has _hijack' {
    assert "$xsrc/_hijack" is_file
}
@test 'more_src has _himalaya' {
    assert "$xsrc/_himalaya" is_file
}
@test 'more_src has _hiracli' {
    assert "$xsrc/_hiracli" is_file
}
@test 'more_src has _hivemind' {
    assert "$xsrc/_hivemind" is_file
}
@test 'more_src has _hk' {
    assert "$xsrc/_hk" is_file
}
@test 'more_src has _hoard' {
    assert "$xsrc/_hoard" is_file
}
@test 'more_src has _hoaxshell' {
    assert "$xsrc/_hoaxshell" is_file
}
@test 'more_src has _holo-build' {
    assert "$xsrc/_holo-build" is_file
}
@test 'more_src has _homelabctl' {
    assert "$xsrc/_homelabctl" is_file
}
@test 'more_src has _homemanager' {
    assert "$xsrc/_homemanager" is_file
}
@test 'more_src has _homestead' {
    assert "$xsrc/_homestead" is_file
}
@test 'more_src has _honcho' {
    assert "$xsrc/_honcho" is_file
}
@test 'more_src has _hostctl' {
    assert "$xsrc/_hostctl" is_file
}
@test 'more_src has _hostess' {
    assert "$xsrc/_hostess" is_file
}
@test 'more_src has _hostinfo' {
    assert "$xsrc/_hostinfo" is_file
}
@test 'more_src has _htmlq' {
    assert "$xsrc/_htmlq" is_file
}
@test 'more_src has _httm' {
    assert "$xsrc/_httm" is_file
}
@test 'more_src has _http-server' {
    assert "$xsrc/_http-server" is_file
}
@test 'more_src has _httpdirfs' {
    assert "$xsrc/_httpdirfs" is_file
}
@test 'more_src has _httping' {
    assert "$xsrc/_httping" is_file
}
@test 'more_src has _httpstat' {
    assert "$xsrc/_httpstat" is_file
}
@test 'more_src has _hubble' {
    assert "$xsrc/_hubble" is_file
}
@test 'more_src has _hugo' {
    assert "$xsrc/_hugo" is_file
}
@test 'more_src has _humanize' {
    assert "$xsrc/_humanize" is_file
}
@test 'more_src has _huniq' {
    assert "$xsrc/_huniq" is_file
}
@test 'more_src has _hurl' {
    assert "$xsrc/_hurl" is_file
}
@test 'more_src has _hwatch' {
    assert "$xsrc/_hwatch" is_file
}
@test 'more_src has _hx' {
    assert "$xsrc/_hx" is_file
}
@test 'more_src has _hyde-shell' {
    assert "$xsrc/_hyde-shell" is_file
}
@test 'more_src has _hyperdu' {
    assert "$xsrc/_hyperdu" is_file
}
@test 'more_src has _hyperglass' {
    assert "$xsrc/_hyperglass" is_file
}
@test 'more_src has _hypnotoad' {
    assert "$xsrc/_hypnotoad" is_file
}
@test 'more_src has _hz' {
    assert "$xsrc/_hz" is_file
}
@test 'more_src has _i2pd' {
    assert "$xsrc/_i2pd" is_file
}
@test 'more_src has _iCoreMgr' {
    assert "$xsrc/_iCoreMgr" is_file
}
@test 'more_src has _iamb' {
    assert "$xsrc/_iamb" is_file
}
@test 'more_src has _ibazel' {
    assert "$xsrc/_ibazel" is_file
}
@test 'more_src has _ical' {
    assert "$xsrc/_ical" is_file
}
@test 'more_src has _icarus' {
    assert "$xsrc/_icarus" is_file
}
@test 'more_src has _icdiff' {
    assert "$xsrc/_icdiff" is_file
}
@test 'more_src has _idea' {
    assert "$xsrc/_idea" is_file
}
@test 'more_src has _idris2' {
    assert "$xsrc/_idris2" is_file
}
@test 'more_src has _idx' {
    assert "$xsrc/_idx" is_file
}
@test 'more_src has _ignore.zsh' {
    assert "$xsrc/_ignore.zsh" is_file
}
@test 'more_src has _ijq' {
    assert "$xsrc/_ijq" is_file
}
@test 'more_src has _imessage' {
    assert "$xsrc/_imessage" is_file
}
@test 'more_src has _img2pdf' {
    assert "$xsrc/_img2pdf" is_file
}
@test 'more_src has _imgcat' {
    assert "$xsrc/_imgcat" is_file
}
@test 'more_src has _imgp' {
    assert "$xsrc/_imgp" is_file
}
@test 'more_src has _impala' {
    assert "$xsrc/_impala" is_file
}
@test 'more_src has _imv' {
    assert "$xsrc/_imv" is_file
}
@test 'more_src has _in2csv' {
    assert "$xsrc/_in2csv" is_file
}
@test 'more_src has _in3.sh' {
    assert "$xsrc/_in3.sh" is_file
}
@test 'more_src has _incus' {
    assert "$xsrc/_incus" is_file
}
@test 'more_src has _incusbox' {
    assert "$xsrc/_incusbox" is_file
}
@test 'more_src has _infisical' {
    assert "$xsrc/_infisical" is_file
}
@test 'more_src has _influx' {
    assert "$xsrc/_influx" is_file
}
@test 'more_src has _influxd' {
    assert "$xsrc/_influxd" is_file
}
@test 'more_src has _infracost' {
    assert "$xsrc/_infracost" is_file
}
@test 'more_src has _infratoolbox' {
    assert "$xsrc/_infratoolbox" is_file
}
@test 'more_src has _inlyne' {
    assert "$xsrc/_inlyne" is_file
}
@test 'more_src has _innernet' {
    assert "$xsrc/_innernet" is_file
}
@test 'more_src has _inotifywait' {
    assert "$xsrc/_inotifywait" is_file
}
@test 'more_src has _inotifywatch' {
    assert "$xsrc/_inotifywatch" is_file
}
@test 'more_src has _inso' {
    assert "$xsrc/_inso" is_file
}
@test 'more_src has _instancer' {
    assert "$xsrc/_instancer" is_file
}
@test 'more_src has _instmodsh' {
    assert "$xsrc/_instmodsh" is_file
}
@test 'more_src has _interactsh-client' {
    assert "$xsrc/_interactsh-client" is_file
}
@test 'more_src has _invoice' {
    assert "$xsrc/_invoice" is_file
}
@test 'more_src has _ioctl' {
    assert "$xsrc/_ioctl" is_file
}
@test 'more_src has _ion' {
    assert "$xsrc/_ion" is_file
}
@test 'more_src has _ioping' {
    assert "$xsrc/_ioping" is_file
}
@test 'more_src has _ipconfig' {
    assert "$xsrc/_ipconfig" is_file
}
@test 'more_src has _iprofiler' {
    assert "$xsrc/_iprofiler" is_file
}
@test 'more_src has _ipsw' {
    assert "$xsrc/_ipsw" is_file
}
@test 'more_src has _ipvsadm' {
    assert "$xsrc/_ipvsadm" is_file
}
@test 'more_src has _iredis' {
    assert "$xsrc/_iredis" is_file
}
@test 'more_src has _iris' {
    assert "$xsrc/_iris" is_file
}
@test 'more_src has _issw' {
    assert "$xsrc/_issw" is_file
}
@test 'more_src has _istioctl' {
    assert "$xsrc/_istioctl" is_file
}
@test 'more_src has _iwt' {
    assert "$xsrc/_iwt" is_file
}
@test 'more_src has _jaeger' {
    assert "$xsrc/_jaeger" is_file
}
@test 'more_src has _jailing' {
    assert "$xsrc/_jailing" is_file
}
@test 'more_src has _jamf' {
    assert "$xsrc/_jamf" is_file
}
@test 'more_src has _janet' {
    assert "$xsrc/_janet" is_file
}
@test 'more_src has _jaq' {
    assert "$xsrc/_jaq" is_file
}
@test 'more_src has _jc' {
    assert "$xsrc/_jc" is_file
}
@test 'more_src has _jd' {
    assert "$xsrc/_jd" is_file
}
@test 'more_src has _jdnssec-dstool' {
    assert "$xsrc/_jdnssec-dstool" is_file
}
@test 'more_src has _jdupes' {
    assert "$xsrc/_jdupes" is_file
}
@test 'more_src has _jenv' {
    assert "$xsrc/_jenv" is_file
}
@test 'more_src has _jf' {
    assert "$xsrc/_jf" is_file
}
@test 'more_src has _jfr' {
    assert "$xsrc/_jfr" is_file
}
@test 'more_src has _jfrog' {
    assert "$xsrc/_jfrog" is_file
}
@test 'more_src has _jhsdb' {
    assert "$xsrc/_jhsdb" is_file
}
@test 'more_src has _jid' {
    assert "$xsrc/_jid" is_file
}
@test 'more_src has _jira' {
    assert "$xsrc/_jira" is_file
}
@test 'more_src has _jira-cli' {
    assert "$xsrc/_jira-cli" is_file
}
@test 'more_src has _jj' {
    assert "$xsrc/_jj" is_file
}
@test 'more_src has _jj-fzf' {
    assert "$xsrc/_jj-fzf" is_file
}
@test 'more_src has _jless' {
    assert "$xsrc/_jless" is_file
}
@test 'more_src has _jlpm' {
    assert "$xsrc/_jlpm" is_file
}
@test 'more_src has _jnativescan' {
    assert "$xsrc/_jnativescan" is_file
}
@test 'more_src has _jnv' {
    assert "$xsrc/_jnv" is_file
}
@test 'more_src has _jo' {
    assert "$xsrc/_jo" is_file
}
@test 'more_src has _joker' {
    assert "$xsrc/_joker" is_file
}
@test 'more_src has _joshuto' {
    assert "$xsrc/_joshuto" is_file
}
@test 'more_src has _jp2a' {
    assert "$xsrc/_jp2a" is_file
}
@test 'more_src has _jpegoptim' {
    assert "$xsrc/_jpegoptim" is_file
}
@test 'more_src has _jpm' {
    assert "$xsrc/_jpm" is_file
}
@test 'more_src has _jql' {
    assert "$xsrc/_jql" is_file
}
@test 'more_src has _jqp' {
    assert "$xsrc/_jqp" is_file
}
@test 'more_src has _jsforce' {
    assert "$xsrc/_jsforce" is_file
}
@test 'more_src has _jsforce-deploy' {
    assert "$xsrc/_jsforce-deploy" is_file
}
@test 'more_src has _jsforce-retrieve' {
    assert "$xsrc/_jsforce-retrieve" is_file
}
@test 'more_src has _json2parquet' {
    assert "$xsrc/_json2parquet" is_file
}
@test 'more_src has _json2struct' {
    assert "$xsrc/_json2struct" is_file
}
@test 'more_src has _jsonlint' {
    assert "$xsrc/_jsonlint" is_file
}
@test 'more_src has _jsonnet' {
    assert "$xsrc/_jsonnet" is_file
}
@test 'more_src has _jtbl' {
    assert "$xsrc/_jtbl" is_file
}
@test 'more_src has _jtool' {
    assert "$xsrc/_jtool" is_file
}
@test 'more_src has _jtool2' {
    assert "$xsrc/_jtool2" is_file
}
@test 'more_src has _jubaconv' {
    assert "$xsrc/_jubaconv" is_file
}
@test 'more_src has _jubaseries' {
    assert "$xsrc/_jubaseries" is_file
}
@test 'more_src has _juliaup' {
    assert "$xsrc/_juliaup" is_file
}
@test 'more_src has _jump' {
    assert "$xsrc/_jump" is_file
}
@test 'more_src has _jupyter-events' {
    assert "$xsrc/_jupyter-events" is_file
}
@test 'more_src has _jupyter-kernelspec' {
    assert "$xsrc/_jupyter-kernelspec" is_file
}
@test 'more_src has _jupyter-lab' {
    assert "$xsrc/_jupyter-lab" is_file
}
@test 'more_src has _jupyter-labextension' {
    assert "$xsrc/_jupyter-labextension" is_file
}
@test 'more_src has _jupyter-o2' {
    assert "$xsrc/_jupyter-o2" is_file
}
@test 'more_src has _jupyter-troubleshoot' {
    assert "$xsrc/_jupyter-troubleshoot" is_file
}
@test 'more_src has _just' {
    assert "$xsrc/_just" is_file
}
@test 'more_src has _jux-keygen' {
    assert "$xsrc/_jux-keygen" is_file
}
@test 'more_src has _jwebserver' {
    assert "$xsrc/_jwebserver" is_file
}
@test 'more_src has _jwt' {
    assert "$xsrc/_jwt" is_file
}
@test 'more_src has _k0s' {
    assert "$xsrc/_k0s" is_file
}
@test 'more_src has _k3d' {
    assert "$xsrc/_k3d" is_file
}
@test 'more_src has _k3sup' {
    assert "$xsrc/_k3sup" is_file
}
@test 'more_src has _k6' {
    assert "$xsrc/_k6" is_file
}
@test 'more_src has _k8sgpt' {
    assert "$xsrc/_k8sgpt" is_file
}
@test 'more_src has _k9s' {
    assert "$xsrc/_k9s" is_file
}
@test 'more_src has _kafka-acls' {
    assert "$xsrc/_kafka-acls" is_file
}
@test 'more_src has _kafka-broker-api-versions' {
    assert "$xsrc/_kafka-broker-api-versions" is_file
}
@test 'more_src has _kafka-client-metrics' {
    assert "$xsrc/_kafka-client-metrics" is_file
}
@test 'more_src has _kafka-cluster' {
    assert "$xsrc/_kafka-cluster" is_file
}
@test 'more_src has _kafka-configs' {
    assert "$xsrc/_kafka-configs" is_file
}
@test 'more_src has _kafka-console-consumer' {
    assert "$xsrc/_kafka-console-consumer" is_file
}
@test 'more_src has _kafka-console-producer' {
    assert "$xsrc/_kafka-console-producer" is_file
}
@test 'more_src has _kafka-console-share-consumer' {
    assert "$xsrc/_kafka-console-share-consumer" is_file
}
@test 'more_src has _kafka-consumer-groups' {
    assert "$xsrc/_kafka-consumer-groups" is_file
}
@test 'more_src has _kafka-consumer-perf-test' {
    assert "$xsrc/_kafka-consumer-perf-test" is_file
}
@test 'more_src has _kafka-delegation-tokens' {
    assert "$xsrc/_kafka-delegation-tokens" is_file
}
@test 'more_src has _kafka-delete-records' {
    assert "$xsrc/_kafka-delete-records" is_file
}
@test 'more_src has _kafka-dump-log' {
    assert "$xsrc/_kafka-dump-log" is_file
}
@test 'more_src has _kafka-e2e-latency' {
    assert "$xsrc/_kafka-e2e-latency" is_file
}
@test 'more_src has _kafka-features' {
    assert "$xsrc/_kafka-features" is_file
}
@test 'more_src has _kafka-get-offsets' {
    assert "$xsrc/_kafka-get-offsets" is_file
}
@test 'more_src has _kafka-groups' {
    assert "$xsrc/_kafka-groups" is_file
}
@test 'more_src has _kafka-jmx' {
    assert "$xsrc/_kafka-jmx" is_file
}
@test 'more_src has _kafka-leader-election' {
    assert "$xsrc/_kafka-leader-election" is_file
}
@test 'more_src has _kafka-log-dirs' {
    assert "$xsrc/_kafka-log-dirs" is_file
}
@test 'more_src has _kafka-metadata-quorum' {
    assert "$xsrc/_kafka-metadata-quorum" is_file
}
@test 'more_src has _kafka-metadata-shell' {
    assert "$xsrc/_kafka-metadata-shell" is_file
}
@test 'more_src has _kafka-producer-perf-test' {
    assert "$xsrc/_kafka-producer-perf-test" is_file
}
@test 'more_src has _kafka-reassign-partitions' {
    assert "$xsrc/_kafka-reassign-partitions" is_file
}
@test 'more_src has _kafka-replica-verification' {
    assert "$xsrc/_kafka-replica-verification" is_file
}
@test 'more_src has _kafka-run-class' {
    assert "$xsrc/_kafka-run-class" is_file
}
@test 'more_src has _kafka-server-start' {
    assert "$xsrc/_kafka-server-start" is_file
}
@test 'more_src has _kafka-server-stop' {
    assert "$xsrc/_kafka-server-stop" is_file
}
@test 'more_src has _kafka-share-consumer-perf-test' {
    assert "$xsrc/_kafka-share-consumer-perf-test" is_file
}
@test 'more_src has _kafka-share-groups' {
    assert "$xsrc/_kafka-share-groups" is_file
}
@test 'more_src has _kafka-storage' {
    assert "$xsrc/_kafka-storage" is_file
}
@test 'more_src has _kafka-streams-application-reset' {
    assert "$xsrc/_kafka-streams-application-reset" is_file
}
@test 'more_src has _kafka-streams-groups' {
    assert "$xsrc/_kafka-streams-groups" is_file
}
@test 'more_src has _kafka-topics' {
    assert "$xsrc/_kafka-topics" is_file
}
@test 'more_src has _kafka-transactions' {
    assert "$xsrc/_kafka-transactions" is_file
}
@test 'more_src has _kafka-verifiable-consumer' {
    assert "$xsrc/_kafka-verifiable-consumer" is_file
}
@test 'more_src has _kafka-verifiable-producer' {
    assert "$xsrc/_kafka-verifiable-producer" is_file
}
@test 'more_src has _kafka-verifiable-share-consumer' {
    assert "$xsrc/_kafka-verifiable-share-consumer" is_file
}
@test 'more_src has _kail' {
    assert "$xsrc/_kail" is_file
}
@test 'more_src has _kalker' {
    assert "$xsrc/_kalker" is_file
}
@test 'more_src has _kamal' {
    assert "$xsrc/_kamal" is_file
}
@test 'more_src has _kanata' {
    assert "$xsrc/_kanata" is_file
}
@test 'more_src has _kandle' {
    assert "$xsrc/_kandle" is_file
}
@test 'more_src has _kanidm' {
    assert "$xsrc/_kanidm" is_file
}
@test 'more_src has _kaniko' {
    assert "$xsrc/_kaniko" is_file
}
@test 'more_src has _kapitan' {
    assert "$xsrc/_kapitan" is_file
}
@test 'more_src has _kapp' {
    assert "$xsrc/_kapp" is_file
}
@test 'more_src has _kapt' {
    assert "$xsrc/_kapt" is_file
}
@test 'more_src has _karabiner_cli' {
    assert "$xsrc/_karabiner_cli" is_file
}
@test 'more_src has _kargo' {
    assert "$xsrc/_kargo" is_file
}
@test 'more_src has _karn' {
    assert "$xsrc/_karn" is_file
}
@test 'more_src has _kaskade' {
    assert "$xsrc/_kaskade" is_file
}
@test 'more_src has _katana' {
    assert "$xsrc/_katana" is_file
}
@test 'more_src has _kati' {
    assert "$xsrc/_kati" is_file
}
@test 'more_src has _kcadm' {
    assert "$xsrc/_kcadm" is_file
}
@test 'more_src has _kcat' {
    assert "$xsrc/_kcat" is_file
}
@test 'more_src has _kcl' {
    assert "$xsrc/_kcl" is_file
}
@test 'more_src has _kconf' {
    assert "$xsrc/_kconf" is_file
}
@test 'more_src has _kd.zsh' {
    assert "$xsrc/_kd.zsh" is_file
}
@test 'more_src has _kdash' {
    assert "$xsrc/_kdash" is_file
}
@test 'more_src has _kdenlive' {
    assert "$xsrc/_kdenlive" is_file
}
@test 'more_src has _kdialog' {
    assert "$xsrc/_kdialog" is_file
}
@test 'more_src has _kdig' {
    assert "$xsrc/_kdig" is_file
}
@test 'more_src has _kdp-scout' {
    assert "$xsrc/_kdp-scout" is_file
}
@test 'more_src has _kdv' {
    assert "$xsrc/_kdv" is_file
}
@test 'more_src has _keda' {
    assert "$xsrc/_keda" is_file
}
@test 'more_src has _keploy' {
    assert "$xsrc/_keploy" is_file
}
@test 'more_src has _kermit' {
    assert "$xsrc/_kermit" is_file
}
@test 'more_src has _ketchup' {
    assert "$xsrc/_ketchup" is_file
}
@test 'more_src has _keybase' {
    assert "$xsrc/_keybase" is_file
}
@test 'more_src has _keyscope' {
    assert "$xsrc/_keyscope" is_file
}
@test 'more_src has _keytool' {
    assert "$xsrc/_keytool" is_file
}
@test 'more_src has _khal' {
    assert "$xsrc/_khal" is_file
}
@test 'more_src has _kicad' {
    assert "$xsrc/_kicad" is_file
}
@test 'more_src has _kickstart' {
    assert "$xsrc/_kickstart" is_file
}
@test 'more_src has _killport' {
    assert "$xsrc/_killport" is_file
}
@test 'more_src has _kilo' {
    assert "$xsrc/_kilo" is_file
}
@test 'more_src has _kind' {
    assert "$xsrc/_kind" is_file
}
@test 'more_src has _kine' {
    assert "$xsrc/_kine" is_file
}
@test 'more_src has _kiota' {
    assert "$xsrc/_kiota" is_file
}
@test 'more_src has _kirimase' {
    assert "$xsrc/_kirimase" is_file
}
@test 'more_src has _kitty' {
    assert "$xsrc/_kitty" is_file
}
@test 'more_src has _kluctl' {
    assert "$xsrc/_kluctl" is_file
}
@test 'more_src has _kn' {
    assert "$xsrc/_kn" is_file
}
@test 'more_src has _knife' {
    assert "$xsrc/_knife" is_file
}
@test 'more_src has _ko' {
    assert "$xsrc/_ko" is_file
}
@test 'more_src has _komac' {
    assert "$xsrc/_komac" is_file
}
@test 'more_src has _kommit' {
    assert "$xsrc/_kommit" is_file
}
@test 'more_src has _kompose' {
    assert "$xsrc/_kompose" is_file
}
@test 'more_src has _kondo' {
    assert "$xsrc/_kondo" is_file
}
@test 'more_src has _konfig' {
    assert "$xsrc/_konfig" is_file
}
@test 'more_src has _kool' {
    assert "$xsrc/_kool" is_file
}
@test 'more_src has _kopia' {
    assert "$xsrc/_kopia" is_file
}
@test 'more_src has _kops' {
    assert "$xsrc/_kops" is_file
}
@test 'more_src has _kotlinc' {
    assert "$xsrc/_kotlinc" is_file
}
@test 'more_src has _kotlinc-js' {
    assert "$xsrc/_kotlinc-js" is_file
}
@test 'more_src has _kotlinc-jvm' {
    assert "$xsrc/_kotlinc-jvm" is_file
}
@test 'more_src has _kpasswd' {
    assert "$xsrc/_kpasswd" is_file
}
@test 'more_src has _kpt' {
    assert "$xsrc/_kpt" is_file
}
@test 'more_src has _krabby' {
    assert "$xsrc/_krabby" is_file
}
@test 'more_src has _krane' {
    assert "$xsrc/_krane" is_file
}
@test 'more_src has _krew' {
    assert "$xsrc/_krew" is_file
}
@test 'more_src has _krita' {
    assert "$xsrc/_krita" is_file
}
@test 'more_src has _krtadm' {
    assert "$xsrc/_krtadm" is_file
}
@test 'more_src has _krtfs' {
    assert "$xsrc/_krtfs" is_file
}
@test 'more_src has _kube-linter' {
    assert "$xsrc/_kube-linter" is_file
}
@test 'more_src has _kube-score' {
    assert "$xsrc/_kube-score" is_file
}
@test 'more_src has _kubebuilder' {
    assert "$xsrc/_kubebuilder" is_file
}
@test 'more_src has _kubecm' {
    assert "$xsrc/_kubecm" is_file
}
@test 'more_src has _kubecolor' {
    assert "$xsrc/_kubecolor" is_file
}
@test 'more_src has _kubeconform' {
    assert "$xsrc/_kubeconform" is_file
}
@test 'more_src has _kubectl-cloud-shell' {
    assert "$xsrc/_kubectl-cloud-shell" is_file
}
@test 'more_src has _kubectl-krew' {
    assert "$xsrc/_kubectl-krew" is_file
}
@test 'more_src has _kubectl-neat' {
    assert "$xsrc/_kubectl-neat" is_file
}
@test 'more_src has _kubectl-netdrill' {
    assert "$xsrc/_kubectl-netdrill" is_file
}
@test 'more_src has _kubectx' {
    assert "$xsrc/_kubectx" is_file
}
@test 'more_src has _kubefwd' {
    assert "$xsrc/_kubefwd" is_file
}
@test 'more_src has _kubens' {
    assert "$xsrc/_kubens" is_file
}
@test 'more_src has _kubent' {
    assert "$xsrc/_kubent" is_file
}
@test 'more_src has _kubescape' {
    assert "$xsrc/_kubescape" is_file
}
@test 'more_src has _kubeseal' {
    assert "$xsrc/_kubeseal" is_file
}
@test 'more_src has _kubeshark' {
    assert "$xsrc/_kubeshark" is_file
}
@test 'more_src has _kubetail' {
    assert "$xsrc/_kubetail" is_file
}
@test 'more_src has _kubetest' {
    assert "$xsrc/_kubetest" is_file
}
@test 'more_src has _kubeval' {
    assert "$xsrc/_kubeval" is_file
}
@test 'more_src has _kubevela' {
    assert "$xsrc/_kubevela" is_file
}
@test 'more_src has _kubevpn' {
    assert "$xsrc/_kubevpn" is_file
}
@test 'more_src has _kubie' {
    assert "$xsrc/_kubie" is_file
}
@test 'more_src has _kustomize' {
    assert "$xsrc/_kustomize" is_file
}
@test 'more_src has _kuzco' {
    assert "$xsrc/_kuzco" is_file
}
@test 'more_src has _kwctl' {
    assert "$xsrc/_kwctl" is_file
}
@test 'more_src has _kyverno' {
    assert "$xsrc/_kyverno" is_file
}
@test 'more_src has _lacheck' {
    assert "$xsrc/_lacheck" is_file
}
@test 'more_src has _lacy' {
    assert "$xsrc/_lacy" is_file
}
@test 'more_src has _landing-portal-api.sh' {
    assert "$xsrc/_landing-portal-api.sh" is_file
}
@test 'more_src has _language_codes' {
    assert "$xsrc/_language_codes" is_file
}
@test 'more_src has _larakit' {
    assert "$xsrc/_larakit" is_file
}
@test 'more_src has _latexfileversion' {
    assert "$xsrc/_latexfileversion" is_file
}
@test 'more_src has _latexindent' {
    assert "$xsrc/_latexindent" is_file
}
@test 'more_src has _layman' {
    assert "$xsrc/_layman" is_file
}
@test 'more_src has _lazydocker' {
    assert "$xsrc/_lazydocker" is_file
}
@test 'more_src has _lazyjournal' {
    assert "$xsrc/_lazyjournal" is_file
}
@test 'more_src has _lazysql' {
    assert "$xsrc/_lazysql" is_file
}
@test 'more_src has _leaktk' {
    assert "$xsrc/_leaktk" is_file
}
@test 'more_src has _leave' {
    assert "$xsrc/_leave" is_file
}
@test 'more_src has _ledger' {
    assert "$xsrc/_ledger" is_file
}
@test 'more_src has _leeloo' {
    assert "$xsrc/_leeloo" is_file
}
@test 'more_src has _lefthook' {
    assert "$xsrc/_lefthook" is_file
}
@test 'more_src has _lego' {
    assert "$xsrc/_lego" is_file
}
@test 'more_src has _lemmeknow' {
    assert "$xsrc/_lemmeknow" is_file
}
@test 'more_src has _lemmy-help' {
    assert "$xsrc/_lemmy-help" is_file
}
@test 'more_src has _lerna' {
    assert "$xsrc/_lerna" is_file
}
@test 'more_src has _levant' {
    assert "$xsrc/_levant" is_file
}
@test 'more_src has _lf' {
    assert "$xsrc/_lf" is_file
}
@test 'more_src has _licensecheck' {
    assert "$xsrc/_licensecheck" is_file
}
@test 'more_src has _lima' {
    assert "$xsrc/_lima" is_file
}
@test 'more_src has _linguist' {
    assert "$xsrc/_linguist" is_file
}
@test 'more_src has _linkcheck' {
    assert "$xsrc/_linkcheck" is_file
}
@test 'more_src has _linkerd' {
    assert "$xsrc/_linkerd" is_file
}
@test 'more_src has _linuxkit' {
    assert "$xsrc/_linuxkit" is_file
}
@test 'more_src has _litecli' {
    assert "$xsrc/_litecli" is_file
}
@test 'more_src has _litestream' {
    assert "$xsrc/_litestream" is_file
}
@test 'more_src has _litmus' {
    assert "$xsrc/_litmus" is_file
}
@test 'more_src has _live-server' {
    assert "$xsrc/_live-server" is_file
}
@test 'more_src has _lldb-server' {
    assert "$xsrc/_lldb-server" is_file
}
@test 'more_src has _llm' {
    assert "$xsrc/_llm" is_file
}
@test 'more_src has _lmms' {
    assert "$xsrc/_lmms" is_file
}
@test 'more_src has _lms' {
    assert "$xsrc/_lms" is_file
}
@test 'more_src has _lnav' {
    assert "$xsrc/_lnav" is_file
}
@test 'more_src has _loc' {
    assert "$xsrc/_loc" is_file
}
@test 'more_src has _localias' {
    assert "$xsrc/_localias" is_file
}
@test 'more_src has _localstack' {
    assert "$xsrc/_localstack" is_file
}
@test 'more_src has _locust' {
    assert "$xsrc/_locust" is_file
}
@test 'more_src has _logcli' {
    assert "$xsrc/_logcli" is_file
}
@test 'more_src has _logstash' {
    assert "$xsrc/_logstash" is_file
}
@test 'more_src has _lokinet' {
    assert "$xsrc/_lokinet" is_file
}
@test 'more_src has _loofi' {
    assert "$xsrc/_loofi" is_file
}
@test 'more_src has _lookup' {
    assert "$xsrc/_lookup" is_file
}
@test 'more_src has _lowdown' {
    assert "$xsrc/_lowdown" is_file
}
@test 'more_src has _lpass' {
    assert "$xsrc/_lpass" is_file
}
@test 'more_src has _lrzip' {
    assert "$xsrc/_lrzip" is_file
}
@test 'more_src has _lsarchive' {
    assert "$xsrc/_lsarchive" is_file
}
@test 'more_src has _lsd' {
    assert "$xsrc/_lsd" is_file
}
@test 'more_src has _lsix' {
    assert "$xsrc/_lsix" is_file
}
@test 'more_src has _lsm' {
    assert "$xsrc/_lsm" is_file
}
@test 'more_src has _lspmux' {
    assert "$xsrc/_lspmux" is_file
}
@test 'more_src has _lsvfs' {
    assert "$xsrc/_lsvfs" is_file
}
@test 'more_src has _lsyncd' {
    assert "$xsrc/_lsyncd" is_file
}
@test 'more_src has _luacheck' {
    assert "$xsrc/_luacheck" is_file
}
@test 'more_src has _lumos' {
    assert "$xsrc/_lumos" is_file
}
@test 'more_src has _lunar' {
    assert "$xsrc/_lunar" is_file
}
@test 'more_src has _ly-fu' {
    assert "$xsrc/_ly-fu" is_file
}
@test 'more_src has _lychee' {
    assert "$xsrc/_lychee" is_file
}
@test 'more_src has _lzfse' {
    assert "$xsrc/_lzfse" is_file
}
@test 'more_src has _lzip' {
    assert "$xsrc/_lzip" is_file
}
@test 'more_src has _lzmainfo' {
    assert "$xsrc/_lzmainfo" is_file
}
@test 'more_src has _lzmore' {
    assert "$xsrc/_lzmore" is_file
}
@test 'more_src has _macchina' {
    assert "$xsrc/_macchina" is_file
}
@test 'more_src has _machine' {
    assert "$xsrc/_machine" is_file
}
@test 'more_src has _mackup' {
    assert "$xsrc/_mackup" is_file
}
@test 'more_src has _macmon' {
    assert "$xsrc/_macmon" is_file
}
@test 'more_src has _mage' {
    assert "$xsrc/_mage" is_file
}
@test 'more_src has _magick' {
    assert "$xsrc/_magick" is_file
}
@test 'more_src has _mago' {
    assert "$xsrc/_mago" is_file
}
@test 'more_src has _mailpit' {
    assert "$xsrc/_mailpit" is_file
}
@test 'more_src has _mamba' {
    assert "$xsrc/_mamba" is_file
}
@test 'more_src has _manage.sh' {
    assert "$xsrc/_manage.sh" is_file
}
@test 'more_src has _mand_manp' {
    assert "$xsrc/_mand_manp" is_file
}
@test 'more_src has _mani' {
    assert "$xsrc/_mani" is_file
}
@test 'more_src has _manifest-tool' {
    assert "$xsrc/_manifest-tool" is_file
}
@test 'more_src has _mapcidr' {
    assert "$xsrc/_mapcidr" is_file
}
@test 'more_src has _markdown-extract' {
    assert "$xsrc/_markdown-extract" is_file
}
@test 'more_src has _markdown2' {
    assert "$xsrc/_markdown2" is_file
}
@test 'more_src has _markdown2tex' {
    assert "$xsrc/_markdown2tex" is_file
}
@test 'more_src has _markdownlint' {
    assert "$xsrc/_markdownlint" is_file
}
@test 'more_src has _marked' {
    assert "$xsrc/_marked" is_file
}
@test 'more_src has _marketplace' {
    assert "$xsrc/_marketplace" is_file
}
@test 'more_src has _marp' {
    assert "$xsrc/_marp" is_file
}
@test 'more_src has _mas' {
    assert "$xsrc/_mas" is_file
}
@test 'more_src has _math' {
    assert "$xsrc/_math" is_file
}
@test 'more_src has _mathu' {
    assert "$xsrc/_mathu" is_file
}
@test 'more_src has _maturin' {
    assert "$xsrc/_maturin" is_file
}
@test 'more_src has _maxima' {
    assert "$xsrc/_maxima" is_file
}
@test 'more_src has _mbsync' {
    assert "$xsrc/_mbsync" is_file
}
@test 'more_src has _mcap' {
    assert "$xsrc/_mcap" is_file
}
@test 'more_src has _mcfly' {
    assert "$xsrc/_mcfly" is_file
}
@test 'more_src has _mcrepo' {
    assert "$xsrc/_mcrepo" is_file
}
@test 'more_src has _md2gslides' {
    assert "$xsrc/_md2gslides" is_file
}
@test 'more_src has _mdbook' {
    assert "$xsrc/_mdbook" is_file
}
@test 'more_src has _mdcat' {
    assert "$xsrc/_mdcat" is_file
}
@test 'more_src has _mdformat' {
    assert "$xsrc/_mdformat" is_file
}
@test 'more_src has _mdl' {
    assert "$xsrc/_mdl" is_file
}
@test 'more_src has _mdp' {
    assert "$xsrc/_mdp" is_file
}
@test 'more_src has _mdsh' {
    assert "$xsrc/_mdsh" is_file
}
@test 'more_src has _mdv' {
    assert "$xsrc/_mdv" is_file
}
@test 'more_src has _mediafilesegmenter' {
    assert "$xsrc/_mediafilesegmenter" is_file
}
@test 'more_src has _mediainfo' {
    assert "$xsrc/_mediainfo" is_file
}
@test 'more_src has _mediastreamsegmenter' {
    assert "$xsrc/_mediastreamsegmenter" is_file
}
@test 'more_src has _mediastreamvalidator' {
    assert "$xsrc/_mediastreamvalidator" is_file
}
@test 'more_src has _mediasubtitlesegmenter' {
    assert "$xsrc/_mediasubtitlesegmenter" is_file
}
@test 'more_src has _megacheck' {
    assert "$xsrc/_megacheck" is_file
}
@test 'more_src has _meilisearch' {
    assert "$xsrc/_meilisearch" is_file
}
@test 'more_src has _melange' {
    assert "$xsrc/_melange" is_file
}
@test 'more_src has _melt' {
    assert "$xsrc/_melt" is_file
}
@test 'more_src has _memtester' {
    assert "$xsrc/_memtester" is_file
}
@test 'more_src has _memtier_benchmark' {
    assert "$xsrc/_memtier_benchmark" is_file
}
@test 'more_src has _mender-artifact' {
    assert "$xsrc/_mender-artifact" is_file
}
@test 'more_src has _mentat' {
    assert "$xsrc/_mentat" is_file
}
@test 'more_src has _mentat' {
    assert "$xsrc/_mentat" is_file
}
@test 'more_src has _mergiraf' {
    assert "$xsrc/_mergiraf" is_file
}
@test 'more_src has _meshlab' {
    assert "$xsrc/_meshlab" is_file
}
@test 'more_src has _mgit' {
    assert "$xsrc/_mgit" is_file
}
@test 'more_src has _mi' {
    assert "$xsrc/_mi" is_file
}
@test 'more_src has _micro' {
    assert "$xsrc/_micro" is_file
}
@test 'more_src has _microk8s' {
    assert "$xsrc/_microk8s" is_file
}
@test 'more_src has _micromamba' {
    assert "$xsrc/_micromamba" is_file
}
@test 'more_src has _microplane' {
    assert "$xsrc/_microplane" is_file
}
@test 'more_src has _migrate' {
    assert "$xsrc/_migrate" is_file
}
@test 'more_src has _mill' {
    assert "$xsrc/_mill" is_file
}
@test 'more_src has _milla' {
    assert "$xsrc/_milla" is_file
}
@test 'more_src has _miller' {
    assert "$xsrc/_miller" is_file
}
@test 'more_src has _milvus_cli' {
    assert "$xsrc/_milvus_cli" is_file
}
@test 'more_src has _miniflux' {
    assert "$xsrc/_miniflux" is_file
}
@test 'more_src has _minijinja' {
    assert "$xsrc/_minijinja" is_file
}
@test 'more_src has _minikube' {
    assert "$xsrc/_minikube" is_file
}
@test 'more_src has _minil' {
    assert "$xsrc/_minil" is_file
}
@test 'more_src has _minio' {
    assert "$xsrc/_minio" is_file
}
@test 'more_src has _miniserve' {
    assert "$xsrc/_miniserve" is_file
}
@test 'more_src has _minisign' {
    assert "$xsrc/_minisign" is_file
}
@test 'more_src has _mise' {
    assert "$xsrc/_mise" is_file
}
@test 'more_src has _mispipe' {
    assert "$xsrc/_mispipe" is_file
}
@test 'more_src has _mitmproxy' {
    assert "$xsrc/_mitmproxy" is_file
}
@test 'more_src has _mkcert' {
    assert "$xsrc/_mkcert" is_file
}
@test 'more_src has _mkdcd' {
    assert "$xsrc/_mkdcd" is_file
}
@test 'more_src has _mkdocs' {
    assert "$xsrc/_mkdocs" is_file
}
@test 'more_src has _mkosi' {
    assert "$xsrc/_mkosi" is_file
}
@test 'more_src has _mkrepo' {
    assert "$xsrc/_mkrepo" is_file
}
@test 'more_src has _mksdcard' {
    assert "$xsrc/_mksdcard" is_file
}
@test 'more_src has _mkvirtualenv' {
    assert "$xsrc/_mkvirtualenv" is_file
}
@test 'more_src has _mlr' {
    assert "$xsrc/_mlr" is_file
}
@test 'more_src has _mlx' {
    assert "$xsrc/_mlx" is_file
}
@test 'more_src has _mm' {
    assert "$xsrc/_mm" is_file
}
@test 'more_src has _mmv' {
    assert "$xsrc/_mmv" is_file
}
@test 'more_src has _mob' {
    assert "$xsrc/_mob" is_file
}
@test 'more_src has _mobiledevice' {
    assert "$xsrc/_mobiledevice" is_file
}
@test 'more_src has _mockgen' {
    assert "$xsrc/_mockgen" is_file
}
@test 'more_src has _modd' {
    assert "$xsrc/_modd" is_file
}
@test 'more_src has _mods' {
    assert "$xsrc/_mods" is_file
}
@test 'more_src has _mold' {
    assert "$xsrc/_mold" is_file
}
@test 'more_src has _mole' {
    assert "$xsrc/_mole" is_file
}
@test 'more_src has _molecule' {
    assert "$xsrc/_molecule" is_file
}
@test 'more_src has _mon.zsh' {
    assert "$xsrc/_mon.zsh" is_file
}
@test 'more_src has _monit' {
    assert "$xsrc/_monit" is_file
}
@test 'more_src has _monolith' {
    assert "$xsrc/_monolith" is_file
}
@test 'more_src has _moon' {
    assert "$xsrc/_moon" is_file
}
@test 'more_src has _moonline' {
    assert "$xsrc/_moonline" is_file
}
@test 'more_src has _moonrepo' {
    assert "$xsrc/_moonrepo" is_file
}
@test 'more_src has _morbo' {
    assert "$xsrc/_morbo" is_file
}
@test 'more_src has _morgenlichtctl' {
    assert "$xsrc/_morgenlichtctl" is_file
}
@test 'more_src has _morie' {
    assert "$xsrc/_morie" is_file
}
@test 'more_src has _mosh' {
    assert "$xsrc/_mosh" is_file
}
@test 'more_src has _mosquitto_pub' {
    assert "$xsrc/_mosquitto_pub" is_file
}
@test 'more_src has _mosquitto_sub' {
    assert "$xsrc/_mosquitto_sub" is_file
}
@test 'more_src has _mp3unicode' {
    assert "$xsrc/_mp3unicode" is_file
}
@test 'more_src has _mpdscribble' {
    assert "$xsrc/_mpdscribble" is_file
}
@test 'more_src has _mpdviz' {
    assert "$xsrc/_mpdviz" is_file
}
@test 'more_src has _mplayer' {
    assert "$xsrc/_mplayer" is_file
}
@test 'more_src has _mprocs' {
    assert "$xsrc/_mprocs" is_file
}
@test 'more_src has _mpv' {
    assert "$xsrc/_mpv" is_file
}
@test 'more_src has _msync' {
    assert "$xsrc/_msync" is_file
}
@test 'more_src has _mtr-packet' {
    assert "$xsrc/_mtr-packet" is_file
}
@test 'more_src has _mturk' {
    assert "$xsrc/_mturk" is_file
}
@test 'more_src has _muffet' {
    assert "$xsrc/_muffet" is_file
}
@test 'more_src has _mullvad' {
    assert "$xsrc/_mullvad" is_file
}
@test 'more_src has _multipass' {
    assert "$xsrc/_multipass" is_file
}
@test 'more_src has _multirust' {
    assert "$xsrc/_multirust" is_file
}
@test 'more_src has _multitail' {
    assert "$xsrc/_multitail" is_file
}
@test 'more_src has _murex' {
    assert "$xsrc/_murex" is_file
}
@test 'more_src has _musescore' {
    assert "$xsrc/_musescore" is_file
}
@test 'more_src has _musescore-manager' {
    assert "$xsrc/_musescore-manager" is_file
}
@test 'more_src has _mutagen' {
    assert "$xsrc/_mutagen" is_file
}
@test 'more_src has _mutt-wizard.zsh' {
    assert "$xsrc/_mutt-wizard.zsh" is_file
}
@test 'more_src has _mxl.zsh' {
    assert "$xsrc/_mxl.zsh" is_file
}
@test 'more_src has _my_cheat.sh' {
    assert "$xsrc/_my_cheat.sh" is_file
}
@test 'more_src has _mypy' {
    assert "$xsrc/_mypy" is_file
}
@test 'more_src has _n-kill' {
    assert "$xsrc/_n-kill" is_file
}
@test 'more_src has _naabu' {
    assert "$xsrc/_naabu" is_file
}
@test 'more_src has _nag' {
    assert "$xsrc/_nag" is_file
}
@test 'more_src has _nap' {
    assert "$xsrc/_nap" is_file
}
@test 'more_src has _nats' {
    assert "$xsrc/_nats" is_file
}
@test 'more_src has _nats-top' {
    assert "$xsrc/_nats-top" is_file
}
@test 'more_src has _navi' {
    assert "$xsrc/_navi" is_file
}
@test 'more_src has _navidrome' {
    assert "$xsrc/_navidrome" is_file
}
@test 'more_src has _nb' {
    assert "$xsrc/_nb" is_file
}
@test 'more_src has _nbcli' {
    assert "$xsrc/_nbcli" is_file
}
@test 'more_src has _nbfc.in' {
    assert "$xsrc/_nbfc.in" is_file
}
@test 'more_src has _nbfc_service.in' {
    assert "$xsrc/_nbfc_service.in" is_file
}
@test 'more_src has _ncspot' {
    assert "$xsrc/_ncspot" is_file
}
@test 'more_src has _ndu' {
    assert "$xsrc/_ndu" is_file
}
@test 'more_src has _nebula' {
    assert "$xsrc/_nebula" is_file
}
@test 'more_src has _nem2-cli' {
    assert "$xsrc/_nem2-cli" is_file
}
@test 'more_src has _nemu' {
    assert "$xsrc/_nemu" is_file
}
@test 'more_src has _neofetch' {
    assert "$xsrc/_neofetch" is_file
}
@test 'more_src has _neomutt' {
    assert "$xsrc/_neomutt" is_file
}
@test 'more_src has _neosync' {
    assert "$xsrc/_neosync" is_file
}
@test 'more_src has _neovide' {
    assert "$xsrc/_neovide" is_file
}
@test 'more_src has _nerdctl' {
    assert "$xsrc/_nerdctl" is_file
}
@test 'more_src has _nerdfonts' {
    assert "$xsrc/_nerdfonts" is_file
}
@test 'more_src has _netbird' {
    assert "$xsrc/_netbird" is_file
}
@test 'more_src has _netdata' {
    assert "$xsrc/_netdata" is_file
}
@test 'more_src has _netmaker' {
    assert "$xsrc/_netmaker" is_file
}
@test 'more_src has _newman' {
    assert "$xsrc/_newman" is_file
}
@test 'more_src has _newsboat' {
    assert "$xsrc/_newsboat" is_file
}
@test 'more_src has _nfpm' {
    assert "$xsrc/_nfpm" is_file
}
@test 'more_src has _nftables' {
    assert "$xsrc/_nftables" is_file
}
@test 'more_src has _nfutils' {
    assert "$xsrc/_nfutils" is_file
}
@test 'more_src has _nhost' {
    assert "$xsrc/_nhost" is_file
}
@test 'more_src has _nicole.compdef.zsh' {
    assert "$xsrc/_nicole.compdef.zsh" is_file
}
@test 'more_src has _nifi-cli' {
    assert "$xsrc/_nifi-cli" is_file
}
@test 'more_src has _nil' {
    assert "$xsrc/_nil" is_file
}
@test 'more_src has _nitrogen' {
    assert "$xsrc/_nitrogen" is_file
}
@test 'more_src has _nix' {
    assert "$xsrc/_nix" is_file
}
@test 'more_src has _nix-build' {
    assert "$xsrc/_nix-build" is_file
}
@test 'more_src has _nix-diff' {
    assert "$xsrc/_nix-diff" is_file
}
@test 'more_src has _nix-env' {
    assert "$xsrc/_nix-env" is_file
}
@test 'more_src has _nix-install-package' {
    assert "$xsrc/_nix-install-package" is_file
}
@test 'more_src has _nix-locate' {
    assert "$xsrc/_nix-locate" is_file
}
@test 'more_src has _nix-push' {
    assert "$xsrc/_nix-push" is_file
}
@test 'more_src has _nix-shell' {
    assert "$xsrc/_nix-shell" is_file
}
@test 'more_src has _nix-store' {
    assert "$xsrc/_nix-store" is_file
}
@test 'more_src has _nix-tree' {
    assert "$xsrc/_nix-tree" is_file
}
@test 'more_src has _nixd' {
    assert "$xsrc/_nixd" is_file
}
@test 'more_src has _nixfmt' {
    assert "$xsrc/_nixfmt" is_file
}
@test 'more_src has _nixops' {
    assert "$xsrc/_nixops" is_file
}
@test 'more_src has _nixos-build-vms' {
    assert "$xsrc/_nixos-build-vms" is_file
}
@test 'more_src has _nixos-container' {
    assert "$xsrc/_nixos-container" is_file
}
@test 'more_src has _nixos-generate-config' {
    assert "$xsrc/_nixos-generate-config" is_file
}
@test 'more_src has _nixos-install' {
    assert "$xsrc/_nixos-install" is_file
}
@test 'more_src has _nixos-option' {
    assert "$xsrc/_nixos-option" is_file
}
@test 'more_src has _nixos-rebuild' {
    assert "$xsrc/_nixos-rebuild" is_file
}
@test 'more_src has _nixos-version' {
    assert "$xsrc/_nixos-version" is_file
}
@test 'more_src has _nixpacks' {
    assert "$xsrc/_nixpacks" is_file
}
@test 'more_src has _nixpkgs-review' {
    assert "$xsrc/_nixpkgs-review" is_file
}
@test 'more_src has _nodeenv' {
    assert "$xsrc/_nodeenv" is_file
}
@test 'more_src has _nodenv' {
    assert "$xsrc/_nodenv" is_file
}
@test 'more_src has _nodetool' {
    assert "$xsrc/_nodetool" is_file
}
@test 'more_src has _nomad' {
    assert "$xsrc/_nomad" is_file
}
@test 'more_src has _noremoteglob' {
    assert "$xsrc/_noremoteglob" is_file
}
@test 'more_src has _notation' {
    assert "$xsrc/_notation" is_file
}
@test 'more_src has _noti' {
    assert "$xsrc/_noti" is_file
}
@test 'more_src has _notmuch' {
    assert "$xsrc/_notmuch" is_file
}
@test 'more_src has _nox' {
    assert "$xsrc/_nox" is_file
}
@test 'more_src has _noxdir' {
    assert "$xsrc/_noxdir" is_file
}
@test 'more_src has _nrich' {
    assert "$xsrc/_nrich" is_file
}
@test 'more_src has _nsc' {
    assert "$xsrc/_nsc" is_file
}
@test 'more_src has _nsst' {
    assert "$xsrc/_nsst" is_file
}
@test 'more_src has _ntfy' {
    assert "$xsrc/_ntfy" is_file
}
@test 'more_src has _nuclei' {
    assert "$xsrc/_nuclei" is_file
}
@test 'more_src has _nuget' {
    assert "$xsrc/_nuget" is_file
}
@test 'more_src has _numbat' {
    assert "$xsrc/_numbat" is_file
}
@test 'more_src has _nushell' {
    assert "$xsrc/_nushell" is_file
}
@test 'more_src has _nvim' {
    assert "$xsrc/_nvim" is_file
}
@test 'more_src has _nvme' {
    assert "$xsrc/_nvme" is_file
}
@test 'more_src has _nvs' {
    assert "$xsrc/_nvs" is_file
}
@test 'more_src has _nw' {
    assert "$xsrc/_nw" is_file
}
@test 'more_src has _oapi-codegen' {
    assert "$xsrc/_oapi-codegen" is_file
}
@test 'more_src has _oathtool' {
    assert "$xsrc/_oathtool" is_file
}
@test 'more_src has _obabel' {
    assert "$xsrc/_obabel" is_file
}
@test 'more_src has _obfuskit' {
    assert "$xsrc/_obfuskit" is_file
}
@test 'more_src has _obs' {
    assert "$xsrc/_obs" is_file
}
@test 'more_src has _oc' {
    assert "$xsrc/_oc" is_file
}
@test 'more_src has _ocamlfind' {
    assert "$xsrc/_ocamlfind" is_file
}
@test 'more_src has _ocamlformat' {
    assert "$xsrc/_ocamlformat" is_file
}
@test 'more_src has _ocamlsp' {
    assert "$xsrc/_ocamlsp" is_file
}
@test 'more_src has _oci' {
    assert "$xsrc/_oci" is_file
}
@test 'more_src has _ocrmypdf' {
    assert "$xsrc/_ocrmypdf" is_file
}
@test 'more_src has _octave' {
    assert "$xsrc/_octave" is_file
}
@test 'more_src has _octez-manager' {
    assert "$xsrc/_octez-manager" is_file
}
@test 'more_src has _ocw' {
    assert "$xsrc/_ocw" is_file
}
@test 'more_src has _oha' {
    assert "$xsrc/_oha" is_file
}
@test 'more_src has _ojph_compress' {
    assert "$xsrc/_ojph_compress" is_file
}
@test 'more_src has _ojph_expand' {
    assert "$xsrc/_ojph_expand" is_file
}
@test 'more_src has _ollama' {
    assert "$xsrc/_ollama" is_file
}
@test 'more_src has _omx' {
    assert "$xsrc/_omx" is_file
}
@test 'more_src has _ondir' {
    assert "$xsrc/_ondir" is_file
}
@test 'more_src has _onefetch' {
    assert "$xsrc/_onefetch" is_file
}
@test 'more_src has _onekeymap-cli' {
    assert "$xsrc/_onekeymap-cli" is_file
}
@test 'more_src has _op' {
    assert "$xsrc/_op" is_file
}
@test 'more_src has _opa' {
    assert "$xsrc/_opa" is_file
}
@test 'more_src has _openapi-generator' {
    assert "$xsrc/_openapi-generator" is_file
}
@test 'more_src has _opendiff' {
    assert "$xsrc/_opendiff" is_file
}
@test 'more_src has _openhands' {
    assert "$xsrc/_openhands" is_file
}
@test 'more_src has _openmeteo' {
    assert "$xsrc/_openmeteo" is_file
}
@test 'more_src has _openocd' {
    assert "$xsrc/_openocd" is_file
}
@test 'more_src has _openring' {
    assert "$xsrc/_openring" is_file
}
@test 'more_src has _openscad' {
    assert "$xsrc/_openscad" is_file
}
@test 'more_src has _opensearch-cli' {
    assert "$xsrc/_opensearch-cli" is_file
}
@test 'more_src has _opentofu' {
    assert "$xsrc/_opentofu" is_file
}
@test 'more_src has _operant' {
    assert "$xsrc/_operant" is_file
}
@test 'more_src has _operator-sdk' {
    assert "$xsrc/_operator-sdk" is_file
}
@test 'more_src has _opswd' {
    assert "$xsrc/_opswd" is_file
}
@test 'more_src has _optic' {
    assert "$xsrc/_optic" is_file
}
@test 'more_src has _optimus-manager' {
    assert "$xsrc/_optimus-manager" is_file
}
@test 'more_src has _optipng' {
    assert "$xsrc/_optipng" is_file
}
@test 'more_src has _opustools' {
    assert "$xsrc/_opustools" is_file
}
@test 'more_src has _oqtopus' {
    assert "$xsrc/_oqtopus" is_file
}
@test 'more_src has _oramalama' {
    assert "$xsrc/_oramalama" is_file
}
@test 'more_src has _oras' {
    assert "$xsrc/_oras" is_file
}
@test 'more_src has _orchestrate.sh' {
    assert "$xsrc/_orchestrate.sh" is_file
}
@test 'more_src has _osmosis' {
    assert "$xsrc/_osmosis" is_file
}
@test 'more_src has _osquery' {
    assert "$xsrc/_osquery" is_file
}
@test 'more_src has _osqueryctl' {
    assert "$xsrc/_osqueryctl" is_file
}
@test 'more_src has _osqueryi' {
    assert "$xsrc/_osqueryi" is_file
}
@test 'more_src has _osv-scanner' {
    assert "$xsrc/_osv-scanner" is_file
}
@test 'more_src has _otel-cli' {
    assert "$xsrc/_otel-cli" is_file
}
@test 'more_src has _ouch' {
    assert "$xsrc/_ouch" is_file
}
@test 'more_src has _ov' {
    assert "$xsrc/_ov" is_file
}
@test 'more_src has _overmind' {
    assert "$xsrc/_overmind" is_file
}
@test 'more_src has _ow' {
    assert "$xsrc/_ow" is_file
}
@test 'more_src has _oxipng' {
    assert "$xsrc/_oxipng" is_file
}
@test 'more_src has _oxlint' {
    assert "$xsrc/_oxlint" is_file
}
@test 'more_src has _paccapability' {
    assert "$xsrc/_paccapability" is_file
}
@test 'more_src has _paccheck' {
    assert "$xsrc/_paccheck" is_file
}
@test 'more_src has _pacconf' {
    assert "$xsrc/_pacconf" is_file
}
@test 'more_src has _pacfile' {
    assert "$xsrc/_pacfile" is_file
}
@test 'more_src has _pacgraph' {
    assert "$xsrc/_pacgraph" is_file
}
@test 'more_src has _pacinfo' {
    assert "$xsrc/_pacinfo" is_file
}
@test 'more_src has _pacini' {
    assert "$xsrc/_pacini" is_file
}
@test 'more_src has _packer' {
    assert "$xsrc/_packer" is_file
}
@test 'more_src has _paclock' {
    assert "$xsrc/_paclock" is_file
}
@test 'more_src has _paclog' {
    assert "$xsrc/_paclog" is_file
}
@test 'more_src has _pacrepairdb' {
    assert "$xsrc/_pacrepairdb" is_file
}
@test 'more_src has _pacrepairfile' {
    assert "$xsrc/_pacrepairfile" is_file
}
@test 'more_src has _pacreport' {
    assert "$xsrc/_pacreport" is_file
}
@test 'more_src has _pacsift' {
    assert "$xsrc/_pacsift" is_file
}
@test 'more_src has _pacsync' {
    assert "$xsrc/_pacsync" is_file
}
@test 'more_src has _pactrans' {
    assert "$xsrc/_pactrans" is_file
}
@test 'more_src has _padrino' {
    assert "$xsrc/_padrino" is_file
}
@test 'more_src has _pagefind' {
    assert "$xsrc/_pagefind" is_file
}
@test 'more_src has _pagesize' {
    assert "$xsrc/_pagesize" is_file
}
@test 'more_src has _paka' {
    assert "$xsrc/_paka" is_file
}
@test 'more_src has _pamac' {
    assert "$xsrc/_pamac" is_file
}
@test 'more_src has _pamixer' {
    assert "$xsrc/_pamixer" is_file
}
@test 'more_src has _pants' {
    assert "$xsrc/_pants" is_file
}
@test 'more_src has _papermill' {
    assert "$xsrc/_papermill" is_file
}
@test 'more_src has _papirus-folders' {
    assert "$xsrc/_papirus-folders" is_file
}
@test 'more_src has _parcel' {
    assert "$xsrc/_parcel" is_file
}
@test 'more_src has _parquet2json' {
    assert "$xsrc/_parquet2json" is_file
}
@test 'more_src has _paru' {
    assert "$xsrc/_paru" is_file
}
@test 'more_src has _pass-otp' {
    assert "$xsrc/_pass-otp" is_file
}
@test 'more_src has _pass-tomb' {
    assert "$xsrc/_pass-tomb" is_file
}
@test 'more_src has _pass-update' {
    assert "$xsrc/_pass-update" is_file
}
@test 'more_src has _passage' {
    assert "$xsrc/_passage" is_file
}
@test 'more_src has _passx' {
    assert "$xsrc/_passx" is_file
}
@test 'more_src has _pastel' {
    assert "$xsrc/_pastel" is_file
}
@test 'more_src has _patchelf' {
    assert "$xsrc/_patchelf" is_file
}
@test 'more_src has _patool' {
    assert "$xsrc/_patool" is_file
}
@test 'more_src has _pazi' {
    assert "$xsrc/_pazi" is_file
}
@test 'more_src has _pbm' {
    assert "$xsrc/_pbm" is_file
}
@test 'more_src has _pbzip2' {
    assert "$xsrc/_pbzip2" is_file
}
@test 'more_src has _pcb2gcode' {
    assert "$xsrc/_pcb2gcode" is_file
}
@test 'more_src has _pdfgrep' {
    assert "$xsrc/_pdfgrep" is_file
}
@test 'more_src has _pdftk' {
    assert "$xsrc/_pdftk" is_file
}
@test 'more_src has _pdm' {
    assert "$xsrc/_pdm" is_file
}
@test 'more_src has _peek' {
    assert "$xsrc/_peek" is_file
}
@test 'more_src has _penelope' {
    assert "$xsrc/_penelope" is_file
}
@test 'more_src has _perc' {
    assert "$xsrc/_perc" is_file
}
@test 'more_src has _perl-build' {
    assert "$xsrc/_perl-build" is_file
}
@test 'more_src has _perl-cleaner' {
    assert "$xsrc/_perl-cleaner" is_file
}
@test 'more_src has _perlbrew' {
    assert "$xsrc/_perlbrew" is_file
}
@test 'more_src has _permify' {
    assert "$xsrc/_permify" is_file
}
@test 'more_src has _pet' {
    assert "$xsrc/_pet" is_file
}
@test 'more_src has _peth.zsh' {
    assert "$xsrc/_peth.zsh" is_file
}
@test 'more_src has _pfetch' {
    assert "$xsrc/_pfetch" is_file
}
@test 'more_src has _pgbadger' {
    assert "$xsrc/_pgbadger" is_file
}
@test 'more_src has _pgbouncer' {
    assert "$xsrc/_pgbouncer" is_file
}
@test 'more_src has _pget' {
    assert "$xsrc/_pget" is_file
}
@test 'more_src has _pgloader' {
    assert "$xsrc/_pgloader" is_file
}
@test 'more_src has _pgsql_utils' {
    assert "$xsrc/_pgsql_utils" is_file
}
@test 'more_src has _ph' {
    assert "$xsrc/_ph" is_file
}
@test 'more_src has _phockup' {
    assert "$xsrc/_phockup" is_file
}
@test 'more_src has _phonebook' {
    assert "$xsrc/_phonebook" is_file
}
@test 'more_src has _photoprism' {
    assert "$xsrc/_photoprism" is_file
}
@test 'more_src has _phpcbf' {
    assert "$xsrc/_phpcbf" is_file
}
@test 'more_src has _phpcs' {
    assert "$xsrc/_phpcs" is_file
}
@test 'more_src has _phpmd' {
    assert "$xsrc/_phpmd" is_file
}
@test 'more_src has _phpstan' {
    assert "$xsrc/_phpstan" is_file
}
@test 'more_src has _phpstorm' {
    assert "$xsrc/_phpstorm" is_file
}
@test 'more_src has _piactl' {
    assert "$xsrc/_piactl" is_file
}
@test 'more_src has _pianoteq' {
    assert "$xsrc/_pianoteq" is_file
}
@test 'more_src has _picocrypt' {
    assert "$xsrc/_picocrypt" is_file
}
@test 'more_src has _pihole' {
    assert "$xsrc/_pihole" is_file
}
@test 'more_src has _pimpd2' {
    assert "$xsrc/_pimpd2" is_file
}
@test 'more_src has _pint' {
    assert "$xsrc/_pint" is_file
}
@test 'more_src has _pip-audit' {
    assert "$xsrc/_pip-audit" is_file
}
@test 'more_src has _pipdeptree' {
    assert "$xsrc/_pipdeptree" is_file
}
@test 'more_src has _pipenv' {
    assert "$xsrc/_pipenv" is_file
}
@test 'more_src has _pipx' {
    assert "$xsrc/_pipx" is_file
}
@test 'more_src has _pistol' {
    assert "$xsrc/_pistol" is_file
}
@test 'more_src has _pixi' {
    assert "$xsrc/_pixi" is_file
}
@test 'more_src has _pixlet' {
    assert "$xsrc/_pixlet" is_file
}
@test 'more_src has _pixterm' {
    assert "$xsrc/_pixterm" is_file
}
@test 'more_src has _pixz' {
    assert "$xsrc/_pixz" is_file
}
@test 'more_src has _pkf' {
    assert "$xsrc/_pkf" is_file
}
@test 'more_src has _pkgbuild' {
    assert "$xsrc/_pkgbuild" is_file
}
@test 'more_src has _pkl' {
    assert "$xsrc/_pkl" is_file
}
@test 'more_src has _pl2pm' {
    assert "$xsrc/_pl2pm" is_file
}
@test 'more_src has _plackup' {
    assert "$xsrc/_plackup" is_file
}
@test 'more_src has _plantuml' {
    assert "$xsrc/_plantuml" is_file
}
@test 'more_src has _play-cli' {
    assert "$xsrc/_play-cli" is_file
}
@test 'more_src has _please' {
    assert "$xsrc/_please" is_file
}
@test 'more_src has _please-cli' {
    assert "$xsrc/_please-cli" is_file
}
@test 'more_src has _plex' {
    assert "$xsrc/_plex" is_file
}
@test 'more_src has _plow' {
    assert "$xsrc/_plow" is_file
}
@test 'more_src has _pls' {
    assert "$xsrc/_pls" is_file
}
@test 'more_src has _pluto' {
    assert "$xsrc/_pluto" is_file
}
@test 'more_src has _plzip' {
    assert "$xsrc/_plzip" is_file
}
@test 'more_src has _pm2' {
    assert "$xsrc/_pm2" is_file
}
@test 'more_src has _pmset' {
    assert "$xsrc/_pmset" is_file
}
@test 'more_src has _pngquant' {
    assert "$xsrc/_pngquant" is_file
}
@test 'more_src has _pnpm' {
    assert "$xsrc/_pnpm" is_file
}
@test 'more_src has _podlet' {
    assert "$xsrc/_podlet" is_file
}
@test 'more_src has _podman' {
    assert "$xsrc/_podman" is_file
}
@test 'more_src has _podman-compose' {
    assert "$xsrc/_podman-compose" is_file
}
@test 'more_src has _podman-mac-helper' {
    assert "$xsrc/_podman-mac-helper" is_file
}
@test 'more_src has _podman-tui' {
    assert "$xsrc/_podman-tui" is_file
}
@test 'more_src has _pokeget' {
    assert "$xsrc/_pokeget" is_file
}
@test 'more_src has _polaris' {
    assert "$xsrc/_polaris" is_file
}
@test 'more_src has _polca.sh' {
    assert "$xsrc/_polca.sh" is_file
}
@test 'more_src has _polkit' {
    assert "$xsrc/_polkit" is_file
}
@test 'more_src has _popeye' {
    assert "$xsrc/_popeye" is_file
}
@test 'more_src has _porg' {
    assert "$xsrc/_porg" is_file
}
@test 'more_src has _port-daddy' {
    assert "$xsrc/_port-daddy" is_file
}
@test 'more_src has _portage_utils' {
    assert "$xsrc/_portage_utils" is_file
}
@test 'more_src has _porter' {
    assert "$xsrc/_porter" is_file
}
@test 'more_src has _portpester' {
    assert "$xsrc/_portpester" is_file
}
@test 'more_src has _posting' {
    assert "$xsrc/_posting" is_file
}
@test 'more_src has _poule' {
    assert "$xsrc/_poule" is_file
}
@test 'more_src has _powder' {
    assert "$xsrc/_powder" is_file
}
@test 'more_src has _powify' {
    assert "$xsrc/_powify" is_file
}
@test 'more_src has _pppd' {
    assert "$xsrc/_pppd" is_file
}
@test 'more_src has _pqrs' {
    assert "$xsrc/_pqrs" is_file
}
@test 'more_src has _pr-agent' {
    assert "$xsrc/_pr-agent" is_file
}
@test 'more_src has _pre-commit' {
    assert "$xsrc/_pre-commit" is_file
}
@test 'more_src has _premake5' {
    assert "$xsrc/_premake5" is_file
}
@test 'more_src has _prep' {
    assert "$xsrc/_prep" is_file
}
@test 'more_src has _presenterm' {
    assert "$xsrc/_presenterm" is_file
}
@test 'more_src has _prettyping' {
    assert "$xsrc/_prettyping" is_file
}
@test 'more_src has _prisma' {
    assert "$xsrc/_prisma" is_file
}
@test 'more_src has _prm' {
    assert "$xsrc/_prm" is_file
}
@test 'more_src has _process-compose' {
    assert "$xsrc/_process-compose" is_file
}
@test 'more_src has _procexp' {
    assert "$xsrc/_procexp" is_file
}
@test 'more_src has _procs' {
    assert "$xsrc/_procs" is_file
}
@test 'more_src has _procscope' {
    assert "$xsrc/_procscope" is_file
}
@test 'more_src has _productbuild' {
    assert "$xsrc/_productbuild" is_file
}
@test 'more_src has _productsign' {
    assert "$xsrc/_productsign" is_file
}
@test 'more_src has _progress' {
    assert "$xsrc/_progress" is_file
}
@test 'more_src has _project' {
    assert "$xsrc/_project" is_file
}
@test 'more_src has _promtool' {
    assert "$xsrc/_promtool" is_file
}
@test 'more_src has _prowler' {
    assert "$xsrc/_prowler" is_file
}
@test 'more_src has _proxify' {
    assert "$xsrc/_proxify" is_file
}
@test 'more_src has _proxychains4-daemon' {
    assert "$xsrc/_proxychains4-daemon" is_file
}
@test 'more_src has _proxyset' {
    assert "$xsrc/_proxyset" is_file
}
@test 'more_src has _prprompts' {
    assert "$xsrc/_prprompts" is_file
}
@test 'more_src has _prqlc' {
    assert "$xsrc/_prqlc" is_file
}
@test 'more_src has _pscale' {
    assert "$xsrc/_pscale" is_file
}
@test 'more_src has _pspg' {
    assert "$xsrc/_pspg" is_file
}
@test 'more_src has _pssql.zsh' {
    assert "$xsrc/_pssql.zsh" is_file
}
@test 'more_src has _psub' {
    assert "$xsrc/_psub" is_file
}
@test 'more_src has _pt-query-digest' {
    assert "$xsrc/_pt-query-digest" is_file
}
@test 'more_src has _ptar' {
    assert "$xsrc/_ptar" is_file
}
@test 'more_src has _ptardiff' {
    assert "$xsrc/_ptardiff" is_file
}
@test 'more_src has _ptpython' {
    assert "$xsrc/_ptpython" is_file
}
@test 'more_src has _pueue' {
    assert "$xsrc/_pueue" is_file
}
@test 'more_src has _pug' {
    assert "$xsrc/_pug" is_file
}
@test 'more_src has _pulsectl' {
    assert "$xsrc/_pulsectl" is_file
}
@test 'more_src has _pulsemixer' {
    assert "$xsrc/_pulsemixer" is_file
}
@test 'more_src has _pulumi' {
    assert "$xsrc/_pulumi" is_file
}
@test 'more_src has _pup' {
    assert "$xsrc/_pup" is_file
}
@test 'more_src has _puppet' {
    assert "$xsrc/_puppet" is_file
}
@test 'more_src has _purewebm' {
    assert "$xsrc/_purewebm" is_file
}
@test 'more_src has _purge' {
    assert "$xsrc/_purge" is_file
}
@test 'more_src has _pvesh' {
    assert "$xsrc/_pvesh" is_file
}
@test 'more_src has _pwsafe' {
    assert "$xsrc/_pwsafe" is_file
}
@test 'more_src has _py-spy' {
    assert "$xsrc/_py-spy" is_file
}
@test 'more_src has _pycharm' {
    assert "$xsrc/_pycharm" is_file
}
@test 'more_src has _pyenv' {
    assert "$xsrc/_pyenv" is_file
}
@test 'more_src has _pyinfra' {
    assert "$xsrc/_pyinfra" is_file
}
@test 'more_src has _pyoxidizer' {
    assert "$xsrc/_pyoxidizer" is_file
}
@test 'more_src has _pyprof2html' {
    assert "$xsrc/_pyprof2html" is_file
}
@test 'more_src has _pyres_manager' {
    assert "$xsrc/_pyres_manager" is_file
}
@test 'more_src has _pyres_scheduler' {
    assert "$xsrc/_pyres_scheduler" is_file
}
@test 'more_src has _pyres_web' {
    assert "$xsrc/_pyres_web" is_file
}
@test 'more_src has _pyres_worker' {
    assert "$xsrc/_pyres_worker" is_file
}
@test 'more_src has _pyright' {
    assert "$xsrc/_pyright" is_file
}
@test 'more_src has _pyspark' {
    assert "$xsrc/_pyspark" is_file
}
@test 'more_src has _q' {
    assert "$xsrc/_q" is_file
}
@test 'more_src has _qrtool' {
    assert "$xsrc/_qrtool" is_file
}
@test 'more_src has _qsv' {
    assert "$xsrc/_qsv" is_file
}
@test 'more_src has _quantum-nexus' {
    assert "$xsrc/_quantum-nexus" is_file
}
@test 'more_src has _quarkus' {
    assert "$xsrc/_quarkus" is_file
}
@test 'more_src has _quicktype' {
    assert "$xsrc/_quicktype" is_file
}
@test 'more_src has _r2' {
    assert "$xsrc/_r2" is_file
}
@test 'more_src has _raco' {
    assert "$xsrc/_raco" is_file
}
@test 'more_src has _radeontop' {
    assert "$xsrc/_radeontop" is_file
}
@test 'more_src has _radon' {
    assert "$xsrc/_radon" is_file
}
@test 'more_src has _rage' {
    assert "$xsrc/_rage" is_file
}
@test 'more_src has _ragg2-cc' {
    assert "$xsrc/_ragg2-cc" is_file
}
@test 'more_src has _railpack' {
    assert "$xsrc/_railpack" is_file
}
@test 'more_src has _rainfrog' {
    assert "$xsrc/_rainfrog" is_file
}
@test 'more_src has _rancher' {
    assert "$xsrc/_rancher" is_file
}
@test 'more_src has _rapid-git' {
    assert "$xsrc/_rapid-git" is_file
}
@test 'more_src has _rargs' {
    assert "$xsrc/_rargs" is_file
}
@test 'more_src has _ratchet' {
    assert "$xsrc/_ratchet" is_file
}
@test 'more_src has _rbenv' {
    assert "$xsrc/_rbenv" is_file
}
@test 'more_src has _rbw' {
    assert "$xsrc/_rbw" is_file
}
@test 'more_src has _rc-status' {
    assert "$xsrc/_rc-status" is_file
}
@test 'more_src has _rclone' {
    assert "$xsrc/_rclone" is_file
}
@test 'more_src has _rcm' {
    assert "$xsrc/_rcm" is_file
}
@test 'more_src has _rdiff-backup' {
    assert "$xsrc/_rdiff-backup" is_file
}
@test 'more_src has _rdm' {
    assert "$xsrc/_rdm" is_file
}
@test 'more_src has _re-run' {
    assert "$xsrc/_re-run" is_file
}
@test 'more_src has _re2d' {
    assert "$xsrc/_re2d" is_file
}
@test 'more_src has _re2hs' {
    assert "$xsrc/_re2hs" is_file
}
@test 'more_src has _re2js' {
    assert "$xsrc/_re2js" is_file
}
@test 'more_src has _re2ocaml' {
    assert "$xsrc/_re2ocaml" is_file
}
@test 'more_src has _re2py' {
    assert "$xsrc/_re2py" is_file
}
@test 'more_src has _re2swift' {
    assert "$xsrc/_re2swift" is_file
}
@test 'more_src has _re2v' {
    assert "$xsrc/_re2v" is_file
}
@test 'more_src has _re2zig' {
    assert "$xsrc/_re2zig" is_file
}
@test 'more_src has _reattach-to-user-namespace' {
    assert "$xsrc/_reattach-to-user-namespace" is_file
}
@test 'more_src has _recoll' {
    assert "$xsrc/_recoll" is_file
}
@test 'more_src has _redis-check-rdb' {
    assert "$xsrc/_redis-check-rdb" is_file
}
@test 'more_src has _redo' {
    assert "$xsrc/_redo" is_file
}
@test 'more_src has _redress' {
    assert "$xsrc/_redress" is_file
}
@test 'more_src has _redstr' {
    assert "$xsrc/_redstr" is_file
}
@test 'more_src has _reflex' {
    assert "$xsrc/_reflex" is_file
}
@test 'more_src has _regctl' {
    assert "$xsrc/_regctl" is_file
}
@test 'more_src has _reginald.zsh' {
    assert "$xsrc/_reginald.zsh" is_file
}
@test 'more_src has _rekor' {
    assert "$xsrc/_rekor" is_file
}
@test 'more_src has _relay' {
    assert "$xsrc/_relay" is_file
}
@test 'more_src has _release-it' {
    assert "$xsrc/_release-it" is_file
}
@test 'more_src has _remarshal' {
    assert "$xsrc/_remarshal" is_file
}
@test 'more_src has _ren' {
    assert "$xsrc/_ren" is_file
}
@test 'more_src has _replit' {
    assert "$xsrc/_replit" is_file
}
@test 'more_src has _repo' {
    assert "$xsrc/_repo" is_file
}
@test 'more_src has _repomix' {
    assert "$xsrc/_repomix" is_file
}
@test 'more_src has _repos-manager' {
    assert "$xsrc/_repos-manager" is_file
}
@test 'more_src has _restic' {
    assert "$xsrc/_restic" is_file
}
@test 'more_src has _resticprofile' {
    assert "$xsrc/_resticprofile" is_file
}
@test 'more_src has _revive' {
    assert "$xsrc/_revive" is_file
}
@test 'more_src has _revshellgen' {
    assert "$xsrc/_revshellgen" is_file
}
@test 'more_src has _rga' {
    assert "$xsrc/_rga" is_file
}
@test 'more_src has _rgr' {
    assert "$xsrc/_rgr" is_file
}
@test 'more_src has _rgxg' {
    assert "$xsrc/_rgxg" is_file
}
@test 'more_src has _rider' {
    assert "$xsrc/_rider" is_file
}
@test 'more_src has _riji' {
    assert "$xsrc/_riji" is_file
}
@test 'more_src has _rip' {
    assert "$xsrc/_rip" is_file
}
@test 'more_src has _rip2' {
    assert "$xsrc/_rip2" is_file
}
@test 'more_src has _rippkgs' {
    assert "$xsrc/_rippkgs" is_file
}
@test 'more_src has _risor' {
    assert "$xsrc/_risor" is_file
}
@test 'more_src has _river' {
    assert "$xsrc/_river" is_file
}
@test 'more_src has _rke2' {
    assert "$xsrc/_rke2" is_file
}
@test 'more_src has _rlytest' {
    assert "$xsrc/_rlytest" is_file
}
@test 'more_src has _rmtrash' {
    assert "$xsrc/_rmtrash" is_file
}
@test 'more_src has _rnix-fmt' {
    assert "$xsrc/_rnix-fmt" is_file
}
@test 'more_src has _rnr' {
    assert "$xsrc/_rnr" is_file
}
@test 'more_src has _robo' {
    assert "$xsrc/_robo" is_file
}
@test 'more_src has _roer' {
    assert "$xsrc/_roer" is_file
}
@test 'more_src has _rofi' {
    assert "$xsrc/_rofi" is_file
}
@test 'more_src has _rojo' {
    assert "$xsrc/_rojo" is_file
}
@test 'more_src has _rooster' {
    assert "$xsrc/_rooster" is_file
}
@test 'more_src has _ropper' {
    assert "$xsrc/_ropper" is_file
}
@test 'more_src has _ros' {
    assert "$xsrc/_ros" is_file
}
@test 'more_src has _route53' {
    assert "$xsrc/_route53" is_file
}
@test 'more_src has _rover' {
    assert "$xsrc/_rover" is_file
}
@test 'more_src has _rpk' {
    assert "$xsrc/_rpk" is_file
}
@test 'more_src has _rr' {
    assert "$xsrc/_rr" is_file
}
@test 'more_src has _rspamadm' {
    assert "$xsrc/_rspamadm" is_file
}
@test 'more_src has _rsvm' {
    assert "$xsrc/_rsvm" is_file
}
@test 'more_src has _rtk' {
    assert "$xsrc/_rtk" is_file
}
@test 'more_src has _rts' {
    assert "$xsrc/_rts" is_file
}
@test 'more_src has _rtx' {
    assert "$xsrc/_rtx" is_file
}
@test 'more_src has _rubymine' {
    assert "$xsrc/_rubymine" is_file
}
@test 'more_src has _ruff' {
    assert "$xsrc/_ruff" is_file
}
@test 'more_src has _runme' {
    assert "$xsrc/_runme" is_file
}
@test 'more_src has _runsv' {
    assert "$xsrc/_runsv" is_file
}
@test 'more_src has _runsvdir' {
    assert "$xsrc/_runsvdir" is_file
}
@test 'more_src has _ruplacer' {
    assert "$xsrc/_ruplacer" is_file
}
@test 'more_src has _rush' {
    assert "$xsrc/_rush" is_file
}
@test 'more_src has _rust' {
    assert "$xsrc/_rust" is_file
}
@test 'more_src has _rust-analyzer' {
    assert "$xsrc/_rust-analyzer" is_file
}
@test 'more_src has _rustcat' {
    assert "$xsrc/_rustcat" is_file
}
@test 'more_src has _rustic' {
    assert "$xsrc/_rustic" is_file
}
@test 'more_src has _rustlings' {
    assert "$xsrc/_rustlings" is_file
}
@test 'more_src has _rustscan' {
    assert "$xsrc/_rustscan" is_file
}
@test 'more_src has _rvm' {
    assert "$xsrc/_rvm" is_file
}
@test 'more_src has _rye' {
    assert "$xsrc/_rye" is_file
}
@test 'more_src has _s-tui' {
    assert "$xsrc/_s-tui" is_file
}
@test 'more_src has _s3.zsh' {
    assert "$xsrc/_s3.zsh" is_file
}
@test 'more_src has _s3cmd' {
    assert "$xsrc/_s3cmd" is_file
}
@test 'more_src has _s5cmd' {
    assert "$xsrc/_s5cmd" is_file
}
@test 'more_src has _sad' {
    assert "$xsrc/_sad" is_file
}
@test 'more_src has _safety' {
    assert "$xsrc/_safety" is_file
}
@test 'more_src has _sam' {
    assert "$xsrc/_sam" is_file
}
@test 'more_src has _saml2aws' {
    assert "$xsrc/_saml2aws" is_file
}
@test 'more_src has _sampleproc' {
    assert "$xsrc/_sampleproc" is_file
}
@test 'more_src has _sampler' {
    assert "$xsrc/_sampler" is_file
}
@test 'more_src has _samtools' {
    assert "$xsrc/_samtools" is_file
}
@test 'more_src has _sandy' {
    assert "$xsrc/_sandy" is_file
}
@test 'more_src has _sanoid' {
    assert "$xsrc/_sanoid" is_file
}
@test 'more_src has _sapling' {
    assert "$xsrc/_sapling" is_file
}
@test 'more_src has _sarif' {
    assert "$xsrc/_sarif" is_file
}
@test 'more_src has _sassc' {
    assert "$xsrc/_sassc" is_file
}
@test 'more_src has _sbozyp' {
    assert "$xsrc/_sbozyp" is_file
}
@test 'more_src has _sc-im' {
    assert "$xsrc/_sc-im" is_file
}
@test 'more_src has _scaffold' {
    assert "$xsrc/_scaffold" is_file
}
@test 'more_src has _scalafmt' {
    assert "$xsrc/_scalafmt" is_file
}
@test 'more_src has _scalemogrifier' {
    assert "$xsrc/_scalemogrifier" is_file
}
@test 'more_src has _scaphandre' {
    assert "$xsrc/_scaphandre" is_file
}
@test 'more_src has _scc' {
    assert "$xsrc/_scc" is_file
}
@test 'more_src has _sccache' {
    assert "$xsrc/_sccache" is_file
}
@test 'more_src has _scd' {
    assert "$xsrc/_scd" is_file
}
@test 'more_src has _scdoc' {
    assert "$xsrc/_scdoc" is_file
}
@test 'more_src has _schemathesis' {
    assert "$xsrc/_schemathesis" is_file
}
@test 'more_src has _score' {
    assert "$xsrc/_score" is_file
}
@test 'more_src has _scrcpy' {
    assert "$xsrc/_scrcpy" is_file
}
@test 'more_src has _screenkey' {
    assert "$xsrc/_screenkey" is_file
}
@test 'more_src has _scribus' {
    assert "$xsrc/_scribus" is_file
}
@test 'more_src has _scripts-cli.sh' {
    assert "$xsrc/_scripts-cli.sh" is_file
}
@test 'more_src has _scw' {
    assert "$xsrc/_scw" is_file
}
@test 'more_src has _sd' {
    assert "$xsrc/_sd" is_file
}
@test 'more_src has _sdef' {
    assert "$xsrc/_sdef" is_file
}
@test 'more_src has _sdkman' {
    assert "$xsrc/_sdkman" is_file
}
@test 'more_src has _searchdiagnose' {
    assert "$xsrc/_searchdiagnose" is_file
}
@test 'more_src has _searchnmapscript' {
    assert "$xsrc/_searchnmapscript" is_file
}
@test 'more_src has _selene' {
    assert "$xsrc/_selene" is_file
}
@test 'more_src has _semaphore' {
    assert "$xsrc/_semaphore" is_file
}
@test 'more_src has _semgrep' {
    assert "$xsrc/_semgrep" is_file
}
@test 'more_src has _sensor-hub' {
    assert "$xsrc/_sensor-hub" is_file
}
@test 'more_src has _sentry-cli' {
    assert "$xsrc/_sentry-cli" is_file
}
@test 'more_src has _sequin' {
    assert "$xsrc/_sequin" is_file
}
@test 'more_src has _serie' {
    assert "$xsrc/_serie" is_file
}
@test 'more_src has _serpl' {
    assert "$xsrc/_serpl" is_file
}
@test 'more_src has _serverless' {
    assert "$xsrc/_serverless" is_file
}
@test 'more_src has _sesh' {
    assert "$xsrc/_sesh" is_file
}
@test 'more_src has _setsebool' {
    assert "$xsrc/_setsebool" is_file
}
@test 'more_src has _sfdx' {
    assert "$xsrc/_sfdx" is_file
}
@test 'more_src has _sgpt' {
    assert "$xsrc/_sgpt" is_file
}
@test 'more_src has _sha-tarkistin.sh' {
    assert "$xsrc/_sha-tarkistin.sh" is_file
}
@test 'more_src has _shadcn' {
    assert "$xsrc/_shadcn" is_file
}
@test 'more_src has _shadow' {
    assert "$xsrc/_shadow" is_file
}
@test 'more_src has _shark-cli' {
    assert "$xsrc/_shark-cli" is_file
}
@test 'more_src has _sheets' {
    assert "$xsrc/_sheets" is_file
}
@test 'more_src has _sheldon' {
    assert "$xsrc/_sheldon" is_file
}
@test 'more_src has _shell-genie' {
    assert "$xsrc/_shell-genie" is_file
}
@test 'more_src has _shell2http' {
    assert "$xsrc/_shell2http" is_file
}
@test 'more_src has _shellharden' {
    assert "$xsrc/_shellharden" is_file
}
@test 'more_src has _shellspec' {
    assert "$xsrc/_shellspec" is_file
}
@test 'more_src has _sherlock' {
    assert "$xsrc/_sherlock" is_file
}
@test 'more_src has _shopify' {
    assert "$xsrc/_shopify" is_file
}
@test 'more_src has _shotcut' {
    assert "$xsrc/_shotcut" is_file
}
@test 'more_src has _shroud' {
    assert "$xsrc/_shroud" is_file
}
@test 'more_src has _sic' {
    assert "$xsrc/_sic" is_file
}
@test 'more_src has _signal-cli' {
    assert "$xsrc/_signal-cli" is_file
}
@test 'more_src has _silicon' {
    assert "$xsrc/_silicon" is_file
}
@test 'more_src has _sk' {
    assert "$xsrc/_sk" is_file
}
@test 'more_src has _skaffold' {
    assert "$xsrc/_skaffold" is_file
}
@test 'more_src has _skate' {
    assert "$xsrc/_skate" is_file
}
@test 'more_src has _skhd' {
    assert "$xsrc/_skhd" is_file
}
@test 'more_src has _skills-ref' {
    assert "$xsrc/_skills-ref" is_file
}
@test 'more_src has _skillshare' {
    assert "$xsrc/_skillshare" is_file
}
@test 'more_src has _skim' {
    assert "$xsrc/_skim" is_file
}
@test 'more_src has _skopeo' {
    assert "$xsrc/_skopeo" is_file
}
@test 'more_src has _skupper' {
    assert "$xsrc/_skupper" is_file
}
@test 'more_src has _slides' {
    assert "$xsrc/_slides" is_file
}
@test 'more_src has _slint' {
    assert "$xsrc/_slint" is_file
}
@test 'more_src has _sloc' {
    assert "$xsrc/_sloc" is_file
}
@test 'more_src has _sloccount' {
    assert "$xsrc/_sloccount" is_file
}
@test 'more_src has _sloth' {
    assert "$xsrc/_sloth" is_file
}
@test 'more_src has _slurp' {
    assert "$xsrc/_slurp" is_file
}
@test 'more_src has _smart-sudo.zsh' {
    assert "$xsrc/_smart-sudo.zsh" is_file
}
@test 'more_src has _smartmontools' {
    assert "$xsrc/_smartmontools" is_file
}
@test 'more_src has _smhkd' {
    assert "$xsrc/_smhkd" is_file
}
@test 'more_src has _smug' {
    assert "$xsrc/_smug" is_file
}
@test 'more_src has _snakemake' {
    assert "$xsrc/_snakemake" is_file
}
@test 'more_src has _snapcraft' {
    assert "$xsrc/_snapcraft" is_file
}
@test 'more_src has _snaplet' {
    assert "$xsrc/_snaplet" is_file
}
@test 'more_src has _sndfile-cmp' {
    assert "$xsrc/_sndfile-cmp" is_file
}
@test 'more_src has _sndfile-concat' {
    assert "$xsrc/_sndfile-concat" is_file
}
@test 'more_src has _sndfile-deinterleave' {
    assert "$xsrc/_sndfile-deinterleave" is_file
}
@test 'more_src has _sndfile-info' {
    assert "$xsrc/_sndfile-info" is_file
}
@test 'more_src has _sndfile-interleave' {
    assert "$xsrc/_sndfile-interleave" is_file
}
@test 'more_src has _sndfile-play' {
    assert "$xsrc/_sndfile-play" is_file
}
@test 'more_src has _sndfile-salvage' {
    assert "$xsrc/_sndfile-salvage" is_file
}
@test 'more_src has _sniffglue' {
    assert "$xsrc/_sniffglue" is_file
}
@test 'more_src has _sniffnet' {
    assert "$xsrc/_sniffnet" is_file
}
@test 'more_src has _sniprun' {
    assert "$xsrc/_sniprun" is_file
}
@test 'more_src has _snowpack' {
    assert "$xsrc/_snowpack" is_file
}
@test 'more_src has _snyk' {
    assert "$xsrc/_snyk" is_file
}
@test 'more_src has _so' {
    assert "$xsrc/_so" is_file
}
@test 'more_src has _soft-serve' {
    assert "$xsrc/_soft-serve" is_file
}
@test 'more_src has _softwareupdate' {
    assert "$xsrc/_softwareupdate" is_file
}
@test 'more_src has _soju' {
    assert "$xsrc/_soju" is_file
}
@test 'more_src has _solana' {
    assert "$xsrc/_solana" is_file
}
@test 'more_src has _solc-select' {
    assert "$xsrc/_solc-select" is_file
}
@test 'more_src has _somo' {
    assert "$xsrc/_somo" is_file
}
@test 'more_src has _sonar-scanner' {
    assert "$xsrc/_sonar-scanner" is_file
}
@test 'more_src has _sonobuoy' {
    assert "$xsrc/_sonobuoy" is_file
}
@test 'more_src has _sops' {
    assert "$xsrc/_sops" is_file
}
@test 'more_src has _sourcekit-lsp' {
    assert "$xsrc/_sourcekit-lsp" is_file
}
@test 'more_src has _sourcekitten' {
    assert "$xsrc/_sourcekitten" is_file
}
@test 'more_src has _spacer' {
    assert "$xsrc/_spacer" is_file
}
@test 'more_src has _spack' {
    assert "$xsrc/_spack" is_file
}
@test 'more_src has _spark' {
    assert "$xsrc/_spark" is_file
}
@test 'more_src has _spectral' {
    assert "$xsrc/_spectral" is_file
}
@test 'more_src has _specular' {
    assert "$xsrc/_specular" is_file
}
@test 'more_src has _spicedb' {
    assert "$xsrc/_spicedb" is_file
}
@test 'more_src has _spin' {
    assert "$xsrc/_spin" is_file
}
@test 'more_src has _splain' {
    assert "$xsrc/_splain" is_file
}
@test 'more_src has _splash' {
    assert "$xsrc/_splash" is_file
}
@test 'more_src has _spool' {
    assert "$xsrc/_spool" is_file
}
@test 'more_src has _spotlighter' {
    assert "$xsrc/_spotlighter" is_file
}
@test 'more_src has _spreet' {
    assert "$xsrc/_spreet" is_file
}
@test 'more_src has _sprocket' {
    assert "$xsrc/_sprocket" is_file
}
@test 'more_src has _sq' {
    assert "$xsrc/_sq" is_file
}
@test 'more_src has _sqitch' {
    assert "$xsrc/_sqitch" is_file
}
@test 'more_src has _sql2csv' {
    assert "$xsrc/_sql2csv" is_file
}
@test 'more_src has _sqlc' {
    assert "$xsrc/_sqlc" is_file
}
@test 'more_src has _sqlfluff' {
    assert "$xsrc/_sqlfluff" is_file
}
@test 'more_src has _sqlite-utils' {
    assert "$xsrc/_sqlite-utils" is_file
}
@test 'more_src has _sqlx' {
    assert "$xsrc/_sqlx" is_file
}
@test 'more_src has _squishy' {
    assert "$xsrc/_squishy" is_file
}
@test 'more_src has _srt-tunnel' {
    assert "$xsrc/_srt-tunnel" is_file
}
@test 'more_src has _ssh-audit' {
    assert "$xsrc/_ssh-audit" is_file
}
@test 'more_src has _ssh3' {
    assert "$xsrc/_ssh3" is_file
}
@test 'more_src has _sshch' {
    assert "$xsrc/_sshch" is_file
}
@test 'more_src has _sshuttle' {
    assert "$xsrc/_sshuttle" is_file
}
@test 'more_src has _ssl-opt.sh' {
    assert "$xsrc/_ssl-opt.sh" is_file
}
@test 'more_src has _stack' {
    assert "$xsrc/_stack" is_file
}
@test 'more_src has _starboard' {
    assert "$xsrc/_starboard" is_file
}
@test 'more_src has _starlark' {
    assert "$xsrc/_starlark" is_file
}
@test 'more_src has _starman' {
    assert "$xsrc/_starman" is_file
}
@test 'more_src has _start_server' {
    assert "$xsrc/_start_server" is_file
}
@test 'more_src has _stateset' {
    assert "$xsrc/_stateset" is_file
}
@test 'more_src has _staticcheck' {
    assert "$xsrc/_staticcheck" is_file
}
@test 'more_src has _statix' {
    assert "$xsrc/_statix" is_file
}
@test 'more_src has _steampipe' {
    assert "$xsrc/_steampipe" is_file
}
@test 'more_src has _stellar-xdr' {
    assert "$xsrc/_stellar-xdr" is_file
}
@test 'more_src has _step' {
    assert "$xsrc/_step" is_file
}
@test 'more_src has _stepci' {
    assert "$xsrc/_stepci" is_file
}
@test 'more_src has _stern' {
    assert "$xsrc/_stern" is_file
}
@test 'more_src has _stevedore' {
    assert "$xsrc/_stevedore" is_file
}
@test 'more_src has _stew' {
    assert "$xsrc/_stew" is_file
}
@test 'more_src has _stg' {
    assert "$xsrc/_stg" is_file
}
@test 'more_src has _sti' {
    assert "$xsrc/_sti" is_file
}
@test 'more_src has _storagectl' {
    assert "$xsrc/_storagectl" is_file
}
@test 'more_src has _storj' {
    assert "$xsrc/_storj" is_file
}
@test 'more_src has _stork' {
    assert "$xsrc/_stork" is_file
}
@test 'more_src has _stow' {
    assert "$xsrc/_stow" is_file
}
@test 'more_src has _streamlink' {
    assert "$xsrc/_streamlink" is_file
}
@test 'more_src has _strerror' {
    assert "$xsrc/_strerror" is_file
}
@test 'more_src has _stress' {
    assert "$xsrc/_stress" is_file
}
@test 'more_src has _stress-ng' {
    assert "$xsrc/_stress-ng" is_file
}
@test 'more_src has _strimzi' {
    assert "$xsrc/_strimzi" is_file
}
@test 'more_src has _stripe' {
    assert "$xsrc/_stripe" is_file
}
@test 'more_src has _sttr' {
    assert "$xsrc/_sttr" is_file
}
@test 'more_src has _studio' {
    assert "$xsrc/_studio" is_file
}
@test 'more_src has _stylelint' {
    assert "$xsrc/_stylelint" is_file
}
@test 'more_src has _stylua' {
    assert "$xsrc/_stylua" is_file
}
@test 'more_src has _subctl' {
    assert "$xsrc/_subctl" is_file
}
@test 'more_src has _subfinder' {
    assert "$xsrc/_subfinder" is_file
}
@test 'more_src has _sui' {
    assert "$xsrc/_sui" is_file
}
@test 'more_src has _supabase' {
    assert "$xsrc/_supabase" is_file
}
@test 'more_src has _superfile' {
    assert "$xsrc/_superfile" is_file
}
@test 'more_src has _suricata' {
    assert "$xsrc/_suricata" is_file
}
@test 'more_src has _surreal' {
    assert "$xsrc/_surreal" is_file
}
@test 'more_src has _svgcleaner' {
    assert "$xsrc/_svgcleaner" is_file
}
@test 'more_src has _svgo' {
    assert "$xsrc/_svgo" is_file
}
@test 'more_src has _svnbench' {
    assert "$xsrc/_svnbench" is_file
}
@test 'more_src has _svndumpfilter' {
    assert "$xsrc/_svndumpfilter" is_file
}
@test 'more_src has _svnfsfs' {
    assert "$xsrc/_svnfsfs" is_file
}
@test 'more_src has _svnlook' {
    assert "$xsrc/_svnlook" is_file
}
@test 'more_src has _svnrdump' {
    assert "$xsrc/_svnrdump" is_file
}
@test 'more_src has _svnsync' {
    assert "$xsrc/_svnsync" is_file
}
@test 'more_src has _svu' {
    assert "$xsrc/_svu" is_file
}
@test 'more_src has _swag' {
    assert "$xsrc/_swag" is_file
}
@test 'more_src has _swaymsg' {
    assert "$xsrc/_swaymsg" is_file
}
@test 'more_src has _swc' {
    assert "$xsrc/_swc" is_file
}
@test 'more_src has _sweagent' {
    assert "$xsrc/_sweagent" is_file
}
@test 'more_src has _swift-section' {
    assert "$xsrc/_swift-section" is_file
}
@test 'more_src has _switch' {
    assert "$xsrc/_switch" is_file
}
@test 'more_src has _sxiv' {
    assert "$xsrc/_sxiv" is_file
}
@test 'more_src has _syft' {
    assert "$xsrc/_syft" is_file
}
@test 'more_src has _synctex' {
    assert "$xsrc/_synctex" is_file
}
@test 'more_src has _syncthing' {
    assert "$xsrc/_syncthing" is_file
}
@test 'more_src has _synergy' {
    assert "$xsrc/_synergy" is_file
}
@test 'more_src has _sysdig' {
    assert "$xsrc/_sysdig" is_file
}
@test 'more_src has _systemd-sysinstall' {
    assert "$xsrc/_systemd-sysinstall" is_file
}
@test 'more_src has _systemextensionsctl' {
    assert "$xsrc/_systemextensionsctl" is_file
}
@test 'more_src has _systeroid' {
    assert "$xsrc/_systeroid" is_file
}
@test 'more_src has _t-rec' {
    assert "$xsrc/_t-rec" is_file
}
@test 'more_src has _t2' {
    assert "$xsrc/_t2" is_file
}
@test 'more_src has _tab' {
    assert "$xsrc/_tab" is_file
}
@test 'more_src has _tailscale' {
    assert "$xsrc/_tailscale" is_file
}
@test 'more_src has _talisman' {
    assert "$xsrc/_talisman" is_file
}
@test 'more_src has _talosctl' {
    assert "$xsrc/_talosctl" is_file
}
@test 'more_src has _tango' {
    assert "$xsrc/_tango" is_file
}
@test 'more_src has _tanka' {
    assert "$xsrc/_tanka" is_file
}
@test 'more_src has _tanzu' {
    assert "$xsrc/_tanzu" is_file
}
@test 'more_src has _taplo' {
    assert "$xsrc/_taplo" is_file
}
@test 'more_src has _tarsnap' {
    assert "$xsrc/_tarsnap" is_file
}
@test 'more_src has _tart' {
    assert "$xsrc/_tart" is_file
}
@test 'more_src has _task' {
    assert "$xsrc/_task" is_file
}
@test 'more_src has _taskadmin' {
    assert "$xsrc/_taskadmin" is_file
}
@test 'more_src has _taskell' {
    assert "$xsrc/_taskell" is_file
}
@test 'more_src has _taskfile' {
    assert "$xsrc/_taskfile" is_file
}
@test 'more_src has _taskinfo' {
    assert "$xsrc/_taskinfo" is_file
}
@test 'more_src has _taskopen' {
    assert "$xsrc/_taskopen" is_file
}
@test 'more_src has _taskwarrior-tui' {
    assert "$xsrc/_taskwarrior-tui" is_file
}
@test 'more_src has _tattoy' {
    assert "$xsrc/_tattoy" is_file
}
@test 'more_src has _tawiza' {
    assert "$xsrc/_tawiza" is_file
}
@test 'more_src has _tazpkg' {
    assert "$xsrc/_tazpkg" is_file
}
@test 'more_src has _tccutil' {
    assert "$xsrc/_tccutil" is_file
}
@test 'more_src has _tclsh' {
    assert "$xsrc/_tclsh" is_file
}
@test 'more_src has _tctl' {
    assert "$xsrc/_tctl" is_file
}
@test 'more_src has _tdns-mgr' {
    assert "$xsrc/_tdns-mgr" is_file
}
@test 'more_src has _tea' {
    assert "$xsrc/_tea" is_file
}
@test 'more_src has _tealdeer' {
    assert "$xsrc/_tealdeer" is_file
}
@test 'more_src has _tec.zsh' {
    assert "$xsrc/_tec.zsh" is_file
}
@test 'more_src has _tectonic' {
    assert "$xsrc/_tectonic" is_file
}
@test 'more_src has _teensy_loader_cli' {
    assert "$xsrc/_teensy_loader_cli" is_file
}
@test 'more_src has _teip' {
    assert "$xsrc/_teip" is_file
}
@test 'more_src has _tekhton' {
    assert "$xsrc/_tekhton" is_file
}
@test 'more_src has _telegraf' {
    assert "$xsrc/_telegraf" is_file
}
@test 'more_src has _telepresence' {
    assert "$xsrc/_telepresence" is_file
}
@test 'more_src has _teller' {
    assert "$xsrc/_teller" is_file
}
@test 'more_src has _templ' {
    assert "$xsrc/_templ" is_file
}
@test 'more_src has _temporal' {
    assert "$xsrc/_temporal" is_file
}
@test 'more_src has _termdown' {
    assert "$xsrc/_termdown" is_file
}
@test 'more_src has _termgraph' {
    assert "$xsrc/_termgraph" is_file
}
@test 'more_src has _terminal-notifier' {
    assert "$xsrc/_terminal-notifier" is_file
}
@test 'more_src has _terminator' {
    assert "$xsrc/_terminator" is_file
}
@test 'more_src has _terminitor' {
    assert "$xsrc/_terminitor" is_file
}
@test 'more_src has _termscp' {
    assert "$xsrc/_termscp" is_file
}
@test 'more_src has _termshark' {
    assert "$xsrc/_termshark" is_file
}
@test 'more_src has _termshot' {
    assert "$xsrc/_termshot" is_file
}
@test 'more_src has _termtosvg' {
    assert "$xsrc/_termtosvg" is_file
}
@test 'more_src has _terraform-docs' {
    assert "$xsrc/_terraform-docs" is_file
}
@test 'more_src has _terraform-ls' {
    assert "$xsrc/_terraform-ls" is_file
}
@test 'more_src has _terragrunt' {
    assert "$xsrc/_terragrunt" is_file
}
@test 'more_src has _terramate' {
    assert "$xsrc/_terramate" is_file
}
@test 'more_src has _terrascan' {
    assert "$xsrc/_terrascan" is_file
}
@test 'more_src has _testdisk' {
    assert "$xsrc/_testdisk" is_file
}
@test 'more_src has _texlab' {
    assert "$xsrc/_texlab" is_file
}
@test 'more_src has _texloganalyser' {
    assert "$xsrc/_texloganalyser" is_file
}
@test 'more_src has _texplate' {
    assert "$xsrc/_texplate" is_file
}
@test 'more_src has _textimg' {
    assert "$xsrc/_textimg" is_file
}
@test 'more_src has _textql' {
    assert "$xsrc/_textql" is_file
}
@test 'more_src has _tf' {
    assert "$xsrc/_tf" is_file
}
@test 'more_src has _tfenv' {
    assert "$xsrc/_tfenv" is_file
}
@test 'more_src has _tflint' {
    assert "$xsrc/_tflint" is_file
}
@test 'more_src has _tfsec' {
    assert "$xsrc/_tfsec" is_file
}
@test 'more_src has _tfswitch' {
    assert "$xsrc/_tfswitch" is_file
}
@test 'more_src has _tgpt' {
    assert "$xsrc/_tgpt" is_file
}
@test 'more_src has _tgswitch' {
    assert "$xsrc/_tgswitch" is_file
}
@test 'more_src has _thanos' {
    assert "$xsrc/_thanos" is_file
}
@test 'more_src has _the_silver_searcher' {
    assert "$xsrc/_the_silver_searcher" is_file
}
@test 'more_src has _tibet' {
    assert "$xsrc/_tibet" is_file
}
@test 'more_src has _tidyp' {
    assert "$xsrc/_tidyp" is_file
}
@test 'more_src has _timeshift' {
    assert "$xsrc/_timeshift" is_file
}
@test 'more_src has _timetrap' {
    assert "$xsrc/_timetrap" is_file
}
@test 'more_src has _timew' {
    assert "$xsrc/_timew" is_file
}
@test 'more_src has _timg' {
    assert "$xsrc/_timg" is_file
}
@test 'more_src has _timoni' {
    assert "$xsrc/_timoni" is_file
}
@test 'more_src has _tint' {
    assert "$xsrc/_tint" is_file
}
@test 'more_src has _tinygo' {
    assert "$xsrc/_tinygo" is_file
}
@test 'more_src has _tiup' {
    assert "$xsrc/_tiup" is_file
}
@test 'more_src has _tkn' {
    assert "$xsrc/_tkn" is_file
}
@test 'more_src has _tldr' {
    assert "$xsrc/_tldr" is_file
}
@test 'more_src has _tlp-radio-device' {
    assert "$xsrc/_tlp-radio-device" is_file
}
@test 'more_src has _tlp-rdw' {
    assert "$xsrc/_tlp-rdw" is_file
}
@test 'more_src has _tlp-run-on' {
    assert "$xsrc/_tlp-run-on" is_file
}
@test 'more_src has _tlsx' {
    assert "$xsrc/_tlsx" is_file
}
@test 'more_src has _tmate' {
    assert "$xsrc/_tmate" is_file
}
@test 'more_src has _tmplt' {
    assert "$xsrc/_tmplt" is_file
}
@test 'more_src has _tmt' {
    assert "$xsrc/_tmt" is_file
}
@test 'more_src has _tmux' {
    assert "$xsrc/_tmux" is_file
}
@test 'more_src has _tmux-cssh' {
    assert "$xsrc/_tmux-cssh" is_file
}
@test 'more_src has _tobs' {
    assert "$xsrc/_tobs" is_file
}
@test 'more_src has _todo-txt' {
    assert "$xsrc/_todo-txt" is_file
}
@test 'more_src has _todoist' {
    assert "$xsrc/_todoist" is_file
}
@test 'more_src has _todoman' {
    assert "$xsrc/_todoman" is_file
}
@test 'more_src has _tofi' {
    assert "$xsrc/_tofi" is_file
}
@test 'more_src has _tofu' {
    assert "$xsrc/_tofu" is_file
}
@test 'more_src has _toggl' {
    assert "$xsrc/_toggl" is_file
}
@test 'more_src has _toggl.zsh' {
    assert "$xsrc/_toggl.zsh" is_file
}
@test 'more_src has _tom' {
    assert "$xsrc/_tom" is_file
}
@test 'more_src has _tomb' {
    assert "$xsrc/_tomb" is_file
}
@test 'more_src has _toodledo' {
    assert "$xsrc/_toodledo" is_file
}
@test 'more_src has _toot' {
    assert "$xsrc/_toot" is_file
}
@test 'more_src has _topgrade' {
    assert "$xsrc/_topgrade" is_file
}
@test 'more_src has _topiary' {
    assert "$xsrc/_topiary" is_file
}
@test 'more_src has _topydo' {
    assert "$xsrc/_topydo" is_file
}
@test 'more_src has _torify' {
    assert "$xsrc/_torify" is_file
}
@test 'more_src has _torrra' {
    assert "$xsrc/_torrra" is_file
}
@test 'more_src has _totpc.zsh' {
    assert "$xsrc/_totpc.zsh" is_file
}
@test 'more_src has _tower-cli' {
    assert "$xsrc/_tower-cli" is_file
}
@test 'more_src has _tracee' {
    assert "$xsrc/_tracee" is_file
}
@test 'more_src has _tracer' {
    assert "$xsrc/_tracer" is_file
}
@test 'more_src has _traefik' {
    assert "$xsrc/_traefik" is_file
}
@test 'more_src has _trash-empty' {
    assert "$xsrc/_trash-empty" is_file
}
@test 'more_src has _trash-list' {
    assert "$xsrc/_trash-list" is_file
}
@test 'more_src has _trash-put' {
    assert "$xsrc/_trash-put" is_file
}
@test 'more_src has _trash-restore' {
    assert "$xsrc/_trash-restore" is_file
}
@test 'more_src has _trash-rm' {
    assert "$xsrc/_trash-rm" is_file
}
@test 'more_src has _travis' {
    assert "$xsrc/_travis" is_file
}
@test 'more_src has _trdsql' {
    assert "$xsrc/_trdsql" is_file
}
@test 'more_src has _tre' {
    assert "$xsrc/_tre" is_file
}
@test 'more_src has _treefmt' {
    assert "$xsrc/_treefmt" is_file
}
@test 'more_src has _trimforce' {
    assert "$xsrc/_trimforce" is_file
}
@test 'more_src has _trippy' {
    assert "$xsrc/_trippy" is_file
}
@test 'more_src has _triton' {
    assert "$xsrc/_triton" is_file
}
@test 'more_src has _triton-tui' {
    assert "$xsrc/_triton-tui" is_file
}
@test 'more_src has _trivy' {
    assert "$xsrc/_trivy" is_file
}
@test 'more_src has _trufflehog' {
    assert "$xsrc/_trufflehog" is_file
}
@test 'more_src has _trunk' {
    assert "$xsrc/_trunk" is_file
}
@test 'more_src has _trurl' {
    assert "$xsrc/_trurl" is_file
}
@test 'more_src has _tsh' {
    assert "$xsrc/_tsh" is_file
}
@test 'more_src has _tsk' {
    assert "$xsrc/_tsk" is_file
}
@test 'more_src has _tsp' {
    assert "$xsrc/_tsp" is_file
}
@test 'more_src has _tspin' {
    assert "$xsrc/_tspin" is_file
}
@test 'more_src has _ttyd' {
    assert "$xsrc/_ttyd" is_file
}
@test 'more_src has _ttyper' {
    assert "$xsrc/_ttyper" is_file
}
@test 'more_src has _ttyplot' {
    assert "$xsrc/_ttyplot" is_file
}
@test 'more_src has _tuc' {
    assert "$xsrc/_tuc" is_file
}
@test 'more_src has _tugboat' {
    assert "$xsrc/_tugboat" is_file
}
@test 'more_src has _tuigreet' {
    assert "$xsrc/_tuigreet" is_file
}
@test 'more_src has _tuist' {
    assert "$xsrc/_tuist" is_file
}
@test 'more_src has _tuna' {
    assert "$xsrc/_tuna" is_file
}
@test 'more_src has _tuptime' {
    assert "$xsrc/_tuptime" is_file
}
@test 'more_src has _turbo' {
    assert "$xsrc/_turbo" is_file
}
@test 'more_src has _turso' {
    assert "$xsrc/_turso" is_file
}
@test 'more_src has _tusk' {
    assert "$xsrc/_tusk" is_file
}
@test 'more_src has _tv' {
    assert "$xsrc/_tv" is_file
}
@test 'more_src has _tvnamer' {
    assert "$xsrc/_tvnamer" is_file
}
@test 'more_src has _tw_gtasks_sync' {
    assert "$xsrc/_tw_gtasks_sync" is_file
}
@test 'more_src has _twig' {
    assert "$xsrc/_twig" is_file
}
@test 'more_src has _typeshare' {
    assert "$xsrc/_typeshare" is_file
}
@test 'more_src has _typos' {
    assert "$xsrc/_typos" is_file
}
@test 'more_src has _typst' {
    assert "$xsrc/_typst" is_file
}
@test 'more_src has _ua' {
    assert "$xsrc/_ua" is_file
}
@test 'more_src has _uair' {
    assert "$xsrc/_uair" is_file
}
@test 'more_src has _uairctl' {
    assert "$xsrc/_uairctl" is_file
}
@test 'more_src has _ubi' {
    assert "$xsrc/_ubi" is_file
}
@test 'more_src has _udiskie-umount' {
    assert "$xsrc/_udiskie-umount" is_file
}
@test 'more_src has _udp2raw_mp' {
    assert "$xsrc/_udp2raw_mp" is_file
}
@test 'more_src has _uftrace' {
    assert "$xsrc/_uftrace" is_file
}
@test 'more_src has _ugit' {
    assert "$xsrc/_ugit" is_file
}
@test 'more_src has _ugrep' {
    assert "$xsrc/_ugrep" is_file
}
@test 'more_src has _uiautomatorviewer' {
    assert "$xsrc/_uiautomatorviewer" is_file
}
@test 'more_src has _uiua' {
    assert "$xsrc/_uiua" is_file
}
@test 'more_src has _ukigumo-agent' {
    assert "$xsrc/_ukigumo-agent" is_file
}
@test 'more_src has _ukigumo-client.pl' {
    assert "$xsrc/_ukigumo-client.pl" is_file
}
@test 'more_src has _ukigumo-server' {
    assert "$xsrc/_ukigumo-server" is_file
}
@test 'more_src has _ultralist' {
    assert "$xsrc/_ultralist" is_file
}
@test 'more_src has _umami' {
    assert "$xsrc/_umami" is_file
}
@test 'more_src has _umb.zsh' {
    assert "$xsrc/_umb.zsh" is_file
}
@test 'more_src has _unar' {
    assert "$xsrc/_unar" is_file
}
@test 'more_src has _unarchive' {
    assert "$xsrc/_unarchive" is_file
}
@test 'more_src has _unfurl' {
    assert "$xsrc/_unfurl" is_file
}
@test 'more_src has _unimatrix' {
    assert "$xsrc/_unimatrix" is_file
}
@test 'more_src has _unmount_share' {
    assert "$xsrc/_unmount_share" is_file
}
@test 'more_src has _unused' {
    assert "$xsrc/_unused" is_file
}
@test 'more_src has _upbound' {
    assert "$xsrc/_upbound" is_file
}
@test 'more_src has _update-my-stuff' {
    assert "$xsrc/_update-my-stuff" is_file
}
@test 'more_src has _updatecli' {
    assert "$xsrc/_updatecli" is_file
}
@test 'more_src has _upterm' {
    assert "$xsrc/_upterm" is_file
}
@test 'more_src has _uri-encode' {
    assert "$xsrc/_uri-encode" is_file
}
@test 'more_src has _urlview' {
    assert "$xsrc/_urlview" is_file
}
@test 'more_src has _usage' {
    assert "$xsrc/_usage" is_file
}
@test 'more_src has _usbguard' {
    assert "$xsrc/_usbguard" is_file
}
@test 'more_src has _usbrip' {
    assert "$xsrc/_usbrip" is_file
}
@test 'more_src has _usql' {
    assert "$xsrc/_usql" is_file
}
@test 'more_src has _uub.zsh' {
    assert "$xsrc/_uub.zsh" is_file
}
@test 'more_src has _v' {
    assert "$xsrc/_v" is_file
}
@test 'more_src has _vagrant-box-search' {
    assert "$xsrc/_vagrant-box-search" is_file
}
@test 'more_src has _vale' {
    assert "$xsrc/_vale" is_file
}
@test 'more_src has _valkey-cli' {
    assert "$xsrc/_valkey-cli" is_file
}
@test 'more_src has _vals' {
    assert "$xsrc/_vals" is_file
}
@test 'more_src has _vapor' {
    assert "$xsrc/_vapor" is_file
}
@test 'more_src has _varnishadm' {
    assert "$xsrc/_varnishadm" is_file
}
@test 'more_src has _varnishlog' {
    assert "$xsrc/_varnishlog" is_file
}
@test 'more_src has _varnishstat' {
    assert "$xsrc/_varnishstat" is_file
}
@test 'more_src has _vault' {
    assert "$xsrc/_vault" is_file
}
@test 'more_src has _vboximg-mount' {
    assert "$xsrc/_vboximg-mount" is_file
}
@test 'more_src has _vcluster' {
    assert "$xsrc/_vcluster" is_file
}
@test 'more_src has _vcpkg' {
    assert "$xsrc/_vcpkg" is_file
}
@test 'more_src has _vcsh' {
    assert "$xsrc/_vcsh" is_file
}
@test 'more_src has _vd' {
    assert "$xsrc/_vd" is_file
}
@test 'more_src has _vdirsyncer' {
    assert "$xsrc/_vdirsyncer" is_file
}
@test 'more_src has _vector' {
    assert "$xsrc/_vector" is_file
}
@test 'more_src has _vegeta' {
    assert "$xsrc/_vegeta" is_file
}
@test 'more_src has _velero' {
    assert "$xsrc/_velero" is_file
}
@test 'more_src has _velox' {
    assert "$xsrc/_velox" is_file
}
@test 'more_src has _vendir' {
    assert "$xsrc/_vendir" is_file
}
@test 'more_src has _venom' {
    assert "$xsrc/_venom" is_file
}
@test 'more_src has _veracrypt' {
    assert "$xsrc/_veracrypt" is_file
}
@test 'more_src has _vercel' {
    assert "$xsrc/_vercel" is_file
}
@test 'more_src has _veribi' {
    assert "$xsrc/_veribi" is_file
}
@test 'more_src has _vertica' {
    assert "$xsrc/_vertica" is_file
}
@test 'more_src has _vet' {
    assert "$xsrc/_vet" is_file
}
@test 'more_src has _veve' {
    assert "$xsrc/_veve" is_file
}
@test 'more_src has _vfox' {
    assert "$xsrc/_vfox" is_file
}
@test 'more_src has _vgrep' {
    assert "$xsrc/_vgrep" is_file
}
@test 'more_src has _vhs' {
    assert "$xsrc/_vhs" is_file
}
@test 'more_src has _viddy' {
    assert "$xsrc/_viddy" is_file
}
@test 'more_src has _viewcore' {
    assert "$xsrc/_viewcore" is_file
}
@test 'more_src has _vifm' {
    assert "$xsrc/_vifm" is_file
}
@test 'more_src has _villain' {
    assert "$xsrc/_villain" is_file
}
@test 'more_src has _vipe' {
    assert "$xsrc/_vipe" is_file
}
@test 'more_src has _virtiofsd' {
    assert "$xsrc/_virtiofsd" is_file
}
@test 'more_src has _virtualbox' {
    assert "$xsrc/_virtualbox" is_file
}
@test 'more_src has _visidata' {
    assert "$xsrc/_visidata" is_file
}
@test 'more_src has _vit' {
    assert "$xsrc/_vit" is_file
}
@test 'more_src has _vite' {
    assert "$xsrc/_vite" is_file
}
@test 'more_src has _vitest' {
    assert "$xsrc/_vitest" is_file
}
@test 'more_src has _viu' {
    assert "$xsrc/_viu" is_file
}
@test 'more_src has _vlt' {
    assert "$xsrc/_vlt" is_file
}
@test 'more_src has _vm_stat' {
    assert "$xsrc/_vm_stat" is_file
}
@test 'more_src has _vmvpn' {
    assert "$xsrc/_vmvpn" is_file
}
@test 'more_src has _volta' {
    assert "$xsrc/_volta" is_file
}
@test 'more_src has _vouch-proxy' {
    assert "$xsrc/_vouch-proxy" is_file
}
@test 'more_src has _vov' {
    assert "$xsrc/_vov" is_file
}
@test 'more_src has _vp' {
    assert "$xsrc/_vp" is_file
}
@test 'more_src has _vpn' {
    assert "$xsrc/_vpn" is_file
}
@test 'more_src has _vrlmrag' {
    assert "$xsrc/_vrlmrag" is_file
}
@test 'more_src has _vsce' {
    assert "$xsrc/_vsce" is_file
}
@test 'more_src has _vscli' {
    assert "$xsrc/_vscli" is_file
}
@test 'more_src has _vspcli' {
    assert "$xsrc/_vspcli" is_file
}
@test 'more_src has _vultr' {
    assert "$xsrc/_vultr" is_file
}
@test 'more_src has _wails' {
    assert "$xsrc/_wails" is_file
}
@test 'more_src has _wait4path' {
    assert "$xsrc/_wait4path" is_file
}
@test 'more_src has _wakatime' {
    assert "$xsrc/_wakatime" is_file
}
@test 'more_src has _wake' {
    assert "$xsrc/_wake" is_file
}
@test 'more_src has _walk' {
    assert "$xsrc/_walk" is_file
}
@test 'more_src has _wallfetch' {
    assert "$xsrc/_wallfetch" is_file
}
@test 'more_src has _warp-cli' {
    assert "$xsrc/_warp-cli" is_file
}
@test 'more_src has _wasm-bindgen' {
    assert "$xsrc/_wasm-bindgen" is_file
}
@test 'more_src has _wasm-dump' {
    assert "$xsrc/_wasm-dump" is_file
}
@test 'more_src has _wasm-opt' {
    assert "$xsrc/_wasm-opt" is_file
}
@test 'more_src has _wasm-pack' {
    assert "$xsrc/_wasm-pack" is_file
}
@test 'more_src has _wasm-run' {
    assert "$xsrc/_wasm-run" is_file
}
@test 'more_src has _wasm-strip' {
    assert "$xsrc/_wasm-strip" is_file
}
@test 'more_src has _wasm-tools' {
    assert "$xsrc/_wasm-tools" is_file
}
@test 'more_src has _wasmer' {
    assert "$xsrc/_wasmer" is_file
}
@test 'more_src has _wasmtime' {
    assert "$xsrc/_wasmtime" is_file
}
@test 'more_src has _watchexec' {
    assert "$xsrc/_watchexec" is_file
}
@test 'more_src has _watchman-diag' {
    assert "$xsrc/_watchman-diag" is_file
}
@test 'more_src has _watson' {
    assert "$xsrc/_watson" is_file
}
@test 'more_src has _wavcmp' {
    assert "$xsrc/_wavcmp" is_file
}
@test 'more_src has _wavinfo' {
    assert "$xsrc/_wavinfo" is_file
}
@test 'more_src has _waybackurls' {
    assert "$xsrc/_waybackurls" is_file
}
@test 'more_src has _waypoint' {
    assert "$xsrc/_waypoint" is_file
}
@test 'more_src has _wazuh' {
    assert "$xsrc/_wazuh" is_file
}
@test 'more_src has _wdocker' {
    assert "$xsrc/_wdocker" is_file
}
@test 'more_src has _webhttrack' {
    assert "$xsrc/_webhttrack" is_file
}
@test 'more_src has _websocat' {
    assert "$xsrc/_websocat" is_file
}
@test 'more_src has _webstorm' {
    assert "$xsrc/_webstorm" is_file
}
@test 'more_src has _werf' {
    assert "$xsrc/_werf" is_file
}
@test 'more_src has _west' {
    assert "$xsrc/_west" is_file
}
@test 'more_src has _wev' {
    assert "$xsrc/_wev" is_file
}
@test 'more_src has _wezterm' {
    assert "$xsrc/_wezterm" is_file
}
@test 'more_src has _wfsctl' {
    assert "$xsrc/_wfsctl" is_file
}
@test 'more_src has _wg' {
    assert "$xsrc/_wg" is_file
}
@test 'more_src has _wgetpaste' {
    assert "$xsrc/_wgetpaste" is_file
}
@test 'more_src has _wgu' {
    assert "$xsrc/_wgu" is_file
}
@test 'more_src has _whalebrew' {
    assert "$xsrc/_whalebrew" is_file
}
@test 'more_src has _whatip' {
    assert "$xsrc/_whatip" is_file
}
@test 'more_src has _wi.sh' {
    assert "$xsrc/_wi.sh" is_file
}
@test 'more_src has _wid' {
    assert "$xsrc/_wid" is_file
}
@test 'more_src has _wiki-tui' {
    assert "$xsrc/_wiki-tui" is_file
}
@test 'more_src has _windmill' {
    assert "$xsrc/_windmill" is_file
}
@test 'more_src has _windscribe' {
    assert "$xsrc/_windscribe" is_file
}
@test 'more_src has _wipe' {
    assert "$xsrc/_wipe" is_file
}
@test 'more_src has _wishlist' {
    assert "$xsrc/_wishlist" is_file
}
@test 'more_src has _wkhtmltoimage' {
    assert "$xsrc/_wkhtmltoimage" is_file
}
@test 'more_src has _wkhtmltopdf' {
    assert "$xsrc/_wkhtmltopdf" is_file
}
@test 'more_src has _wl-copy' {
    assert "$xsrc/_wl-copy" is_file
}
@test 'more_src has _wl-paste' {
    assert "$xsrc/_wl-paste" is_file
}
@test 'more_src has _wlr-randr' {
    assert "$xsrc/_wlr-randr" is_file
}
@test 'more_src has _wo' {
    assert "$xsrc/_wo" is_file
}
@test 'more_src has _wob' {
    assert "$xsrc/_wob" is_file
}
@test 'more_src has _wofi' {
    assert "$xsrc/_wofi" is_file
}
@test 'more_src has _woke' {
    assert "$xsrc/_woke" is_file
}
@test 'more_src has _woodpecker' {
    assert "$xsrc/_woodpecker" is_file
}
@test 'more_src has _wordgrinder' {
    assert "$xsrc/_wordgrinder" is_file
}
@test 'more_src has _workon.zsh' {
    assert "$xsrc/_workon.zsh" is_file
}
@test 'more_src has _wormhole' {
    assert "$xsrc/_wormhole" is_file
}
@test 'more_src has _wpctl' {
    assert "$xsrc/_wpctl" is_file
}
@test 'more_src has _wrangler' {
    assert "$xsrc/_wrangler" is_file
}
@test 'more_src has _wrk' {
    assert "$xsrc/_wrk" is_file
}
@test 'more_src has _wrk2' {
    assert "$xsrc/_wrk2" is_file
}
@test 'more_src has _ws' {
    assert "$xsrc/_ws" is_file
}
@test 'more_src has _ws-session' {
    assert "$xsrc/_ws-session" is_file
}
@test 'more_src has _wtfutil' {
    assert "$xsrc/_wtfutil" is_file
}
@test 'more_src has _wthrr' {
    assert "$xsrc/_wthrr" is_file
}
@test 'more_src has _ww.sh' {
    assert "$xsrc/_ww.sh" is_file
}
@test 'more_src has _wwd.sh' {
    assert "$xsrc/_wwd.sh" is_file
}
@test 'more_src has _x-cmd' {
    assert "$xsrc/_x-cmd" is_file
}
@test 'more_src has _x.py' {
    assert "$xsrc/_x.py" is_file
}
@test 'more_src has _xc' {
    assert "$xsrc/_xc" is_file
}
@test 'more_src has _xcaddy' {
    assert "$xsrc/_xcaddy" is_file
}
@test 'more_src has _xcp' {
    assert "$xsrc/_xcp" is_file
}
@test 'more_src has _xdg-ninja' {
    assert "$xsrc/_xdg-ninja" is_file
}
@test 'more_src has _xeol' {
    assert "$xsrc/_xeol" is_file
}
@test 'more_src has _xh' {
    assert "$xsrc/_xh" is_file
}
@test 'more_src has _xidel' {
    assert "$xsrc/_xidel" is_file
}
@test 'more_src has _xip' {
    assert "$xsrc/_xip" is_file
}
@test 'more_src has _xmake' {
    assert "$xsrc/_xmake" is_file
}
@test 'more_src has _xml2man' {
    assert "$xsrc/_xml2man" is_file
}
@test 'more_src has _xmlif' {
    assert "$xsrc/_xmlif" is_file
}
@test 'more_src has _xonsh' {
    assert "$xsrc/_xonsh" is_file
}
@test 'more_src has _xplr' {
    assert "$xsrc/_xplr" is_file
}
@test 'more_src has _xpquery' {
    assert "$xsrc/_xpquery" is_file
}
@test 'more_src has _xq' {
    assert "$xsrc/_xq" is_file
}
@test 'more_src has _xray' {
    assert "$xsrc/_xray" is_file
}
@test 'more_src has _xsv' {
    assert "$xsrc/_xsv" is_file
}
@test 'more_src has _xxh' {
    assert "$xsrc/_xxh" is_file
}
@test 'more_src has _xzmore' {
    assert "$xsrc/_xzmore" is_file
}
@test 'more_src has _yabai' {
    assert "$xsrc/_yabai" is_file
}
@test 'more_src has _yabb' {
    assert "$xsrc/_yabb" is_file
}
@test 'more_src has _yadm' {
    assert "$xsrc/_yadm" is_file
}
@test 'more_src has _yamlfmt' {
    assert "$xsrc/_yamlfmt" is_file
}
@test 'more_src has _yaourt' {
    assert "$xsrc/_yaourt" is_file
}
@test 'more_src has _yay' {
    assert "$xsrc/_yay" is_file
}
@test 'more_src has _yazi' {
    assert "$xsrc/_yazi" is_file
}
@test 'more_src has _yfm' {
    assert "$xsrc/_yfm" is_file
}
@test 'more_src has _yj' {
    assert "$xsrc/_yj" is_file
}
@test 'more_src has _ykman' {
    assert "$xsrc/_ykman" is_file
}
@test 'more_src has _yosay' {
    assert "$xsrc/_yosay" is_file
}
@test 'more_src has _yq' {
    assert "$xsrc/_yq" is_file
}
@test 'more_src has _ysh' {
    assert "$xsrc/_ysh" is_file
}
@test 'more_src has _yt-dlp' {
    assert "$xsrc/_yt-dlp" is_file
}
@test 'more_src has _ytfzf' {
    assert "$xsrc/_ytfzf" is_file
}
@test 'more_src has _ytt' {
    assert "$xsrc/_ytt" is_file
}
@test 'more_src has _zabbix-cli' {
    assert "$xsrc/_zabbix-cli" is_file
}
@test 'more_src has _zanata-cli' {
    assert "$xsrc/_zanata-cli" is_file
}
@test 'more_src has _zap' {
    assert "$xsrc/_zap" is_file
}
@test 'more_src has _zaproxy' {
    assert "$xsrc/_zaproxy" is_file
}
@test 'more_src has _zarf' {
    assert "$xsrc/_zarf" is_file
}
@test 'more_src has _zathura' {
    assert "$xsrc/_zathura" is_file
}
@test 'more_src has _zcmp' {
    assert "$xsrc/_zcmp" is_file
}
@test 'more_src has _zdiff' {
    assert "$xsrc/_zdiff" is_file
}
@test 'more_src has _zeabur' {
    assert "$xsrc/_zeabur" is_file
}
@test 'more_src has _zek' {
    assert "$xsrc/_zek" is_file
}
@test 'more_src has _zellij' {
    assert "$xsrc/_zellij" is_file
}
@test 'more_src has _zenith' {
    assert "$xsrc/_zenith" is_file
}
@test 'more_src has _zenroom' {
    assert "$xsrc/_zenroom" is_file
}
@test 'more_src has _zerotier-cli' {
    assert "$xsrc/_zerotier-cli" is_file
}
@test 'more_src has _zeus' {
    assert "$xsrc/_zeus" is_file
}
@test 'more_src has _zf' {
    assert "$xsrc/_zf" is_file
}
@test 'more_src has _zfind' {
    assert "$xsrc/_zfind" is_file
}
@test 'more_src has _zig' {
    assert "$xsrc/_zig" is_file
}
@test 'more_src has _zigbee2mqtt' {
    assert "$xsrc/_zigbee2mqtt" is_file
}
@test 'more_src has _zigmod' {
    assert "$xsrc/_zigmod" is_file
}
@test 'more_src has _zild' {
    assert "$xsrc/_zild" is_file
}
@test 'more_src has _zion' {
    assert "$xsrc/_zion" is_file
}
@test 'more_src has _zipgrep' {
    assert "$xsrc/_zipgrep" is_file
}
@test 'more_src has _zitadel' {
    assert "$xsrc/_zitadel" is_file
}
@test 'more_src has _zizmor' {
    assert "$xsrc/_zizmor" is_file
}
@test 'more_src has _zk' {
    assert "$xsrc/_zk" is_file
}
@test 'more_src has _zkCleanup' {
    assert "$xsrc/_zkCleanup" is_file
}
@test 'more_src has _zkCli' {
    assert "$xsrc/_zkCli" is_file
}
@test 'more_src has _zkServer' {
    assert "$xsrc/_zkServer" is_file
}
@test 'more_src has _zli' {
    assert "$xsrc/_zli" is_file
}
@test 'more_src has _zls' {
    assert "$xsrc/_zls" is_file
}
@test 'more_src has _zoekt' {
    assert "$xsrc/_zoekt" is_file
}
@test 'more_src has _zoekt-git-index' {
    assert "$xsrc/_zoekt-git-index" is_file
}
@test 'more_src has _zola' {
    assert "$xsrc/_zola" is_file
}
@test 'more_src has _zplugin' {
    assert "$xsrc/_zplugin" is_file
}
@test 'more_src has _zq' {
    assert "$xsrc/_zq" is_file
}
@test 'more_src has _zrok' {
    assert "$xsrc/_zrok" is_file
}
@test 'more_src has _zrun' {
    assert "$xsrc/_zrun" is_file
}
@test 'more_src has _zsh-bench' {
    assert "$xsrc/_zsh-bench" is_file
}
@test 'more_src has _zsh-defer' {
    assert "$xsrc/_zsh-defer" is_file
}
@test 'more_src has _zsh_source.sh' {
    assert "$xsrc/_zsh_source.sh" is_file
}
@test 'more_src has _zstdgrep' {
    assert "$xsrc/_zstdgrep" is_file
}
@test 'more_src has _zx' {
    assert "$xsrc/_zx" is_file
}
