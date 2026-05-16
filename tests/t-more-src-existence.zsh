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

@test 'more_src has _0ad' {
    assert "$xsrc/_0ad" is_file
}
@test 'more_src has _0install' {
    assert "$xsrc/_0install" is_file
}
@test 'more_src has _0launch' {
    assert "$xsrc/_0launch" is_file
}
@test 'more_src has _0xFFFF' {
    assert "$xsrc/_0xFFFF" is_file
}
@test 'more_src has _1ls' {
    assert "$xsrc/_1ls" is_file
}
@test 'more_src has _2pd' {
    assert "$xsrc/_2pd" is_file
}
@test 'more_src has _3proxy' {
    assert "$xsrc/_3proxy" is_file
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
@test 'more_src has _9base' {
    assert "$xsrc/_9base" is_file
}
@test 'more_src has _9mount' {
    assert "$xsrc/_9mount" is_file
}
@test 'more_src has _9pfuse' {
    assert "$xsrc/_9pfuse" is_file
}
@test 'more_src has _9pserve' {
    assert "$xsrc/_9pserve" is_file
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
@test 'more_src has _abc2ps' {
    assert "$xsrc/_abc2ps" is_file
}
@test 'more_src has _abcl' {
    assert "$xsrc/_abcl" is_file
}
@test 'more_src has _abcrypt' {
    assert "$xsrc/_abcrypt" is_file
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
@test 'more_src has _acarsdec' {
    assert "$xsrc/_acarsdec" is_file
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
@test 'more_src has _addgnupghome' {
    assert "$xsrc/_addgnupghome" is_file
}
@test 'more_src has _addlicense' {
    assert "$xsrc/_addlicense" is_file
}
@test 'more_src has _adns_resolve' {
    assert "$xsrc/_adns_resolve" is_file
}
@test 'more_src has _adns_test' {
    assert "$xsrc/_adns_test" is_file
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
@test 'more_src has _aeolus' {
    assert "$xsrc/_aeolus" is_file
}
@test 'more_src has _affected' {
    assert "$xsrc/_affected" is_file
}

@test 'more_src has _afinfo' {
    assert "$xsrc/_afinfo" is_file
}
@test 'more_src has _afmtopl' {
    assert "$xsrc/_afmtopl" is_file
}
@test 'more_src has _aftman' {
    assert "$xsrc/_aftman" is_file
}
@test 'more_src has _agda-mode' {
    assert "$xsrc/_agda-mode" is_file
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
@test 'more_src has _agat_sp_add_start_and_stop.pl' {
    assert "$xsrc/_agat_sp_add_start_and_stop.pl" is_file
}
@test 'more_src has _agat_sp_alignment_output_style.pl' {
    assert "$xsrc/_agat_sp_alignment_output_style.pl" is_file
}
@test 'more_src has _agat_sp_clipN_seqExtremities_and_fixCoordinates.pl' {
    assert "$xsrc/_agat_sp_clipN_seqExtremities_and_fixCoordinates.pl" is_file
}
@test 'more_src has _agat_sp_compare_two_BUSCOs.pl' {
    assert "$xsrc/_agat_sp_compare_two_BUSCOs.pl" is_file
}
@test 'more_src has _agat_sp_compare_two_annotations.pl' {
    assert "$xsrc/_agat_sp_compare_two_annotations.pl" is_file
}
@test 'more_src has _agat_sp_complement_annotations.pl' {
    assert "$xsrc/_agat_sp_complement_annotations.pl" is_file
}
@test 'more_src has _agat_sp_ensembl_output_style.pl' {
    assert "$xsrc/_agat_sp_ensembl_output_style.pl" is_file
}
@test 'more_src has _age' {
    assert "$xsrc/_age" is_file
}
@test 'more_src has _age-keygen' {
    assert "$xsrc/_age-keygen" is_file
}
@test 'more_src has _agent-memory' {
    assert "$xsrc/_agent-memory" is_file
}
@test 'more_src has _agent-procs' {
    assert "$xsrc/_agent-procs" is_file
}
@test 'more_src has _agent_control' {
    assert "$xsrc/_agent_control" is_file
}
@test 'more_src has _agentchrome' {
    assert "$xsrc/_agentchrome" is_file
}
@test 'more_src has _agentic-shell' {
    assert "$xsrc/_agentic-shell" is_file
}
@test 'more_src has _agentop' {
    assert "$xsrc/_agentop" is_file
}
@test 'more_src has _agentpack' {
    assert "$xsrc/_agentpack" is_file
}

@test 'more_src has _agentvm' {
    assert "$xsrc/_agentvm" is_file
}
@test 'more_src has _agrep' {
    assert "$xsrc/_agrep" is_file
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
@test 'more_src has _ai-memory' {
    assert "$xsrc/_ai-memory" is_file
}
@test 'more_src has _aiautocommit' {
    assert "$xsrc/_aiautocommit" is_file
}
@test 'more_src has _aichat' {
    assert "$xsrc/_aichat" is_file
}
@test 'more_src has _aisleriot' {
    assert "$xsrc/_aisleriot" is_file
}
@test 'more_src has _aideinit' {
    assert "$xsrc/_aideinit" is_file
}
@test 'more_src has _aider' {
    assert "$xsrc/_aider" is_file
}
@test 'more_src has _ailloy' {
    assert "$xsrc/_ailloy" is_file
}
@test 'more_src has _air' {
    assert "$xsrc/_air" is_file
}
@test 'more_src has _airis' {
    assert "$xsrc/_airis" is_file
}
@test 'more_src has _airbyte-ci' {
    assert "$xsrc/_airbyte-ci" is_file
}

@test 'more_src has _airlift' {
    assert "$xsrc/_airlift" is_file
}
@test 'more_src has _airshare' {
    assert "$xsrc/_airshare" is_file
}
@test 'more_src has _airspy_info' {
    assert "$xsrc/_airspy_info" is_file
}
@test 'more_src has _akonadictl' {
    assert "$xsrc/_akonadictl" is_file
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
@test 'more_src has _align_image_stack' {
    assert "$xsrc/_align_image_stack" is_file
}
@test 'more_src has _alistral' {
    assert "$xsrc/_alistral" is_file
}
@test 'more_src has _all.sh' {
    assert "$xsrc/_all.sh" is_file
}
@test 'more_src has _alock' {
    assert "$xsrc/_alock" is_file
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
@test 'more_src has _altium-cli' {
    assert "$xsrc/_altium-cli" is_file
}
@test 'more_src has _am' {
    assert "$xsrc/_am" is_file
}
@test 'more_src has _amber' {
    assert "$xsrc/_amber" is_file
}
@test 'more_src has _amfora' {
    assert "$xsrc/_amfora" is_file
}
@test 'more_src has _amavis' {
    assert "$xsrc/_amavis" is_file
}
@test 'more_src has _amavisd' {
    assert "$xsrc/_amavisd" is_file
}
@test 'more_src has _amavisd-new' {
    assert "$xsrc/_amavisd-new" is_file
}
@test 'more_src has _amon2-setup.pl' {
    assert "$xsrc/_amon2-setup.pl" is_file
}
@test 'more_src has _amqp-consume' {
    assert "$xsrc/_amqp-consume" is_file
}
@test 'more_src has _amqp-declare-queue' {
    assert "$xsrc/_amqp-declare-queue" is_file
}
@test 'more_src has _amqp-delete-queue' {
    assert "$xsrc/_amqp-delete-queue" is_file
}
@test 'more_src has _amqp-get' {
    assert "$xsrc/_amqp-get" is_file
}
@test 'more_src has _amqp-publish' {
    assert "$xsrc/_amqp-publish" is_file
}
@test 'more_src has _ampy' {
    assert "$xsrc/_ampy" is_file
}
@test 'more_src has _ampelos' {
    assert "$xsrc/_ampelos" is_file
}
@test 'more_src has _amsynth' {
    assert "$xsrc/_amsynth" is_file
}
@test 'more_src has _anacrontab' {
    assert "$xsrc/_anacrontab" is_file
}
@test 'more_src has _anc' {
    assert "$xsrc/_anc" is_file
}
@test 'more_src has _android' {
    assert "$xsrc/_android" is_file
}
@test 'more_src has _anew' {
    assert "$xsrc/_anew" is_file
}
@test 'more_src has _angrr' {
    assert "$xsrc/_angrr" is_file
}
@test 'more_src has _anka' {
    assert "$xsrc/_anka" is_file
}
@test 'more_src has _anki' {
    assert "$xsrc/_anki" is_file
}
@test 'more_src has _ans' {
    assert "$xsrc/_ans" is_file
}
@test 'more_src has _ansi2image' {
    assert "$xsrc/_ansi2image" is_file
}
@test 'more_src has _ansible-cmdb' {
    assert "$xsrc/_ansible-cmdb" is_file
}
@test 'more_src has _ansible-connection' {
    assert "$xsrc/_ansible-connection" is_file
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
@test 'more_src has _anthropic' {
    assert "$xsrc/_anthropic" is_file
}
@test 'more_src has _antidote' {
    assert "$xsrc/_antidote" is_file
}
@test 'more_src has _anybar' {
    assert "$xsrc/_anybar" is_file
}
@test 'more_src has _aocf' {
    assert "$xsrc/_aocf" is_file
}
@test 'more_src has _aos' {
    assert "$xsrc/_aos" is_file
}
@test 'more_src has _apcaccess' {
    assert "$xsrc/_apcaccess" is_file
}
@test 'more_src has _apctest' {
    assert "$xsrc/_apctest" is_file
}
@test 'more_src has _apicula' {
    assert "$xsrc/_apicula" is_file
}
@test 'more_src has _apib' {
    assert "$xsrc/_apib" is_file
}
@test 'more_src has _apidoc' {
    assert "$xsrc/_apidoc" is_file
}
@test 'more_src has _apix' {
    assert "$xsrc/_apix" is_file
}
@test 'more_src has _apk-info-cli' {
    assert "$xsrc/_apk-info-cli" is_file
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
@test 'more_src has _appimage-builder' {
    assert "$xsrc/_appimage-builder" is_file
}
@test 'more_src has _applygnupgdefaults' {
    assert "$xsrc/_applygnupgdefaults" is_file
}
@test 'more_src has _appleseed' {
    assert "$xsrc/_appleseed" is_file
}
@test 'more_src has _aptu' {
    assert "$xsrc/_aptu" is_file
}
@test 'more_src has _apx' {
    assert "$xsrc/_apx" is_file
}
@test 'more_src has _aranet' {
    assert "$xsrc/_aranet" is_file
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
@test 'more_src has _ardour6' {
    assert "$xsrc/_ardour6" is_file
}
@test 'more_src has _ardour7' {
    assert "$xsrc/_ardour7" is_file
}
@test 'more_src has _ardour8' {
    assert "$xsrc/_ardour8" is_file
}
@test 'more_src has _arduino-builder' {
    assert "$xsrc/_arduino-builder" is_file
}
@test 'more_src has _arelo' {
    assert "$xsrc/_arelo" is_file
}
@test 'more_src has _arf' {
    assert "$xsrc/_arf" is_file
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
@test 'more_src has _arpoison' {
    assert "$xsrc/_arpoison" is_file
}
@test 'more_src has _arpsponge' {
    assert "$xsrc/_arpsponge" is_file
}
@test 'more_src has _aria2c' {
    assert "$xsrc/_aria2c" is_file
}
@test 'more_src has _armagetronad' {
    assert "$xsrc/_armagetronad" is_file
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
@test 'more_src has _asn1c' {
    assert "$xsrc/_asn1c" is_file
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
@test 'more_src has _asunder' {
    assert "$xsrc/_asunder" is_file
}
@test 'more_src has _asterisk' {
    assert "$xsrc/_asterisk" is_file
}
@test 'more_src has _at-spi-bus-launcher' {
    assert "$xsrc/_at-spi-bus-launcher" is_file
}
@test 'more_src has _atac' {
    assert "$xsrc/_atac" is_file
}
@test 'more_src has _aterm' {
    assert "$xsrc/_aterm" is_file
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
@test 'more_src has _augent' {
    assert "$xsrc/_augent" is_file
}
@test 'more_src has _aur-build' {
    assert "$xsrc/_aur-build" is_file
}
@test 'more_src has _aur-depends' {
    assert "$xsrc/_aur-depends" is_file
}
@test 'more_src has _aur-fetch' {
    assert "$xsrc/_aur-fetch" is_file
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
@test 'more_src has _autocutsel' {
    assert "$xsrc/_autocutsel" is_file
}
@test 'more_src has _autoexpect' {
    assert "$xsrc/_autoexpect" is_file
}
@test 'more_src has _autosub' {
    assert "$xsrc/_autosub" is_file
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
@test 'more_src has _autotrace' {
    assert "$xsrc/_autotrace" is_file
}
@test 'more_src has _autopano-sift-c' {
    assert "$xsrc/_autopano-sift-c" is_file
}
@test 'more_src has _autooptimiser' {
    assert "$xsrc/_autooptimiser" is_file
}
@test 'more_src has _av1an' {
    assert "$xsrc/_av1an" is_file
}
@test 'more_src has _avanor' {
    assert "$xsrc/_avanor" is_file
}
@test 'more_src has _avante' {
    assert "$xsrc/_avante" is_file
}
@test 'more_src has _avifgainmaputil' {
    assert "$xsrc/_avifgainmaputil" is_file
}
@test 'more_src has _awless' {
    assert "$xsrc/_awless" is_file
}
@test 'more_src has _awstats' {
    assert "$xsrc/_awstats" is_file
}
@test 'more_src has _awffull' {
    assert "$xsrc/_awffull" is_file
}
@test 'more_src has _aws-es-proxy' {
    assert "$xsrc/_aws-es-proxy" is_file
}
@test 'more_src has _aws-gate' {
    assert "$xsrc/_aws-gate" is_file
}
@test 'more_src has _aws-vault' {
    assert "$xsrc/_aws-vault" is_file
}
@test 'more_src has _aws_completer' {
    assert "$xsrc/_aws_completer" is_file
}
@test 'more_src has _aws_profiles' {
    assert "$xsrc/_aws_profiles" is_file
}
@test 'more_src has _awww' {
    assert "$xsrc/_awww" is_file
}
@test 'more_src has _axfr-get' {
    assert "$xsrc/_axfr-get" is_file
}
@test 'more_src has _axfrdns' {
    assert "$xsrc/_axfrdns" is_file
}
@test 'more_src has _axiom' {
    assert "$xsrc/_axiom" is_file
}
@test 'more_src has _axolotl' {
    assert "$xsrc/_axolotl" is_file
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
@test 'more_src has _babeltrace' {
    assert "$xsrc/_babeltrace" is_file
}
@test 'more_src has _backblaze-b2' {
    assert "$xsrc/_backblaze-b2" is_file
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
@test 'more_src has _baidu-pcs-cli-rs' {
    assert "$xsrc/_baidu-pcs-cli-rs" is_file
}
@test 'more_src has _baidupcs-go' {
    assert "$xsrc/_baidupcs-go" is_file
}
@test 'more_src has _balance' {
    assert "$xsrc/_balance" is_file
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
@test 'more_src has _banshee' {
    assert "$xsrc/_banshee" is_file
}
@test 'more_src has _barman-cloud-backup' {
    assert "$xsrc/_barman-cloud-backup" is_file
}
@test 'more_src has _barman-cloud-backup-delete' {
    assert "$xsrc/_barman-cloud-backup-delete" is_file
}
@test 'more_src has _barman-cloud-backup-keep' {
    assert "$xsrc/_barman-cloud-backup-keep" is_file
}
@test 'more_src has _barman-cloud-backup-list' {
    assert "$xsrc/_barman-cloud-backup-list" is_file
}
@test 'more_src has _barman-cloud-backup-show' {
    assert "$xsrc/_barman-cloud-backup-show" is_file
}
@test 'more_src has _barman-cloud-check-wal-archive' {
    assert "$xsrc/_barman-cloud-check-wal-archive" is_file
}
@test 'more_src has _barman-cloud-restore' {
    assert "$xsrc/_barman-cloud-restore" is_file
}
@test 'more_src has _barman-cloud-wal-archive' {
    assert "$xsrc/_barman-cloud-wal-archive" is_file
}
@test 'more_src has _barman-cloud-wal-restore' {
    assert "$xsrc/_barman-cloud-wal-restore" is_file
}
@test 'more_src has _barcode' {
    assert "$xsrc/_barcode" is_file
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
@test 'more_src has _bashclaw' {
    assert "$xsrc/_bashclaw" is_file
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
@test 'more_src has _basti' {
    assert "$xsrc/_basti" is_file
}
@test 'more_src has _batcat' {
    assert "$xsrc/_batcat" is_file
}
@test 'more_src has _batect' {
    assert "$xsrc/_batect" is_file
}
@test 'more_src has _bazel' {
    assert "$xsrc/_bazel" is_file
}
@test 'more_src has _bb' {
    assert "$xsrc/_bb" is_file
}
@test 'more_src has _bbe' {
    assert "$xsrc/_bbe" is_file
}
@test 'more_src has _bbedit' {
    assert "$xsrc/_bbedit" is_file
}
@test 'more_src has _beam' {
    assert "$xsrc/_beam" is_file
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
@test 'more_src has _beekeeper-studio' {
    assert "$xsrc/_beekeeper-studio" is_file
}
@test 'more_src has _beet' {
    assert "$xsrc/_beet" is_file
}
@test 'more_src has _bemenu' {
    assert "$xsrc/_bemenu" is_file
}
@test 'more_src has _bemoji' {
    assert "$xsrc/_bemoji" is_file
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
@test 'more_src has _bender' {
    assert "$xsrc/_bender" is_file
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
@test 'more_src has _bestls' {
    assert "$xsrc/_bestls" is_file
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
@test 'more_src has _bgpd' {
    assert "$xsrc/_bgpd" is_file
}
@test 'more_src has _bhdump' {
    assert "$xsrc/_bhdump" is_file
}
@test 'more_src has _biber' {
    assert "$xsrc/_biber" is_file
}
@test 'more_src has _biber-ms' {
    assert "$xsrc/_biber-ms" is_file
}
@test 'more_src has _bibletime' {
    assert "$xsrc/_bibletime" is_file
}
@test 'more_src has _bigquery-emulator' {
    assert "$xsrc/_bigquery-emulator" is_file
}
@test 'more_src has _bikeshed' {
    assert "$xsrc/_bikeshed" is_file
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
@test 'more_src has _biors' {
    assert "$xsrc/_biors" is_file
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
@test 'more_src has _bladerf-cli' {
    assert "$xsrc/_bladerf-cli" is_file
}
@test 'more_src has _blake3sum' {
    assert "$xsrc/_blake3sum" is_file
}
@test 'more_src has _blastem' {
    assert "$xsrc/_blastem" is_file
}
@test 'more_src has _blastn' {
    assert "$xsrc/_blastn" is_file
}
@test 'more_src has _blastp' {
    assert "$xsrc/_blastp" is_file
}
@test 'more_src has _blastshield' {
    assert "$xsrc/_blastshield" is_file
}
@test 'more_src has _blastx' {
    assert "$xsrc/_blastx" is_file
}
@test 'more_src has _blaze' {
    assert "$xsrc/_blaze" is_file
}
@test 'more_src has _blockattack' {
    assert "$xsrc/_blockattack" is_file
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
@test 'more_src has _bmk' {
    assert "$xsrc/_bmk" is_file
}
@test 'more_src has _bn' {
    assert "$xsrc/_bn" is_file
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
@test 'more_src has _bookworm' {
    assert "$xsrc/_bookworm" is_file
}
@test 'more_src has _bootterm' {
    assert "$xsrc/_bootterm" is_file
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
@test 'more_src has _boxlite' {
    assert "$xsrc/_boxlite" is_file
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
@test 'more_src has _brave' {
    assert "$xsrc/_brave" is_file
}
@test 'more_src has _braid' {
    assert "$xsrc/_braid" is_file
}
@test 'more_src has _brainfuck' {
    assert "$xsrc/_brainfuck" is_file
}
@test 'more_src has _breakrs' {
    assert "$xsrc/_breakrs" is_file
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
@test 'more_src has _bristol' {
    assert "$xsrc/_bristol" is_file
}
@test 'more_src has _brittany' {
    assert "$xsrc/_brittany" is_file
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
@test 'more_src has _brz' {
    assert "$xsrc/_brz" is_file
}
@test 'more_src has _bsdsfv' {
    assert "$xsrc/_bsdsfv" is_file
}
@test 'more_src has _bspatch' {
    assert "$xsrc/_bspatch" is_file
}
@test 'more_src has _bst' {
    assert "$xsrc/_bst" is_file
}
@test 'more_src has _btcli' {
    assert "$xsrc/_btcli" is_file
}
@test 'more_src has _btdu' {
    assert "$xsrc/_btdu" is_file
}
@test 'more_src has _btex' {
    assert "$xsrc/_btex" is_file
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
@test 'more_src has _btrfs-check' {
    assert "$xsrc/_btrfs-check" is_file
}
@test 'more_src has _btrfs-corrupt-block' {
    assert "$xsrc/_btrfs-corrupt-block" is_file
}
@test 'more_src has _btrfs-receive' {
    assert "$xsrc/_btrfs-receive" is_file
}
@test 'more_src has _btrfs-rescue' {
    assert "$xsrc/_btrfs-rescue" is_file
}
@test 'more_src has _btrfs-send' {
    assert "$xsrc/_btrfs-send" is_file
}
@test 'more_src has _btrfs-snap' {
    assert "$xsrc/_btrfs-snap" is_file
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
@test 'more_src has _buildbot' {
    assert "$xsrc/_buildbot" is_file
}
@test 'more_src has _buildbot-worker' {
    assert "$xsrc/_buildbot-worker" is_file
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
@test 'more_src has _bump2version' {
    assert "$xsrc/_bump2version" is_file
}
@test 'more_src has _bun' {
    assert "$xsrc/_bun" is_file
}
@test 'more_src has _burnout' {
    assert "$xsrc/_burnout" is_file
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
@test 'more_src has _bws' {
    assert "$xsrc/_bws" is_file
}
@test 'more_src has _bwsenv' {
    assert "$xsrc/_bwsenv" is_file
}
@test 'more_src has _byobu' {
    assert "$xsrc/_byobu" is_file
}
@test 'more_src has _byokey' {
    assert "$xsrc/_byokey" is_file
}
@test 'more_src has _byzanz-window' {
    assert "$xsrc/_byzanz-window" is_file
}
@test 'more_src has _bzflag' {
    assert "$xsrc/_bzflag" is_file
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
@test 'more_src has _cabal-fmt' {
    assert "$xsrc/_cabal-fmt" is_file
}
@test 'more_src has _cabbage' {
    assert "$xsrc/_cabbage" is_file
}
@test 'more_src has _cabin' {
    assert "$xsrc/_cabin" is_file
}
@test 'more_src has _cabal2nix' {
    assert "$xsrc/_cabal2nix" is_file
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
@test 'more_src has _caddy-l4' {
    assert "$xsrc/_caddy-l4" is_file
}
@test 'more_src has _cadence' {
    assert "$xsrc/_cadence" is_file
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
@test 'more_src has _cala' {
    assert "$xsrc/_cala" is_file
}
@test 'more_src has _calabrese' {
    assert "$xsrc/_calabrese" is_file
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
@test 'more_src has _caligula' {
    assert "$xsrc/_caligula" is_file
}
@test 'more_src has _calico' {
    assert "$xsrc/_calico" is_file
}
@test 'more_src has _camunda' {
    assert "$xsrc/_camunda" is_file
}
@test 'more_src has _canto-curses' {
    assert "$xsrc/_canto-curses" is_file
}
@test 'more_src has _canto-fetch' {
    assert "$xsrc/_canto-fetch" is_file
}
@test 'more_src has _canto-remote' {
    assert "$xsrc/_canto-remote" is_file
}
@test 'more_src has _canvas-downloader' {
    assert "$xsrc/_canvas-downloader" is_file
}

@test 'more_src has _capacitor' {
    assert "$xsrc/_capacitor" is_file
}
@test 'more_src has _capistrano' {
    assert "$xsrc/_capistrano" is_file
}
@test 'more_src has _capnp' {
    assert "$xsrc/_capnp" is_file
}
@test 'more_src has _carbon-c-relay' {
    assert "$xsrc/_carbon-c-relay" is_file
}
@test 'more_src has _carbonate' {
    assert "$xsrc/_carbonate" is_file
}
@test 'more_src has _carapace' {
    assert "$xsrc/_carapace" is_file
}
@test 'more_src has _cardano-wallet' {
    assert "$xsrc/_cardano-wallet" is_file
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
@test 'more_src has _cargo-doc2readme' {
    assert "$xsrc/_cargo-doc2readme" is_file
}
@test 'more_src has _cargo-flamegraph' {
    assert "$xsrc/_cargo-flamegraph" is_file
}
@test 'more_src has _cargo-fresh' {
    assert "$xsrc/_cargo-fresh" is_file
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
@test 'more_src has _cargo-qual' {
    assert "$xsrc/_cargo-qual" is_file
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
@test 'more_src has _carla' {
    assert "$xsrc/_carla" is_file
}
@test 'more_src has _carmel' {
    assert "$xsrc/_carmel" is_file
}
@test 'more_src has _cartog' {
    assert "$xsrc/_cartog" is_file
}
@test 'more_src has _casbin-rust-cli' {
    assert "$xsrc/_casbin-rust-cli" is_file
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
@test 'more_src has _catalina-shutdown' {
    assert "$xsrc/_catalina-shutdown" is_file
}
@test 'more_src has _catalina-startup' {
    assert "$xsrc/_catalina-startup" is_file
}
@test 'more_src has _catppuccin-catwalk' {
    assert "$xsrc/_catppuccin-catwalk" is_file
}
@test 'more_src has _cauwugo' {
    assert "$xsrc/_cauwugo" is_file
}
@test 'more_src has _cava' {
    assert "$xsrc/_cava" is_file
}
@test 'more_src has _cave' {
    assert "$xsrc/_cave" is_file
}
@test 'more_src has _cayley' {
    assert "$xsrc/_cayley" is_file
}
@test 'more_src has _cbfmt' {
    assert "$xsrc/_cbfmt" is_file
}
@test 'more_src has _cbm' {
    assert "$xsrc/_cbm" is_file
}
@test 'more_src has _cbmc' {
    assert "$xsrc/_cbmc" is_file
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
@test 'more_src has _ccl' {
    assert "$xsrc/_ccl" is_file
}
@test 'more_src has _ccls' {
    assert "$xsrc/_ccls" is_file
}
@test 'more_src has _cd-gitroot' {
    assert "$xsrc/_cd-gitroot" is_file
}
@test 'more_src has _cdecl' {
    assert "$xsrc/_cdecl" is_file
}
@test 'more_src has _cdg.zsh' {
    assert "$xsrc/_cdg.zsh" is_file
}
@test 'more_src has _cdialog' {
    assert "$xsrc/_cdialog" is_file
}
@test 'more_src has _cdist' {
    assert "$xsrc/_cdist" is_file
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
@test 'more_src has _cdpr' {
    assert "$xsrc/_cdpr" is_file
}
@test 'more_src has _cdrskin' {
    assert "$xsrc/_cdrskin" is_file
}
@test 'more_src has _cdda2mp3' {
    assert "$xsrc/_cdda2mp3" is_file
}
@test 'more_src has _cdda2ogg' {
    assert "$xsrc/_cdda2ogg" is_file
}
@test 'more_src has _cdtool' {
    assert "$xsrc/_cdtool" is_file
}
@test 'more_src has _cdtxt' {
    assert "$xsrc/_cdtxt" is_file
}
@test 'more_src has _cekit' {
    assert "$xsrc/_cekit" is_file
}
@test 'more_src has _celestia' {
    assert "$xsrc/_celestia" is_file
}
@test 'more_src has _celeste_standalone' {
    assert "$xsrc/_celeste_standalone" is_file
}
@test 'more_src has _celery' {
    assert "$xsrc/_celery" is_file
}
@test 'more_src has _ceph' {
    assert "$xsrc/_ceph" is_file
}
@test 'more_src has _certboy' {
    assert "$xsrc/_certboy" is_file
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
@test 'more_src has _cfspeedtest' {
    assert "$xsrc/_cfspeedtest" is_file
}
@test 'more_src has _cfssl' {
    assert "$xsrc/_cfssl" is_file
}
@test 'more_src has _cgconfig' {
    assert "$xsrc/_cgconfig" is_file
}
@test 'more_src has _cgmanager' {
    assert "$xsrc/_cgmanager" is_file
}
@test 'more_src has _cgmanager-proxy' {
    assert "$xsrc/_cgmanager-proxy" is_file
}
@test 'more_src has _cgmodprobe' {
    assert "$xsrc/_cgmodprobe" is_file
}
@test 'more_src has _cgoban' {
    assert "$xsrc/_cgoban" is_file
}
@test 'more_src has _cgproxy' {
    assert "$xsrc/_cgproxy" is_file
}
@test 'more_src has _cgps' {
    assert "$xsrc/_cgps" is_file
}
@test 'more_src has _cgrulesengd' {
    assert "$xsrc/_cgrulesengd" is_file
}
@test 'more_src has _cgrep' {
    assert "$xsrc/_cgrep" is_file
}
@test 'more_src has _cha' {
    assert "$xsrc/_cha" is_file
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
@test 'more_src has _chara' {
    assert "$xsrc/_chara" is_file
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
@test 'more_src has _checksec' {
    assert "$xsrc/_checksec" is_file
}
@test 'more_src has _chefctl' {
    assert "$xsrc/_chefctl" is_file
}
@test 'more_src has _chef-cli' {
    assert "$xsrc/_chef-cli" is_file
}
@test 'more_src has _chessx' {
    assert "$xsrc/_chessx" is_file
}
@test 'more_src has _chezmoi' {
    assert "$xsrc/_chezmoi" is_file
}
@test 'more_src has _chezscheme' {
    assert "$xsrc/_chezscheme" is_file
}
@test 'more_src has _chiaki' {
    assert "$xsrc/_chiaki" is_file
}
@test 'more_src has _chuck' {
    assert "$xsrc/_chuck" is_file
}
@test 'more_src has _chicken-csc' {
    assert "$xsrc/_chicken-csc" is_file
}
@test 'more_src has _chicken-install' {
    assert "$xsrc/_chicken-install" is_file
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
@test 'more_src has _choose-rust' {
    assert "$xsrc/_choose-rust" is_file
}
@test 'more_src has _chpst' {
    assert "$xsrc/_chpst" is_file
}
@test 'more_src has _chroma' {
    assert "$xsrc/_chroma" is_file
}
@test 'more_src has _chromadb' {
    assert "$xsrc/_chromadb" is_file
}
@test 'more_src has _chromatic' {
    assert "$xsrc/_chromatic" is_file
}
@test 'more_src has _chrome-bookmark-browser' {
    assert "$xsrc/_chrome-bookmark-browser" is_file
}
@test 'more_src has _chrome-history' {
    assert "$xsrc/_chrome-history" is_file
}
@test 'more_src has _chromium-browser' {
    assert "$xsrc/_chromium-browser" is_file
}
@test 'more_src has _chrpath' {
    assert "$xsrc/_chrpath" is_file
}
@test 'more_src has _chtf' {
    assert "$xsrc/_chtf" is_file
}
@test 'more_src has _ciel' {
    assert "$xsrc/_ciel" is_file
}
@test 'more_src has _cilium' {
    assert "$xsrc/_cilium" is_file
}
@test 'more_src has _cinnamon-settings' {
    assert "$xsrc/_cinnamon-settings" is_file
}
@test 'more_src has _ciptest' {
    assert "$xsrc/_ciptest" is_file
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
@test 'more_src has _ckb-next' {
    assert "$xsrc/_ckb-next" is_file
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
@test 'more_src has _clam' {
    assert "$xsrc/_clam" is_file
}
@test 'more_src has _clamtk' {
    assert "$xsrc/_clamtk" is_file
}
@test 'more_src has _clang-uml' {
    assert "$xsrc/_clang-uml" is_file
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
@test 'more_src has _claude-cage' {
    assert "$xsrc/_claude-cage" is_file
}
@test 'more_src has _claude-mcp-manager' {
    assert "$xsrc/_claude-mcp-manager" is_file
}
@test 'more_src has _claude-trace' {
    assert "$xsrc/_claude-trace" is_file
}
@test 'more_src has _claude-vault' {
    assert "$xsrc/_claude-vault" is_file
}
@test 'more_src has _claudia' {
    assert "$xsrc/_claudia" is_file
}

@test 'more_src has _claudectx' {
    assert "$xsrc/_claudectx" is_file
}
@test 'more_src has _clean' {
    assert "$xsrc/_clean" is_file
}
@test 'more_src has _clearml-agent' {
    assert "$xsrc/_clearml-agent" is_file
}
@test 'more_src has _cleos' {
    assert "$xsrc/_cleos" is_file
}
@test 'more_src has _clerk' {
    assert "$xsrc/_clerk" is_file
}
@test 'more_src has _clever' {
    assert "$xsrc/_clever" is_file
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
@test 'more_src has _clight' {
    assert "$xsrc/_clight" is_file
}
@test 'more_src has _clinfo' {
    assert "$xsrc/_clinfo" is_file
}
@test 'more_src has _clio' {
    assert "$xsrc/_clio" is_file
}
@test 'more_src has _clion' {
    assert "$xsrc/_clion" is_file
}
@test 'more_src has _clipcat-notify' {
    assert "$xsrc/_clipcat-notify" is_file
}
@test 'more_src has _cliphist-cli' {
    assert "$xsrc/_cliphist-cli" is_file
}
@test 'more_src has _clipcatctl' {
    assert "$xsrc/_clipcatctl" is_file
}
@test 'more_src has _clispec' {
    assert "$xsrc/_clispec" is_file
}

@test 'more_src has _cloak' {
    assert "$xsrc/_cloak" is_file
}
@test 'more_src has _cloc' {
    assert "$xsrc/_cloc" is_file
}
@test 'more_src has _clockify-cli' {
    assert "$xsrc/_clockify-cli" is_file
}
@test 'more_src has _clonedigger' {
    assert "$xsrc/_clonedigger" is_file
}
@test 'more_src has _cloud-localds' {
    assert "$xsrc/_cloud-localds" is_file
}
@test 'more_src has _cloud_sql_proxy' {
    assert "$xsrc/_cloud_sql_proxy" is_file
}
@test 'more_src has _cloudflared' {
    assert "$xsrc/_cloudflared" is_file
}
@test 'more_src has _cloudformatious' {
    assert "$xsrc/_cloudformatious" is_file
}
@test 'more_src has _cloudquery' {
    assert "$xsrc/_cloudquery" is_file
}
@test 'more_src has _clouds' {
    assert "$xsrc/_clouds" is_file
}
@test 'more_src has _clusterssh' {
    assert "$xsrc/_clusterssh" is_file
}
@test 'more_src has _cmctl' {
    assert "$xsrc/_cmctl" is_file
}
@test 'more_src has _cmdliner' {
    assert "$xsrc/_cmdliner" is_file
}
@test 'more_src has _cmdshelf' {
    assert "$xsrc/_cmdshelf" is_file
}
@test 'more_src has _cmigemo' {
    assert "$xsrc/_cmigemo" is_file
}
@test 'more_src has _cmix' {
    assert "$xsrc/_cmix" is_file
}
@test 'more_src has _cmus' {
    assert "$xsrc/_cmus" is_file
}
@test 'more_src has _cmus-remote' {
    assert "$xsrc/_cmus-remote" is_file
}
@test 'more_src has _cnc' {
    assert "$xsrc/_cnc" is_file
}
@test 'more_src has _cntr' {
    assert "$xsrc/_cntr" is_file
}
@test 'more_src has _cobbler' {
    assert "$xsrc/_cobbler" is_file
}
@test 'more_src has _cobra-cli' {
    assert "$xsrc/_cobra-cli" is_file
}
@test 'more_src has _coco' {
    assert "$xsrc/_coco" is_file
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
@test 'more_src has _codacy-cli' {
    assert "$xsrc/_codacy-cli" is_file
}
@test 'more_src has _codecompanion' {
    assert "$xsrc/_codecompanion" is_file
}
@test 'more_src has _codecrafters' {
    assert "$xsrc/_codecrafters" is_file
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
@test 'more_src has _coercer' {
    assert "$xsrc/_coercer" is_file
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
@test 'more_src has _collectd-tg' {
    assert "$xsrc/_collectd-tg" is_file
}
@test 'more_src has _collectdctl' {
    assert "$xsrc/_collectdctl" is_file
}
@test 'more_src has _colmap' {
    assert "$xsrc/_colmap" is_file
}
@test 'more_src has _colorcoke' {
    assert "$xsrc/_colorcoke" is_file
}
@test 'more_src has _colorscript' {
    assert "$xsrc/_colorscript" is_file
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
@test 'more_src has _comodoro' {
    assert "$xsrc/_comodoro" is_file
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
@test 'more_src has _connmand' {
    assert "$xsrc/_connmand" is_file
}
@test 'more_src has _conceal' {
    assert "$xsrc/_conceal" is_file
}
@test 'more_src has _concurrently' {
    assert "$xsrc/_concurrently" is_file
}
@test 'more_src has _conda-env' {
    assert "$xsrc/_conda-env" is_file
}
@test 'more_src has _conda-lock' {
    assert "$xsrc/_conda-lock" is_file
}
@test 'more_src has _condax' {
    assert "$xsrc/_condax" is_file
}
@test 'more_src has _confluence' {
    assert "$xsrc/_confluence" is_file
}
@test 'more_src has _conform' {
    assert "$xsrc/_conform" is_file
}
@test 'more_src has _conftest' {
    assert "$xsrc/_conftest" is_file
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
@test 'more_src has _construct' {
    assert "$xsrc/_construct" is_file
}
@test 'more_src has _consul' {
    assert "$xsrc/_consul" is_file
}
@test 'more_src has _consul-template' {
    assert "$xsrc/_consul-template" is_file
}
@test 'more_src has _container' {
    assert "$xsrc/_container" is_file
}
@test 'more_src has _container-builder-local' {
    assert "$xsrc/_container-builder-local" is_file
}
@test 'more_src has _container-diff' {
    assert "$xsrc/_container-diff" is_file
}
@test 'more_src has _context7' {
    assert "$xsrc/_context7" is_file
}
@test 'more_src has _continue' {
    assert "$xsrc/_continue" is_file
}
@test 'more_src has _convos' {
    assert "$xsrc/_convos" is_file
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
@test 'more_src has _copilot_aliases' {
    assert "$xsrc/_copilot_aliases" is_file
}
@test 'more_src has _copy_from_container.sh' {
    assert "$xsrc/_copy_from_container.sh" is_file
}
@test 'more_src has _copyq' {
    assert "$xsrc/_copyq" is_file
}
@test 'more_src has _coqide' {
    assert "$xsrc/_coqide" is_file
}
@test 'more_src has _coqwc' {
    assert "$xsrc/_coqwc" is_file
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
@test 'more_src has _cosq' {
    assert "$xsrc/_cosq" is_file
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
@test 'more_src has _courier-pop' {
    assert "$xsrc/_courier-pop" is_file
}
@test 'more_src has _courierimap' {
    assert "$xsrc/_courierimap" is_file
}
@test 'more_src has _coverage' {
    assert "$xsrc/_coverage" is_file
}
@test 'more_src has _coveralls' {
    assert "$xsrc/_coveralls" is_file
}
@test 'more_src has _cpdt.zsh' {
    assert "$xsrc/_cpdt.zsh" is_file
}
@test 'more_src has _cpphs' {
    assert "$xsrc/_cpphs" is_file
}
@test 'more_src has _cppi' {
    assert "$xsrc/_cppi" is_file
}
@test 'more_src has _cpu-x' {
    assert "$xsrc/_cpu-x" is_file
}
@test 'more_src has _cpuburn' {
    assert "$xsrc/_cpuburn" is_file
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
@test 'more_src has _cpfind' {
    assert "$xsrc/_cpfind" is_file
}
@test 'more_src has _cpclean' {
    assert "$xsrc/_cpclean" is_file
}
@test 'more_src has _cql' {
    assert "$xsrc/_cql" is_file
}
@test 'more_src has _cqrlog' {
    assert "$xsrc/_cqrlog" is_file
}
@test 'more_src has _crane' {
    assert "$xsrc/_crane" is_file
}
@test 'more_src has _crafty' {
    assert "$xsrc/_crafty" is_file
}
@test 'more_src has _crawlee' {
    assert "$xsrc/_crawlee" is_file
}
@test 'more_src has _crap4rs' {
    assert "$xsrc/_crap4rs" is_file
}
@test 'more_src has _crashlog' {
    assert "$xsrc/_crashlog" is_file
}
@test 'more_src has _crate2nix' {
    assert "$xsrc/_crate2nix" is_file
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
@test 'more_src has _crypt4gh' {
    assert "$xsrc/_crypt4gh" is_file
}
@test 'more_src has _crypt4gh-keygen' {
    assert "$xsrc/_crypt4gh-keygen" is_file
}
@test 'more_src has _cryptmount' {
    assert "$xsrc/_cryptmount" is_file
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
@test 'more_src has _cscope-indexer' {
    assert "$xsrc/_cscope-indexer" is_file
}
@test 'more_src has _csi' {
    assert "$xsrc/_csi" is_file
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
@test 'more_src has _csvfix' {
    assert "$xsrc/_csvfix" is_file
}
@test 'more_src has _csvformat' {
    assert "$xsrc/_csvformat" is_file
}
@test 'more_src has _csv-merge' {
    assert "$xsrc/_csv-merge" is_file
}
@test 'more_src has _csv2json' {
    assert "$xsrc/_csv2json" is_file
}
@test 'more_src has _csv2parquet' {
    assert "$xsrc/_csv2parquet" is_file
}
@test 'more_src has _csv2sqlite' {
    assert "$xsrc/_csv2sqlite" is_file
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
@test 'more_src has _cuda-gdb' {
    assert "$xsrc/_cuda-gdb" is_file
}
@test 'more_src has _cue' {
    assert "$xsrc/_cue" is_file
}
@test 'more_src has _cuebreakpoints' {
    assert "$xsrc/_cuebreakpoints" is_file
}
@test 'more_src has _cueconvert' {
    assert "$xsrc/_cueconvert" is_file
}
@test 'more_src has _cueprint' {
    assert "$xsrc/_cueprint" is_file
}
@test 'more_src has _cuetag' {
    assert "$xsrc/_cuetag" is_file
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
@test 'more_src has _custodian' {
    assert "$xsrc/_custodian" is_file
}
@test 'more_src has _custom-install' {
    assert "$xsrc/_custom-install" is_file
}
@test 'more_src has _cutecom' {
    assert "$xsrc/_cutecom" is_file
}
@test 'more_src has _cutechess' {
    assert "$xsrc/_cutechess" is_file
}
@test 'more_src has _cutechess-cli' {
    assert "$xsrc/_cutechess-cli" is_file
}
@test 'more_src has _cutter' {
    assert "$xsrc/_cutter" is_file
}
@test 'more_src has _cvlc' {
    assert "$xsrc/_cvlc" is_file
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
@test 'more_src has _cx' {
    assert "$xsrc/_cx" is_file
}
@test 'more_src has _cxd' {
    assert "$xsrc/_cxd" is_file
}
@test 'more_src has _cxgo' {
    assert "$xsrc/_cxgo" is_file
}
@test 'more_src has _cxxtest' {
    assert "$xsrc/_cxxtest" is_file
}
@test 'more_src has _cwcp' {
    assert "$xsrc/_cwcp" is_file
}
@test 'more_src has _cwgen' {
    assert "$xsrc/_cwgen" is_file
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
@test 'more_src has _cz' {
    assert "$xsrc/_cz" is_file
}
@test 'more_src has _czkawka' {
    assert "$xsrc/_czkawka" is_file
}
@test 'more_src has _d2' {
    assert "$xsrc/_d2" is_file
}
@test 'more_src has _daemon8' {
    assert "$xsrc/_daemon8" is_file
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
@test 'more_src has _daylog' {
    assert "$xsrc/_daylog" is_file
}
@test 'more_src has _dbclient' {
    assert "$xsrc/_dbclient" is_file
}
@test 'more_src has _dbdiff' {
    assert "$xsrc/_dbdiff" is_file
}
@test 'more_src has _dbeaver-cli' {
    assert "$xsrc/_dbeaver-cli" is_file
}
@test 'more_src has _dbgate' {
    assert "$xsrc/_dbgate" is_file
}
@test 'more_src has _dbhash' {
    assert "$xsrc/_dbhash" is_file
}
@test 'more_src has _dbilogstrip' {
    assert "$xsrc/_dbilogstrip" is_file
}
@test 'more_src has _dblatex' {
    assert "$xsrc/_dblatex" is_file
}
@test 'more_src has _dbmate' {
    assert "$xsrc/_dbmate" is_file
}
@test 'more_src has _dbml-cli' {
    assert "$xsrc/_dbml-cli" is_file
}
@test 'more_src has _dbscope' {
    assert "$xsrc/_dbscope" is_file
}
@test 'more_src has _dbtoepub' {
    assert "$xsrc/_dbtoepub" is_file
}
@test 'more_src has _dcd-client' {
    assert "$xsrc/_dcd-client" is_file
}
@test 'more_src has _dcg' {
    assert "$xsrc/_dcg" is_file
}
@test 'more_src has _dcron' {
    assert "$xsrc/_dcron" is_file
}
@test 'more_src has _dcutil' {
    assert "$xsrc/_dcutil" is_file
}
@test 'more_src has _ddccontrol' {
    assert "$xsrc/_ddccontrol" is_file
}
@test 'more_src has _ddgr' {
    assert "$xsrc/_ddgr" is_file
}
@test 'more_src has _ddlctl' {
    assert "$xsrc/_ddlctl" is_file
}
@test 'more_src has _ddrescueview' {
    assert "$xsrc/_ddrescueview" is_file
}
@test 'more_src has _ddtrace-run' {
    assert "$xsrc/_ddtrace-run" is_file
}
@test 'more_src has _de-macro' {
    assert "$xsrc/_de-macro" is_file
}
@test 'more_src has _deadbranch' {
    assert "$xsrc/_deadbranch" is_file
}
@test 'more_src has _deadfinder' {
    assert "$xsrc/_deadfinder" is_file
}
@test 'more_src has _deb-systemd-helper' {
    assert "$xsrc/_deb-systemd-helper" is_file
}
@test 'more_src has _deb-systemd-invoke' {
    assert "$xsrc/_deb-systemd-invoke" is_file
}
@test 'more_src has _debian_rules' {
    assert "$xsrc/_debian_rules" is_file
}
@test 'more_src has _decibri' {
    assert "$xsrc/_decibri" is_file
}
@test 'more_src has _decompose' {
    assert "$xsrc/_decompose" is_file
}
@test 'more_src has _deepseek' {
    assert "$xsrc/_deepseek" is_file
}
@test 'more_src has _deepseek-tui' {
    assert "$xsrc/_deepseek-tui" is_file
}
@test 'more_src has _deeplake' {
    assert "$xsrc/_deeplake" is_file
}
@test 'more_src has _deepsource' {
    assert "$xsrc/_deepsource" is_file
}
@test 'more_src has _deheader' {
    assert "$xsrc/_deheader" is_file
}
@test 'more_src has _dek' {
    assert "$xsrc/_dek" is_file
}
@test 'more_src has _dejagnu' {
    assert "$xsrc/_dejagnu" is_file
}
@test 'more_src has _demucs' {
    assert "$xsrc/_demucs" is_file
}
@test 'more_src has _demumble' {
    assert "$xsrc/_demumble" is_file
}
@test 'more_src has _denemo' {
    assert "$xsrc/_denemo" is_file
}
@test 'more_src has _deno' {
    assert "$xsrc/_deno" is_file
}
@test 'more_src has _denominator' {
    assert "$xsrc/_denominator" is_file
}
@test 'more_src has _denyhosts' {
    assert "$xsrc/_denyhosts" is_file
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
@test 'more_src has _desk-exec' {
    assert "$xsrc/_desk-exec" is_file
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
@test 'more_src has _devpulse' {
    assert "$xsrc/_devpulse" is_file
}
@test 'more_src has _devrig' {
    assert "$xsrc/_devrig" is_file
}
@test 'more_src has _devs' {
    assert "$xsrc/_devs" is_file
}

@test 'more_src has _devspace' {
    assert "$xsrc/_devspace" is_file
}
@test 'more_src has _devtool' {
    assert "$xsrc/_devtool" is_file
}
@test 'more_src has _deweb' {
    assert "$xsrc/_deweb" is_file
}
@test 'more_src has _dexed' {
    assert "$xsrc/_dexed" is_file
}
@test 'more_src has _dexp' {
    assert "$xsrc/_dexp" is_file
}
@test 'more_src has _dfm' {
    assert "$xsrc/_dfm" is_file
}
@test 'more_src has _dfmt' {
    assert "$xsrc/_dfmt" is_file
}
@test 'more_src has _dfrs' {
    assert "$xsrc/_dfrs" is_file
}
@test 'more_src has _dfu-prefix' {
    assert "$xsrc/_dfu-prefix" is_file
}
@test 'more_src has _dfu-programmer' {
    assert "$xsrc/_dfu-programmer" is_file
}
@test 'more_src has _dfu-suffix' {
    assert "$xsrc/_dfu-suffix" is_file
}
@test 'more_src has _dh-php' {
    assert "$xsrc/_dh-php" is_file
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
@test 'more_src has _diatheke' {
    assert "$xsrc/_diatheke" is_file
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
@test 'more_src has _digger' {
    assert "$xsrc/_digger" is_file
}
@test 'more_src has _digikam' {
    assert "$xsrc/_digikam" is_file
}
@test 'more_src has _dioxionary' {
    assert "$xsrc/_dioxionary" is_file
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
@test 'more_src has _diskard' {
    assert "$xsrc/_diskard" is_file
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
@test 'more_src has _djbdns' {
    assert "$xsrc/_djbdns" is_file
}
@test 'more_src has _dkimproxy' {
    assert "$xsrc/_dkimproxy" is_file
}
@test 'more_src has _dkit' {
    assert "$xsrc/_dkit" is_file
}
@test 'more_src has _dlt' {
    assert "$xsrc/_dlt" is_file
}
@test 'more_src has _dmtxquery' {
    assert "$xsrc/_dmtxquery" is_file
}
@test 'more_src has _dmtxread' {
    assert "$xsrc/_dmtxread" is_file
}
@test 'more_src has _dmtxwrite' {
    assert "$xsrc/_dmtxwrite" is_file
}
@test 'more_src has _dmypy' {
    assert "$xsrc/_dmypy" is_file
}
@test 'more_src has _dndmake' {
    assert "$xsrc/_dndmake" is_file
}
@test 'more_src has _dnf5' {
    assert "$xsrc/_dnf5" is_file
}
@test 'more_src has _dnglab' {
    assert "$xsrc/_dnglab" is_file
}
@test 'more_src has _dnote' {
    assert "$xsrc/_dnote" is_file
}
@test 'more_src has _dns-sd' {
    assert "$xsrc/_dns-sd" is_file
}
@test 'more_src has _dnscap' {
    assert "$xsrc/_dnscap" is_file
}
@test 'more_src has _dnscontrol' {
    assert "$xsrc/_dnscontrol" is_file
}
@test 'more_src has _dnsgen' {
    assert "$xsrc/_dnsgen" is_file
}
@test 'more_src has _dnsproxy' {
    assert "$xsrc/_dnsproxy" is_file
}
@test 'more_src has _dnsq' {
    assert "$xsrc/_dnsq" is_file
}
@test 'more_src has _dnsqr' {
    assert "$xsrc/_dnsqr" is_file
}
@test 'more_src has _dnstrace' {
    assert "$xsrc/_dnstrace" is_file
}
@test 'more_src has _dnstwist' {
    assert "$xsrc/_dnstwist" is_file
}
@test 'more_src has _dnsx' {
    assert "$xsrc/_dnsx" is_file
}
@test 'more_src has _docbook2dvi' {
    assert "$xsrc/_docbook2dvi" is_file
}
@test 'more_src has _doc-comparator.py' {
    assert "$xsrc/_doc-comparator.py" is_file
}
@test 'more_src has _dochelp' {
    assert "$xsrc/_dochelp" is_file
}
@test 'more_src has _doom' {
    assert "$xsrc/_doom" is_file
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
@test 'more_src has _doitlive' {
    assert "$xsrc/_doitlive" is_file
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
@test 'more_src has _dolthub' {
    assert "$xsrc/_dolthub" is_file
}
@test 'more_src has _don' {
    assert "$xsrc/_don" is_file
}
@test 'more_src has _doppler' {
    assert "$xsrc/_doppler" is_file
}
@test 'more_src has _dora' {
    assert "$xsrc/_dora" is_file
}
@test 'more_src has _dosbox' {
    assert "$xsrc/_dosbox" is_file
}
@test 'more_src has _dot' {
    assert "$xsrc/_dot" is_file
}
@test 'more_src has _dot2tex' {
    assert "$xsrc/_dot2tex" is_file
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
@test 'more_src has _dotfiles' {
    assert "$xsrc/_dotfiles" is_file
}
@test 'more_src has _dotm' {
    assert "$xsrc/_dotm" is_file
}
@test 'more_src has _dotnet-install.sh' {
    assert "$xsrc/_dotnet-install.sh" is_file
}
@test 'more_src has _dotnet-suggest' {
    assert "$xsrc/_dotnet-suggest" is_file
}
@test 'more_src has _dots' {
    assert "$xsrc/_dots" is_file
}
@test 'more_src has _dotstate' {
    assert "$xsrc/_dotstate" is_file
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
@test 'more_src has _droidcam-cli' {
    assert "$xsrc/_droidcam-cli" is_file
}
@test 'more_src has _drone' {
    assert "$xsrc/_drone" is_file
}
@test 'more_src has _dropbearconvert' {
    assert "$xsrc/_dropbearconvert" is_file
}
@test 'more_src has _dropbearkey' {
    assert "$xsrc/_dropbearkey" is_file
}
@test 'more_src has _drt-tools' {
    assert "$xsrc/_drt-tools" is_file
}
@test 'more_src has _drug' {
    assert "$xsrc/_drug" is_file
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
@test 'more_src has _dsc' {
    assert "$xsrc/_dsc" is_file
}
@test 'more_src has _dscanner' {
    assert "$xsrc/_dscanner" is_file
}
@test 'more_src has _dscl' {
    assert "$xsrc/_dscl" is_file
}
@test 'more_src has _dsd' {
    assert "$xsrc/_dsd" is_file
}
@test 'more_src has _dsm' {
    assert "$xsrc/_dsm" is_file
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
@test 'more_src has _dts' {
    assert "$xsrc/_dts" is_file
}
@test 'more_src has _dua' {
    assert "$xsrc/_dua" is_file
}
@test 'more_src has _dualsensectl' {
    assert "$xsrc/_dualsensectl" is_file
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
@test 'more_src has _dugout' {
    assert "$xsrc/_dugout" is_file
}
@test 'more_src has _dumbpipe' {
    assert "$xsrc/_dumbpipe" is_file
}
@test 'more_src has _dump1090' {
    assert "$xsrc/_dump1090" is_file
}
@test 'more_src has _dund' {
    assert "$xsrc/_dund" is_file
}
@test 'more_src has _dunstctl' {
    assert "$xsrc/_dunstctl" is_file
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
@test 'more_src has _dwarfsck' {
    assert "$xsrc/_dwarfsck" is_file
}
@test 'more_src has _dwarfsextract' {
    assert "$xsrc/_dwarfsextract" is_file
}
@test 'more_src has _dwg2pdf' {
    assert "$xsrc/_dwg2pdf" is_file
}
@test 'more_src has _dwginfo' {
    assert "$xsrc/_dwginfo" is_file
}
@test 'more_src has _dyff' {
    assert "$xsrc/_dyff" is_file
}
@test 'more_src has _dym' {
    assert "$xsrc/_dym" is_file
}
@test 'more_src has _dynaconf' {
    assert "$xsrc/_dynaconf" is_file
}
@test 'more_src has _dynisland' {
    assert "$xsrc/_dynisland" is_file
}
@test 'more_src has _dynomite' {
    assert "$xsrc/_dynomite" is_file
}
@test 'more_src has _dwlb' {
    assert "$xsrc/_dwlb" is_file
}
@test 'more_src has _dwmblocks' {
    assert "$xsrc/_dwmblocks" is_file
}
@test 'more_src has _dzil' {
    assert "$xsrc/_dzil" is_file
}
@test 'more_src has _e' {
    assert "$xsrc/_e" is_file
}
@test 'more_src has _e2undel' {
    assert "$xsrc/_e2undel" is_file
}
@test 'more_src has _earbuds' {
    assert "$xsrc/_earbuds" is_file
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
@test 'more_src has _eboard' {
    assert "$xsrc/_eboard" is_file
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
@test 'more_src has _ecpbram' {
    assert "$xsrc/_ecpbram" is_file
}
@test 'more_src has _ecppack' {
    assert "$xsrc/_ecppack" is_file
}
@test 'more_src has _ecpunpack' {
    assert "$xsrc/_ecpunpack" is_file
}
@test 'more_src has _ecotokens' {
    assert "$xsrc/_ecotokens" is_file
}
@test 'more_src has _edac-ctl' {
    assert "$xsrc/_edac-ctl" is_file
}
@test 'more_src has _edac-util' {
    assert "$xsrc/_edac-util" is_file
}
@test 'more_src has _edactl' {
    assert "$xsrc/_edactl" is_file
}
@test 'more_src has _edgedb' {
    assert "$xsrc/_edgedb" is_file
}
@test 'more_src has _editorconfiger' {
    assert "$xsrc/_editorconfiger" is_file
}
@test 'more_src has _editres' {
    assert "$xsrc/_editres" is_file
}
@test 'more_src has _edtr' {
    assert "$xsrc/_edtr" is_file
}
@test 'more_src has _eget' {
    assert "$xsrc/_eget" is_file
}
@test 'more_src has _ego' {
    assert "$xsrc/_ego" is_file
}
@test 'more_src has _eigrpd' {
    assert "$xsrc/_eigrpd" is_file
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
@test 'more_src has _electron-builder' {
    assert "$xsrc/_electron-builder" is_file
}
@test 'more_src has _elf2nucleus' {
    assert "$xsrc/_elf2nucleus" is_file
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
@test 'more_src has _elvis' {
    assert "$xsrc/_elvis" is_file
}
@test 'more_src has _elvish' {
    assert "$xsrc/_elvish" is_file
}
@test 'more_src has _embark' {
    assert "$xsrc/_embark" is_file
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
@test 'more_src has _enblend' {
    assert "$xsrc/_enblend" is_file
}
@test 'more_src has _enfuse' {
    assert "$xsrc/_enfuse" is_file
}
@test 'more_src has _enc2xs' {
    assert "$xsrc/_enc2xs" is_file
}
@test 'more_src has _engage' {
    assert "$xsrc/_engage" is_file
}
@test 'more_src has _engram' {
    assert "$xsrc/_engram" is_file
}
@test 'more_src has _enseal' {
    assert "$xsrc/_enseal" is_file
}
@test 'more_src has _envchain' {
    assert "$xsrc/_envchain" is_file
}
@test 'more_src has _envcheck' {
    assert "$xsrc/_envcheck" is_file
}
@test 'more_src has _envforge' {
    assert "$xsrc/_envforge" is_file
}
@test 'more_src has _envio' {
    assert "$xsrc/_envio" is_file
}
@test 'more_src has _envoke' {
    assert "$xsrc/_envoke" is_file
}
@test 'more_src has _envq' {
    assert "$xsrc/_envq" is_file
}
@test 'more_src has _envroll' {
    assert "$xsrc/_envroll" is_file
}

@test 'more_src has _envuidgid' {
    assert "$xsrc/_envuidgid" is_file
}
@test 'more_src has _envvault' {
    assert "$xsrc/_envvault" is_file
}

@test 'more_src has _envy24control' {
    assert "$xsrc/_envy24control" is_file
}
@test 'more_src has _eolas-util' {
    assert "$xsrc/_eolas-util" is_file
}
@test 'more_src has _epiphany-cli' {
    assert "$xsrc/_epiphany-cli" is_file
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
@test 'more_src has _eralchemy' {
    assert "$xsrc/_eralchemy" is_file
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
@test 'more_src has _esp-idf' {
    assert "$xsrc/_esp-idf" is_file
}
@test 'more_src has _espanso' {
    assert "$xsrc/_espanso" is_file
}
@test 'more_src has _espefuse' {
    assert "$xsrc/_espefuse" is_file
}
@test 'more_src has _espflash' {
    assert "$xsrc/_espflash" is_file
}
@test 'more_src has _esphome' {
    assert "$xsrc/_esphome" is_file
}
@test 'more_src has _espsecure' {
    assert "$xsrc/_espsecure" is_file
}
@test 'more_src has _espeakup' {
    assert "$xsrc/_espeakup" is_file
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
@test 'more_src has _ettercap-curses' {
    assert "$xsrc/_ettercap-curses" is_file
}
@test 'more_src has _ets' {
    assert "$xsrc/_ets" is_file
}
@test 'more_src has _eugene' {
    assert "$xsrc/_eugene" is_file
}
@test 'more_src has _evemu-describe' {
    assert "$xsrc/_evemu-describe" is_file
}
@test 'more_src has _evemu-event' {
    assert "$xsrc/_evemu-event" is_file
}
@test 'more_src has _evemu-play' {
    assert "$xsrc/_evemu-play" is_file
}
@test 'more_src has _evemu-record' {
    assert "$xsrc/_evemu-record" is_file
}
@test 'more_src has _evans' {
    assert "$xsrc/_evans" is_file
}
@test 'more_src has _evernote-backup' {
    assert "$xsrc/_evernote-backup" is_file
}
@test 'more_src has _evremap' {
    assert "$xsrc/_evremap" is_file
}
@test 'more_src has _exaile' {
    assert "$xsrc/_exaile" is_file
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
@test 'more_src has _existence' {
    assert "$xsrc/_existence" is_file
}
@test 'more_src has _exifautotran' {
    assert "$xsrc/_exifautotran" is_file
}
@test 'more_src has _exifprobe' {
    assert "$xsrc/_exifprobe" is_file
}
@test 'more_src has _exiftran' {
    assert "$xsrc/_exiftran" is_file
}
@test 'more_src has _exo' {
    assert "$xsrc/_exo" is_file
}
@test 'more_src has _expect' {
    assert "$xsrc/_expect" is_file
}
@test 'more_src has _expenses' {
    assert "$xsrc/_expenses" is_file
}
@test 'more_src has _expressvpn' {
    assert "$xsrc/_expressvpn" is_file
}
@test 'more_src has _ext4magic' {
    assert "$xsrc/_ext4magic" is_file
}
@test 'more_src has _extremetuxracer' {
    assert "$xsrc/_extremetuxracer" is_file
}
@test 'more_src has _extresso' {
    assert "$xsrc/_extresso" is_file
}
@test 'more_src has _ezgdal' {
    assert "$xsrc/_ezgdal" is_file
}
@test 'more_src has _ezmlm' {
    assert "$xsrc/_ezmlm" is_file
}
@test 'more_src has _ezmlm-archive' {
    assert "$xsrc/_ezmlm-archive" is_file
}
@test 'more_src has _ezmlm-clean' {
    assert "$xsrc/_ezmlm-clean" is_file
}
@test 'more_src has _ezmlm-get' {
    assert "$xsrc/_ezmlm-get" is_file
}
@test 'more_src has _ezmlm-issubn' {
    assert "$xsrc/_ezmlm-issubn" is_file
}
@test 'more_src has _ezmlm-list' {
    assert "$xsrc/_ezmlm-list" is_file
}
@test 'more_src has _ezmlm-make' {
    assert "$xsrc/_ezmlm-make" is_file
}
@test 'more_src has _ezmlm-manage' {
    assert "$xsrc/_ezmlm-manage" is_file
}
@test 'more_src has _ezmlm-return' {
    assert "$xsrc/_ezmlm-return" is_file
}
@test 'more_src has _ezmlm-send' {
    assert "$xsrc/_ezmlm-send" is_file
}
@test 'more_src has _ezmlm-store' {
    assert "$xsrc/_ezmlm-store" is_file
}
@test 'more_src has _ezmlm-sub' {
    assert "$xsrc/_ezmlm-sub" is_file
}
@test 'more_src has _ezmlm-unsub' {
    assert "$xsrc/_ezmlm-unsub" is_file
}
@test 'more_src has _f-f-f-find.sh' {
    assert "$xsrc/_f-f-f-find.sh" is_file
}
@test 'more_src has _f2' {
    assert "$xsrc/_f2" is_file
}
@test 'more_src has _f3' {
    assert "$xsrc/_f3" is_file
}
@test 'more_src has _f3brew' {
    assert "$xsrc/_f3brew" is_file
}
@test 'more_src has _f3d' {
    assert "$xsrc/_f3d" is_file
}
@test 'more_src has _f3fix' {
    assert "$xsrc/_f3fix" is_file
}
@test 'more_src has _f3probe' {
    assert "$xsrc/_f3probe" is_file
}
@test 'more_src has _f3read' {
    assert "$xsrc/_f3read" is_file
}
@test 'more_src has _f3write' {
    assert "$xsrc/_f3write" is_file
}
@test 'more_src has _faas-cli' {
    assert "$xsrc/_faas-cli" is_file
}
@test 'more_src has _faasd' {
    assert "$xsrc/_faasd" is_file
}
@test 'more_src has _factorix.zsh' {
    assert "$xsrc/_factorix.zsh" is_file
}
@test 'more_src has _fail2ban-client' {
    assert "$xsrc/_fail2ban-client" is_file
}
@test 'more_src has _fairymax' {
    assert "$xsrc/_fairymax" is_file
}
@test 'more_src has _fakedata' {
    assert "$xsrc/_fakedata" is_file
}
@test 'more_src has _falco' {
    assert "$xsrc/_falco" is_file
}
@test 'more_src has _falconctl' {
    assert "$xsrc/_falconctl" is_file
}
@test 'more_src has _falkon-cli' {
    assert "$xsrc/_falkon-cli" is_file
}
@test 'more_src has _falkor' {
    assert "$xsrc/_falkor" is_file
}
@test 'more_src has _fapolicyd' {
    assert "$xsrc/_fapolicyd" is_file
}
@test 'more_src has _farv' {
    assert "$xsrc/_farv" is_file
}
@test 'more_src has _fast-theme' {
    assert "$xsrc/_fast-theme" is_file
}
@test 'more_src has _fastanime' {
    assert "$xsrc/_fastanime" is_file
}
@test 'more_src has _fastapi-cli' {
    assert "$xsrc/_fastapi-cli" is_file
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
@test 'more_src has _favico' {
    assert "$xsrc/_favico" is_file
}
@test 'more_src has _fatresize' {
    assert "$xsrc/_fatresize" is_file
}
@test 'more_src has _faust' {
    assert "$xsrc/_faust" is_file
}
@test 'more_src has _fbcat' {
    assert "$xsrc/_fbcat" is_file
}
@test 'more_src has _fbd' {
    assert "$xsrc/_fbd" is_file
}
@test 'more_src has _fblog' {
    assert "$xsrc/_fblog" is_file
}
@test 'more_src has _fbreader' {
    assert "$xsrc/_fbreader" is_file
}
@test 'more_src has _fclones' {
    assert "$xsrc/_fclones" is_file
}
@test 'more_src has _fcp' {
    assert "$xsrc/_fcp" is_file
}
@test 'more_src has _featureCounts' {
    assert "$xsrc/_featureCounts" is_file
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
@test 'more_src has _fetchit' {
    assert "$xsrc/_fetchit" is_file
}
@test 'more_src has _fez.zsh' {
    assert "$xsrc/_fez.zsh" is_file
}
@test 'more_src has _ff2mpv' {
    assert "$xsrc/_ff2mpv" is_file
}
@test 'more_src has _ffmpeg2theora' {
    assert "$xsrc/_ffmpeg2theora" is_file
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
@test 'more_src has _fibertools-rs' {
    assert "$xsrc/_fibertools-rs" is_file
}
@test 'more_src has _filebot' {
    assert "$xsrc/_filebot" is_file
}
@test 'more_src has _filemon' {
    assert "$xsrc/_filemon" is_file
}
@test 'more_src has _filite' {
    assert "$xsrc/_filite" is_file
}
@test 'more_src has _finalfrontier' {
    assert "$xsrc/_finalfrontier" is_file
}
@test 'more_src has _finalfusion' {
    assert "$xsrc/_finalfusion" is_file
}
@test 'more_src has _find_cruft' {
    assert "$xsrc/_find_cruft" is_file
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
@test 'more_src has _firefoxpwa' {
    assert "$xsrc/_firefoxpwa" is_file
}
@test 'more_src has _fission' {
    assert "$xsrc/_fission" is_file
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
@test 'more_src has _flake-edit' {
    assert "$xsrc/_flake-edit" is_file
}
@test 'more_src has _flarq' {
    assert "$xsrc/_flarq" is_file
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
@test 'more_src has _flavours' {
    assert "$xsrc/_flavours" is_file
}
@test 'more_src has _fldigi' {
    assert "$xsrc/_fldigi" is_file
}
@test 'more_src has _fleche' {
    assert "$xsrc/_fleche" is_file
}
@test 'more_src has _flet' {
    assert "$xsrc/_flet" is_file
}
@test 'more_src has _flexget' {
    assert "$xsrc/_flexget" is_file
}
@test 'more_src has _flightgear' {
    assert "$xsrc/_flightgear" is_file
}
@test 'more_src has _flight-network-planner' {
    assert "$xsrc/_flight-network-planner" is_file
}
@test 'more_src has _flintrock' {
    assert "$xsrc/_flintrock" is_file
}
@test 'more_src has _flipt' {
    assert "$xsrc/_flipt" is_file
}
@test 'more_src has _flk' {
    assert "$xsrc/_flk" is_file
}
@test 'more_src has _flmsg' {
    assert "$xsrc/_flmsg" is_file
}
@test 'more_src has _florestad' {
    assert "$xsrc/_florestad" is_file
}
@test 'more_src has _floss' {
    assert "$xsrc/_floss" is_file
}
@test 'more_src has _flowise' {
    assert "$xsrc/_flowise" is_file
}
@test 'more_src has _flrig' {
    assert "$xsrc/_flrig" is_file
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
@test 'more_src has _folderify' {
    assert "$xsrc/_folderify" is_file
}
@test 'more_src has _fontinst' {
    assert "$xsrc/_fontinst" is_file
}
@test 'more_src has _fontmatrix' {
    assert "$xsrc/_fontmatrix" is_file
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
@test 'more_src has _fortune-kind' {
    assert "$xsrc/_fortune-kind" is_file
}
@test 'more_src has _forth' {
    assert "$xsrc/_forth" is_file
}
@test 'more_src has _fossa' {
    assert "$xsrc/_fossa" is_file
}
@test 'more_src has _fossil' {
    assert "$xsrc/_fossil" is_file
}
@test 'more_src has _foxtrotgps' {
    assert "$xsrc/_foxtrotgps" is_file
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
@test 'more_src has _freerdp' {
    assert "$xsrc/_freerdp" is_file
}
@test 'more_src has _freeswitch' {
    assert "$xsrc/_freeswitch" is_file
}
@test 'more_src has _freecadcmd' {
    assert "$xsrc/_freecadcmd" is_file
}
@test 'more_src has _freeciv' {
    assert "$xsrc/_freeciv" is_file
}
@test 'more_src has _freeciv-client' {
    assert "$xsrc/_freeciv-client" is_file
}
@test 'more_src has _freshclam-cron' {
    assert "$xsrc/_freshclam-cron" is_file
}
@test 'more_src has _frozen-bubble' {
    assert "$xsrc/_frozen-bubble" is_file
}
@test 'more_src has _frg' {
    assert "$xsrc/_frg" is_file
}

@test 'more_src has _frontail' {
    assert "$xsrc/_frontail" is_file
}
@test 'more_src has _frontend' {
    assert "$xsrc/_frontend" is_file
}
@test 'more_src has _frum' {
    assert "$xsrc/_frum" is_file
}
@test 'more_src has _fsck.btrfs' {
    assert "$xsrc/_fsck.btrfs" is_file
}
@test 'more_src has _fselect' {
    assert "$xsrc/_fselect" is_file
}
@test 'more_src has _fstar.exe' {
    assert "$xsrc/_fstar.exe" is_file
}
@test 'more_src has _fsverity' {
    assert "$xsrc/_fsverity" is_file
}
@test 'more_src has _fswebcam' {
    assert "$xsrc/_fswebcam" is_file
}
@test 'more_src has _ftdv' {
    assert "$xsrc/_ftdv" is_file
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
@test 'more_src has _fulla' {
    assert "$xsrc/_fulla" is_file
}
@test 'more_src has _fvm' {
    assert "$xsrc/_fvm" is_file
}
@test 'more_src has _fvwm' {
    assert "$xsrc/_fvwm" is_file
}
@test 'more_src has _fx' {
    assert "$xsrc/_fx" is_file
}
@test 'more_src has _fxc' {
    assert "$xsrc/_fxc" is_file
}
@test 'more_src has _fzf' {
    assert "$xsrc/_fzf" is_file
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
@test 'more_src has _gambit' {
    assert "$xsrc/_gambit" is_file
}
@test 'more_src has _gammaray' {
    assert "$xsrc/_gammaray" is_file
}
@test 'more_src has _gammastep' {
    assert "$xsrc/_gammastep" is_file
}
@test 'more_src has _gap' {
    assert "$xsrc/_gap" is_file
}
@test 'more_src has _gardenctl' {
    assert "$xsrc/_gardenctl" is_file
}
@test 'more_src has _gat' {
    assert "$xsrc/_gat" is_file
}
@test 'more_src has _gatel' {
    assert "$xsrc/_gatel" is_file
}
@test 'more_src has _gateway-go' {
    assert "$xsrc/_gateway-go" is_file
}
@test 'more_src has _gatk' {
    assert "$xsrc/_gatk" is_file
}
@test 'more_src has _gatsby' {
    assert "$xsrc/_gatsby" is_file
}
@test 'more_src has _gauche' {
    assert "$xsrc/_gauche" is_file
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
@test 'more_src has _gcalccmd' {
    assert "$xsrc/_gcalccmd" is_file
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
@test 'more_src has _gdkpixbuf-pixdata' {
    assert "$xsrc/_gdkpixbuf-pixdata" is_file
}
@test 'more_src has _gdkpixbuf-print-mime-types' {
    assert "$xsrc/_gdkpixbuf-print-mime-types" is_file
}
@test 'more_src has _gdkpixbuf-query-loaders' {
    assert "$xsrc/_gdkpixbuf-query-loaders" is_file
}
@test 'more_src has _gdkpixbuf-thumbnailer' {
    assert "$xsrc/_gdkpixbuf-thumbnailer" is_file
}
@test 'more_src has _gdb-multiarch' {
    assert "$xsrc/_gdb-multiarch" is_file
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
@test 'more_src has _genkernel' {
    assert "$xsrc/_genkernel" is_file
}
@test 'more_src has _genseusers' {
    assert "$xsrc/_genseusers" is_file
}
@test 'more_src has _genlop' {
    assert "$xsrc/_genlop" is_file
}
@test 'more_src has _geocode' {
    assert "$xsrc/_geocode" is_file
}
@test 'more_src has _geogebra' {
    assert "$xsrc/_geogebra" is_file
}
@test 'more_src has _gerbil' {
    assert "$xsrc/_gerbil" is_file
}
@test 'more_src has _geda' {
    assert "$xsrc/_geda" is_file
}
@test 'more_src has _get-repo' {
    assert "$xsrc/_get-repo" is_file
}
@test 'more_src has _getdns_query' {
    assert "$xsrc/_getdns_query" is_file
}
@test 'more_src has _getraw' {
    assert "$xsrc/_getraw" is_file
}
@test 'more_src has _giac' {
    assert "$xsrc/_giac" is_file
}
@test 'more_src has _ginsh' {
    assert "$xsrc/_ginsh" is_file
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
@test 'more_src has _ghatm' {
    assert "$xsrc/_ghatm" is_file
}
@test 'more_src has _ghauri' {
    assert "$xsrc/_ghauri" is_file
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
@test 'more_src has _ghost-inspector' {
    assert "$xsrc/_ghost-inspector" is_file
}
@test 'more_src has _ghostty' {
    assert "$xsrc/_ghostty" is_file
}
@test 'more_src has _ghostunnel' {
    assert "$xsrc/_ghostunnel" is_file
}
@test 'more_src has _ghq' {
    assert "$xsrc/_ghq" is_file
}
@test 'more_src has _gist-cache-rs' {
    assert "$xsrc/_gist-cache-rs" is_file
}
@test 'more_src has _git-absorb' {
    assert "$xsrc/_git-absorb" is_file
}
@test 'more_src has _git-branchless' {
    assert "$xsrc/_git-branchless" is_file
}
@test 'more_src has _git-changelog' {
    assert "$xsrc/_git-changelog" is_file
}
@test 'more_src has _git-checkout' {
    assert "$xsrc/_git-checkout" is_file
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
@test 'more_src has _git-gamble' {
    assert "$xsrc/_git-gamble" is_file
}
@test 'more_src has _git-gh' {
    assert "$xsrc/_git-gh" is_file
}
@test 'more_src has _git-gone' {
    assert "$xsrc/_git-gone" is_file
}
@test 'more_src has _git-gr' {
    assert "$xsrc/_git-gr" is_file
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
@test 'more_src has _git-identity' {
    assert "$xsrc/_git-identity" is_file
}
@test 'more_src has _git-info' {
    assert "$xsrc/_git-info" is_file
}
@test 'more_src has _git-interactive-rebase-tool' {
    assert "$xsrc/_git-interactive-rebase-tool" is_file
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
@test 'more_src has _git-nomad' {
    assert "$xsrc/_git-nomad" is_file
}
@test 'more_src has _git-open' {
    assert "$xsrc/_git-open" is_file
}
@test 'more_src has _git-prole' {
    assert "$xsrc/_git-prole" is_file
}
@test 'more_src has _git-rec' {
    assert "$xsrc/_git-rec" is_file
}
@test 'more_src has _git-recent' {
    assert "$xsrc/_git-recent" is_file
}
@test 'more_src has _git-router' {
    assert "$xsrc/_git-router" is_file
}

@test 'more_src has _git-secret' {
    assert "$xsrc/_git-secret" is_file
}
@test 'more_src has _git-sizer' {
    assert "$xsrc/_git-sizer" is_file
}
@test 'more_src has _git-smash' {
    assert "$xsrc/_git-smash" is_file
}
@test 'more_src has _git-standup' {
    assert "$xsrc/_git-standup" is_file
}
@test 'more_src has _git-stats' {
    assert "$xsrc/_git-stats" is_file
}
@test 'more_src has _git-statuses' {
    assert "$xsrc/_git-statuses" is_file
}
@test 'more_src has _git-submodule-move' {
    assert "$xsrc/_git-submodule-move" is_file
}
@test 'more_src has _git-submodule-remove' {
    assert "$xsrc/_git-submodule-remove" is_file
}
@test 'more_src has _git-team' {
    assert "$xsrc/_git-team" is_file
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
@test 'more_src has _git-wt' {
    assert "$xsrc/_git-wt" is_file
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
@test 'more_src has _gitsub' {
    assert "$xsrc/_gitsub" is_file
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
@test 'more_src has _gkrellm' {
    assert "$xsrc/_gkrellm" is_file
}
@test 'more_src has _gke-gcloud-auth-plugin' {
    assert "$xsrc/_gke-gcloud-auth-plugin" is_file
}
@test 'more_src has _glab' {
    assert "$xsrc/_glab" is_file
}
@test 'more_src has _glaurung' {
    assert "$xsrc/_glaurung" is_file
}
@test 'more_src has _glf' {
    assert "$xsrc/_glf" is_file
}
@test 'more_src has _glftpd' {
    assert "$xsrc/_glftpd" is_file
}
@test 'more_src has _glide' {
    assert "$xsrc/_glide" is_file
}
@test 'more_src has _glider' {
    assert "$xsrc/_glider" is_file
}
@test 'more_src has _globus' {
    assert "$xsrc/_globus" is_file
}
@test 'more_src has _glow' {
    assert "$xsrc/_glow" is_file
}
@test 'more_src has _glum' {
    assert "$xsrc/_glum" is_file
}
@test 'more_src has _glmark2' {
    assert "$xsrc/_glmark2" is_file
}
@test 'more_src has _gpsbabel' {
    assert "$xsrc/_gpsbabel" is_file
}
@test 'more_src has _gpac' {
    assert "$xsrc/_gpac" is_file
}
@test 'more_src has _glslang' {
    assert "$xsrc/_glslang" is_file
}

@test 'more_src has _gmx' {
    assert "$xsrc/_gmx" is_file
}
@test 'more_src has _gmic' {
    assert "$xsrc/_gmic" is_file
}
@test 'more_src has _gnome-five-or-more' {
    assert "$xsrc/_gnome-five-or-more" is_file
}
@test 'more_src has _gnome-iagno' {
    assert "$xsrc/_gnome-iagno" is_file
}
@test 'more_src has _gnome-quadrapassel' {
    assert "$xsrc/_gnome-quadrapassel" is_file
}
@test 'more_src has _gnome-tali' {
    assert "$xsrc/_gnome-tali" is_file
}
@test 'more_src has _gnt-cluster' {
    assert "$xsrc/_gnt-cluster" is_file
}
@test 'more_src has _gnt-instance' {
    assert "$xsrc/_gnt-instance" is_file
}
@test 'more_src has _gnt-job' {
    assert "$xsrc/_gnt-job" is_file
}
@test 'more_src has _gnt-node' {
    assert "$xsrc/_gnt-node" is_file
}
@test 'more_src has _gnatbind' {
    assert "$xsrc/_gnatbind" is_file
}
@test 'more_src has _gnatchop' {
    assert "$xsrc/_gnatchop" is_file
}
@test 'more_src has _gnatclean' {
    assert "$xsrc/_gnatclean" is_file
}
@test 'more_src has _gnatdoc' {
    assert "$xsrc/_gnatdoc" is_file
}
@test 'more_src has _gnatfind' {
    assert "$xsrc/_gnatfind" is_file
}
@test 'more_src has _gnatkr' {
    assert "$xsrc/_gnatkr" is_file
}
@test 'more_src has _gnatlink' {
    assert "$xsrc/_gnatlink" is_file
}
@test 'more_src has _gnatls' {
    assert "$xsrc/_gnatls" is_file
}
@test 'more_src has _gnatmake' {
    assert "$xsrc/_gnatmake" is_file
}
@test 'more_src has _gnatmem' {
    assert "$xsrc/_gnatmem" is_file
}
@test 'more_src has _gnatname' {
    assert "$xsrc/_gnatname" is_file
}
@test 'more_src has _gnatprep' {
    assert "$xsrc/_gnatprep" is_file
}
@test 'more_src has _gnatxref' {
    assert "$xsrc/_gnatxref" is_file
}
@test 'more_src has _gnubackgammon' {
    assert "$xsrc/_gnubackgammon" is_file
}
@test 'more_src has _gnubg' {
    assert "$xsrc/_gnubg" is_file
}
@test 'more_src has _gnumeric' {
    assert "$xsrc/_gnumeric" is_file
}
@test 'more_src has _gnushogi' {
    assert "$xsrc/_gnushogi" is_file
}
@test 'more_src has _gnvm' {
    assert "$xsrc/_gnvm" is_file
}
@test 'more_src has _go' {
    assert "$xsrc/_go" is_file
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
@test 'more_src has _goa-daemon' {
    assert "$xsrc/_goa-daemon" is_file
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
@test 'more_src has _gobgpd' {
    assert "$xsrc/_gobgpd" is_file
}
@test 'more_src has _gobrew' {
    assert "$xsrc/_gobrew" is_file
}
@test 'more_src has _gocatcli' {
    assert "$xsrc/_gocatcli" is_file
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
@test 'more_src has _goconvey' {
    assert "$xsrc/_goconvey" is_file
}
@test 'more_src has _gocov' {
    assert "$xsrc/_gocov" is_file
}
@test 'more_src has _gocritic' {
    assert "$xsrc/_gocritic" is_file
}
@test 'more_src has _godep' {
    assert "$xsrc/_godep" is_file
}
@test 'more_src has _godog' {
    assert "$xsrc/_godog" is_file
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
@test 'more_src has _goldendict' {
    assert "$xsrc/_goldendict" is_file
}
@test 'more_src has _golab' {
    assert "$xsrc/_golab" is_file
}
@test 'more_src has _golang' {
    assert "$xsrc/_golang" is_file
}
@test 'more_src has _golang-migrate' {
    assert "$xsrc/_golang-migrate" is_file
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
@test 'more_src has _gom' {
    assert "$xsrc/_gom" is_file
}
@test 'more_src has _gometalinter' {
    assert "$xsrc/_gometalinter" is_file
}
@test 'more_src has _gomu' {
    assert "$xsrc/_gomu" is_file
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
@test 'more_src has _gopls' {
    assert "$xsrc/_gopls" is_file
}
@test 'more_src has _goravis' {
    assert "$xsrc/_goravis" is_file
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
@test 'more_src has _gosmee' {
    assert "$xsrc/_gosmee" is_file
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
@test 'more_src has _gotestfmt' {
    assert "$xsrc/_gotestfmt" is_file
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
@test 'more_src has _goup' {
    assert "$xsrc/_goup" is_file
}
@test 'more_src has _gource' {
    assert "$xsrc/_gource" is_file
}
@test 'more_src has _govctl' {
    assert "$xsrc/_govctl" is_file
}
@test 'more_src has _goverview' {
    assert "$xsrc/_goverview" is_file
}
@test 'more_src has _govulncheck' {
    assert "$xsrc/_govulncheck" is_file
}
@test 'more_src has _goweight' {
    assert "$xsrc/_goweight" is_file
}
@test 'more_src has _goxlr-client' {
    assert "$xsrc/_goxlr-client" is_file
}
@test 'more_src has _goxlr-daemon' {
    assert "$xsrc/_goxlr-daemon" is_file
}
@test 'more_src has _goyacc' {
    assert "$xsrc/_goyacc" is_file
}
@test 'more_src has _gpg-sq' {
    assert "$xsrc/_gpg-sq" is_file
}
@test 'more_src has _gpgv-sq' {
    assert "$xsrc/_gpgv-sq" is_file
}
@test 'more_src has _gpredict' {
    assert "$xsrc/_gpredict" is_file
}
@test 'more_src has _gprbuild' {
    assert "$xsrc/_gprbuild" is_file
}
@test 'more_src has _gprclean' {
    assert "$xsrc/_gprclean" is_file
}
@test 'more_src has _gprinstall' {
    assert "$xsrc/_gprinstall" is_file
}
@test 'more_src has _gprof2dot' {
    assert "$xsrc/_gprof2dot" is_file
}
@test 'more_src has _gpsctl' {
    assert "$xsrc/_gpsctl" is_file
}
@test 'more_src has _gpsd' {
    assert "$xsrc/_gpsd" is_file
}
@test 'more_src has _LimeUtil' {
    assert "$xsrc/_LimeUtil" is_file
}
@test 'more_src has _gpsmon' {
    assert "$xsrc/_gpsmon" is_file
}
@test 'more_src has _gpspipe' {
    assert "$xsrc/_gpspipe" is_file
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
@test 'more_src has _gptcommit' {
    assert "$xsrc/_gptcommit" is_file
}
@test 'more_src has _grafana-cli' {
    assert "$xsrc/_grafana-cli" is_file
}
@test 'more_src has _grafatui' {
    assert "$xsrc/_grafatui" is_file
}
@test 'more_src has _granian' {
    assert "$xsrc/_granian" is_file
}
@test 'more_src has _granted' {
    assert "$xsrc/_granted" is_file
}
@test 'more_src has _graylog-ctl' {
    assert "$xsrc/_graylog-ctl" is_file
}
@test 'more_src has _graylog-sidecar' {
    assert "$xsrc/_graylog-sidecar" is_file
}
@test 'more_src has _grcat' {
    assert "$xsrc/_grcat" is_file
}
@test 'more_src has _gremlin' {
    assert "$xsrc/_gremlin" is_file
}
@test 'more_src has _grex' {
    assert "$xsrc/_grex" is_file
}
@test 'more_src has _greylistd' {
    assert "$xsrc/_greylistd" is_file
}
@test 'more_src has _griffe' {
    assert "$xsrc/_griffe" is_file
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
@test 'more_src has _gritty' {
    assert "$xsrc/_gritty" is_file
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
@test 'more_src has _grov' {
    assert "$xsrc/_grov" is_file
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
@test 'more_src has _gsan' {
    assert "$xsrc/_gsan" is_file
}
@test 'more_src has _gschem' {
    assert "$xsrc/_gschem" is_file
}
@test 'more_src has _gvedit' {
    assert "$xsrc/_gvedit" is_file
}
@test 'more_src has _gst' {
    assert "$xsrc/_gst" is_file
}
@test 'more_src has _gtkterm' {
    assert "$xsrc/_gtkterm" is_file
}
@test 'more_src has _gtop' {
    assert "$xsrc/_gtop" is_file
}
@test 'more_src has _guacenc' {
    assert "$xsrc/_guacenc" is_file
}
@test 'more_src has _gummiboot' {
    assert "$xsrc/_gummiboot" is_file
}
@test 'more_src has _gummi' {
    assert "$xsrc/_gummi" is_file
}
@test 'more_src has _guild' {
    assert "$xsrc/_guild" is_file
}
@test 'more_src has _guitarix' {
    assert "$xsrc/_guitarix" is_file
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
@test 'more_src has _gwtx' {
    assert "$xsrc/_gwtx" is_file
}
@test 'more_src has _h2o' {
    assert "$xsrc/_h2o" is_file
}
@test 'more_src has _gzrt' {
    assert "$xsrc/_gzrt" is_file
}
@test 'more_src has _hackrf_info' {
    assert "$xsrc/_hackrf_info" is_file
}
@test 'more_src has _hadolint' {
    assert "$xsrc/_hadolint" is_file
}
@test 'more_src has _hakrawler' {
    assert "$xsrc/_hakrawler" is_file
}
@test 'more_src has _haku' {
    assert "$xsrc/_haku" is_file
}
@test 'more_src has _hal' {
    assert "$xsrc/_hal" is_file
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
@test 'more_src has _handbrake' {
    assert "$xsrc/_handbrake" is_file
}
@test 'more_src has _handlr' {
    assert "$xsrc/_handlr" is_file
}
@test 'more_src has _hanzi-sort' {
    assert "$xsrc/_hanzi-sort" is_file
}
@test 'more_src has _hap' {
    assert "$xsrc/_hap" is_file
}
@test 'more_src has _happy' {
    assert "$xsrc/_happy" is_file
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
@test 'more_src has _hass' {
    assert "$xsrc/_hass" is_file
}
@test 'more_src has _hass-cli' {
    assert "$xsrc/_hass-cli" is_file
}
@test 'more_src has _haskell-language-server-wrapper' {
    assert "$xsrc/_haskell-language-server-wrapper" is_file
}
@test 'more_src has _hatch' {
    assert "$xsrc/_hatch" is_file
}
@test 'more_src has _hatchet' {
    assert "$xsrc/_hatchet" is_file
}
@test 'more_src has _hatop' {
    assert "$xsrc/_hatop" is_file
}
@test 'more_src has _haxe' {
    assert "$xsrc/_haxe" is_file
}
@test 'more_src has _hayabusa' {
    assert "$xsrc/_hayabusa" is_file
}
@test 'more_src has _hayhooks' {
    assert "$xsrc/_hayhooks" is_file
}
@test 'more_src has _hbal' {
    assert "$xsrc/_hbal" is_file
}
@test 'more_src has _hc' {
    assert "$xsrc/_hc" is_file
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
@test 'more_src has _heco' {
    assert "$xsrc/_heco" is_file
}
@test 'more_src has _helix' {
    assert "$xsrc/_helix" is_file
}
@test 'more_src has _helmfile' {
    assert "$xsrc/_helmfile" is_file
}
@test 'more_src has _helmsman' {
    assert "$xsrc/_helmsman" is_file
}
@test 'more_src has _helvum' {
    assert "$xsrc/_helvum" is_file
}
@test 'more_src has _hemli' {
    assert "$xsrc/_hemli" is_file
}
@test 'more_src has _hermit' {
    assert "$xsrc/_hermit" is_file
}
@test 'more_src has _heroku' {
    assert "$xsrc/_heroku" is_file
}
@test 'more_src has _hetzner-kube' {
    assert "$xsrc/_hetzner-kube" is_file
}
@test 'more_src has _hexchat-cli' {
    assert "$xsrc/_hexchat-cli" is_file
}
@test 'more_src has _hexapoda' {
    assert "$xsrc/_hexapoda" is_file
}
@test 'more_src has _hexcurse' {
    assert "$xsrc/_hexcurse" is_file
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
@test 'more_src has _hilbish' {
    assert "$xsrc/_hilbish" is_file
}
@test 'more_src has _himalaya' {
    assert "$xsrc/_himalaya" is_file
}
@test 'more_src has _hiracli' {
    assert "$xsrc/_hiracli" is_file
}
@test 'more_src has _hisat2' {
    assert "$xsrc/_hisat2" is_file
}
@test 'more_src has _hisiflash' {
    assert "$xsrc/_hisiflash" is_file
}
@test 'more_src has _hitt' {
    assert "$xsrc/_hitt" is_file
}
@test 'more_src has _hivemind' {
    assert "$xsrc/_hivemind" is_file
}
@test 'more_src has _hk' {
    assert "$xsrc/_hk" is_file
}
@test 'more_src has _hni' {
    assert "$xsrc/_hni" is_file
}

@test 'more_src has _hoard' {
    assert "$xsrc/_hoard" is_file
}
@test 'more_src has _hoaxshell' {
    assert "$xsrc/_hoaxshell" is_file
}
@test 'more_src has _holdon' {
    assert "$xsrc/_holdon" is_file
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
@test 'more_src has _hooklistener' {
    assert "$xsrc/_hooklistener" is_file
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
@test 'more_src has _hostmux' {
    assert "$xsrc/_hostmux" is_file
}
@test 'more_src has _hoverfly' {
    assert "$xsrc/_hoverfly" is_file
}
@test 'more_src has _hroller' {
    assert "$xsrc/_hroller" is_file
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
@test 'more_src has _httptap' {
    assert "$xsrc/_httptap" is_file
}
@test 'more_src has _httptunnel' {
    assert "$xsrc/_httptunnel" is_file
}
@test 'more_src has _hugin' {
    assert "$xsrc/_hugin" is_file
}
@test 'more_src has _hugin_executor' {
    assert "$xsrc/_hugin_executor" is_file
}
@test 'more_src has _hugin_hdrmerge' {
    assert "$xsrc/_hugin_hdrmerge" is_file
}
@test 'more_src has _hugin_stitch_project' {
    assert "$xsrc/_hugin_stitch_project" is_file
}
@test 'more_src has _hubble' {
    assert "$xsrc/_hubble" is_file
}
@test 'more_src has _huh' {
    assert "$xsrc/_huh" is_file
}
@test 'more_src has _hothasktags' {
    assert "$xsrc/_hothasktags" is_file
}
@test 'more_src has _hpc-haddock' {
    assert "$xsrc/_hpc-haddock" is_file
}
@test 'more_src has _humanize' {
    assert "$xsrc/_humanize" is_file
}
@test 'more_src has _humble-cli' {
    assert "$xsrc/_humble-cli" is_file
}
@test 'more_src has _huniq' {
    assert "$xsrc/_huniq" is_file
}
@test 'more_src has _hurl' {
    assert "$xsrc/_hurl" is_file
}
@test 'more_src has _hurlfmt' {
    assert "$xsrc/_hurlfmt" is_file
}
@test 'more_src has _hwatch' {
    assert "$xsrc/_hwatch" is_file
}
@test 'more_src has _hx' {
    assert "$xsrc/_hx" is_file
}
@test 'more_src has _hyalo' {
    assert "$xsrc/_hyalo" is_file
}
@test 'more_src has _hyde-shell' {
    assert "$xsrc/_hyde-shell" is_file
}
@test 'more_src has _hydra-check' {
    assert "$xsrc/_hydra-check" is_file
}
@test 'more_src has _hydrogen' {
    assert "$xsrc/_hydrogen" is_file
}
@test 'more_src has _hydroxide' {
    assert "$xsrc/_hydroxide" is_file
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
@test 'more_src has _hypothesis-client' {
    assert "$xsrc/_hypothesis-client" is_file
}
@test 'more_src has _hyprdim' {
    assert "$xsrc/_hyprdim" is_file
}
@test 'more_src has _hyprland-workspaces-tui' {
    assert "$xsrc/_hyprland-workspaces-tui" is_file
}
@test 'more_src has _hyprnome' {
    assert "$xsrc/_hyprnome" is_file
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
@test 'more_src has _iat' {
    assert "$xsrc/_iat" is_file
}
@test 'more_src has _iamb' {
    assert "$xsrc/_iamb" is_file
}
@test 'more_src has _ibazel' {
    assert "$xsrc/_ibazel" is_file
}
@test 'more_src has _icebox' {
    assert "$xsrc/_icebox" is_file
}
@test 'more_src has _icebram' {
    assert "$xsrc/_icebram" is_file
}
@test 'more_src has _icdiff' {
    assert "$xsrc/_icdiff" is_file
}
@test 'more_src has _icedove' {
    assert "$xsrc/_icedove" is_file
}
@test 'more_src has _icepack' {
    assert "$xsrc/_icepack" is_file
}
@test 'more_src has _iceprog' {
    assert "$xsrc/_iceprog" is_file
}
@test 'more_src has _iceunpack' {
    assert "$xsrc/_iceunpack" is_file
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
@test 'more_src has _iio-niri' {
    assert "$xsrc/_iio-niri" is_file
}
@test 'more_src has _ijq' {
    assert "$xsrc/_ijq" is_file
}
@test 'more_src has _imessage' {
    assert "$xsrc/_imessage" is_file
}
@test 'more_src has _imageworsener' {
    assert "$xsrc/_imageworsener" is_file
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
@test 'more_src has _implicit-hie' {
    assert "$xsrc/_implicit-hie" is_file
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
@test 'more_src has _incrond' {
    assert "$xsrc/_incrond" is_file
}
@test 'more_src has _incus' {
    assert "$xsrc/_incus" is_file
}
@test 'more_src has _incusbox' {
    assert "$xsrc/_incusbox" is_file
}
@test 'more_src has _infat' {
    assert "$xsrc/_infat" is_file
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
@test 'more_src has _inkview' {
    assert "$xsrc/_inkview" is_file
}
@test 'more_src has _innernet' {
    assert "$xsrc/_innernet" is_file
}
@test 'more_src has _innernet-server' {
    assert "$xsrc/_innernet-server" is_file
}
@test 'more_src has _innernet-server.completions' {
    assert "$xsrc/_innernet-server.completions" is_file
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
@test 'more_src has _inspircd' {
    assert "$xsrc/_inspircd" is_file
}
@test 'more_src has _instancer' {
    assert "$xsrc/_instancer" is_file
}
@test 'more_src has _instmodsh' {
    assert "$xsrc/_instmodsh" is_file
}
@test 'more_src has _intel_gpu_frequency' {
    assert "$xsrc/_intel_gpu_frequency" is_file
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
@test 'more_src has _ipa-acme-manage' {
    assert "$xsrc/_ipa-acme-manage" is_file
}
@test 'more_src has _ipa-cacert-manage' {
    assert "$xsrc/_ipa-cacert-manage" is_file
}
@test 'more_src has _ipa-compat-manage' {
    assert "$xsrc/_ipa-compat-manage" is_file
}
@test 'more_src has _ipa-csreplica-manage' {
    assert "$xsrc/_ipa-csreplica-manage" is_file
}
@test 'more_src has _ipa-managed-entries' {
    assert "$xsrc/_ipa-managed-entries" is_file
}
@test 'more_src has _ipa-otpd' {
    assert "$xsrc/_ipa-otpd" is_file
}
@test 'more_src has _ipa-pki-retrieve-key' {
    assert "$xsrc/_ipa-pki-retrieve-key" is_file
}
@test 'more_src has _ipa-pkinit-manage' {
    assert "$xsrc/_ipa-pkinit-manage" is_file
}
@test 'more_src has _ipa-pwd-extop-manage' {
    assert "$xsrc/_ipa-pwd-extop-manage" is_file
}
@test 'more_src has _ipa-replica-conncheck' {
    assert "$xsrc/_ipa-replica-conncheck" is_file
}
@test 'more_src has _ipa-replica-install' {
    assert "$xsrc/_ipa-replica-install" is_file
}
@test 'more_src has _ipa-replica-manage' {
    assert "$xsrc/_ipa-replica-manage" is_file
}
@test 'more_src has _ipa-replica-prepare' {
    assert "$xsrc/_ipa-replica-prepare" is_file
}
@test 'more_src has _ipa-server-upgrade' {
    assert "$xsrc/_ipa-server-upgrade" is_file
}
@test 'more_src has _ipam' {
    assert "$xsrc/_ipam" is_file
}
@test 'more_src has _ipcalc-ng' {
    assert "$xsrc/_ipcalc-ng" is_file
}
@test 'more_src has _ipcheck' {
    assert "$xsrc/_ipcheck" is_file
}
@test 'more_src has _ipconfig' {
    assert "$xsrc/_ipconfig" is_file
}
@test 'more_src has _ipfetch' {
    assert "$xsrc/_ipfetch" is_file
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
@test 'more_src has _isisd' {
    assert "$xsrc/_isisd" is_file
}
@test 'more_src has _isic' {
    assert "$xsrc/_isic" is_file
}
@test 'more_src has _issw' {
    assert "$xsrc/_issw" is_file
}
@test 'more_src has _ito' {
    assert "$xsrc/_ito" is_file
}
@test 'more_src has _iwt' {
    assert "$xsrc/_iwt" is_file
}
@test 'more_src has _j4-dmenu-desktop' {
    assert "$xsrc/_j4-dmenu-desktop" is_file
}
@test 'more_src has _jack_bufsize' {
    assert "$xsrc/_jack_bufsize" is_file
}
@test 'more_src has _jack_capture' {
    assert "$xsrc/_jack_capture" is_file
}
@test 'more_src has _jack_control' {
    assert "$xsrc/_jack_control" is_file
}
@test 'more_src has _jack_evmon' {
    assert "$xsrc/_jack_evmon" is_file
}
@test 'more_src has _jack_freewheel' {
    assert "$xsrc/_jack_freewheel" is_file
}
@test 'more_src has _jack_iodelay' {
    assert "$xsrc/_jack_iodelay" is_file
}
@test 'more_src has _jack_midiseq' {
    assert "$xsrc/_jack_midiseq" is_file
}
@test 'more_src has _jack_mixer' {
    assert "$xsrc/_jack_mixer" is_file
}
@test 'more_src has _jack_rec' {
    assert "$xsrc/_jack_rec" is_file
}
@test 'more_src has _jack_samplerate' {
    assert "$xsrc/_jack_samplerate" is_file
}
@test 'more_src has _jack_showtime' {
    assert "$xsrc/_jack_showtime" is_file
}
@test 'more_src has _jack_unload' {
    assert "$xsrc/_jack_unload" is_file
}
@test 'more_src has _jack_zombie' {
    assert "$xsrc/_jack_zombie" is_file
}
@test 'more_src has _jaeger' {
    assert "$xsrc/_jaeger" is_file
}
@test 'more_src has _jailing' {
    assert "$xsrc/_jailing" is_file
}
@test 'more_src has _jamin' {
    assert "$xsrc/_jamin" is_file
}
@test 'more_src has _jamf' {
    assert "$xsrc/_jamf" is_file
}
@test 'more_src has _janet' {
    assert "$xsrc/_janet" is_file
}
@test 'more_src has _janitor' {
    assert "$xsrc/_janitor" is_file
}
@test 'more_src has _janusgraph' {
    assert "$xsrc/_janusgraph" is_file
}
@test 'more_src has _jaq' {
    assert "$xsrc/_jaq" is_file
}
@test 'more_src has _jay' {
    assert "$xsrc/_jay" is_file
}
@test 'more_src has _jc' {
    assert "$xsrc/_jc" is_file
}
@test 'more_src has _javacc' {
    assert "$xsrc/_javacc" is_file
}
@test 'more_src has _jcli' {
    assert "$xsrc/_jcli" is_file
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
@test 'more_src has _jello' {
    assert "$xsrc/_jello" is_file
}
@test 'more_src has _jenv' {
    assert "$xsrc/_jenv" is_file
}
@test 'more_src has _jetti' {
    assert "$xsrc/_jetti" is_file
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
@test 'more_src has _jg' {
    assert "$xsrc/_jg" is_file
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
@test 'more_src has _jmp' {
    assert "$xsrc/_jmp" is_file
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
@test 'more_src has _jobber' {
    assert "$xsrc/_jobber" is_file
}
@test 'more_src has _joker' {
    assert "$xsrc/_joker" is_file
}
@test 'more_src has _jormungandr' {
    assert "$xsrc/_jormungandr" is_file
}
@test 'more_src has _joshuto' {
    assert "$xsrc/_joshuto" is_file
}
@test 'more_src has _joy' {
    assert "$xsrc/_joy" is_file
}
@test 'more_src has _jp2a' {
    assert "$xsrc/_jp2a" is_file
}
@test 'more_src has _jpegoptim' {
    assert "$xsrc/_jpegoptim" is_file
}
@test 'more_src has _jpegrescan' {
    assert "$xsrc/_jpegrescan" is_file
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
@test 'more_src has _jruby' {
    assert "$xsrc/_jruby" is_file
}
@test 'more_src has _jubaconv' {
    assert "$xsrc/_jubaconv" is_file
}
@test 'more_src has _jubaseries' {
    assert "$xsrc/_jubaseries" is_file
}
@test 'more_src has _juliac' {
    assert "$xsrc/_juliac" is_file
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
@test 'more_src has _jwm' {
    assert "$xsrc/_jwm" is_file
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
@test 'more_src has _jython' {
    assert "$xsrc/_jython" is_file
}
@test 'more_src has _jwt-term' {
    assert "$xsrc/_jwt-term" is_file
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
@test 'more_src has _kabu' {
    assert "$xsrc/_kabu" is_file
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
@test 'more_src has _kak-tree-sitter' {
    assert "$xsrc/_kak-tree-sitter" is_file
}
@test 'more_src has _kalker' {
    assert "$xsrc/_kalker" is_file
}
@test 'more_src has _kalliope' {
    assert "$xsrc/_kalliope" is_file
}
@test 'more_src has _kamailio' {
    assert "$xsrc/_kamailio" is_file
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
@test 'more_src has _kasetto' {
    assert "$xsrc/_kasetto" is_file
}
@test 'more_src has _kaskade' {
    assert "$xsrc/_kaskade" is_file
}
@test 'more_src has _kata' {
    assert "$xsrc/_kata" is_file
}
@test 'more_src has _katago' {
    assert "$xsrc/_katago" is_file
}
@test 'more_src has _katana' {
    assert "$xsrc/_katana" is_file
}
@test 'more_src has _kati' {
    assert "$xsrc/_kati" is_file
}
@test 'more_src has _kbs2' {
    assert "$xsrc/_kbs2" is_file
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
@test 'more_src has _kdb' {
    assert "$xsrc/_kdb" is_file
}
@test 'more_src has _kdbx' {
    assert "$xsrc/_kdbx" is_file
}
@test 'more_src has _kdenlive' {
    assert "$xsrc/_kdenlive" is_file
}
@test 'more_src has _kdex' {
    assert "$xsrc/_kdex" is_file
}

@test 'more_src has _kdialog' {
    assert "$xsrc/_kdialog" is_file
}
@test 'more_src has _kdig' {
    assert "$xsrc/_kdig" is_file
}
@test 'more_src has _kdlfmt' {
    assert "$xsrc/_kdlfmt" is_file
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
@test 'more_src has _kernelshark' {
    assert "$xsrc/_kernelshark" is_file
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
@test 'more_src has _kfind' {
    assert "$xsrc/_kfind" is_file
}
@test 'more_src has _kfontview' {
    assert "$xsrc/_kfontview" is_file
}
@test 'more_src has _kglobalaccel5' {
    assert "$xsrc/_kglobalaccel5" is_file
}
@test 'more_src has _kgx' {
    assert "$xsrc/_kgx" is_file
}
@test 'more_src has _khal' {
    assert "$xsrc/_khal" is_file
}
@test 'more_src has _khaos' {
    assert "$xsrc/_khaos" is_file
}
@test 'more_src has _kile' {
    assert "$xsrc/_kile" is_file
}
@test 'more_src has _kicad' {
    assert "$xsrc/_kicad" is_file
}
@test 'more_src has _kickpass' {
    assert "$xsrc/_kickpass" is_file
}
@test 'more_src has _kickstart' {
    assert "$xsrc/_kickstart" is_file
}
@test 'more_src has _killbots' {
    assert "$xsrc/_killbots" is_file
}
@test 'more_src has _killport' {
    assert "$xsrc/_killport" is_file
}
@test 'more_src has _kilo' {
    assert "$xsrc/_kilo" is_file
}
@test 'more_src has _kin' {
    assert "$xsrc/_kin" is_file
}
@test 'more_src has _kind' {
    assert "$xsrc/_kind" is_file
}
@test 'more_src has _kindlegen' {
    assert "$xsrc/_kindlegen" is_file
}
@test 'more_src has _kine' {
    assert "$xsrc/_kine" is_file
}
@test 'more_src has _king-phisher' {
    assert "$xsrc/_king-phisher" is_file
}
@test 'more_src has _kion' {
    assert "$xsrc/_kion" is_file
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
@test 'more_src has _klef' {
    assert "$xsrc/_klef" is_file
}

@test 'more_src has _klines' {
    assert "$xsrc/_klines" is_file
}
@test 'more_src has _klippy' {
    assert "$xsrc/_klippy" is_file
}
@test 'more_src has _kluctl' {
    assert "$xsrc/_kluctl" is_file
}
@test 'more_src has _km' {
    assert "$xsrc/_km" is_file
}
@test 'more_src has _kmines' {
    assert "$xsrc/_kmines" is_file
}
@test 'more_src has _kn' {
    assert "$xsrc/_kn" is_file
}
@test 'more_src has _knetwalk' {
    assert "$xsrc/_knetwalk" is_file
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
@test 'more_src has _konversation' {
    assert "$xsrc/_konversation" is_file
}
@test 'more_src has _konqueror-cli' {
    assert "$xsrc/_konqueror-cli" is_file
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
@test 'more_src has _kopium' {
    assert "$xsrc/_kopium" is_file
}
@test 'more_src has _kops' {
    assert "$xsrc/_kops" is_file
}
@test 'more_src has _koreader' {
    assert "$xsrc/_koreader" is_file
}
@test 'more_src has _korrect' {
    assert "$xsrc/_korrect" is_file
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
@test 'more_src has _kpat' {
    assert "$xsrc/_kpat" is_file
}
@test 'more_src has _kpt' {
    assert "$xsrc/_kpt" is_file
}
@test 'more_src has _kqml' {
    assert "$xsrc/_kqml" is_file
}
@test 'more_src has _krb5-send-pr' {
    assert "$xsrc/_krb5-send-pr" is_file
}
@test 'more_src has _krb5kdc' {
    assert "$xsrc/_krb5kdc" is_file
}
@test 'more_src has _k5srvutil' {
    assert "$xsrc/_k5srvutil" is_file
}
@test 'more_src has _krabby' {
    assert "$xsrc/_krabby" is_file
}
@test 'more_src has _kramdown-rfc' {
    assert "$xsrc/_kramdown-rfc" is_file
}
@test 'more_src has _krane' {
    assert "$xsrc/_krane" is_file
}
@test 'more_src has _kresctl' {
    assert "$xsrc/_kresctl" is_file
}
@test 'more_src has _kreversi' {
    assert "$xsrc/_kreversi" is_file
}
@test 'more_src has _krew' {
    assert "$xsrc/_krew" is_file
}
@test 'more_src has _krfb-virtualmonitor' {
    assert "$xsrc/_krfb-virtualmonitor" is_file
}
@test 'more_src has _krita' {
    assert "$xsrc/_krita" is_file
}
@test 'more_src has _kroki' {
    assert "$xsrc/_kroki" is_file
}
@test 'more_src has _krtadm' {
    assert "$xsrc/_krtadm" is_file
}
@test 'more_src has _krtfs' {
    assert "$xsrc/_krtfs" is_file
}
@test 'more_src has _kscreen-doctor' {
    assert "$xsrc/_kscreen-doctor" is_file
}
@test 'more_src has _kactivities5' {
    assert "$xsrc/_kactivities5" is_file
}
@test 'more_src has _krunner' {
    assert "$xsrc/_krunner" is_file
}
@test 'more_src has _kruler' {
    assert "$xsrc/_kruler" is_file
}
@test 'more_src has _ksysguard' {
    assert "$xsrc/_ksysguard" is_file
}
@test 'more_src has _kst' {
    assert "$xsrc/_kst" is_file
}
@test 'more_src has _kstars' {
    assert "$xsrc/_kstars" is_file
}
@test 'more_src has _kt' {
    assert "$xsrc/_kt" is_file
}
@test 'more_src has _kto' {
    assert "$xsrc/_kto" is_file
}
@test 'more_src has _ktsctl' {
    assert "$xsrc/_ktsctl" is_file
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
@test 'more_src has _kubectl-neat' {
    assert "$xsrc/_kubectl-neat" is_file
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
@test 'more_src has _kubiscan' {
    assert "$xsrc/_kubiscan" is_file
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
@test 'more_src has _kzonecheck' {
    assert "$xsrc/_kzonecheck" is_file
}
@test 'more_src has _l2test' {
    assert "$xsrc/_l2test" is_file
}
@test 'more_src has _lacheck' {
    assert "$xsrc/_lacheck" is_file
}
@test 'more_src has _lacy' {
    assert "$xsrc/_lacy" is_file
}
@test 'more_src has _lammps' {
    assert "$xsrc/_lammps" is_file
}
@test 'more_src has _lance' {
    assert "$xsrc/_lance" is_file
}
@test 'more_src has _landing-portal-api.sh' {
    assert "$xsrc/_landing-portal-api.sh" is_file
}
@test 'more_src has _langcodec' {
    assert "$xsrc/_langcodec" is_file
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
@test 'more_src has _latitude' {
    assert "$xsrc/_latitude" is_file
}
@test 'more_src has _lattice' {
    assert "$xsrc/_lattice" is_file
}
@test 'more_src has _layman' {
    assert "$xsrc/_layman" is_file
}
@test 'more_src has _lazarus' {
    assert "$xsrc/_lazarus" is_file
}
@test 'more_src has _lazbuild' {
    assert "$xsrc/_lazbuild" is_file
}
@test 'more_src has _laze' {
    assert "$xsrc/_laze" is_file
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
@test 'more_src has _lazyworktree' {
    assert "$xsrc/_lazyworktree" is_file
}
@test 'more_src has _lbzcat' {
    assert "$xsrc/_lbzcat" is_file
}
@test 'more_src has _lcdproc' {
    assert "$xsrc/_lcdproc" is_file
}
@test 'more_src has _lcdshow' {
    assert "$xsrc/_lcdshow" is_file
}
@test 'more_src has _lcdtest' {
    assert "$xsrc/_lcdtest" is_file
}
@test 'more_src has _lc0' {
    assert "$xsrc/_lc0" is_file
}
@test 'more_src has _ldns-host' {
    assert "$xsrc/_ldns-host" is_file
}
@test 'more_src has _ldns-rrsig' {
    assert "$xsrc/_ldns-rrsig" is_file
}
@test 'more_src has _ldns-update' {
    assert "$xsrc/_ldns-update" is_file
}
@test 'more_src has _ldns-version' {
    assert "$xsrc/_ldns-version" is_file
}
@test 'more_src has _ldpd' {
    assert "$xsrc/_ldpd" is_file
}
@test 'more_src has _ldoc' {
    assert "$xsrc/_ldoc" is_file
}
@test 'more_src has _ldid' {
    assert "$xsrc/_ldid" is_file
}
@test 'more_src has _leaf' {
    assert "$xsrc/_leaf" is_file
}
@test 'more_src has _lean3' {
    assert "$xsrc/_lean3" is_file
}
@test 'more_src has _leave' {
    assert "$xsrc/_leave" is_file
}
@test 'more_src has _ledger' {
    assert "$xsrc/_ledger" is_file
}
@test 'more_src has _leela-zero' {
    assert "$xsrc/_leela-zero" is_file
}
@test 'more_src has _leeloo' {
    assert "$xsrc/_leeloo" is_file
}
@test 'more_src has _lefthook' {
    assert "$xsrc/_lefthook" is_file
}
@test 'more_src has _legba' {
    assert "$xsrc/_legba" is_file
}
@test 'more_src has _lego' {
    assert "$xsrc/_lego" is_file
}
@test 'more_src has _lemma' {
    assert "$xsrc/_lemma" is_file
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
@test 'more_src has _lessfile' {
    assert "$xsrc/_lessfile" is_file
}
@test 'more_src has _lesspipe' {
    assert "$xsrc/_lesspipe" is_file
}
@test 'more_src has _levant' {
    assert "$xsrc/_levant" is_file
}
@test 'more_src has _levee' {
    assert "$xsrc/_levee" is_file
}
@test 'more_src has _lf' {
    assert "$xsrc/_lf" is_file
}
@test 'more_src has _lguest' {
    assert "$xsrc/_lguest" is_file
}
@test 'more_src has _lilo' {
    assert "$xsrc/_lilo" is_file
}
@test 'more_src has _libcamera-hello' {
    assert "$xsrc/_libcamera-hello" is_file
}
@test 'more_src has _libcamera-still' {
    assert "$xsrc/_libcamera-still" is_file
}
@test 'more_src has _libcamera-vid' {
    assert "$xsrc/_libcamera-vid" is_file
}
@test 'more_src has _libgen-cli' {
    assert "$xsrc/_libgen-cli" is_file
}
@test 'more_src has _libinput-measure' {
    assert "$xsrc/_libinput-measure" is_file
}
@test 'more_src has _libinput-quirks' {
    assert "$xsrc/_libinput-quirks" is_file
}
@test 'more_src has _libinput-test' {
    assert "$xsrc/_libinput-test" is_file
}
@test 'more_src has _librewolf' {
    assert "$xsrc/_librewolf" is_file
}
@test 'more_src has _librecad' {
    assert "$xsrc/_librecad" is_file
}
@test 'more_src has _librespot' {
    assert "$xsrc/_librespot" is_file
}
@test 'more_src has _license' {
    assert "$xsrc/_license" is_file
}
@test 'more_src has _licensecheck' {
    assert "$xsrc/_licensecheck" is_file
}
@test 'more_src has _lightningstream' {
    assert "$xsrc/_lightningstream" is_file
}
@test 'more_src has _likec4' {
    assert "$xsrc/_likec4" is_file
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
@test 'more_src has _lintspec' {
    assert "$xsrc/_lintspec" is_file
}
@test 'more_src has _linuxdeploy' {
    assert "$xsrc/_linuxdeploy" is_file
}
@test 'more_src has _linuxkit' {
    assert "$xsrc/_linuxkit" is_file
}
@test 'more_src has _listenbrainz-mpd' {
    assert "$xsrc/_listenbrainz-mpd" is_file
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
@test 'more_src has _little_boxes' {
    assert "$xsrc/_little_boxes" is_file
}
@test 'more_src has _live-server' {
    assert "$xsrc/_live-server" is_file
}
@test 'more_src has _llama-stack' {
    assert "$xsrc/_llama-stack" is_file
}
@test 'more_src has _lldb-server' {
    assert "$xsrc/_lldb-server" is_file
}
@test 'more_src has _lldpd' {
    assert "$xsrc/_lldpd" is_file
}
@test 'more_src has _lldpcli' {
    assert "$xsrc/_lldpcli" is_file
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
@test 'more_src has _lockbook' {
    assert "$xsrc/_lockbook" is_file
}
@test 'more_src has _locust' {
    assert "$xsrc/_locust" is_file
}
@test 'more_src has _logcli' {
    assert "$xsrc/_logcli" is_file
}
@test 'more_src has _logseq' {
    assert "$xsrc/_logseq" is_file
}
@test 'more_src has _logstash' {
    assert "$xsrc/_logstash" is_file
}
@test 'more_src has _lokinet' {
    assert "$xsrc/_lokinet" is_file
}
@test 'more_src has _loksh' {
    assert "$xsrc/_loksh" is_file
}
@test 'more_src has _loofi' {
    assert "$xsrc/_loofi" is_file
}
@test 'more_src has _lookup' {
    assert "$xsrc/_lookup" is_file
}
@test 'more_src has _loom' {
    assert "$xsrc/_loom" is_file
}

@test 'more_src has _lore' {
    assert "$xsrc/_lore" is_file
}
@test 'more_src has _lowdown' {
    assert "$xsrc/_lowdown" is_file
}
@test 'more_src has _lpass' {
    assert "$xsrc/_lpass" is_file
}
@test 'more_src has _lrunzip' {
    assert "$xsrc/_lrunzip" is_file
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
@test 'more_src has _ltex-ls' {
    assert "$xsrc/_ltex-ls" is_file
}
@test 'more_src has _ltrs' {
    assert "$xsrc/_ltrs" is_file
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
@test 'more_src has _lutgen' {
    assert "$xsrc/_lutgen" is_file
}
@test 'more_src has _lx' {
    assert "$xsrc/_lx" is_file
}
@test 'more_src has _lxqt-panel' {
    assert "$xsrc/_lxqt-panel" is_file
}
@test 'more_src has _lxqt-session' {
    assert "$xsrc/_lxqt-session" is_file
}
@test 'more_src has _lxrandr' {
    assert "$xsrc/_lxrandr" is_file
}
@test 'more_src has _ly-fu' {
    assert "$xsrc/_ly-fu" is_file
}
@test 'more_src has _lyx' {
    assert "$xsrc/_lyx" is_file
}
@test 'more_src has _lychee' {
    assert "$xsrc/_lychee" is_file
}
@test 'more_src has _lzbench' {
    assert "$xsrc/_lzbench" is_file
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
@test 'more_src has _maa' {
    assert "$xsrc/_maa" is_file
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
@test 'more_src has _mado' {
    assert "$xsrc/_mado" is_file
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
@test 'more_src has _maildirlock' {
    assert "$xsrc/_maildirlock" is_file
}
@test 'more_src has _maildirmake' {
    assert "$xsrc/_maildirmake" is_file
}
@test 'more_src has _maildirsync' {
    assert "$xsrc/_maildirsync" is_file
}
@test 'more_src has _mailpit' {
    assert "$xsrc/_mailpit" is_file
}
@test 'more_src has _makeblastdb' {
    assert "$xsrc/_makeblastdb" is_file
}
@test 'more_src has _makepasswd' {
    assert "$xsrc/_makepasswd" is_file
}
@test 'more_src has _mako-toggle' {
    assert "$xsrc/_mako-toggle" is_file
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
@test 'more_src has _marble' {
    assert "$xsrc/_marble" is_file
}
@test 'more_src has _marcel' {
    assert "$xsrc/_marcel" is_file
}
@test 'more_src has _markdown-extract' {
    assert "$xsrc/_markdown-extract" is_file
}
@test 'more_src has _marqo' {
    assert "$xsrc/_marqo" is_file
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
@test 'more_src has _marked-cli' {
    assert "$xsrc/_marked-cli" is_file
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
@test 'more_src has _massren' {
    assert "$xsrc/_massren" is_file
}
@test 'more_src has _mate-session-manager' {
    assert "$xsrc/_mate-session-manager" is_file
}
@test 'more_src has _matedialog' {
    assert "$xsrc/_matedialog" is_file
}
@test 'more_src has _math' {
    assert "$xsrc/_math" is_file
}
@test 'more_src has _mathomatic' {
    assert "$xsrc/_mathomatic" is_file
}
@test 'more_src has _mathsat' {
    assert "$xsrc/_mathsat" is_file
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
@test 'more_src has _mbake' {
    assert "$xsrc/_mbake" is_file
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
@test 'more_src has _mcp-scanner' {
    assert "$xsrc/_mcp-scanner" is_file
}

@test 'more_src has _mcphub' {
    assert "$xsrc/_mcphub" is_file
}
@test 'more_src has _mcrepo' {
    assert "$xsrc/_mcrepo" is_file
}
@test 'more_src has _md2gslides' {
    assert "$xsrc/_md2gslides" is_file
}
@test 'more_src has _md-toc' {
    assert "$xsrc/_md-toc" is_file
}
@test 'more_src has _mdbook' {
    assert "$xsrc/_mdbook" is_file
}
@test 'more_src has _mdcat' {
    assert "$xsrc/_mdcat" is_file
}
@test 'more_src has _mdeck' {
    assert "$xsrc/_mdeck" is_file
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
@test 'more_src has _mdsf' {
    assert "$xsrc/_mdsf" is_file
}
@test 'more_src has _mdsh' {
    assert "$xsrc/_mdsh" is_file
}
@test 'more_src has _mdtoc' {
    assert "$xsrc/_mdtoc" is_file
}
@test 'more_src has _mdtsql' {
    assert "$xsrc/_mdtsql" is_file
}
@test 'more_src has _mdv' {
    assert "$xsrc/_mdv" is_file
}
@test 'more_src has _mdx' {
    assert "$xsrc/_mdx" is_file
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
@test 'more_src has _memtest86' {
    assert "$xsrc/_memtest86" is_file
}
@test 'more_src has _memtester' {
    assert "$xsrc/_memtester" is_file
}
@test 'more_src has _memtier_benchmark' {
    assert "$xsrc/_memtier_benchmark" is_file
}
@test 'more_src has _mend' {
    assert "$xsrc/_mend" is_file
}
@test 'more_src has _mender-artifact' {
    assert "$xsrc/_mender-artifact" is_file
}
@test 'more_src has _mentat' {
    assert "$xsrc/_mentat" is_file
}
@test 'more_src has _menhir' {
    assert "$xsrc/_menhir" is_file
}
@test 'more_src has _menyoki' {
    assert "$xsrc/_menyoki" is_file
}
@test 'more_src has _maude' {
    assert "$xsrc/_maude" is_file
}
@test 'more_src has _mercury' {
    assert "$xsrc/_mercury" is_file
}
@test 'more_src has _mergiraf' {
    assert "$xsrc/_mergiraf" is_file
}
@test 'more_src has _merlin' {
    assert "$xsrc/_merlin" is_file
}
@test 'more_src has _meriadoc' {
    assert "$xsrc/_meriadoc" is_file
}

@test 'more_src has _metacam' {
    assert "$xsrc/_metacam" is_file
}
@test 'more_src has _meshlab' {
    assert "$xsrc/_meshlab" is_file
}
@test 'more_src has _metapac' {
    assert "$xsrc/_metapac" is_file
}
@test 'more_src has _mgit' {
    assert "$xsrc/_mgit" is_file
}
@test 'more_src has _mgt' {
    assert "$xsrc/_mgt" is_file
}
@test 'more_src has _mhddfs' {
    assert "$xsrc/_mhddfs" is_file
}
@test 'more_src has _mhost' {
    assert "$xsrc/_mhost" is_file
}
@test 'more_src has _mhwaveedit' {
    assert "$xsrc/_mhwaveedit" is_file
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
@test 'more_src has _milter-greylist' {
    assert "$xsrc/_milter-greylist" is_file
}
@test 'more_src has _milter-regex' {
    assert "$xsrc/_milter-regex" is_file
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
@test 'more_src has _minijail0' {
    assert "$xsrc/_minijail0" is_file
}
@test 'more_src has _minijinja' {
    assert "$xsrc/_minijinja" is_file
}
@test 'more_src has _minikube' {
    assert "$xsrc/_minikube" is_file
}
@test 'more_src has _minify-html' {
    assert "$xsrc/_minify-html" is_file
}
@test 'more_src has _minify-js' {
    assert "$xsrc/_minify-js" is_file
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
@test 'more_src has _mino' {
    assert "$xsrc/_mino" is_file
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
@test 'more_src has _mitra' {
    assert "$xsrc/_mitra" is_file
}
@test 'more_src has _mitsuba' {
    assert "$xsrc/_mitsuba" is_file
}
@test 'more_src has _mixbus' {
    assert "$xsrc/_mixbus" is_file
}
@test 'more_src has _mixbus32c' {
    assert "$xsrc/_mixbus32c" is_file
}
@test 'more_src has _mixxx' {
    assert "$xsrc/_mixxx" is_file
}
@test 'more_src has _mizar' {
    assert "$xsrc/_mizar" is_file
}
@test 'more_src has _mk' {
    assert "$xsrc/_mk" is_file
}
@test 'more_src has _mkbitmap' {
    assert "$xsrc/_mkbitmap" is_file
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
@test 'more_src has _mkdocstrings' {
    assert "$xsrc/_mkdocstrings" is_file
}
@test 'more_src has _mkdwarfs' {
    assert "$xsrc/_mkdwarfs" is_file
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
@test 'more_src has _mlir_opt' {
    assert "$xsrc/_mlir_opt" is_file
}
@test 'more_src has _mlr' {
    assert "$xsrc/_mlr" is_file
}
@test 'more_src has _mlx' {
    assert "$xsrc/_mlx" is_file
}
@test 'more_src has _mlx_lm.convert' {
    assert "$xsrc/_mlx_lm.convert" is_file
}
@test 'more_src has _mlx_lm.generate' {
    assert "$xsrc/_mlx_lm.generate" is_file
}
@test 'more_src has _mlx_lm.lora' {
    assert "$xsrc/_mlx_lm.lora" is_file
}
@test 'more_src has _mm' {
    assert "$xsrc/_mm" is_file
}
@test 'more_src has _mma' {
    assert "$xsrc/_mma" is_file
}
@test 'more_src has _mmtc' {
    assert "$xsrc/_mmtc" is_file
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
@test 'more_src has _mockpit' {
    assert "$xsrc/_mockpit" is_file
}

@test 'more_src has _mod_wsgi-express' {
    assert "$xsrc/_mod_wsgi-express" is_file
}
@test 'more_src has _modd' {
    assert "$xsrc/_modd" is_file
}
@test 'more_src has _modprobed-db' {
    assert "$xsrc/_modprobed-db" is_file
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
@test 'more_src has _mommy' {
    assert "$xsrc/_mommy" is_file
}
@test 'more_src has _mon.zsh' {
    assert "$xsrc/_mon.zsh" is_file
}
@test 'more_src has _monero-blockchain-ancestry' {
    assert "$xsrc/_monero-blockchain-ancestry" is_file
}
@test 'more_src has _monero-blockchain-depth' {
    assert "$xsrc/_monero-blockchain-depth" is_file
}
@test 'more_src has _monero-blockchain-export' {
    assert "$xsrc/_monero-blockchain-export" is_file
}
@test 'more_src has _monero-blockchain-import' {
    assert "$xsrc/_monero-blockchain-import" is_file
}
@test 'more_src has _monero-blockchain-mark-spent-outputs' {
    assert "$xsrc/_monero-blockchain-mark-spent-outputs" is_file
}
@test 'more_src has _monero-blockchain-prune' {
    assert "$xsrc/_monero-blockchain-prune" is_file
}
@test 'more_src has _monero-blockchain-prune-known-spent-data' {
    assert "$xsrc/_monero-blockchain-prune-known-spent-data" is_file
}
@test 'more_src has _monero-blockchain-stats' {
    assert "$xsrc/_monero-blockchain-stats" is_file
}
@test 'more_src has _monero-blockchain-usage' {
    assert "$xsrc/_monero-blockchain-usage" is_file
}
@test 'more_src has _monero-gen-ssl-cert' {
    assert "$xsrc/_monero-gen-ssl-cert" is_file
}
@test 'more_src has _monero-gen-trusted-multisig' {
    assert "$xsrc/_monero-gen-trusted-multisig" is_file
}
@test 'more_src has _monero-wallet-cli' {
    assert "$xsrc/_monero-wallet-cli" is_file
}
@test 'more_src has _monero-wallet-rpc' {
    assert "$xsrc/_monero-wallet-rpc" is_file
}
@test 'more_src has _monerod' {
    assert "$xsrc/_monerod" is_file
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
@test 'more_src has _moonraker' {
    assert "$xsrc/_moonraker" is_file
}
@test 'more_src has _moonrepo' {
    assert "$xsrc/_moonrepo" is_file
}
@test 'more_src has _moonup' {
    assert "$xsrc/_moonup" is_file
}
@test 'more_src has _moosh' {
    assert "$xsrc/_moosh" is_file
}
@test 'more_src has _moosex-app-zsh' {
    assert "$xsrc/_moosex-app-zsh" is_file
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
@test 'more_src has _morituri' {
    assert "$xsrc/_morituri" is_file
}
@test 'more_src has _moserial' {
    assert "$xsrc/_moserial" is_file
}
@test 'more_src has _mosquitto_rr' {
    assert "$xsrc/_mosquitto_rr" is_file
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
@test 'more_src has _mountebank' {
    assert "$xsrc/_mountebank" is_file
}
@test 'more_src has _movim' {
    assert "$xsrc/_movim" is_file
}
@test 'more_src has _mppdec' {
    assert "$xsrc/_mppdec" is_file
}
@test 'more_src has _mppenc' {
    assert "$xsrc/_mppenc" is_file
}
@test 'more_src has _mp3unicode' {
    assert "$xsrc/_mp3unicode" is_file
}
@test 'more_src has _mpdcron' {
    assert "$xsrc/_mpdcron" is_file
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
@test 'more_src has _mpfshell' {
    assert "$xsrc/_mpfshell" is_file
}
@test 'more_src has _mprime' {
    assert "$xsrc/_mprime" is_file
}
@test 'more_src has _mprocs' {
    assert "$xsrc/_mprocs" is_file
}
@test 'more_src has _mpv' {
    assert "$xsrc/_mpv" is_file
}
@test 'more_src has _mscore3' {
    assert "$xsrc/_mscore3" is_file
}
@test 'more_src has _mscore4' {
    assert "$xsrc/_mscore4" is_file
}
@test 'more_src has _msunpack' {
    assert "$xsrc/_msunpack" is_file
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
@test 'more_src has _muesli' {
    assert "$xsrc/_muesli" is_file
}
@test 'more_src has _muesli-cli' {
    assert "$xsrc/_muesli-cli" is_file
}
@test 'more_src has _muffet' {
    assert "$xsrc/_muffet" is_file
}
@test 'more_src has _mugit' {
    assert "$xsrc/_mugit" is_file
}
@test 'more_src has _mullvad' {
    assert "$xsrc/_mullvad" is_file
}
@test 'more_src has _multilog' {
    assert "$xsrc/_multilog" is_file
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
@test 'more_src has _muon' {
    assert "$xsrc/_muon" is_file
}
@test 'more_src has _murex' {
    assert "$xsrc/_murex" is_file
}
@test 'more_src has _murk' {
    assert "$xsrc/_murk" is_file
}
@test 'more_src has _mupen64plus' {
    assert "$xsrc/_mupen64plus" is_file
}
@test 'more_src has _mupdf-gl' {
    assert "$xsrc/_mupdf-gl" is_file
}
@test 'more_src has _muse' {
    assert "$xsrc/_muse" is_file
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
@test 'more_src has _muxi' {
    assert "$xsrc/_muxi" is_file
}
@test 'more_src has _muxx' {
    assert "$xsrc/_muxx" is_file
}
@test 'more_src has _mwm' {
    assert "$xsrc/_mwm" is_file
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
@test 'more_src has _mysql2sqlite' {
    assert "$xsrc/_mysql2sqlite" is_file
}
@test 'more_src has _mythic' {
    assert "$xsrc/_mythic" is_file
}
@test 'more_src has _n-kill' {
    assert "$xsrc/_n-kill" is_file
}
@test 'more_src has _n8nc' {
    assert "$xsrc/_n8nc" is_file
}
@test 'more_src has _naabu' {
    assert "$xsrc/_naabu" is_file
}
@test 'more_src has _nagiosgraph' {
    assert "$xsrc/_nagiosgraph" is_file
}
@test 'more_src has _nag' {
    assert "$xsrc/_nag" is_file
}
@test 'more_src has _namaka' {
    assert "$xsrc/_namaka" is_file
}
@test 'more_src has _name-that-hash' {
    assert "$xsrc/_name-that-hash" is_file
}
@test 'more_src has _namecheap' {
    assert "$xsrc/_namecheap" is_file
}

@test 'more_src has _nap' {
    assert "$xsrc/_nap" is_file
}
@test 'more_src has _natron' {
    assert "$xsrc/_natron" is_file
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
@test 'more_src has _nbd-server' {
    assert "$xsrc/_nbd-server" is_file
}
@test 'more_src has _nbfc.in' {
    assert "$xsrc/_nbfc.in" is_file
}
@test 'more_src has _nbfc_service.in' {
    assert "$xsrc/_nbfc_service.in" is_file
}
@test 'more_src has _nc2parquet' {
    assert "$xsrc/_nc2parquet" is_file
}
@test 'more_src has _ncftpbatch' {
    assert "$xsrc/_ncftpbatch" is_file
}
@test 'more_src has _ncm2mp3' {
    assert "$xsrc/_ncm2mp3" is_file
}

@test 'more_src has _ncspot' {
    assert "$xsrc/_ncspot" is_file
}
@test 'more_src has _ndu' {
    assert "$xsrc/_ndu" is_file
}
@test 'more_src has _neatcli' {
    assert "$xsrc/_neatcli" is_file
}
@test 'more_src has _nebula' {
    assert "$xsrc/_nebula" is_file
}
@test 'more_src has _necpp' {
    assert "$xsrc/_necpp" is_file
}
@test 'more_src has _nektos' {
    assert "$xsrc/_nektos" is_file
}
@test 'more_src has _nem2-cli' {
    assert "$xsrc/_nem2-cli" is_file
}
@test 'more_src has _nemesis' {
    assert "$xsrc/_nemesis" is_file
}
@test 'more_src has _nemiver' {
    assert "$xsrc/_nemiver" is_file
}
@test 'more_src has _nemu' {
    assert "$xsrc/_nemu" is_file
}
@test 'more_src has _neocmakelsp' {
    assert "$xsrc/_neocmakelsp" is_file
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
@test 'more_src has _netfilter-persistent' {
    assert "$xsrc/_netfilter-persistent" is_file
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
@test 'more_src has _neverball' {
    assert "$xsrc/_neverball" is_file
}
@test 'more_src has _neverest' {
    assert "$xsrc/_neverest" is_file
}
@test 'more_src has _neverputt' {
    assert "$xsrc/_neverputt" is_file
}
@test 'more_src has _nestopia' {
    assert "$xsrc/_nestopia" is_file
}
@test 'more_src has _newlisp' {
    assert "$xsrc/_newlisp" is_file
}
@test 'more_src has _newgidmap' {
    assert "$xsrc/_newgidmap" is_file
}
@test 'more_src has _newman' {
    assert "$xsrc/_newman" is_file
}
@test 'more_src has _newsbeuter' {
    assert "$xsrc/_newsbeuter" is_file
}
@test 'more_src has _newsboat' {
    assert "$xsrc/_newsboat" is_file
}
@test 'more_src has _newuidmap' {
    assert "$xsrc/_newuidmap" is_file
}
@test 'more_src has _nextonic' {
    assert "$xsrc/_nextonic" is_file
}
@test 'more_src has _nexus' {
    assert "$xsrc/_nexus" is_file
}

@test 'more_src has _nfpm' {
    assert "$xsrc/_nfpm" is_file
}
@test 'more_src has _nfsen' {
    assert "$xsrc/_nfsen" is_file
}
@test 'more_src has _nftables' {
    assert "$xsrc/_nftables" is_file
}
@test 'more_src has _nfutils' {
    assert "$xsrc/_nfutils" is_file
}
@test 'more_src has _nheko' {
    assert "$xsrc/_nheko" is_file
}
@test 'more_src has _nhost' {
    assert "$xsrc/_nhost" is_file
}
@test 'more_src has _ngircd' {
    assert "$xsrc/_ngircd" is_file
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
@test 'more_src has _nimbus_beacon_node' {
    assert "$xsrc/_nimbus_beacon_node" is_file
}
@test 'more_src has _nitrocli' {
    assert "$xsrc/_nitrocli" is_file
}
@test 'more_src has _nitrogen' {
    assert "$xsrc/_nitrogen" is_file
}
@test 'more_src has _nitropy' {
    assert "$xsrc/_nitropy" is_file
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
@test 'more_src has _nix-forecast' {
    assert "$xsrc/_nix-forecast" is_file
}
@test 'more_src has _nix-install-package' {
    assert "$xsrc/_nix-install-package" is_file
}
@test 'more_src has _nix-locate' {
    assert "$xsrc/_nix-locate" is_file
}
@test 'more_src has _nix-prefetch-completion' {
    assert "$xsrc/_nix-prefetch-completion" is_file
}
@test 'more_src has _nix-push' {
    assert "$xsrc/_nix-push" is_file
}
@test 'more_src has _nix-review' {
    assert "$xsrc/_nix-review" is_file
}
@test 'more_src has _nix-shell' {
    assert "$xsrc/_nix-shell" is_file
}
@test 'more_src has _nix-store' {
    assert "$xsrc/_nix-store" is_file
}
@test 'more_src has _nix-sweep' {
    assert "$xsrc/_nix-sweep" is_file
}
@test 'more_src has _nix-template' {
    assert "$xsrc/_nix-template" is_file
}
@test 'more_src has _nix-tree' {
    assert "$xsrc/_nix-tree" is_file
}
@test 'more_src has _nix-weather' {
    assert "$xsrc/_nix-weather" is_file
}
@test 'more_src has _nixci' {
    assert "$xsrc/_nixci" is_file
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
@test 'more_src has _nodeup' {
    assert "$xsrc/_nodeup" is_file
}
@test 'more_src has _nom-build' {
    assert "$xsrc/_nom-build" is_file
}
@test 'more_src has _nom-shell' {
    assert "$xsrc/_nom-shell" is_file
}
@test 'more_src has _nomad' {
    assert "$xsrc/_nomad" is_file
}
@test 'more_src has _nona' {
    assert "$xsrc/_nona" is_file
}
@test 'more_src has _non-mixer' {
    assert "$xsrc/_non-mixer" is_file
}
@test 'more_src has _non-sequencer' {
    assert "$xsrc/_non-sequencer" is_file
}
@test 'more_src has _nono' {
    assert "$xsrc/_nono" is_file
}
@test 'more_src has _noip2' {
    assert "$xsrc/_noip2" is_file
}
@test 'more_src has _nordnet' {
    assert "$xsrc/_nordnet" is_file
}
@test 'more_src has _noremoteglob' {
    assert "$xsrc/_noremoteglob" is_file
}
@test 'more_src has _nosy' {
    assert "$xsrc/_nosy" is_file
}

@test 'more_src has _notation' {
    assert "$xsrc/_notation" is_file
}
@test 'more_src has _noti' {
    assert "$xsrc/_noti" is_file
}
@test 'more_src has _notifiers' {
    assert "$xsrc/_notifiers" is_file
}
@test 'more_src has _notmuch' {
    assert "$xsrc/_notmuch" is_file
}
@test 'more_src has _notmuch-mailmover' {
    assert "$xsrc/_notmuch-mailmover" is_file
}
@test 'more_src has _novalyn' {
    assert "$xsrc/_novalyn" is_file
}
@test 'more_src has _novops' {
    assert "$xsrc/_novops" is_file
}
@test 'more_src has _nox' {
    assert "$xsrc/_nox" is_file
}
@test 'more_src has _npingler' {
    assert "$xsrc/_npingler" is_file
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
@test 'more_src has _nsys' {
    assert "$xsrc/_nsys" is_file
}
@test 'more_src has _nt' {
    assert "$xsrc/_nt" is_file
}
@test 'more_src has _ntfy' {
    assert "$xsrc/_ntfy" is_file
}
@test 'more_src has _ntlmrelayx' {
    assert "$xsrc/_ntlmrelayx" is_file
}
@test 'more_src has _ntopng' {
    assert "$xsrc/_ntopng" is_file
}
@test 'more_src has _ntpdig' {
    assert "$xsrc/_ntpdig" is_file
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
@test 'more_src has _nuv' {
    assert "$xsrc/_nuv" is_file
}
@test 'more_src has _nun' {
    assert "$xsrc/_nun" is_file
}
@test 'more_src has _nurl' {
    assert "$xsrc/_nurl" is_file
}
@test 'more_src has _nutch' {
    assert "$xsrc/_nutch" is_file
}
@test 'more_src has _nushell' {
    assert "$xsrc/_nushell" is_file
}
@test 'more_src has _nvidia-debugdump' {
    assert "$xsrc/_nvidia-debugdump" is_file
}
@test 'more_src has _nvidia-modprobe' {
    assert "$xsrc/_nvidia-modprobe" is_file
}
@test 'more_src has _nvidia-persistenced' {
    assert "$xsrc/_nvidia-persistenced" is_file
}
@test 'more_src has _nvidia-powerd' {
    assert "$xsrc/_nvidia-powerd" is_file
}
@test 'more_src has _nvidia-settings' {
    assert "$xsrc/_nvidia-settings" is_file
}
@test 'more_src has _nvidia-xconfig' {
    assert "$xsrc/_nvidia-xconfig" is_file
}
@test 'more_src has _nvim' {
    assert "$xsrc/_nvim" is_file
}
@test 'more_src has _nvimpager' {
    assert "$xsrc/_nvimpager" is_file
}
@test 'more_src has _nvimx' {
    assert "$xsrc/_nvimx" is_file
}
@test 'more_src has _nvlc' {
    assert "$xsrc/_nvlc" is_file
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
@test 'more_src has _nwchem' {
    assert "$xsrc/_nwchem" is_file
}
@test 'more_src has _nwg-launchers' {
    assert "$xsrc/_nwg-launchers" is_file
}
@test 'more_src has _o2' {
    assert "$xsrc/_o2" is_file
}
@test 'more_src has _oag' {
    assert "$xsrc/_oag" is_file
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
@test 'more_src has _obex_test' {
    assert "$xsrc/_obex_test" is_file
}
@test 'more_src has _obexd' {
    assert "$xsrc/_obexd" is_file
}
@test 'more_src has _obexpushd' {
    assert "$xsrc/_obexpushd" is_file
}
@test 'more_src has _obconf' {
    assert "$xsrc/_obconf" is_file
}
@test 'more_src has _obfuskit' {
    assert "$xsrc/_obfuskit" is_file
}
@test 'more_src has _obmenu' {
    assert "$xsrc/_obmenu" is_file
}
@test 'more_src has _obnam' {
    assert "$xsrc/_obnam" is_file
}
@test 'more_src has _obs' {
    assert "$xsrc/_obs" is_file
}
@test 'more_src has _oc' {
    assert "$xsrc/_oc" is_file
}
@test 'more_src has _oc-stats' {
    assert "$xsrc/_oc-stats" is_file
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
@test 'more_src has _ocelot' {
    assert "$xsrc/_ocelot" is_file
}
@test 'more_src has _oci' {
    assert "$xsrc/_oci" is_file
}
@test 'more_src has _ocaml-top' {
    assert "$xsrc/_ocaml-top" is_file
}
@test 'more_src has _ocp-browser' {
    assert "$xsrc/_ocp-browser" is_file
}
@test 'more_src has _ocp-build' {
    assert "$xsrc/_ocp-build" is_file
}
@test 'more_src has _ocp-indent' {
    assert "$xsrc/_ocp-indent" is_file
}
@test 'more_src has _ocrmypdf' {
    assert "$xsrc/_ocrmypdf" is_file
}
@test 'more_src has _oct' {
    assert "$xsrc/_oct" is_file
}
@test 'more_src has _octave' {
    assert "$xsrc/_octave" is_file
}
@test 'more_src has _octave-cli' {
    assert "$xsrc/_octave-cli" is_file
}
@test 'more_src has _octez-manager' {
    assert "$xsrc/_octez-manager" is_file
}
@test 'more_src has _ocw' {
    assert "$xsrc/_ocw" is_file
}
@test 'more_src has _oddjob' {
    assert "$xsrc/_oddjob" is_file
}
@test 'more_src has _ods-enforcer' {
    assert "$xsrc/_ods-enforcer" is_file
}
@test 'more_src has _ods-signer' {
    assert "$xsrc/_ods-signer" is_file
}
@test 'more_src has _ofelia' {
    assert "$xsrc/_ofelia" is_file
}
@test 'more_src has _ofono' {
    assert "$xsrc/_ofono" is_file
}
@test 'more_src has _ogit.sh' {
    assert "$xsrc/_ogit.sh" is_file
}
@test 'more_src has _oha' {
    assert "$xsrc/_oha" is_file
}
@test 'more_src has _oidc' {
    assert "$xsrc/_oidc" is_file
}
@test 'more_src has _oil' {
    assert "$xsrc/_oil" is_file
}
@test 'more_src has _oils-for-unix' {
    assert "$xsrc/_oils-for-unix" is_file
}
@test 'more_src has _ojph_compress' {
    assert "$xsrc/_ojph_compress" is_file
}
@test 'more_src has _ojph_expand' {
    assert "$xsrc/_ojph_expand" is_file
}
@test 'more_src has _olaf' {
    assert "$xsrc/_olaf" is_file
}
@test 'more_src has _ollama' {
    assert "$xsrc/_ollama" is_file
}
@test 'more_src has _om' {
    assert "$xsrc/_om" is_file
}
@test 'more_src has _omf' {
    assert "$xsrc/_omf" is_file
}
@test 'more_src has _omnisharp' {
    assert "$xsrc/_omnisharp" is_file
}
@test 'more_src has _omx' {
    assert "$xsrc/_omx" is_file
}
@test 'more_src has _ondir' {
    assert "$xsrc/_ondir" is_file
}
@test 'more_src has _onedrive' {
    assert "$xsrc/_onedrive" is_file
}
@test 'more_src has _onefetch' {
    assert "$xsrc/_onefetch" is_file
}
@test 'more_src has _onmetal-image' {
    assert "$xsrc/_onmetal-image" is_file
}
@test 'more_src has _oomplay' {
    assert "$xsrc/_oomplay" is_file
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
@test 'more_src has _openapi-python-client' {
    assert "$xsrc/_openapi-python-client" is_file
}
@test 'more_src has _openmw' {
    assert "$xsrc/_openmw" is_file
}
@test 'more_src has _opendkim-genkey' {
    assert "$xsrc/_opendkim-genkey" is_file
}
@test 'more_src has _opendkim-testkey' {
    assert "$xsrc/_opendkim-testkey" is_file
}
@test 'more_src has _opendkim-testmsg' {
    assert "$xsrc/_opendkim-testmsg" is_file
}
@test 'more_src has _opendkim-testssp' {
    assert "$xsrc/_opendkim-testssp" is_file
}
@test 'more_src has _opendmarc-tools' {
    assert "$xsrc/_opendmarc-tools" is_file
}
@test 'more_src has _opendiff' {
    assert "$xsrc/_opendiff" is_file
}
@test 'more_src has _openhands' {
    assert "$xsrc/_openhands" is_file
}
@test 'more_src has _openfaas' {
    assert "$xsrc/_openfaas" is_file
}
@test 'more_src has _openobserve' {
    assert "$xsrc/_openobserve" is_file
}
@test 'more_src has _openmeteo' {
    assert "$xsrc/_openmeteo" is_file
}
@test 'more_src has _openocd' {
    assert "$xsrc/_openocd" is_file
}
@test 'more_src has _openra' {
    assert "$xsrc/_openra" is_file
}
@test 'more_src has _openrct2' {
    assert "$xsrc/_openrct2" is_file
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
@test 'more_src has _openshot' {
    assert "$xsrc/_openshot" is_file
}
@test 'more_src has _opensips' {
    assert "$xsrc/_opensips" is_file
}
@test 'more_src has _openspec' {
    assert "$xsrc/_openspec" is_file
}
@test 'more_src has _opentofu' {
    assert "$xsrc/_opentofu" is_file
}
@test 'more_src has _openttd' {
    assert "$xsrc/_openttd" is_file
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
@test 'more_src has _opusgain' {
    assert "$xsrc/_opusgain" is_file
}
@test 'more_src has _opustags' {
    assert "$xsrc/_opustags" is_file
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
@test 'more_src has _osh' {
    assert "$xsrc/_osh" is_file
}
@test 'more_src has _osmosis' {
    assert "$xsrc/_osmosis" is_file
}
@test 'more_src has _ospfd' {
    assert "$xsrc/_ospfd" is_file
}
@test 'more_src has _ospf6d' {
    assert "$xsrc/_ospf6d" is_file
}
@test 'more_src has _nhrpd' {
    assert "$xsrc/_nhrpd" is_file
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
@test 'more_src has _ots' {
    assert "$xsrc/_ots" is_file
}
@test 'more_src has _otterdog' {
    assert "$xsrc/_otterdog" is_file
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
@test 'more_src has _owmods' {
    assert "$xsrc/_owmods" is_file
}
@test 'more_src has _oxipng' {
    assert "$xsrc/_oxipng" is_file
}
@test 'more_src has _oxlint' {
    assert "$xsrc/_oxlint" is_file
}
@test 'more_src has _oxo-call' {
    assert "$xsrc/_oxo-call" is_file
}
@test 'more_src has _oxo-flow' {
    assert "$xsrc/_oxo-flow" is_file
}

@test 'more_src has _packcc' {
    assert "$xsrc/_packcc" is_file
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
@test 'more_src has _pace' {
    assert "$xsrc/_pace" is_file
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
@test 'more_src has _packemon' {
    assert "$xsrc/_packemon" is_file
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
@test 'more_src has _paco' {
    assert "$xsrc/_paco" is_file
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
@test 'more_src has _paint' {
    assert "$xsrc/_paint" is_file
}
@test 'more_src has _paka' {
    assert "$xsrc/_paka" is_file
}
@test 'more_src has _paludis' {
    assert "$xsrc/_paludis" is_file
}
@test 'more_src has _pamac' {
    assert "$xsrc/_pamac" is_file
}
@test 'more_src has _pamixer' {
    assert "$xsrc/_pamixer" is_file
}
@test 'more_src has _panache' {
    assert "$xsrc/_panache" is_file
}
@test 'more_src has _pand' {
    assert "$xsrc/_pand" is_file
}
@test 'more_src has _panoglview' {
    assert "$xsrc/_panoglview" is_file
}
@test 'more_src has _panel' {
    assert "$xsrc/_panel" is_file
}
@test 'more_src has _pants' {
    assert "$xsrc/_pants" is_file
}
@test 'more_src has _papermill' {
    assert "$xsrc/_papermill" is_file
}
@test 'more_src has _paprefs' {
    assert "$xsrc/_paprefs" is_file
}
@test 'more_src has _papirus-folders' {
    assert "$xsrc/_papirus-folders" is_file
}
@test 'more_src has _paraview' {
    assert "$xsrc/_paraview" is_file
}
@test 'more_src has _parcel' {
    assert "$xsrc/_parcel" is_file
}
@test 'more_src has _parquet2json' {
    assert "$xsrc/_parquet2json" is_file
}
@test 'more_src has _partclone' {
    assert "$xsrc/_partclone" is_file
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
@test 'more_src has _pasystray' {
    assert "$xsrc/_pasystray" is_file
}
@test 'more_src has _pastel' {
    assert "$xsrc/_pastel" is_file
}
@test 'more_src has _patchage' {
    assert "$xsrc/_patchage" is_file
}
@test 'more_src has _patchelf' {
    assert "$xsrc/_patchelf" is_file
}
@test 'more_src has _patool' {
    assert "$xsrc/_patool" is_file
}
@test 'more_src has _pavumeter' {
    assert "$xsrc/_pavumeter" is_file
}
@test 'more_src has _pazi' {
    assert "$xsrc/_pazi" is_file
}
@test 'more_src has _pbm' {
    assert "$xsrc/_pbm" is_file
}
@test 'more_src has _pbsdsh' {
    assert "$xsrc/_pbsdsh" is_file
}
@test 'more_src has _pbs_iff' {
    assert "$xsrc/_pbs_iff" is_file
}
@test 'more_src has _pbs_sched' {
    assert "$xsrc/_pbs_sched" is_file
}
@test 'more_src has _pbs_tclsh' {
    assert "$xsrc/_pbs_tclsh" is_file
}
@test 'more_src has _pbzip2' {
    assert "$xsrc/_pbzip2" is_file
}
@test 'more_src has _pcb' {
    assert "$xsrc/_pcb" is_file
}
@test 'more_src has _pcb2gcode' {
    assert "$xsrc/_pcb2gcode" is_file
}
@test 'more_src has _pcp-atop' {
    assert "$xsrc/_pcp-atop" is_file
}
@test 'more_src has _pcp-ipcs' {
    assert "$xsrc/_pcp-ipcs" is_file
}
@test 'more_src has _pcp-iostat' {
    assert "$xsrc/_pcp-iostat" is_file
}
@test 'more_src has _pcp-mpstat' {
    assert "$xsrc/_pcp-mpstat" is_file
}
@test 'more_src has _pcp-pidstat' {
    assert "$xsrc/_pcp-pidstat" is_file
}
@test 'more_src has _pcp-summary' {
    assert "$xsrc/_pcp-summary" is_file
}
@test 'more_src has _pcp-uptime' {
    assert "$xsrc/_pcp-uptime" is_file
}
@test 'more_src has _pcp-vmstat' {
    assert "$xsrc/_pcp-vmstat" is_file
}
@test 'more_src has _pcorelist' {
    assert "$xsrc/_pcorelist" is_file
}
@test 'more_src has _pd-ctl' {
    assert "$xsrc/_pd-ctl" is_file
}
@test 'more_src has _pd-gui' {
    assert "$xsrc/_pd-gui" is_file
}
@test 'more_src has _pdd' {
    assert "$xsrc/_pdd" is_file
}
@test 'more_src has _pdfpc' {
    assert "$xsrc/_pdfpc" is_file
}
@test 'more_src has _pdfgrep' {
    assert "$xsrc/_pdfgrep" is_file
}
@test 'more_src has _pdfsam' {
    assert "$xsrc/_pdfsam" is_file
}
@test 'more_src has _pdfshow' {
    assert "$xsrc/_pdfshow" is_file
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
@test 'more_src has _pebble-tool' {
    assert "$xsrc/_pebble-tool" is_file
}
@test 'more_src has _pekwm' {
    assert "$xsrc/_pekwm" is_file
}
@test 'more_src has _pen' {
    assert "$xsrc/_pen" is_file
}
@test 'more_src has _pencil2d' {
    assert "$xsrc/_pencil2d" is_file
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
@test 'more_src has _perlbal' {
    assert "$xsrc/_perlbal" is_file
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
@test 'more_src has _pforth' {
    assert "$xsrc/_pforth" is_file
}
@test 'more_src has _pg_filedump' {
    assert "$xsrc/_pg_filedump" is_file
}
@test 'more_src has _pg_visibility' {
    assert "$xsrc/_pg_visibility" is_file
}
@test 'more_src has _pgbadger' {
    assert "$xsrc/_pgbadger" is_file
}
@test 'more_src has _pgcompacttable' {
    assert "$xsrc/_pgcompacttable" is_file
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
@test 'more_src has _pghoard' {
    assert "$xsrc/_pghoard" is_file
}
@test 'more_src has _pglogical_create_subscriber' {
    assert "$xsrc/_pglogical_create_subscriber" is_file
}
@test 'more_src has _pgmoneta' {
    assert "$xsrc/_pgmoneta" is_file
}
@test 'more_src has _pgstats' {
    assert "$xsrc/_pgstats" is_file
}
@test 'more_src has _pgwatch2' {
    assert "$xsrc/_pgwatch2" is_file
}
@test 'more_src has _pgsql_utils' {
    assert "$xsrc/_pgsql_utils" is_file
}
@test 'more_src has _ph' {
    assert "$xsrc/_ph" is_file
}
@test 'more_src has _phalanx' {
    assert "$xsrc/_phalanx" is_file
}
@test 'more_src has _phabfive' {
    assert "$xsrc/_phabfive" is_file
}
@test 'more_src has _philipstv' {
    assert "$xsrc/_philipstv" is_file
}
@test 'more_src has _phockup' {
    assert "$xsrc/_phockup" is_file
}
@test 'more_src has _phonebook' {
    assert "$xsrc/_phonebook" is_file
}
@test 'more_src has _phonegap' {
    assert "$xsrc/_phonegap" is_file
}
@test 'more_src has _photoprism' {
    assert "$xsrc/_photoprism" is_file
}
@test 'more_src has _php-fpm_exporter' {
    assert "$xsrc/_php-fpm_exporter" is_file
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
@test 'more_src has _phraze' {
    assert "$xsrc/_phraze" is_file
}
@test 'more_src has _phyllotaxis' {
    assert "$xsrc/_phyllotaxis" is_file
}

@test 'more_src has _piactl' {
    assert "$xsrc/_piactl" is_file
}
@test 'more_src has _pianobooster' {
    assert "$xsrc/_pianobooster" is_file
}
@test 'more_src has _pianoteq' {
    assert "$xsrc/_pianoteq" is_file
}
@test 'more_src has _picocrypt' {
    assert "$xsrc/_picocrypt" is_file
}
@test 'more_src has _picolisp' {
    assert "$xsrc/_picolisp" is_file
}
@test 'more_src has _picoprobe' {
    assert "$xsrc/_picoprobe" is_file
}
@test 'more_src has _pidge' {
    assert "$xsrc/_pidge" is_file
}
@test 'more_src has _pidgin' {
    assert "$xsrc/_pidgin" is_file
}
@test 'more_src has _pie' {
    assert "$xsrc/_pie" is_file
}
@test 'more_src has _pihole' {
    assert "$xsrc/_pihole" is_file
}
@test 'more_src has _pimd' {
    assert "$xsrc/_pimd" is_file
}
@test 'more_src has _pim6d' {
    assert "$xsrc/_pim6d" is_file
}
@test 'more_src has _pathd' {
    assert "$xsrc/_pathd" is_file
}
@test 'more_src has _pimpd2' {
    assert "$xsrc/_pimpd2" is_file
}
@test 'more_src has _pimsync' {
    assert "$xsrc/_pimsync" is_file
}
@test 'more_src has _pinprick' {
    assert "$xsrc/_pinprick" is_file
}
@test 'more_src has _pint' {
    assert "$xsrc/_pint" is_file
}
@test 'more_src has _pip' {
    assert "$xsrc/_pip" is_file
}
@test 'more_src has _pip-audit' {
    assert "$xsrc/_pip-audit" is_file
}
@test 'more_src has _pip-autoremove' {
    assert "$xsrc/_pip-autoremove" is_file
}
@test 'more_src has _pip-check' {
    assert "$xsrc/_pip-check" is_file
}
@test 'more_src has _pip-date' {
    assert "$xsrc/_pip-date" is_file
}
@test 'more_src has _pipdeptree' {
    assert "$xsrc/_pipdeptree" is_file
}
@test 'more_src has _pipenv' {
    assert "$xsrc/_pipenv" is_file
}
@test 'more_src has _pipgrip' {
    assert "$xsrc/_pipgrip" is_file
}
@test 'more_src has _pipx' {
    assert "$xsrc/_pipx" is_file
}
@test 'more_src has _pistol' {
    assert "$xsrc/_pistol" is_file
}
@test 'more_src has _pixa' {
    assert "$xsrc/_pixa" is_file
}
@test 'more_src has _pixforge' {
    assert "$xsrc/_pixforge" is_file
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
@test 'more_src has _pk4' {
    assert "$xsrc/_pk4" is_file
}
@test 'more_src has _pkf' {
    assert "$xsrc/_pkf" is_file
}
@test 'more_src has _pkgbuild' {
    assert "$xsrc/_pkgbuild" is_file
}
@test 'more_src has _pki' {
    assert "$xsrc/_pki" is_file
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
@test 'more_src has _planus' {
    assert "$xsrc/_planus" is_file
}
@test 'more_src has _plasmashell' {
    assert "$xsrc/_plasmashell" is_file
}
@test 'more_src has _plasmoidviewer' {
    assert "$xsrc/_plasmoidviewer" is_file
}
@test 'more_src has _play-cli' {
    assert "$xsrc/_play-cli" is_file
}
@test 'more_src has _playerctld' {
    assert "$xsrc/_playerctld" is_file
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
@test 'more_src has _plextraktsync' {
    assert "$xsrc/_plextraktsync" is_file
}
@test 'more_src has _plforge' {
    assert "$xsrc/_plforge" is_file
}
@test 'more_src has _ploticus' {
    assert "$xsrc/_ploticus" is_file
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
@test 'more_src has _plyx' {
    assert "$xsrc/_plyx" is_file
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
@test 'more_src has _pmcd' {
    assert "$xsrc/_pmcd" is_file
}
@test 'more_src has _pmsync' {
    assert "$xsrc/_pmsync" is_file
}
@test 'more_src has _pmwebd' {
    assert "$xsrc/_pmwebd" is_file
}
@test 'more_src has _pngquant' {
    assert "$xsrc/_pngquant" is_file
}
@test 'more_src has _pnmixer' {
    assert "$xsrc/_pnmixer" is_file
}
@test 'more_src has _pnpm' {
    assert "$xsrc/_pnpm" is_file
}
@test 'more_src has _pocket-tts' {
    assert "$xsrc/_pocket-tts" is_file
}
@test 'more_src has _podcast-archiver' {
    assert "$xsrc/_podcast-archiver" is_file
}
@test 'more_src has _podfeed' {
    assert "$xsrc/_podfeed" is_file
}
@test 'more_src has _podlet' {
    assert "$xsrc/_podlet" is_file
}
@test 'more_src has _podget' {
    assert "$xsrc/_podget" is_file
}
@test 'more_src has _podracer' {
    assert "$xsrc/_podracer" is_file
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
@test 'more_src has _pointfree' {
    assert "$xsrc/_pointfree" is_file
}
@test 'more_src has _pointful' {
    assert "$xsrc/_pointful" is_file
}
@test 'more_src has _pokeget' {
    assert "$xsrc/_pokeget" is_file
}
@test 'more_src has _policyd-greylist' {
    assert "$xsrc/_policyd-greylist" is_file
}
@test 'more_src has _policyd-spf' {
    assert "$xsrc/_policyd-spf" is_file
}
@test 'more_src has _policyd-weight' {
    assert "$xsrc/_policyd-weight" is_file
}
@test 'more_src has _polari' {
    assert "$xsrc/_polari" is_file
}
@test 'more_src has _polaris' {
    assert "$xsrc/_polaris" is_file
}
@test 'more_src has _polca.sh' {
    assert "$xsrc/_polca.sh" is_file
}
@test 'more_src has _policy_sentry' {
    assert "$xsrc/_policy_sentry" is_file
}
@test 'more_src has _polkit' {
    assert "$xsrc/_polkit" is_file
}
@test 'more_src has _polyml' {
    assert "$xsrc/_polyml" is_file
}
@test 'more_src has _polymake' {
    assert "$xsrc/_polymake" is_file
}
@test 'more_src has _pomodoro' {
    assert "$xsrc/_pomodoro" is_file
}
@test 'more_src has _pomsky' {
    assert "$xsrc/_pomsky" is_file
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
@test 'more_src has _portablemc' {
    assert "$xsrc/_portablemc" is_file
}
@test 'more_src has _portage_utils' {
    assert "$xsrc/_portage_utils" is_file
}
@test 'more_src has _porter' {
    assert "$xsrc/_porter" is_file
}
@test 'more_src has _postgrey' {
    assert "$xsrc/_postgrey" is_file
}
@test 'more_src has _postscreen' {
    assert "$xsrc/_postscreen" is_file
}
@test 'more_src has _postsrsd' {
    assert "$xsrc/_postsrsd" is_file
}
@test 'more_src has _portmap' {
    assert "$xsrc/_portmap" is_file
}
@test 'more_src has _portpester' {
    assert "$xsrc/_portpester" is_file
}
@test 'more_src has _posh' {
    assert "$xsrc/_posh" is_file
}
@test 'more_src has _posting' {
    assert "$xsrc/_posting" is_file
}
@test 'more_src has _povray' {
    assert "$xsrc/_povray" is_file
}
@test 'more_src has _poule' {
    assert "$xsrc/_poule" is_file
}
@test 'more_src has _pound' {
    assert "$xsrc/_pound" is_file
}
@test 'more_src has _powder' {
    assert "$xsrc/_powder" is_file
}
@test 'more_src has _powify' {
    assert "$xsrc/_powify" is_file
}
@test 'more_src has _ppdb' {
    assert "$xsrc/_ppdb" is_file
}
@test 'more_src has _pppd' {
    assert "$xsrc/_pppd" is_file
}
@test 'more_src has _ppthtml' {
    assert "$xsrc/_ppthtml" is_file
}
@test 'more_src has _pq' {
    assert "$xsrc/_pq" is_file
}
@test 'more_src has _pqrs' {
    assert "$xsrc/_pqrs" is_file
}
@test 'more_src has _pqsign' {
    assert "$xsrc/_pqsign" is_file
}
@test 'more_src has _pr-agent' {
    assert "$xsrc/_pr-agent" is_file
}
@test 'more_src has _pra' {
    assert "$xsrc/_pra" is_file
}
@test 'more_src has _pre-commit' {
    assert "$xsrc/_pre-commit" is_file
}
@test 'more_src has _premake4' {
    assert "$xsrc/_premake4" is_file
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
@test 'more_src has _preserves-tool' {
    assert "$xsrc/_preserves-tool" is_file
}
@test 'more_src has _prettyping' {
    assert "$xsrc/_prettyping" is_file
}
@test 'more_src has _prince' {
    assert "$xsrc/_prince" is_file
}
@test 'more_src has _prisma' {
    assert "$xsrc/_prisma" is_file
}
@test 'more_src has _prm' {
    assert "$xsrc/_prm" is_file
}
@test 'more_src has _proc' {
    assert "$xsrc/_proc" is_file
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
@test 'more_src has _proftpd-init' {
    assert "$xsrc/_proftpd-init" is_file
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
@test 'more_src has _protoc-gen-go' {
    assert "$xsrc/_protoc-gen-go" is_file
}
@test 'more_src has _prowler' {
    assert "$xsrc/_prowler" is_file
}
@test 'more_src has _proxctl' {
    assert "$xsrc/_proxctl" is_file
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
@test 'more_src has _psi4' {
    assert "$xsrc/_psi4" is_file
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
@test 'more_src has _pt-config-diff' {
    assert "$xsrc/_pt-config-diff" is_file
}
@test 'more_src has _pt-duplicate-key-checker' {
    assert "$xsrc/_pt-duplicate-key-checker" is_file
}
@test 'more_src has _pt-fifo-split' {
    assert "$xsrc/_pt-fifo-split" is_file
}
@test 'more_src has _pt-find' {
    assert "$xsrc/_pt-find" is_file
}
@test 'more_src has _pt-fk-error-logger' {
    assert "$xsrc/_pt-fk-error-logger" is_file
}
@test 'more_src has _pt-heartbeat' {
    assert "$xsrc/_pt-heartbeat" is_file
}
@test 'more_src has _pt-index-usage' {
    assert "$xsrc/_pt-index-usage" is_file
}
@test 'more_src has _pt-ioprofile' {
    assert "$xsrc/_pt-ioprofile" is_file
}
@test 'more_src has _pt-mext' {
    assert "$xsrc/_pt-mext" is_file
}
@test 'more_src has _pt-mongodb' {
    assert "$xsrc/_pt-mongodb" is_file
}
@test 'more_src has _pt-pmp' {
    assert "$xsrc/_pt-pmp" is_file
}
@test 'more_src has _pt-query-digest' {
    assert "$xsrc/_pt-query-digest" is_file
}
@test 'more_src has _pt-secure-collect' {
    assert "$xsrc/_pt-secure-collect" is_file
}
@test 'more_src has _pt-show-grants' {
    assert "$xsrc/_pt-show-grants" is_file
}
@test 'more_src has _pt-sift' {
    assert "$xsrc/_pt-sift" is_file
}
@test 'more_src has _pt-slave-delay' {
    assert "$xsrc/_pt-slave-delay" is_file
}
@test 'more_src has _pto_gen' {
    assert "$xsrc/_pto_gen" is_file
}
@test 'more_src has _pto_lensstack' {
    assert "$xsrc/_pto_lensstack" is_file
}
@test 'more_src has _pto_merge' {
    assert "$xsrc/_pto_merge" is_file
}
@test 'more_src has _pto_template' {
    assert "$xsrc/_pto_template" is_file
}
@test 'more_src has _PTBatcherGUI' {
    assert "$xsrc/_PTBatcherGUI" is_file
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
@test 'more_src has _pulsos' {
    assert "$xsrc/_pulsos" is_file
}

@test 'more_src has _pulumi' {
    assert "$xsrc/_pulumi" is_file
}
@test 'more_src has _pumas' {
    assert "$xsrc/_pumas" is_file
}
@test 'more_src has _pup' {
    assert "$xsrc/_pup" is_file
}
@test 'more_src has _puppet' {
    assert "$xsrc/_puppet" is_file
}
@test 'more_src has _pure-ftpd-init' {
    assert "$xsrc/_pure-ftpd-init" is_file
}
@test 'more_src has _puredata' {
    assert "$xsrc/_puredata" is_file
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
@test 'more_src has _pw-env' {
    assert "$xsrc/_pw-env" is_file
}
@test 'more_src has _pwsafe' {
    assert "$xsrc/_pwsafe" is_file
}
@test 'more_src has _px2ansi-rs' {
    assert "$xsrc/_px2ansi-rs" is_file
}
@test 'more_src has _pxar' {
    assert "$xsrc/_pxar" is_file
}
@test 'more_src has _pxz' {
    assert "$xsrc/_pxz" is_file
}
@test 'more_src has _py-spy' {
    assert "$xsrc/_py-spy" is_file
}
@test 'more_src has _pycharm' {
    assert "$xsrc/_pycharm" is_file
}
@test 'more_src has _pychess' {
    assert "$xsrc/_pychess" is_file
}
@test 'more_src has _pycui' {
    assert "$xsrc/_pycui" is_file
}
@test 'more_src has _pyenv' {
    assert "$xsrc/_pyenv" is_file
}
@test 'more_src has _pyftinspect' {
    assert "$xsrc/_pyftinspect" is_file
}
@test 'more_src has _pyinfra' {
    assert "$xsrc/_pyinfra" is_file
}
@test 'more_src has _pymol' {
    assert "$xsrc/_pymol" is_file
}
@test 'more_src has _pyoxidizer' {
    assert "$xsrc/_pyoxidizer" is_file
}
@test 'more_src has _pyprof2html' {
    assert "$xsrc/_pyprof2html" is_file
}
@test 'more_src has _pypykatz' {
    assert "$xsrc/_pypykatz" is_file
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
@test 'more_src has _qaren' {
    assert "$xsrc/_qaren" is_file
}

@test 'more_src has _qc' {
    assert "$xsrc/_qc" is_file
}
@test 'more_src has _qgis' {
    assert "$xsrc/_qgis" is_file
}
@test 'more_src has _qjackrcd' {
    assert "$xsrc/_qjackrcd" is_file
}
@test 'more_src has _qlandkartegt' {
    assert "$xsrc/_qlandkartegt" is_file
}
@test 'more_src has _qli' {
    assert "$xsrc/_qli" is_file
}
@test 'more_src has _qmgr' {
    assert "$xsrc/_qmgr" is_file
}
@test 'more_src has _qmail' {
    assert "$xsrc/_qmail" is_file
}
@test 'more_src has _qmail-clean' {
    assert "$xsrc/_qmail-clean" is_file
}
@test 'more_src has _qmail-inject' {
    assert "$xsrc/_qmail-inject" is_file
}
@test 'more_src has _qmail-lspawn' {
    assert "$xsrc/_qmail-lspawn" is_file
}
@test 'more_src has _qmail-newu' {
    assert "$xsrc/_qmail-newu" is_file
}
@test 'more_src has _qmail-pop3d' {
    assert "$xsrc/_qmail-pop3d" is_file
}
@test 'more_src has _qmail-qread' {
    assert "$xsrc/_qmail-qread" is_file
}
@test 'more_src has _qmail-qstat' {
    assert "$xsrc/_qmail-qstat" is_file
}
@test 'more_src has _qmail-rspawn' {
    assert "$xsrc/_qmail-rspawn" is_file
}
@test 'more_src has _qmail-send' {
    assert "$xsrc/_qmail-send" is_file
}
@test 'more_src has _qmail-showctl' {
    assert "$xsrc/_qmail-showctl" is_file
}
@test 'more_src has _qmail-smtpd' {
    assert "$xsrc/_qmail-smtpd" is_file
}
@test 'more_src has _qemu-bridge-helper' {
    assert "$xsrc/_qemu-bridge-helper" is_file
}
@test 'more_src has _qemu-riscv32' {
    assert "$xsrc/_qemu-riscv32" is_file
}
@test 'more_src has _qemu-riscv64' {
    assert "$xsrc/_qemu-riscv64" is_file
}
@test 'more_src has _qmp-shell' {
    assert "$xsrc/_qmp-shell" is_file
}
@test 'more_src has _qnap' {
    assert "$xsrc/_qnap" is_file
}
@test 'more_src has _qpdfview' {
    assert "$xsrc/_qpdfview" is_file
}
@test 'more_src has _qpwgraph' {
    assert "$xsrc/_qpwgraph" is_file
}
@test 'more_src has _qrrs' {
    assert "$xsrc/_qrrs" is_file
}
@test 'more_src has _qrtool' {
    assert "$xsrc/_qrtool" is_file
}
@test 'more_src has _qs' {
    assert "$xsrc/_qs" is_file
}
@test 'more_src has _qshell' {
    assert "$xsrc/_qshell" is_file
}
@test 'more_src has _qrun' {
    assert "$xsrc/_qrun" is_file
}
@test 'more_src has _qsynth' {
    assert "$xsrc/_qsynth" is_file
}
@test 'more_src has _qstart' {
    assert "$xsrc/_qstart" is_file
}
@test 'more_src has _qstop' {
    assert "$xsrc/_qstop" is_file
}
@test 'more_src has _qtouch' {
    assert "$xsrc/_qtouch" is_file
}
@test 'more_src has _qstat' {
    assert "$xsrc/_qstat" is_file
}
@test 'more_src has _qsub' {
    assert "$xsrc/_qsub" is_file
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
@test 'more_src has _quassel' {
    assert "$xsrc/_quassel" is_file
}
@test 'more_src has _quicksynergy' {
    assert "$xsrc/_quicksynergy" is_file
}
@test 'more_src has _quicktype' {
    assert "$xsrc/_quicktype" is_file
}
@test 'more_src has _quodlibet' {
    assert "$xsrc/_quodlibet" is_file
}
@test 'more_src has _qvlc' {
    assert "$xsrc/_qvlc" is_file
}
@test 'more_src has _qwen' {
    assert "$xsrc/_qwen" is_file
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
@test 'more_src has _radioboat' {
    assert "$xsrc/_radioboat" is_file
}
@test 'more_src has _radon' {
    assert "$xsrc/_radon" is_file
}
@test 'more_src has _rage' {
    assert "$xsrc/_rage" is_file
}
@test 'more_src has _ragel' {
    assert "$xsrc/_ragel" is_file
}
@test 'more_src has _ragenix' {
    assert "$xsrc/_ragenix" is_file
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
@test 'more_src has _rakarrack' {
    assert "$xsrc/_rakarrack" is_file
}
@test 'more_src has _ralph' {
    assert "$xsrc/_ralph" is_file
}
@test 'more_src has _ramalama' {
    assert "$xsrc/_ramalama" is_file
}
@test 'more_src has _rancher' {
    assert "$xsrc/_rancher" is_file
}
@test 'more_src has _rapid-git' {
    assert "$xsrc/_rapid-git" is_file
}
@test 'more_src has _raps' {
    assert "$xsrc/_raps" is_file
}
@test 'more_src has _rasdaemon' {
    assert "$xsrc/_rasdaemon" is_file
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
@test 'more_src has _rbt' {
    assert "$xsrc/_rbt" is_file
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
@test 'more_src has _rco' {
    assert "$xsrc/_rco" is_file
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
@test 'more_src has _reaction' {
    assert "$xsrc/_reaction" is_file
}
@test 'more_src has _readable' {
    assert "$xsrc/_readable" is_file
}
@test 'more_src has _readproctitle' {
    assert "$xsrc/_readproctitle" is_file
}
@test 'more_src has _reattach-to-user-namespace' {
    assert "$xsrc/_reattach-to-user-namespace" is_file
}
@test 'more_src has _rebuildctl' {
    assert "$xsrc/_rebuildctl" is_file
}
@test 'more_src has _recoll' {
    assert "$xsrc/_recoll" is_file
}
@test 'more_src has _redbean' {
    assert "$xsrc/_redbean" is_file
}
@test 'more_src has _redis-check-rdb' {
    assert "$xsrc/_redis-check-rdb" is_file
}
@test 'more_src has _redo' {
    assert "$xsrc/_redo" is_file
}
@test 'more_src has _redmine-cli' {
    assert "$xsrc/_redmine-cli" is_file
}
@test 'more_src has _redress' {
    assert "$xsrc/_redress" is_file
}
@test 'more_src has _redstr' {
    assert "$xsrc/_redstr" is_file
}
@test 'more_src has _refact-lsp' {
    assert "$xsrc/_refact-lsp" is_file
}
@test 'more_src has _reflex' {
    assert "$xsrc/_reflex" is_file
}
@test 'more_src has _refurb' {
    assert "$xsrc/_refurb" is_file
}
@test 'more_src has _regctl' {
    assert "$xsrc/_regctl" is_file
}
@test 'more_src has _reginald.zsh' {
    assert "$xsrc/_reginald.zsh" is_file
}
@test 'more_src has _regipy-diff' {
    assert "$xsrc/_regipy-diff" is_file
}
@test 'more_src has _regipy-dump' {
    assert "$xsrc/_regipy-dump" is_file
}
@test 'more_src has _regipy-parse-header' {
    assert "$xsrc/_regipy-parse-header" is_file
}
@test 'more_src has _regipy-plugins-list' {
    assert "$xsrc/_regipy-plugins-list" is_file
}
@test 'more_src has _regipy-plugins-run' {
    assert "$xsrc/_regipy-plugins-run" is_file
}
@test 'more_src has _regipy-process-transaction-logs' {
    assert "$xsrc/_regipy-process-transaction-logs" is_file
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
@test 'more_src has _releaser' {
    assert "$xsrc/_releaser" is_file
}
@test 'more_src has _remarshal' {
    assert "$xsrc/_remarshal" is_file
}
@test 'more_src has _remit' {
    assert "$xsrc/_remit" is_file
}
@test 'more_src has _ren' {
    assert "$xsrc/_ren" is_file
}
@test 'more_src has _renri' {
    assert "$xsrc/_renri" is_file
}
@test 'more_src has _replit' {
    assert "$xsrc/_replit" is_file
}
@test 'more_src has _repo' {
    assert "$xsrc/_repo" is_file
}
@test 'more_src has _repo-trust' {
    assert "$xsrc/_repo-trust" is_file
}
@test 'more_src has _repomix' {
    assert "$xsrc/_repomix" is_file
}
@test 'more_src has _repos-manager' {
    assert "$xsrc/_repos-manager" is_file
}
@test 'more_src has _repoverlay' {
    assert "$xsrc/_repoverlay" is_file
}
@test 'more_src has _repro-env' {
    assert "$xsrc/_repro-env" is_file
}
@test 'more_src has _reproxy' {
    assert "$xsrc/_reproxy" is_file
}
@test 'more_src has _research-master' {
    assert "$xsrc/_research-master" is_file
}

@test 'more_src has _restart_service' {
    assert "$xsrc/_restart_service" is_file
}
@test 'more_src has _restic' {
    assert "$xsrc/_restic" is_file
}
@test 'more_src has _resticprofile' {
    assert "$xsrc/_resticprofile" is_file
}
@test 'more_src has _retty' {
    assert "$xsrc/_retty" is_file
}
@test 'more_src has _retire' {
    assert "$xsrc/_retire" is_file
}
@test 'more_src has _retroarch-cli' {
    assert "$xsrc/_retroarch-cli" is_file
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
@test 'more_src has _rgbasm' {
    assert "$xsrc/_rgbasm" is_file
}
@test 'more_src has _rgbfix' {
    assert "$xsrc/_rgbfix" is_file
}
@test 'more_src has _rgbgfx' {
    assert "$xsrc/_rgbgfx" is_file
}
@test 'more_src has _rgblink' {
    assert "$xsrc/_rgblink" is_file
}
@test 'more_src has _rgr' {
    assert "$xsrc/_rgr" is_file
}
@test 'more_src has _rgrc' {
    assert "$xsrc/_rgrc" is_file
}
@test 'more_src has _rgxg' {
    assert "$xsrc/_rgxg" is_file
}
@test 'more_src has _rhasspy-cli' {
    assert "$xsrc/_rhasspy-cli" is_file
}
@test 'more_src has _rhoas' {
    assert "$xsrc/_rhoas" is_file
}
@test 'more_src has _riak' {
    assert "$xsrc/_riak" is_file
}
@test 'more_src has _riak-admin' {
    assert "$xsrc/_riak-admin" is_file
}
@test 'more_src has _rider' {
    assert "$xsrc/_rider" is_file
}
@test 'more_src has _rigg' {
    assert "$xsrc/_rigg" is_file
}
@test 'more_src has _rigsql' {
    assert "$xsrc/_rigsql" is_file
}
@test 'more_src has _riji' {
    assert "$xsrc/_riji" is_file
}
@test 'more_src has _rip' {
    assert "$xsrc/_rip" is_file
}
@test 'more_src has _ripd' {
    assert "$xsrc/_ripd" is_file
}
@test 'more_src has _rst2epub' {
    assert "$xsrc/_rst2epub" is_file
}
@test 'more_src has _rst2info' {
    assert "$xsrc/_rst2info" is_file
}
@test 'more_src has _rip2' {
    assert "$xsrc/_rip2" is_file
}
@test 'more_src has _rstudio' {
    assert "$xsrc/_rstudio" is_file
}
@test 'more_src has _ripit' {
    assert "$xsrc/_ripit" is_file
}
@test 'more_src has _rippkgs' {
    assert "$xsrc/_rippkgs" is_file
}
@test 'more_src has _risor' {
    assert "$xsrc/_risor" is_file
}
@test 'more_src has _riverctl' {
    assert "$xsrc/_riverctl" is_file
}
@test 'more_src has _river' {
    assert "$xsrc/_river" is_file
}
@test 'more_src has _rke2' {
    assert "$xsrc/_rke2" is_file
}
@test 'more_src has _rledger' {
    assert "$xsrc/_rledger" is_file
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
@test 'more_src has _roc' {
    assert "$xsrc/_roc" is_file
}
@test 'more_src has _roer' {
    assert "$xsrc/_roer" is_file
}
@test 'more_src has _rofi' {
    assert "$xsrc/_rofi" is_file
}
@test 'more_src has _rofimoji' {
    assert "$xsrc/_rofimoji" is_file
}
@test 'more_src has _rojo' {
    assert "$xsrc/_rojo" is_file
}
@test 'more_src has _roo-cli' {
    assert "$xsrc/_roo-cli" is_file
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
@test 'more_src has _rosegarden' {
    assert "$xsrc/_rosegarden" is_file
}
@test 'more_src has _rotz' {
    assert "$xsrc/_rotz" is_file
}
@test 'more_src has _route53' {
    assert "$xsrc/_route53" is_file
}
@test 'more_src has _rover' {
    assert "$xsrc/_rover" is_file
}
@test 'more_src has _rox-filer' {
    assert "$xsrc/_rox-filer" is_file
}
@test 'more_src has _rpk' {
    assert "$xsrc/_rpk" is_file
}
@test 'more_src has _rr' {
    assert "$xsrc/_rr" is_file
}
@test 'more_src has _rrdcached' {
    assert "$xsrc/_rrdcached" is_file
}
@test 'more_src has _rrdcgi' {
    assert "$xsrc/_rrdcgi" is_file
}
@test 'more_src has _rrdupdate' {
    assert "$xsrc/_rrdupdate" is_file
}
@test 'more_src has _rsop' {
    assert "$xsrc/_rsop" is_file
}
@test 'more_src has _rsopv' {
    assert "$xsrc/_rsopv" is_file
}
@test 'more_src has _rspamadm' {
    assert "$xsrc/_rspamadm" is_file
}
@test 'more_src has _rspamd-cli' {
    assert "$xsrc/_rspamd-cli" is_file
}
@test 'more_src has _rsvm' {
    assert "$xsrc/_rsvm" is_file
}
@test 'more_src has _rsyslogd' {
    assert "$xsrc/_rsyslogd" is_file
}
@test 'more_src has _rtf2html' {
    assert "$xsrc/_rtf2html" is_file
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
@test 'more_src has _ruff-lsp' {
    assert "$xsrc/_ruff-lsp" is_file
}
@test 'more_src has _ruflo' {
    assert "$xsrc/_ruflo" is_file
}
@test 'more_src has _rung' {
    assert "$xsrc/_rung" is_file
}
@test 'more_src has _runme' {
    assert "$xsrc/_runme" is_file
}
@test 'more_src has _runner' {
    assert "$xsrc/_runner" is_file
}

@test 'more_src has _runsv' {
    assert "$xsrc/_runsv" is_file
}
@test 'more_src has _runsvchdir' {
    assert "$xsrc/_runsvchdir" is_file
}
@test 'more_src has _runsvdir' {
    assert "$xsrc/_runsvdir" is_file
}
@test 'more_src has _runtest' {
    assert "$xsrc/_runtest" is_file
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
@test 'more_src has _rustac' {
    assert "$xsrc/_rustac" is_file
}
@test 'more_src has _rustcat' {
    assert "$xsrc/_rustcat" is_file
}
@test 'more_src has _rustgraph' {
    assert "$xsrc/_rustgraph" is_file
}

@test 'more_src has _rustic' {
    assert "$xsrc/_rustic" is_file
}
@test 'more_src has _rustlings' {
    assert "$xsrc/_rustlings" is_file
}
@test 'more_src has _rustowl' {
    assert "$xsrc/_rustowl" is_file
}
@test 'more_src has _rustscan' {
    assert "$xsrc/_rustscan" is_file
}
@test 'more_src has _rv' {
    assert "$xsrc/_rv" is_file
}
@test 'more_src has _rvlc' {
    assert "$xsrc/_rvlc" is_file
}
@test 'more_src has _rvm' {
    assert "$xsrc/_rvm" is_file
}
@test 'more_src has _rvpm' {
    assert "$xsrc/_rvpm" is_file
}
@test 'more_src has _rye' {
    assert "$xsrc/_rye" is_file
}
@test 'more_src has _s-tui' {
    assert "$xsrc/_s-tui" is_file
}
@test 'more_src has _s2' {
    assert "$xsrc/_s2" is_file
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
@test 'more_src has _s6-clock' {
    assert "$xsrc/_s6-clock" is_file
}
@test 'more_src has _s6-mkfifo' {
    assert "$xsrc/_s6-mkfifo" is_file
}
@test 'more_src has _s6-supervise' {
    assert "$xsrc/_s6-supervise" is_file
}
@test 'more_src has _s6-svscanctl' {
    assert "$xsrc/_s6-svscanctl" is_file
}
@test 'more_src has _s6-test' {
    assert "$xsrc/_s6-test" is_file
}
@test 'more_src has _sacc' {
    assert "$xsrc/_sacc" is_file
}
@test 'more_src has _sad' {
    assert "$xsrc/_sad" is_file
}
@test 'more_src has _safari-cli' {
    assert "$xsrc/_safari-cli" is_file
}
@test 'more_src has _safe-bundle' {
    assert "$xsrc/_safe-bundle" is_file
}
@test 'more_src has _safety' {
    assert "$xsrc/_safety" is_file
}
@test 'more_src has _sagemath' {
    assert "$xsrc/_sagemath" is_file
}
@test 'more_src has _sagoin' {
    assert "$xsrc/_sagoin" is_file
}
@test 'more_src has _samhain' {
    assert "$xsrc/_samhain" is_file
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
@test 'more_src has _sasquatch' {
    assert "$xsrc/_sasquatch" is_file
}
@test 'more_src has _sassc' {
    assert "$xsrc/_sassc" is_file
}
@test 'more_src has _sbsigntool' {
    assert "$xsrc/_sbsigntool" is_file
}
@test 'more_src has _sbopkg' {
    assert "$xsrc/_sbopkg" is_file
}
@test 'more_src has _sbotools' {
    assert "$xsrc/_sbotools" is_file
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
@test 'more_src has _scantailor' {
    assert "$xsrc/_scantailor" is_file
}
@test 'more_src has _scanadf' {
    assert "$xsrc/_scanadf" is_file
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
@test 'more_src has _schemaui' {
    assert "$xsrc/_schemaui" is_file
}
@test 'more_src has _scheme48' {
    assert "$xsrc/_scheme48" is_file
}
@test 'more_src has _scid' {
    assert "$xsrc/_scid" is_file
}
@test 'more_src has _scli' {
    assert "$xsrc/_scli" is_file
}
@test 'more_src has _scm' {
    assert "$xsrc/_scm" is_file
}
@test 'more_src has _score' {
    assert "$xsrc/_score" is_file
}
@test 'more_src has _scpr' {
    assert "$xsrc/_scpr" is_file
}
@test 'more_src has _scrapyd' {
    assert "$xsrc/_scrapyd" is_file
}
@test 'more_src has _scrapyd-client' {
    assert "$xsrc/_scrapyd-client" is_file
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
@test 'more_src has _scriv' {
    assert "$xsrc/_scriv" is_file
}
@test 'more_src has _scrypt' {
    assert "$xsrc/_scrypt" is_file
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
@test 'more_src has _sealert' {
    assert "$xsrc/_sealert" is_file
}
@test 'more_src has _search-cmd' {
    assert "$xsrc/_search-cmd" is_file
}
@test 'more_src has _searchdiagnose' {
    assert "$xsrc/_searchdiagnose" is_file
}
@test 'more_src has _searchnmapscript' {
    assert "$xsrc/_searchnmapscript" is_file
}
@test 'more_src has _secretenv' {
    assert "$xsrc/_secretenv" is_file
}
@test 'more_src has _securefs' {
    assert "$xsrc/_securefs" is_file
}
@test 'more_src has _seite' {
    assert "$xsrc/_seite" is_file
}
@test 'more_src has _selene' {
    assert "$xsrc/_selene" is_file
}
@test 'more_src has _selfserv' {
    assert "$xsrc/_selfserv" is_file
}
@test 'more_src has _sema' {
    assert "$xsrc/_sema" is_file
}
@test 'more_src has _semgrep' {
    assert "$xsrc/_semgrep" is_file
}
@test 'more_src has _sentry-cli' {
    assert "$xsrc/_sentry-cli" is_file
}
@test 'more_src has _seq24' {
    assert "$xsrc/_seq24" is_file
}
@test 'more_src has _seq66' {
    assert "$xsrc/_seq66" is_file
}
@test 'more_src has _seqkit' {
    assert "$xsrc/_seqkit" is_file
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
@test 'more_src has _server-setup' {
    assert "$xsrc/_server-setup" is_file
}
@test 'more_src has _serverless' {
    assert "$xsrc/_serverless" is_file
}
@test 'more_src has _sesh' {
    assert "$xsrc/_sesh" is_file
}
@test 'more_src has _sessionguard' {
    assert "$xsrc/_sessionguard" is_file
}

@test 'more_src has _setlock' {
    assert "$xsrc/_setlock" is_file
}
@test 'more_src has _setools' {
    assert "$xsrc/_setools" is_file
}
@test 'more_src has _setsebool' {
    assert "$xsrc/_setsebool" is_file
}
@test 'more_src has _setuidgid' {
    assert "$xsrc/_setuidgid" is_file
}
@test 'more_src has _settle' {
    assert "$xsrc/_settle" is_file
}
@test 'more_src has _sfddiff' {
    assert "$xsrc/_sfddiff" is_file
}
@test 'more_src has _sfdx' {
    assert "$xsrc/_sfdx" is_file
}
@test 'more_src has _sfnt2woff-zopfli' {
    assert "$xsrc/_sfnt2woff-zopfli" is_file
}
@test 'more_src has _sfopen' {
    assert "$xsrc/_sfopen" is_file
}
@test 'more_src has _sgpt' {
    assert "$xsrc/_sgpt" is_file
}
@test 'more_src has _sh4d0wup' {
    assert "$xsrc/_sh4d0wup" is_file
}
@test 'more_src has _sha-tarkistin.sh' {
    assert "$xsrc/_sha-tarkistin.sh" is_file
}
@test 'more_src has _sha512deep' {
    assert "$xsrc/_sha512deep" is_file
}
@test 'more_src has _shadcn' {
    assert "$xsrc/_shadcn" is_file
}
@test 'more_src has _shadow' {
    assert "$xsrc/_shadow" is_file
}
@test 'more_src has _shadowforge' {
    assert "$xsrc/_shadowforge" is_file
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
@test 'more_src has _sherpack' {
    assert "$xsrc/_sherpack" is_file
}

@test 'more_src has _shh' {
    assert "$xsrc/_shh" is_file
}
@test 'more_src has _shnote' {
    assert "$xsrc/_shnote" is_file
}
@test 'more_src has _shorewall-init' {
    assert "$xsrc/_shorewall-init" is_file
}
@test 'more_src has _shorewall-lite' {
    assert "$xsrc/_shorewall-lite" is_file
}
@test 'more_src has _shorewall6' {
    assert "$xsrc/_shorewall6" is_file
}
@test 'more_src has _shorewall6-lite' {
    assert "$xsrc/_shorewall6-lite" is_file
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
@test 'more_src has _sigil' {
    assert "$xsrc/_sigil" is_file
}
@test 'more_src has _signal-cli' {
    assert "$xsrc/_signal-cli" is_file
}
@test 'more_src has _silicon' {
    assert "$xsrc/_silicon" is_file
}
@test 'more_src has _simh' {
    assert "$xsrc/_simh" is_file
}
@test 'more_src has _sizelint' {
    assert "$xsrc/_sizelint" is_file
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
@test 'more_src has _skills' {
    assert "$xsrc/_skills" is_file
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
@test 'more_src has _skip' {
    assert "$xsrc/_skip" is_file
}
@test 'more_src has _skopeo' {
    assert "$xsrc/_skopeo" is_file
}
@test 'more_src has _skupper' {
    assert "$xsrc/_skupper" is_file
}
@test 'more_src has _skytable' {
    assert "$xsrc/_skytable" is_file
}
@test 'more_src has _slackpkg' {
    assert "$xsrc/_slackpkg" is_file
}
@test 'more_src has _slides' {
    assert "$xsrc/_slides" is_file
}
@test 'more_src has _slimg' {
    assert "$xsrc/_slimg" is_file
}
@test 'more_src has _slint' {
    assert "$xsrc/_slint" is_file
}
@test 'more_src has _slipd' {
    assert "$xsrc/_slipd" is_file
}
@test 'more_src has _sliver-client' {
    assert "$xsrc/_sliver-client" is_file
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
@test 'more_src has _slpkg' {
    assert "$xsrc/_slpkg" is_file
}
@test 'more_src has _slurmrestd' {
    assert "$xsrc/_slurmrestd" is_file
}
@test 'more_src has _slurp' {
    assert "$xsrc/_slurp" is_file
}
@test 'more_src has _sjeng' {
    assert "$xsrc/_sjeng" is_file
}
@test 'more_src has _sjstat' {
    assert "$xsrc/_sjstat" is_file
}
@test 'more_src has _smart-sudo.zsh' {
    assert "$xsrc/_smart-sudo.zsh" is_file
}
@test 'more_src has _smartdns' {
    assert "$xsrc/_smartdns" is_file
}
@test 'more_src has _smartlog' {
    assert "$xsrc/_smartlog" is_file
}
@test 'more_src has _smartmontools' {
    assert "$xsrc/_smartmontools" is_file
}
@test 'more_src has _smbspool' {
    assert "$xsrc/_smbspool" is_file
}
@test 'more_src has _smemstat' {
    assert "$xsrc/_smemstat" is_file
}
@test 'more_src has _smhkd' {
    assert "$xsrc/_smhkd" is_file
}
@test 'more_src has _smyrna' {
    assert "$xsrc/_smyrna" is_file
}
@test 'more_src has _sml' {
    assert "$xsrc/_sml" is_file
}
@test 'more_src has _smlnj' {
    assert "$xsrc/_smlnj" is_file
}
@test 'more_src has _smug' {
    assert "$xsrc/_smug" is_file
}
@test 'more_src has _snes9x' {
    assert "$xsrc/_snes9x" is_file
}
@test 'more_src has _snakefmt' {
    assert "$xsrc/_snakefmt" is_file
}
@test 'more_src has _snakemake' {
    assert "$xsrc/_snakemake" is_file
}
@test 'more_src has _snapclient' {
    assert "$xsrc/_snapclient" is_file
}
@test 'more_src has _snapcraft' {
    assert "$xsrc/_snapcraft" is_file
}
@test 'more_src has _snaplet' {
    assert "$xsrc/_snaplet" is_file
}
@test 'more_src has _snapserver' {
    assert "$xsrc/_snapserver" is_file
}
@test 'more_src has _snarkos' {
    assert "$xsrc/_snarkos" is_file
}
@test 'more_src has _snazy' {
    assert "$xsrc/_snazy" is_file
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
@test 'more_src has _sniffit' {
    assert "$xsrc/_sniffit" is_file
}
@test 'more_src has _sniffnet' {
    assert "$xsrc/_sniffnet" is_file
}
@test 'more_src has _sniprun' {
    assert "$xsrc/_sniprun" is_file
}
@test 'more_src has _snouty' {
    assert "$xsrc/_snouty" is_file
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
@test 'more_src has _sodipodi' {
    assert "$xsrc/_sodipodi" is_file
}
@test 'more_src has _soft-serve' {
    assert "$xsrc/_soft-serve" is_file
}
@test 'more_src has _softlimit' {
    assert "$xsrc/_softlimit" is_file
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
@test 'more_src has _solv' {
    assert "$xsrc/_solv" is_file
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
@test 'more_src has _sooperlooper' {
    assert "$xsrc/_sooperlooper" is_file
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
@test 'more_src has _spamd' {
    assert "$xsrc/_spamd" is_file
}
@test 'more_src has _spampd' {
    assert "$xsrc/_spampd" is_file
}
@test 'more_src has _spamdyke' {
    assert "$xsrc/_spamdyke" is_file
}
@test 'more_src has _spacecmd' {
    assert "$xsrc/_spacecmd" is_file
}
@test 'more_src has _spacemacs' {
    assert "$xsrc/_spacemacs" is_file
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
@test 'more_src has _spec' {
    assert "$xsrc/_spec" is_file
}
@test 'more_src has _spectral' {
    assert "$xsrc/_spectral" is_file
}
@test 'more_src has _spiped' {
    assert "$xsrc/_spiped" is_file
}
@test 'more_src has _spirv-cross' {
    assert "$xsrc/_spirv-cross" is_file
}
@test 'more_src has _spirv-link' {
    assert "$xsrc/_spirv-link" is_file
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
@test 'more_src has _spool' {
    assert "$xsrc/_spool" is_file
}
@test 'more_src has _spot' {
    assert "$xsrc/_spot" is_file
}
@test 'more_src has _spot-secrets' {
    assert "$xsrc/_spot-secrets" is_file
}
@test 'more_src has _spotify-cli' {
    assert "$xsrc/_spotify-cli" is_file
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
@test 'more_src has _spytrap-adb' {
    assert "$xsrc/_spytrap-adb" is_file
}
@test 'more_src has _sq' {
    assert "$xsrc/_sq" is_file
}
@test 'more_src has _sq-git' {
    assert "$xsrc/_sq-git" is_file
}
@test 'more_src has _sq-wot' {
    assert "$xsrc/_sq-wot" is_file
}
@test 'more_src has _sqitch' {
    assert "$xsrc/_sqitch" is_file
}
@test 'more_src has _sql-splitter' {
    assert "$xsrc/_sql-splitter" is_file
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
@test 'more_src has _sqlite3mysql' {
    assert "$xsrc/_sqlite3mysql" is_file
}
@test 'more_src has _sqlectron' {
    assert "$xsrc/_sqlectron" is_file
}
@test 'more_src has _sqlx' {
    assert "$xsrc/_sqlx" is_file
}
@test 'more_src has _sqop' {
    assert "$xsrc/_sqop" is_file
}
@test 'more_src has _sqopv' {
    assert "$xsrc/_sqopv" is_file
}
@test 'more_src has _squishy' {
    assert "$xsrc/_squishy" is_file
}
@test 'more_src has _sqv' {
    assert "$xsrc/_sqv" is_file
}
@test 'more_src has _srain' {
    assert "$xsrc/_srain" is_file
}
@test 'more_src has _srt-tunnel' {
    assert "$xsrc/_srt-tunnel" is_file
}
@test 'more_src has _sclient' {
    assert "$xsrc/_sclient" is_file
}
@test 'more_src has _sserver' {
    assert "$xsrc/_sserver" is_file
}
@test 'more_src has _sscli' {
    assert "$xsrc/_sscli" is_file
}
@test 'more_src has _ssconvert' {
    assert "$xsrc/_ssconvert" is_file
}
@test 'more_src has _ssh-audit' {
    assert "$xsrc/_ssh-audit" is_file
}
@test 'more_src has _ssh-cli' {
    assert "$xsrc/_ssh-cli" is_file
}

@test 'more_src has _ssh-kube-gcloud' {
    assert "$xsrc/_ssh-kube-gcloud" is_file
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
@test 'more_src has _sss_debuglevel' {
    assert "$xsrc/_sss_debuglevel" is_file
}
@test 'more_src has _sss_groupadd' {
    assert "$xsrc/_sss_groupadd" is_file
}
@test 'more_src has _sss_obfuscate' {
    assert "$xsrc/_sss_obfuscate" is_file
}
@test 'more_src has _sss_override' {
    assert "$xsrc/_sss_override" is_file
}
@test 'more_src has _sss_useradd' {
    assert "$xsrc/_sss_useradd" is_file
}
@test 'more_src has _stack' {
    assert "$xsrc/_stack" is_file
}
@test 'more_src has _stack2nix' {
    assert "$xsrc/_stack2nix" is_file
}
@test 'more_src has _stakk' {
    assert "$xsrc/_stakk" is_file
}
@test 'more_src has _stalin' {
    assert "$xsrc/_stalin" is_file
}
@test 'more_src has _starboard' {
    assert "$xsrc/_starboard" is_file
}
@test 'more_src has _stargazer' {
    assert "$xsrc/_stargazer" is_file
}
@test 'more_src has _starlark' {
    assert "$xsrc/_starlark" is_file
}
@test 'more_src has _starman' {
    assert "$xsrc/_starman" is_file
}
@test 'more_src has _starpls' {
    assert "$xsrc/_starpls" is_file
}
@test 'more_src has _start_server' {
    assert "$xsrc/_start_server" is_file
}
@test 'more_src has _starweft' {
    assert "$xsrc/_starweft" is_file
}
@test 'more_src has _staticd' {
    assert "$xsrc/_staticd" is_file
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
@test 'more_src has _stegseek' {
    assert "$xsrc/_stegseek" is_file
}
@test 'more_src has _stellar-xdr' {
    assert "$xsrc/_stellar-xdr" is_file
}
@test 'more_src has _stella' {
    assert "$xsrc/_stella" is_file
}
@test 'more_src has _stellarium' {
    assert "$xsrc/_stellarium" is_file
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
@test 'more_src has _st' {
    assert "$xsrc/_st" is_file
}
@test 'more_src has _sti' {
    assert "$xsrc/_sti" is_file
}
@test 'more_src has _st-link' {
    assert "$xsrc/_st-link" is_file
}
@test 'more_src has _st-trace' {
    assert "$xsrc/_st-trace" is_file
}
@test 'more_src has _stmflasher' {
    assert "$xsrc/_stmflasher" is_file
}
@test 'more_src has _stockfish' {
    assert "$xsrc/_stockfish" is_file
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
@test 'more_src has _storybook' {
    assert "$xsrc/_storybook" is_file
}
@test 'more_src has _stow' {
    assert "$xsrc/_stow" is_file
}
@test 'more_src has _stratoshark' {
    assert "$xsrc/_stratoshark" is_file
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
@test 'more_src has _stressapptest' {
    assert "$xsrc/_stressapptest" is_file
}
@test 'more_src has _strimzi' {
    assert "$xsrc/_strimzi" is_file
}
@test 'more_src has _stringtie' {
    assert "$xsrc/_stringtie" is_file
}
@test 'more_src has _strip-ansi' {
    assert "$xsrc/_strip-ansi" is_file
}
@test 'more_src has _stripe' {
    assert "$xsrc/_stripe" is_file
}
@test 'more_src has _sttr' {
    assert "$xsrc/_sttr" is_file
}
@test 'more_src has _stubby' {
    assert "$xsrc/_stubby" is_file
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
@test 'more_src has _subrepo' {
    assert "$xsrc/_subrepo" is_file
}
@test 'more_src has _substrate-node' {
    assert "$xsrc/_substrate-node" is_file
}
@test 'more_src has _subsync' {
    assert "$xsrc/_subsync" is_file
}
@test 'more_src has _sui' {
    assert "$xsrc/_sui" is_file
}
@test 'more_src has _sup.zsh' {
    assert "$xsrc/_sup.zsh" is_file
}
@test 'more_src has _supabase' {
    assert "$xsrc/_supabase" is_file
}
@test 'more_src has _sclang' {
    assert "$xsrc/_sclang" is_file
}
@test 'more_src has _superctl' {
    assert "$xsrc/_superctl" is_file
}
@test 'more_src has _supertux' {
    assert "$xsrc/_supertux" is_file
}
@test 'more_src has _supertuxkart' {
    assert "$xsrc/_supertuxkart" is_file
}
@test 'more_src has _supercollider' {
    assert "$xsrc/_supercollider" is_file
}
@test 'more_src has _superfile' {
    assert "$xsrc/_superfile" is_file
}
@test 'more_src has _supersigil' {
    assert "$xsrc/_supersigil" is_file
}
@test 'more_src has _supervise' {
    assert "$xsrc/_supervise" is_file
}
@test 'more_src has _supp' {
    assert "$xsrc/_supp" is_file
}

@test 'more_src has _svc' {
    assert "$xsrc/_svc" is_file
}
@test 'more_src has _svscan' {
    assert "$xsrc/_svscan" is_file
}
@test 'more_src has _svstat' {
    assert "$xsrc/_svstat" is_file
}
@test 'more_src has _sview' {
    assert "$xsrc/_sview" is_file
}
@test 'more_src has _surface' {
    assert "$xsrc/_surface" is_file
}
@test 'more_src has _surge-xt' {
    assert "$xsrc/_surge-xt" is_file
}
@test 'more_src has _suricata' {
    assert "$xsrc/_suricata" is_file
}
@test 'more_src has _surreal' {
    assert "$xsrc/_surreal" is_file
}
@test 'more_src has _sv' {
    assert "$xsrc/_sv" is_file
}
@test 'more_src has _svgcleaner' {
    assert "$xsrc/_svgcleaner" is_file
}
@test 'more_src has _svgexport' {
    assert "$xsrc/_svgexport" is_file
}
@test 'more_src has _svgo' {
    assert "$xsrc/_svgo" is_file
}
@test 'more_src has _svgr' {
    assert "$xsrc/_svgr" is_file
}
@test 'more_src has _svlc' {
    assert "$xsrc/_svlc" is_file
}
@test 'more_src has _svlint' {
    assert "$xsrc/_svlint" is_file
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
@test 'more_src has _svtplay-dl' {
    assert "$xsrc/_svtplay-dl" is_file
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
@test 'more_src has _sylpheed' {
    assert "$xsrc/_sylpheed" is_file
}
@test 'more_src has _synadm' {
    assert "$xsrc/_synadm" is_file
}
@test 'more_src has _synctex' {
    assert "$xsrc/_synctex" is_file
}
@test 'more_src has _syncthing' {
    assert "$xsrc/_syncthing" is_file
}
@test 'more_src has _synergyc' {
    assert "$xsrc/_synergyc" is_file
}
@test 'more_src has _synergys' {
    assert "$xsrc/_synergys" is_file
}
@test 'more_src has _synergy' {
    assert "$xsrc/_synergy" is_file
}
@test 'more_src has _systemd-journal-gatewayd' {
    assert "$xsrc/_systemd-journal-gatewayd" is_file
}
@test 'more_src has _systemd-journal-remote' {
    assert "$xsrc/_systemd-journal-remote" is_file
}
@test 'more_src has _systemd-journal-upload' {
    assert "$xsrc/_systemd-journal-upload" is_file
}
@test 'more_src has _sysdig' {
    assert "$xsrc/_sysdig" is_file
}
@test 'more_src has _systemd-bootchart' {
    assert "$xsrc/_systemd-bootchart" is_file
}
@test 'more_src has _systemd-network-generator' {
    assert "$xsrc/_systemd-network-generator" is_file
}
@test 'more_src has _systemd-sysinstall' {
    assert "$xsrc/_systemd-sysinstall" is_file
}
@test 'more_src has _systemextensionsctl' {
    assert "$xsrc/_systemextensionsctl" is_file
}
@test 'more_src has _systemsettings' {
    assert "$xsrc/_systemsettings" is_file
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
@test 'more_src has _t3code' {
    assert "$xsrc/_t3code" is_file
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
@test 'more_src has _tally' {
    assert "$xsrc/_tally" is_file
}
@test 'more_src has _talosctl' {
    assert "$xsrc/_talosctl" is_file
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
@test 'more_src has _tarn' {
    assert "$xsrc/_tarn" is_file
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
@test 'more_src has _taskpaper' {
    assert "$xsrc/_taskpaper" is_file
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
@test 'more_src has _taws' {
    assert "$xsrc/_taws" is_file
}
@test 'more_src has _tazpkg' {
    assert "$xsrc/_tazpkg" is_file
}
@test 'more_src has _tbdflow' {
    assert "$xsrc/_tbdflow" is_file
}
@test 'more_src has _tblastn' {
    assert "$xsrc/_tblastn" is_file
}
@test 'more_src has _tblastx' {
    assert "$xsrc/_tblastx" is_file
}
@test 'more_src has _tccutil' {
    assert "$xsrc/_tccutil" is_file
}
@test 'more_src has _tcld' {
    assert "$xsrc/_tcld" is_file
}
@test 'more_src has _tcli' {
    assert "$xsrc/_tcli" is_file
}
@test 'more_src has _tclkit' {
    assert "$xsrc/_tclkit" is_file
}
@test 'more_src has _tclock' {
    assert "$xsrc/_tclock" is_file
}
@test 'more_src has _tclsh' {
    assert "$xsrc/_tclsh" is_file
}
@test 'more_src has _tcplay' {
    assert "$xsrc/_tcplay" is_file
}
@test 'more_src has _tctl' {
    assert "$xsrc/_tctl" is_file
}
@test 'more_src has _tdl' {
    assert "$xsrc/_tdl" is_file
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
@test 'more_src has _teamtype' {
    assert "$xsrc/_teamtype" is_file
}
@test 'more_src has _tec.zsh' {
    assert "$xsrc/_tec.zsh" is_file
}
@test 'more_src has _ted' {
    assert "$xsrc/_ted" is_file
}
@test 'more_src has _tectonic' {
    assert "$xsrc/_tectonic" is_file
}
@test 'more_src has _teensy-loader' {
    assert "$xsrc/_teensy-loader" is_file
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
@test 'more_src has _teyjus' {
    assert "$xsrc/_teyjus" is_file
}
@test 'more_src has _telepresence' {
    assert "$xsrc/_telepresence" is_file
}
@test 'more_src has _teller' {
    assert "$xsrc/_teller" is_file
}
@test 'more_src has _tellico' {
    assert "$xsrc/_tellico" is_file
}
@test 'more_src has _templ' {
    assert "$xsrc/_templ" is_file
}
@test 'more_src has _temporal' {
    assert "$xsrc/_temporal" is_file
}
@test 'more_src has _temporal-cli' {
    assert "$xsrc/_temporal-cli" is_file
}
@test 'more_src has _tensor-tools' {
    assert "$xsrc/_tensor-tools" is_file
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
@test 'more_src has _termpulse' {
    assert "$xsrc/_termpulse" is_file
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
@test 'more_src has _tern' {
    assert "$xsrc/_tern" is_file
}
@test 'more_src has _tersify' {
    assert "$xsrc/_tersify" is_file
}
@test 'more_src has _testdisk' {
    assert "$xsrc/_testdisk" is_file
}
@test 'more_src has _testkube' {
    assert "$xsrc/_testkube" is_file
}
@test 'more_src has _tex2lyx' {
    assert "$xsrc/_tex2lyx" is_file
}
@test 'more_src has _tex4ht' {
    assert "$xsrc/_tex4ht" is_file
}
@test 'more_src has _texlab' {
    assert "$xsrc/_texlab" is_file
}
@test 'more_src has _texmaker' {
    assert "$xsrc/_texmaker" is_file
}
@test 'more_src has _texstudio' {
    assert "$xsrc/_texstudio" is_file
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
@test 'more_src has _tftpd-hpa' {
    assert "$xsrc/_tftpd-hpa" is_file
}
@test 'more_src has _tgenv' {
    assert "$xsrc/_tgenv" is_file
}
@test 'more_src has _tgpt' {
    assert "$xsrc/_tgpt" is_file
}
@test 'more_src has _tgswitch' {
    assert "$xsrc/_tgswitch" is_file
}
@test 'more_src has _tgtadm' {
    assert "$xsrc/_tgtadm" is_file
}
@test 'more_src has _tgtd' {
    assert "$xsrc/_tgtd" is_file
}
@test 'more_src has _tgtimg' {
    assert "$xsrc/_tgtimg" is_file
}
@test 'more_src has _tgzd' {
    assert "$xsrc/_tgzd" is_file
}
@test 'more_src has _thanos' {
    assert "$xsrc/_thanos" is_file
}
@test 'more_src has _the_silver_searcher' {
    assert "$xsrc/_the_silver_searcher" is_file
}
@test 'more_src has _thelounge' {
    assert "$xsrc/_thelounge" is_file
}
@test 'more_src has _thonny' {
    assert "$xsrc/_thonny" is_file
}
@test 'more_src has _thinkfan' {
    assert "$xsrc/_thinkfan" is_file
}
@test 'more_src has _throttle' {
    assert "$xsrc/_throttle" is_file
}
@test 'more_src has _thulp' {
    assert "$xsrc/_thulp" is_file
}

@test 'more_src has _thumper' {
    assert "$xsrc/_thumper" is_file
}
@test 'more_src has _thunar' {
    assert "$xsrc/_thunar" is_file
}
@test 'more_src has _tibet' {
    assert "$xsrc/_tibet" is_file
}
@test 'more_src has _tidb' {
    assert "$xsrc/_tidb" is_file
}
@test 'more_src has _tidy-browser' {
    assert "$xsrc/_tidy-browser" is_file
}
@test 'more_src has _tidyp' {
    assert "$xsrc/_tidyp" is_file
}
@test 'more_src has _tiflash' {
    assert "$xsrc/_tiflash" is_file
}
@test 'more_src has _tigervnc-server' {
    assert "$xsrc/_tigervnc-server" is_file
}
@test 'more_src has _tigervncserver' {
    assert "$xsrc/_tigervncserver" is_file
}
@test 'more_src has _tigervncviewer' {
    assert "$xsrc/_tigervncviewer" is_file
}
@test 'more_src has _tigris' {
    assert "$xsrc/_tigris" is_file
}
@test 'more_src has _tilix' {
    assert "$xsrc/_tilix" is_file
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
@test 'more_src has _timewall' {
    assert "$xsrc/_timewall" is_file
}
@test 'more_src has _timg' {
    assert "$xsrc/_timg" is_file
}
@test 'more_src has _timoni' {
    assert "$xsrc/_timoni" is_file
}
@test 'more_src has _tinydns' {
    assert "$xsrc/_tinydns" is_file
}
@test 'more_src has _tinfo' {
    assert "$xsrc/_tinfo" is_file
}
@test 'more_src has _tint' {
    assert "$xsrc/_tint" is_file
}
@test 'more_src has _tinty' {
    assert "$xsrc/_tinty" is_file
}
@test 'more_src has _tinygo' {
    assert "$xsrc/_tinygo" is_file
}
@test 'more_src has _tinyssh' {
    assert "$xsrc/_tinyssh" is_file
}
@test 'more_src has _tinyssh-keygen' {
    assert "$xsrc/_tinyssh-keygen" is_file
}
@test 'more_src has _tiramisu' {
    assert "$xsrc/_tiramisu" is_file
}
@test 'more_src has _tirith' {
    assert "$xsrc/_tirith" is_file
}
@test 'more_src has _tiup' {
    assert "$xsrc/_tiup" is_file
}
@test 'more_src has _tldr' {
    assert "$xsrc/_tldr" is_file
}
@test 'more_src has _tlf' {
    assert "$xsrc/_tlf" is_file
}
@test 'more_src has _tlp-pcilist' {
    assert "$xsrc/_tlp-pcilist" is_file
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
@test 'more_src has _tlp-usblist' {
    assert "$xsrc/_tlp-usblist" is_file
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
@test 'more_src has _tmsu' {
    assert "$xsrc/_tmsu" is_file
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
@test 'more_src has _to-html' {
    assert "$xsrc/_to-html" is_file
}
@test 'more_src has _tobs' {
    assert "$xsrc/_tobs" is_file
}
@test 'more_src has _todo-scan' {
    assert "$xsrc/_todo-scan" is_file
}

@test 'more_src has _todo-txt' {
    assert "$xsrc/_todo-txt" is_file
}
@test 'more_src has _todoist' {
    assert "$xsrc/_todoist" is_file
}
@test 'more_src has _todoke' {
    assert "$xsrc/_todoke" is_file
}
@test 'more_src has _todoman' {
    assert "$xsrc/_todoman" is_file
}
@test 'more_src has _todors' {
    assert "$xsrc/_todors" is_file
}
@test 'more_src has _tofa' {
    assert "$xsrc/_tofa" is_file
}

@test 'more_src has _tofi' {
    assert "$xsrc/_tofi" is_file
}
@test 'more_src has _tofu' {
    assert "$xsrc/_tofu" is_file
}
@test 'more_src has _toga2' {
    assert "$xsrc/_toga2" is_file
}
@test 'more_src has _toggl' {
    assert "$xsrc/_toggl" is_file
}
@test 'more_src has _toggl.zsh' {
    assert "$xsrc/_toggl.zsh" is_file
}
@test 'more_src has _toktrack' {
    assert "$xsrc/_toktrack" is_file
}
@test 'more_src has _tom' {
    assert "$xsrc/_tom" is_file
}
@test 'more_src has _tomat' {
    assert "$xsrc/_tomat" is_file
}
@test 'more_src has _tomb' {
    assert "$xsrc/_tomb" is_file
}
@test 'more_src has _tomcat-init' {
    assert "$xsrc/_tomcat-init" is_file
}
@test 'more_src has _tombi' {
    assert "$xsrc/_tombi" is_file
}
@test 'more_src has _toolame' {
    assert "$xsrc/_toolame" is_file
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
@test 'more_src has _torc' {
    assert "$xsrc/_torc" is_file
}
@test 'more_src has _torcs' {
    assert "$xsrc/_torcs" is_file
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
@test 'more_src has _tracejob' {
    assert "$xsrc/_tracejob" is_file
}
@test 'more_src has _trackma' {
    assert "$xsrc/_trackma" is_file
}
@test 'more_src has _traefik' {
    assert "$xsrc/_traefik" is_file
}
@test 'more_src has _trafficserver' {
    assert "$xsrc/_trafficserver" is_file
}
@test 'more_src has _transcrypt' {
    assert "$xsrc/_transcrypt" is_file
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
@test 'more_src has _trellis' {
    assert "$xsrc/_trellis" is_file
}
@test 'more_src has _triage' {
    assert "$xsrc/_triage" is_file
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
@test 'more_src has _tritonserver' {
    assert "$xsrc/_tritonserver" is_file
}
@test 'more_src has _trivy' {
    assert "$xsrc/_trivy" is_file
}
@test 'more_src has _trojita' {
    assert "$xsrc/_trojita" is_file
}
@test 'more_src has _trop-cli' {
    assert "$xsrc/_trop-cli" is_file
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
@test 'more_src has _tscribe' {
    assert "$xsrc/_tscribe" is_file
}

@test 'more_src has _tsh' {
    assert "$xsrc/_tsh" is_file
}
@test 'more_src has _tsk' {
    assert "$xsrc/_tsk" is_file
}
@test 'more_src has _tsocks' {
    assert "$xsrc/_tsocks" is_file
}
@test 'more_src has _tsp' {
    assert "$xsrc/_tsp" is_file
}
@test 'more_src has _tspin' {
    assert "$xsrc/_tspin" is_file
}
@test 'more_src has _tst' {
    assert "$xsrc/_tst" is_file
}
@test 'more_src has _tsup' {
    assert "$xsrc/_tsup" is_file
}
@test 'more_src has _ttftodvi' {
    assert "$xsrc/_ttftodvi" is_file
}
@test 'more_src has _ttyd' {
    assert "$xsrc/_ttyd" is_file
}
@test 'more_src has _ttygif' {
    assert "$xsrc/_ttygif" is_file
}
@test 'more_src has _ttyper' {
    assert "$xsrc/_ttyper" is_file
}
@test 'more_src has _ttyplot' {
    assert "$xsrc/_ttyplot" is_file
}
@test 'more_src has _ttypo' {
    assert "$xsrc/_ttypo" is_file
}
@test 'more_src has _tuc' {
    assert "$xsrc/_tuc" is_file
}
@test 'more_src has _tubeup' {
    assert "$xsrc/_tubeup" is_file
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
@test 'more_src has _turborepo' {
    assert "$xsrc/_turborepo" is_file
}
@test 'more_src has _turso' {
    assert "$xsrc/_turso" is_file
}
@test 'more_src has _tusk' {
    assert "$xsrc/_tusk" is_file
}
@test 'more_src has _tux' {
    assert "$xsrc/_tux" is_file
}
@test 'more_src has _tuxracer' {
    assert "$xsrc/_tuxracer" is_file
}
@test 'more_src has _tvtime' {
    assert "$xsrc/_tvtime" is_file
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
@test 'more_src has _twint' {
    assert "$xsrc/_twint" is_file
}
@test 'more_src has _twips' {
    assert "$xsrc/_twips" is_file
}
@test 'more_src has _twtxt' {
    assert "$xsrc/_twtxt" is_file
}
@test 'more_src has _txt2tags' {
    assert "$xsrc/_txt2tags" is_file
}
@test 'more_src has _txt2man' {
    assert "$xsrc/_txt2man" is_file
}
@test 'more_src has _tyedev' {
    assert "$xsrc/_tyedev" is_file
}
@test 'more_src has _typeshare' {
    assert "$xsrc/_typeshare" is_file
}
@test 'more_src has _typical' {
    assert "$xsrc/_typical" is_file
}
@test 'more_src has _typos' {
    assert "$xsrc/_typos" is_file
}
@test 'more_src has _typst' {
    assert "$xsrc/_typst" is_file
}
@test 'more_src has _typst-lsp' {
    assert "$xsrc/_typst-lsp" is_file
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
@test 'more_src has _ubt' {
    assert "$xsrc/_ubt" is_file
}
@test 'more_src has _ubxtool' {
    assert "$xsrc/_ubxtool" is_file
}

@test 'more_src has _uci' {
    assert "$xsrc/_uci" is_file
}
@test 'more_src has _ucl-bin' {
    assert "$xsrc/_ucl-bin" is_file
}
@test 'more_src has _udiskie-umount' {
    assert "$xsrc/_udiskie-umount" is_file
}
@test 'more_src has _udisks2' {
    assert "$xsrc/_udisks2" is_file
}
@test 'more_src has _udisksd' {
    assert "$xsrc/_udisksd" is_file
}
@test 'more_src has _udp-receiver' {
    assert "$xsrc/_udp-receiver" is_file
}
@test 'more_src has _udp-sender' {
    assert "$xsrc/_udp-sender" is_file
}
@test 'more_src has _udp2raw_mp' {
    assert "$xsrc/_udp2raw_mp" is_file
}
@test 'more_src has _ufraw' {
    assert "$xsrc/_ufraw" is_file
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
@test 'more_src has _ugrep-indexer' {
    assert "$xsrc/_ugrep-indexer" is_file
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
@test 'more_src has _umount.cifs' {
    assert "$xsrc/_umount.cifs" is_file
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
@test 'more_src has _unrealircd' {
    assert "$xsrc/_unrealircd" is_file
}
@test 'more_src has _unrtf' {
    assert "$xsrc/_unrtf" is_file
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
@test 'more_src has _uplare' {
    assert "$xsrc/_uplare" is_file
}
@test 'more_src has _upsc' {
    assert "$xsrc/_upsc" is_file
}
@test 'more_src has _upscmd' {
    assert "$xsrc/_upscmd" is_file
}
@test 'more_src has _upsd' {
    assert "$xsrc/_upsd" is_file
}
@test 'more_src has _upsmon' {
    assert "$xsrc/_upsmon" is_file
}
@test 'more_src has _upterm' {
    assert "$xsrc/_upterm" is_file
}
@test 'more_src has _uri-encode' {
    assert "$xsrc/_uri-encode" is_file
}
@test 'more_src has _urxvt-cli' {
    assert "$xsrc/_urxvt-cli" is_file
}
@test 'more_src has _urxvtcd' {
    assert "$xsrc/_urxvtcd" is_file
}
@test 'more_src has _urlview' {
    assert "$xsrc/_urlview" is_file
}
@test 'more_src has _usacloud' {
    assert "$xsrc/_usacloud" is_file
}
@test 'more_src has _usage' {
    assert "$xsrc/_usage" is_file
}
@test 'more_src has _usbguard' {
    assert "$xsrc/_usbguard" is_file
}
@test 'more_src has _usbguard-applet' {
    assert "$xsrc/_usbguard-applet" is_file
}
@test 'more_src has _usbreset' {
    assert "$xsrc/_usbreset" is_file
}
@test 'more_src has _usbrip' {
    assert "$xsrc/_usbrip" is_file
}
@test 'more_src has _usql' {
    assert "$xsrc/_usql" is_file
}
@test 'more_src has _utwifi' {
    assert "$xsrc/_utwifi" is_file
}
@test 'more_src has _uwsm' {
    assert "$xsrc/_uwsm" is_file
}
@test 'more_src has _uu-arch' {
    assert "$xsrc/_uu-arch" is_file
}
@test 'more_src has _uu-b2sum' {
    assert "$xsrc/_uu-b2sum" is_file
}
@test 'more_src has _uu-base32' {
    assert "$xsrc/_uu-base32" is_file
}
@test 'more_src has _uu-base64' {
    assert "$xsrc/_uu-base64" is_file
}
@test 'more_src has _uu-basename' {
    assert "$xsrc/_uu-basename" is_file
}
@test 'more_src has _uu-basenc' {
    assert "$xsrc/_uu-basenc" is_file
}
@test 'more_src has _uu-cat' {
    assert "$xsrc/_uu-cat" is_file
}
@test 'more_src has _uu-chgrp' {
    assert "$xsrc/_uu-chgrp" is_file
}
@test 'more_src has _uu-chmod' {
    assert "$xsrc/_uu-chmod" is_file
}
@test 'more_src has _uu-chown' {
    assert "$xsrc/_uu-chown" is_file
}
@test 'more_src has _uu-chroot' {
    assert "$xsrc/_uu-chroot" is_file
}
@test 'more_src has _uu-cksum' {
    assert "$xsrc/_uu-cksum" is_file
}
@test 'more_src has _uu-comm' {
    assert "$xsrc/_uu-comm" is_file
}
@test 'more_src has _uu-coreutils' {
    assert "$xsrc/_uu-coreutils" is_file
}
@test 'more_src has _uu-cp' {
    assert "$xsrc/_uu-cp" is_file
}
@test 'more_src has _uu-csplit' {
    assert "$xsrc/_uu-csplit" is_file
}
@test 'more_src has _uu-cut' {
    assert "$xsrc/_uu-cut" is_file
}
@test 'more_src has _uu-date' {
    assert "$xsrc/_uu-date" is_file
}
@test 'more_src has _uu-dd' {
    assert "$xsrc/_uu-dd" is_file
}
@test 'more_src has _uu-df' {
    assert "$xsrc/_uu-df" is_file
}
@test 'more_src has _uu-dir' {
    assert "$xsrc/_uu-dir" is_file
}
@test 'more_src has _uu-dircolors' {
    assert "$xsrc/_uu-dircolors" is_file
}
@test 'more_src has _uu-dirname' {
    assert "$xsrc/_uu-dirname" is_file
}
@test 'more_src has _uu-du' {
    assert "$xsrc/_uu-du" is_file
}
@test 'more_src has _uu-echo' {
    assert "$xsrc/_uu-echo" is_file
}
@test 'more_src has _uu-env' {
    assert "$xsrc/_uu-env" is_file
}
@test 'more_src has _uu-expand' {
    assert "$xsrc/_uu-expand" is_file
}
@test 'more_src has _uu-expr' {
    assert "$xsrc/_uu-expr" is_file
}
@test 'more_src has _uu-factor' {
    assert "$xsrc/_uu-factor" is_file
}
@test 'more_src has _uu-false' {
    assert "$xsrc/_uu-false" is_file
}
@test 'more_src has _uu-fmt' {
    assert "$xsrc/_uu-fmt" is_file
}
@test 'more_src has _uu-fold' {
    assert "$xsrc/_uu-fold" is_file
}
@test 'more_src has _uu-groups' {
    assert "$xsrc/_uu-groups" is_file
}
@test 'more_src has _uu-head' {
    assert "$xsrc/_uu-head" is_file
}
@test 'more_src has _uu-hostid' {
    assert "$xsrc/_uu-hostid" is_file
}
@test 'more_src has _uu-hostname' {
    assert "$xsrc/_uu-hostname" is_file
}
@test 'more_src has _uu-id' {
    assert "$xsrc/_uu-id" is_file
}
@test 'more_src has _uu-install' {
    assert "$xsrc/_uu-install" is_file
}
@test 'more_src has _uu-join' {
    assert "$xsrc/_uu-join" is_file
}
@test 'more_src has _uu-kill' {
    assert "$xsrc/_uu-kill" is_file
}
@test 'more_src has _uu-link' {
    assert "$xsrc/_uu-link" is_file
}
@test 'more_src has _uu-ln' {
    assert "$xsrc/_uu-ln" is_file
}
@test 'more_src has _uu-logname' {
    assert "$xsrc/_uu-logname" is_file
}
@test 'more_src has _uu-ls' {
    assert "$xsrc/_uu-ls" is_file
}
@test 'more_src has _uu-md5sum' {
    assert "$xsrc/_uu-md5sum" is_file
}
@test 'more_src has _uu-mkdir' {
    assert "$xsrc/_uu-mkdir" is_file
}
@test 'more_src has _uu-mkfifo' {
    assert "$xsrc/_uu-mkfifo" is_file
}
@test 'more_src has _uu-mknod' {
    assert "$xsrc/_uu-mknod" is_file
}
@test 'more_src has _uu-mktemp' {
    assert "$xsrc/_uu-mktemp" is_file
}
@test 'more_src has _uu-more' {
    assert "$xsrc/_uu-more" is_file
}
@test 'more_src has _uu-mv' {
    assert "$xsrc/_uu-mv" is_file
}
@test 'more_src has _uu-nice' {
    assert "$xsrc/_uu-nice" is_file
}
@test 'more_src has _uu-nl' {
    assert "$xsrc/_uu-nl" is_file
}
@test 'more_src has _uu-nohup' {
    assert "$xsrc/_uu-nohup" is_file
}
@test 'more_src has _uu-nproc' {
    assert "$xsrc/_uu-nproc" is_file
}
@test 'more_src has _uu-numfmt' {
    assert "$xsrc/_uu-numfmt" is_file
}
@test 'more_src has _uu-od' {
    assert "$xsrc/_uu-od" is_file
}
@test 'more_src has _uu-paste' {
    assert "$xsrc/_uu-paste" is_file
}
@test 'more_src has _uu-pathchk' {
    assert "$xsrc/_uu-pathchk" is_file
}
@test 'more_src has _uu-pinky' {
    assert "$xsrc/_uu-pinky" is_file
}
@test 'more_src has _uu-pr' {
    assert "$xsrc/_uu-pr" is_file
}
@test 'more_src has _uu-printenv' {
    assert "$xsrc/_uu-printenv" is_file
}
@test 'more_src has _uu-printf' {
    assert "$xsrc/_uu-printf" is_file
}
@test 'more_src has _uu-ptx' {
    assert "$xsrc/_uu-ptx" is_file
}
@test 'more_src has _uu-pwd' {
    assert "$xsrc/_uu-pwd" is_file
}
@test 'more_src has _uu-readlink' {
    assert "$xsrc/_uu-readlink" is_file
}
@test 'more_src has _uu-realpath' {
    assert "$xsrc/_uu-realpath" is_file
}
@test 'more_src has _uu-rm' {
    assert "$xsrc/_uu-rm" is_file
}
@test 'more_src has _uu-rmdir' {
    assert "$xsrc/_uu-rmdir" is_file
}
@test 'more_src has _uu-seq' {
    assert "$xsrc/_uu-seq" is_file
}
@test 'more_src has _uu-sha1sum' {
    assert "$xsrc/_uu-sha1sum" is_file
}
@test 'more_src has _uu-sha224sum' {
    assert "$xsrc/_uu-sha224sum" is_file
}
@test 'more_src has _uu-sha256sum' {
    assert "$xsrc/_uu-sha256sum" is_file
}
@test 'more_src has _uu-sha384sum' {
    assert "$xsrc/_uu-sha384sum" is_file
}
@test 'more_src has _uu-sha512sum' {
    assert "$xsrc/_uu-sha512sum" is_file
}
@test 'more_src has _uu-shred' {
    assert "$xsrc/_uu-shred" is_file
}
@test 'more_src has _uu-shuf' {
    assert "$xsrc/_uu-shuf" is_file
}
@test 'more_src has _uu-sleep' {
    assert "$xsrc/_uu-sleep" is_file
}
@test 'more_src has _uu-sort' {
    assert "$xsrc/_uu-sort" is_file
}
@test 'more_src has _uu-split' {
    assert "$xsrc/_uu-split" is_file
}
@test 'more_src has _uu-stat' {
    assert "$xsrc/_uu-stat" is_file
}
@test 'more_src has _uu-stdbuf' {
    assert "$xsrc/_uu-stdbuf" is_file
}
@test 'more_src has _uu-stty' {
    assert "$xsrc/_uu-stty" is_file
}
@test 'more_src has _uu-sum' {
    assert "$xsrc/_uu-sum" is_file
}
@test 'more_src has _uu-sync' {
    assert "$xsrc/_uu-sync" is_file
}
@test 'more_src has _uu-tac' {
    assert "$xsrc/_uu-tac" is_file
}
@test 'more_src has _uu-tail' {
    assert "$xsrc/_uu-tail" is_file
}
@test 'more_src has _uu-tee' {
    assert "$xsrc/_uu-tee" is_file
}
@test 'more_src has _uu-test' {
    assert "$xsrc/_uu-test" is_file
}
@test 'more_src has _uu-timeout' {
    assert "$xsrc/_uu-timeout" is_file
}
@test 'more_src has _uu-touch' {
    assert "$xsrc/_uu-touch" is_file
}
@test 'more_src has _uu-tr' {
    assert "$xsrc/_uu-tr" is_file
}
@test 'more_src has _uu-true' {
    assert "$xsrc/_uu-true" is_file
}
@test 'more_src has _uu-truncate' {
    assert "$xsrc/_uu-truncate" is_file
}
@test 'more_src has _uu-tsort' {
    assert "$xsrc/_uu-tsort" is_file
}
@test 'more_src has _uu-tty' {
    assert "$xsrc/_uu-tty" is_file
}
@test 'more_src has _uu-uname' {
    assert "$xsrc/_uu-uname" is_file
}
@test 'more_src has _uu-unexpand' {
    assert "$xsrc/_uu-unexpand" is_file
}
@test 'more_src has _uu-uniq' {
    assert "$xsrc/_uu-uniq" is_file
}
@test 'more_src has _uu-unlink' {
    assert "$xsrc/_uu-unlink" is_file
}
@test 'more_src has _uu-uptime' {
    assert "$xsrc/_uu-uptime" is_file
}
@test 'more_src has _uu-users' {
    assert "$xsrc/_uu-users" is_file
}
@test 'more_src has _uu-vdir' {
    assert "$xsrc/_uu-vdir" is_file
}
@test 'more_src has _uu-wc' {
    assert "$xsrc/_uu-wc" is_file
}
@test 'more_src has _uu-who' {
    assert "$xsrc/_uu-who" is_file
}
@test 'more_src has _uu-whoami' {
    assert "$xsrc/_uu-whoami" is_file
}
@test 'more_src has _uu-yes' {
    assert "$xsrc/_uu-yes" is_file
}
@test 'more_src has _uuagc' {
    assert "$xsrc/_uuagc" is_file
}
@test 'more_src has _uub.zsh' {
    assert "$xsrc/_uub.zsh" is_file
}
@test 'more_src has _v' {
    assert "$xsrc/_v" is_file
}
@test 'more_src has _v4lctl' {
    assert "$xsrc/_v4lctl" is_file
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
@test 'more_src has _varnishtest' {
    assert "$xsrc/_varnishtest" is_file
}
@test 'more_src has _varnishtop' {
    assert "$xsrc/_varnishtop" is_file
}
@test 'more_src has _vault' {
    assert "$xsrc/_vault" is_file
}
@test 'more_src has _vault-tasks-tui' {
    assert "$xsrc/_vault-tasks-tui" is_file
}
@test 'more_src has _vbam' {
    assert "$xsrc/_vbam" is_file
}
@test 'more_src has _vboxautostart' {
    assert "$xsrc/_vboxautostart" is_file
}
@test 'more_src has _vboxballoonctrl' {
    assert "$xsrc/_vboxballoonctrl" is_file
}
@test 'more_src has _vboxdtrace' {
    assert "$xsrc/_vboxdtrace" is_file
}
@test 'more_src has _vboximg-mount' {
    assert "$xsrc/_vboximg-mount" is_file
}
@test 'more_src has _vboxsdl' {
    assert "$xsrc/_vboxsdl" is_file
}
@test 'more_src has _vcfkit' {
    assert "$xsrc/_vcfkit" is_file
}
@test 'more_src has _vcluster' {
    assert "$xsrc/_vcluster" is_file
}
@test 'more_src has _vconfig' {
    assert "$xsrc/_vconfig" is_file
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
@test 'more_src has _veles' {
    assert "$xsrc/_veles" is_file
}
@test 'more_src has _velesdb' {
    assert "$xsrc/_velesdb" is_file
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
@test 'more_src has _verdandi' {
    assert "$xsrc/_verdandi" is_file
}
@test 'more_src has _vig_optimize' {
    assert "$xsrc/_vig_optimize" is_file
}
@test 'more_src has _veracrypt' {
    assert "$xsrc/_veracrypt" is_file
}
@test 'more_src has _vercel' {
    assert "$xsrc/_vercel" is_file
}
@test 'more_src has _verg' {
    assert "$xsrc/_verg" is_file
}
@test 'more_src has _verible-verilog-format' {
    assert "$xsrc/_verible-verilog-format" is_file
}
@test 'more_src has _verible-verilog-syntax' {
    assert "$xsrc/_verible-verilog-syntax" is_file
}
@test 'more_src has _vership' {
    assert "$xsrc/_vership" is_file
}
@test 'more_src has _vertica' {
    assert "$xsrc/_vertica" is_file
}
@test 'more_src has _vet' {
    assert "$xsrc/_vet" is_file
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
@test 'more_src has _vidcutter' {
    assert "$xsrc/_vidcutter" is_file
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
@test 'more_src has _viking' {
    assert "$xsrc/_viking" is_file
}
@test 'more_src has _villain' {
    assert "$xsrc/_villain" is_file
}
@test 'more_src has _vimb' {
    assert "$xsrc/_vimb" is_file
}
@test 'more_src has _vimcat' {
    assert "$xsrc/_vimcat" is_file
}
@test 'more_src has _vimpager' {
    assert "$xsrc/_vimpager" is_file
}
@test 'more_src has _vipe' {
    assert "$xsrc/_vipe" is_file
}
@test 'more_src has _viper' {
    assert "$xsrc/_viper" is_file
}
@test 'more_src has _virt-convert' {
    assert "$xsrc/_virt-convert" is_file
}
@test 'more_src has _virtiofsd' {
    assert "$xsrc/_virtiofsd" is_file
}
@test 'more_src has _virtualbox' {
    assert "$xsrc/_virtualbox" is_file
}
@test 'more_src has _vkconfig' {
    assert "$xsrc/_vkconfig" is_file
}
@test 'more_src has _vkcube' {
    assert "$xsrc/_vkcube" is_file
}
@test 'more_src has _vkmark' {
    assert "$xsrc/_vkmark" is_file
}
@test 'more_src has _vkrunner' {
    assert "$xsrc/_vkrunner" is_file
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
@test 'more_src has _vlogger' {
    assert "$xsrc/_vlogger" is_file
}
@test 'more_src has _vlt' {
    assert "$xsrc/_vlt" is_file
}
@test 'more_src has _vm_stat' {
    assert "$xsrc/_vm_stat" is_file
}
@test 'more_src has _vmd' {
    assert "$xsrc/_vmd" is_file
}
@test 'more_src has _vmvpn' {
    assert "$xsrc/_vmvpn" is_file
}
@test 'more_src has _vmware' {
    assert "$xsrc/_vmware" is_file
}
@test 'more_src has _vmware-toolbox-cmd' {
    assert "$xsrc/_vmware-toolbox-cmd" is_file
}
@test 'more_src has _vrrpd' {
    assert "$xsrc/_vrrpd" is_file
}
@test 'more_src has _vnc4server' {
    assert "$xsrc/_vnc4server" is_file
}
@test 'more_src has _volumeicon' {
    assert "$xsrc/_volumeicon" is_file
}
@test 'more_src has _volt' {
    assert "$xsrc/_volt" is_file
}
@test 'more_src has _volta' {
    assert "$xsrc/_volta" is_file
}
@test 'more_src has _vorbisgain' {
    assert "$xsrc/_vorbisgain" is_file
}
@test 'more_src has _vortix' {
    assert "$xsrc/_vortix" is_file
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
@test 'more_src has _vsftpd-init' {
    assert "$xsrc/_vsftpd-init" is_file
}
@test 'more_src has _vspcli' {
    assert "$xsrc/_vspcli" is_file
}
@test 'more_src has _vtctl' {
    assert "$xsrc/_vtctl" is_file
}
@test 'more_src has _vultr' {
    assert "$xsrc/_vultr" is_file
}
@test 'more_src has _vunnel' {
    assert "$xsrc/_vunnel" is_file
}
@test 'more_src has _wails' {
    assert "$xsrc/_wails" is_file
}
@test 'more_src has _wait4path' {
    assert "$xsrc/_wait4path" is_file
}
@test 'more_src has _wait4x' {
    assert "$xsrc/_wait4x" is_file
}
@test 'more_src has _wakatime' {
    assert "$xsrc/_wakatime" is_file
}
@test 'more_src has _wake' {
    assert "$xsrc/_wake" is_file
}
@test 'more_src has _wakelan' {
    assert "$xsrc/_wakelan" is_file
}
@test 'more_src has _walk' {
    assert "$xsrc/_walk" is_file
}
@test 'more_src has _warp-cli' {
    assert "$xsrc/_warp-cli" is_file
}
@test 'more_src has _warp-terminal' {
    assert "$xsrc/_warp-terminal" is_file
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
@test 'more_src has _watchfrr' {
    assert "$xsrc/_watchfrr" is_file
}
@test 'more_src has _watchexec' {
    assert "$xsrc/_watchexec" is_file
}
@test 'more_src has _watchman-diag' {
    assert "$xsrc/_watchman-diag" is_file
}
@test 'more_src has _waterfox' {
    assert "$xsrc/_waterfox" is_file
}
@test 'more_src has _watchwoman' {
    assert "$xsrc/_watchwoman" is_file
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
@test 'more_src has _wayle' {
    assert "$xsrc/_wayle" is_file
}
@test 'more_src has _waypoint' {
    assert "$xsrc/_waypoint" is_file
}
@test 'more_src has _wayst' {
    assert "$xsrc/_wayst" is_file
}
@test 'more_src has _wazero' {
    assert "$xsrc/_wazero" is_file
}
@test 'more_src has _wazuh' {
    assert "$xsrc/_wazuh" is_file
}
@test 'more_src has _wazuh-control' {
    assert "$xsrc/_wazuh-control" is_file
}
@test 'more_src has _wcalc' {
    assert "$xsrc/_wcalc" is_file
}
@test 'more_src has _wdocker' {
    assert "$xsrc/_wdocker" is_file
}
@test 'more_src has _webalizer' {
    assert "$xsrc/_webalizer" is_file
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
@test 'more_src has _weeder' {
    assert "$xsrc/_weeder" is_file
}
@test 'more_src has _weighttp' {
    assert "$xsrc/_weighttp" is_file
}
@test 'more_src has _wesnoth' {
    assert "$xsrc/_wesnoth" is_file
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
@test 'more_src has _wflinfo' {
    assert "$xsrc/_wflinfo" is_file
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
@test 'more_src has _wicd-cli' {
    assert "$xsrc/_wicd-cli" is_file
}
@test 'more_src has _wicd-client' {
    assert "$xsrc/_wicd-client" is_file
}
@test 'more_src has _wicd-curses' {
    assert "$xsrc/_wicd-curses" is_file
}
@test 'more_src has _wicd-gtk' {
    assert "$xsrc/_wicd-gtk" is_file
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
@test 'more_src has _wl-clipboard-cli' {
    assert "$xsrc/_wl-clipboard-cli" is_file
}
@test 'more_src has _wl-copy' {
    assert "$xsrc/_wl-copy" is_file
}
@test 'more_src has _wl-paste' {
    assert "$xsrc/_wl-paste" is_file
}
@test 'more_src has _wl-present' {
    assert "$xsrc/_wl-present" is_file
}
@test 'more_src has _wlr-randr' {
    assert "$xsrc/_wlr-randr" is_file
}
@test 'more_src has _wmcpuload' {
    assert "$xsrc/_wmcpuload" is_file
}
@test 'more_src has _wmnet' {
    assert "$xsrc/_wmnet" is_file
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
@test 'more_src has _wondershaper' {
    assert "$xsrc/_wondershaper" is_file
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
@test 'more_src has _wpactl' {
    assert "$xsrc/_wpactl" is_file
}
@test 'more_src has _wpctl' {
    assert "$xsrc/_wpctl" is_file
}
@test 'more_src has _wput' {
    assert "$xsrc/_wput" is_file
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
@test 'more_src has _ws-session' {
    assert "$xsrc/_ws-session" is_file
}
@test 'more_src has _wsjtx' {
    assert "$xsrc/_wsjtx" is_file
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
@test 'more_src has _wu-ftpd' {
    assert "$xsrc/_wu-ftpd" is_file
}
@test 'more_src has _wvpack' {
    assert "$xsrc/_wvpack" is_file
}
@test 'more_src has _wxmaxima' {
    assert "$xsrc/_wxmaxima" is_file
}
@test 'more_src has _x-cmd' {
    assert "$xsrc/_x-cmd" is_file
}
@test 'more_src has _x.py' {
    assert "$xsrc/_x.py" is_file
}
@test 'more_src has _x2goclient' {
    assert "$xsrc/_x2goclient" is_file
}
@test 'more_src has _x2goserver' {
    assert "$xsrc/_x2goserver" is_file
}
@test 'more_src has _x2vnc' {
    assert "$xsrc/_x2vnc" is_file
}
@test 'more_src has _xastir' {
    assert "$xsrc/_xastir" is_file
}
@test 'more_src has _xbar' {
    assert "$xsrc/_xbar" is_file
}
@test 'more_src has _xbindkeys' {
    assert "$xsrc/_xbindkeys" is_file
}
@test 'more_src has _xbps-alternatives' {
    assert "$xsrc/_xbps-alternatives" is_file
}
@test 'more_src has _xbps-create' {
    assert "$xsrc/_xbps-create" is_file
}
@test 'more_src has _xbps-fbulk' {
    assert "$xsrc/_xbps-fbulk" is_file
}
@test 'more_src has _xbps-reconfigure' {
    assert "$xsrc/_xbps-reconfigure" is_file
}
@test 'more_src has _xbps-uchroot' {
    assert "$xsrc/_xbps-uchroot" is_file
}
@test 'more_src has _xbps-uunshare' {
    assert "$xsrc/_xbps-uunshare" is_file
}
@test 'more_src has _xc' {
    assert "$xsrc/_xc" is_file
}
@test 'more_src has _xcowsay' {
    assert "$xsrc/_xcowsay" is_file
}
@test 'more_src has _xcaddy' {
    assert "$xsrc/_xcaddy" is_file
}
@test 'more_src has _xchat' {
    assert "$xsrc/_xchat" is_file
}
@test 'more_src has _xcp' {
    assert "$xsrc/_xcp" is_file
}
@test 'more_src has _xcstrings-mcp' {
    assert "$xsrc/_xcstrings-mcp" is_file
}
@test 'more_src has _xdg-ninja' {
    assert "$xsrc/_xdg-ninja" is_file
}
@test 'more_src has _xemacs' {
    assert "$xsrc/_xemacs" is_file
}
@test 'more_src has _xenpm' {
    assert "$xsrc/_xenpm" is_file
}
@test 'more_src has _xenstored' {
    assert "$xsrc/_xenstored" is_file
}
@test 'more_src has _xentop' {
    assert "$xsrc/_xentop" is_file
}
@test 'more_src has _xentrace' {
    assert "$xsrc/_xentrace" is_file
}
@test 'more_src has _xeol' {
    assert "$xsrc/_xeol" is_file
}
@test 'more_src has _xfce4-clipman' {
    assert "$xsrc/_xfce4-clipman" is_file
}
@test 'more_src has _xfce4-notifyd' {
    assert "$xsrc/_xfce4-notifyd" is_file
}
@test 'more_src has _xfconfd' {
    assert "$xsrc/_xfconfd" is_file
}
@test 'more_src has _xfishtank' {
    assert "$xsrc/_xfishtank" is_file
}
@test 'more_src has _xfr' {
    assert "$xsrc/_xfr" is_file
}
@test 'more_src has _xgps' {
    assert "$xsrc/_xgps" is_file
}
@test 'more_src has _xgpsspeed' {
    assert "$xsrc/_xgpsspeed" is_file
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
@test 'more_src has _xiphos' {
    assert "$xsrc/_xiphos" is_file
}
@test 'more_src has _xkbinfo' {
    assert "$xsrc/_xkbinfo" is_file
}
@test 'more_src has _xkblayout-state' {
    assert "$xsrc/_xkblayout-state" is_file
}
@test 'more_src has _xkbutils' {
    assert "$xsrc/_xkbutils" is_file
}
@test 'more_src has _xlockmore' {
    assert "$xsrc/_xlockmore" is_file
}
@test 'more_src has _xlsx2csv' {
    assert "$xsrc/_xlsx2csv" is_file
}
@test 'more_src has _xmake' {
    assert "$xsrc/_xmake" is_file
}
@test 'more_src has _xmeters' {
    assert "$xsrc/_xmeters" is_file
}
@test 'more_src has _xmgrace' {
    assert "$xsrc/_xmgrace" is_file
}
@test 'more_src has _xml2man' {
    assert "$xsrc/_xml2man" is_file
}
@test 'more_src has _xmlif' {
    assert "$xsrc/_xmlif" is_file
}
@test 'more_src has _xmoto' {
    assert "$xsrc/_xmoto" is_file
}
@test 'more_src has _xnec2c' {
    assert "$xsrc/_xnec2c" is_file
}
@test 'more_src has _xolint' {
    assert "$xsrc/_xolint" is_file
}
@test 'more_src has _xonsh' {
    assert "$xsrc/_xonsh" is_file
}
@test 'more_src has _xournalpp' {
    assert "$xsrc/_xournalpp" is_file
}
@test 'more_src has _xpenguins' {
    assert "$xsrc/_xpenguins" is_file
}
@test 'more_src has _xpipe' {
    assert "$xsrc/_xpipe" is_file
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
@test 'more_src has _xqilla' {
    assert "$xsrc/_xqilla" is_file
}
@test 'more_src has _xr' {
    assert "$xsrc/_xr" is_file
}

@test 'more_src has _xray' {
    assert "$xsrc/_xray" is_file
}
@test 'more_src has _xrdesktop' {
    assert "$xsrc/_xrdesktop" is_file
}
@test 'more_src has _xsb' {
    assert "$xsrc/_xsb" is_file
}
@test 'more_src has _xsnow' {
    assert "$xsrc/_xsnow" is_file
}
@test 'more_src has _xsv' {
    assert "$xsrc/_xsv" is_file
}
@test 'more_src has _xsv2' {
    assert "$xsrc/_xsv2" is_file
}
@test 'more_src has _xsvfmt' {
    assert "$xsrc/_xsvfmt" is_file
}
@test 'more_src has _xtruss' {
    assert "$xsrc/_xtruss" is_file
}
@test 'more_src has _xwallpaper' {
    assert "$xsrc/_xwallpaper" is_file
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
@test 'more_src has _ydotoold' {
    assert "$xsrc/_ydotoold" is_file
}
@test 'more_src has _yabb' {
    assert "$xsrc/_yabb" is_file
}
@test 'more_src has _yacron' {
    assert "$xsrc/_yacron" is_file
}
@test 'more_src has _yadm' {
    assert "$xsrc/_yadm" is_file
}
@test 'more_src has _yamlfmt' {
    assert "$xsrc/_yamlfmt" is_file
}
@test 'more_src has _yantrikclaw' {
    assert "$xsrc/_yantrikclaw" is_file
}
@test 'more_src has _yaourt' {
    assert "$xsrc/_yaourt" is_file
}
@test 'more_src has _yay' {
    assert "$xsrc/_yay" is_file
}
@test 'more_src has _yayo' {
    assert "$xsrc/_yayo" is_file
}
@test 'more_src has _yazi' {
    assert "$xsrc/_yazi" is_file
}
@test 'more_src has _yfm' {
    assert "$xsrc/_yfm" is_file
}
@test 'more_src has _yi' {
    assert "$xsrc/_yi" is_file
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
@test 'more_src has _yoshimi' {
    assert "$xsrc/_yoshimi" is_file
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
@test 'more_src has _ytcc' {
    assert "$xsrc/_ytcc" is_file
}
@test 'more_src has _ytfzf' {
    assert "$xsrc/_ytfzf" is_file
}
@test 'more_src has _ytt' {
    assert "$xsrc/_ytt" is_file
}
@test 'more_src has _yui' {
    assert "$xsrc/_yui" is_file
}
@test 'more_src has _yuki-cli' {
    assert "$xsrc/_yuki-cli" is_file
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
@test 'more_src has _zcomet' {
    assert "$xsrc/_zcomet" is_file
}
@test 'more_src has _zdiff' {
    assert "$xsrc/_zdiff" is_file
}
@test 'more_src has _zbarcam' {
    assert "$xsrc/_zbarcam" is_file
}
@test 'more_src has _zebra' {
    assert "$xsrc/_zebra" is_file
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
@test 'more_src has _zen' {
    assert "$xsrc/_zen" is_file
}
@test 'more_src has _zenroom' {
    assert "$xsrc/_zenroom" is_file
}
@test 'more_src has _zerotier-cli' {
    assert "$xsrc/_zerotier-cli" is_file
}
@test 'more_src has _zetten' {
    assert "$xsrc/_zetten" is_file
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
@test 'more_src has _zi' {
    assert "$xsrc/_zi" is_file
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
@test 'more_src has _zinit4' {
    assert "$xsrc/_zinit4" is_file
}
@test 'more_src has _zion' {
    assert "$xsrc/_zion" is_file
}
@test 'more_src has _zipd' {
    assert "$xsrc/_zipd" is_file
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
@test 'more_src has _zls' {
    assert "$xsrc/_zls" is_file
}
@test 'more_src has _znc-buildmod' {
    assert "$xsrc/_znc-buildmod" is_file
}
@test 'more_src has _znc-config' {
    assert "$xsrc/_znc-config" is_file
}
@test 'more_src has _znvm' {
    assert "$xsrc/_znvm" is_file
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
@test 'more_src has _zomboid' {
    assert "$xsrc/_zomboid" is_file
}
@test 'more_src has _zoom' {
    assert "$xsrc/_zoom" is_file
}
@test 'more_src has _zplugin' {
    assert "$xsrc/_zplugin" is_file
}
@test 'more_src has _zpwrExpandStats' {
    assert "$xsrc/_zpwrExpandStats" is_file
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
@test 'more_src has _zsnes' {
    assert "$xsrc/_zsnes" is_file
}
@test 'more_src has _zstdgrep' {
    assert "$xsrc/_zstdgrep" is_file
}
@test 'more_src has _zsteg' {
    assert "$xsrc/_zsteg" is_file
}
@test 'more_src has _ztnet' {
    assert "$xsrc/_ztnet" is_file
}
@test 'more_src has _zuul' {
    assert "$xsrc/_zuul" is_file
}
@test 'more_src has _zynaddsubfx' {
    assert "$xsrc/_zynaddsubfx" is_file
}
@test 'more_src has _zx' {
    assert "$xsrc/_zx" is_file
}
@test 'more_src has _cuyo' {
    assert "$xsrc/_cuyo" is_file
}
@test 'more_src has _cgoban3' {
    assert "$xsrc/_cgoban3" is_file
}
@test 'more_src has _gnugo' {
    assert "$xsrc/_gnugo" is_file
}
@test 'more_src has _kshisen' {
    assert "$xsrc/_kshisen" is_file
}
@test 'more_src has _ksudoku' {
    assert "$xsrc/_ksudoku" is_file
}
@test 'more_src has _kbreakout' {
    assert "$xsrc/_kbreakout" is_file
}
@test 'more_src has _kollision' {
    assert "$xsrc/_kollision" is_file
}
@test 'more_src has _konquest' {
    assert "$xsrc/_konquest" is_file
}
@test 'more_src has _kbounce' {
    assert "$xsrc/_kbounce" is_file
}
@test 'more_src has _ksquares' {
    assert "$xsrc/_ksquares" is_file
}
@test 'more_src has _kanagram' {
    assert "$xsrc/_kanagram" is_file
}
@test 'more_src has _kgeography' {
    assert "$xsrc/_kgeography" is_file
}
@test 'more_src has _ktouch' {
    assert "$xsrc/_ktouch" is_file
}
@test 'more_src has _kalzium' {
    assert "$xsrc/_kalzium" is_file
}
@test 'more_src has _kig' {
    assert "$xsrc/_kig" is_file
}
@test 'more_src has _kbruch' {
    assert "$xsrc/_kbruch" is_file
}
@test 'more_src has _khangman' {
    assert "$xsrc/_khangman" is_file
}
@test 'more_src has _keurocalc' {
    assert "$xsrc/_keurocalc" is_file
}
@test 'more_src has _kjumpingcube' {
    assert "$xsrc/_kjumpingcube" is_file
}
@test 'more_src has _blinken' {
    assert "$xsrc/_blinken" is_file
}
@test 'more_src has _bovo' {
    assert "$xsrc/_bovo" is_file
}
@test 'more_src has _granatier' {
    assert "$xsrc/_granatier" is_file
}
@test 'more_src has _kanjipad' {
    assert "$xsrc/_kanjipad" is_file
}
@test 'more_src has _kdiamond' {
    assert "$xsrc/_kdiamond" is_file
}
@test 'more_src has _palapeli' {
    assert "$xsrc/_palapeli" is_file
}
@test 'more_src has _gcompris-qt' {
    assert "$xsrc/_gcompris-qt" is_file
}
@test 'more_src has _childsplay' {
    assert "$xsrc/_childsplay" is_file
}
@test 'more_src has _tuxmath' {
    assert "$xsrc/_tuxmath" is_file
}
@test 'more_src has _tuxtype' {
    assert "$xsrc/_tuxtype" is_file
}
@test 'more_src has _tuxpaint' {
    assert "$xsrc/_tuxpaint" is_file
}
@test 'more_src has _gbrainy' {
    assert "$xsrc/_gbrainy" is_file
}
@test 'more_src has _marsshooter' {
    assert "$xsrc/_marsshooter" is_file
}
@test 'more_src has _widelands' {
    assert "$xsrc/_widelands" is_file
}
@test 'more_src has _hedgewars' {
    assert "$xsrc/_hedgewars" is_file
}
@test 'more_src has _warzone2100' {
    assert "$xsrc/_warzone2100" is_file
}
@test 'more_src has _warmux' {
    assert "$xsrc/_warmux" is_file
}
@test 'more_src has _freedm' {
    assert "$xsrc/_freedm" is_file
}
@test 'more_src has _freedoom1' {
    assert "$xsrc/_freedoom1" is_file
}
@test 'more_src has _freedoom2' {
    assert "$xsrc/_freedoom2" is_file
}
@test 'more_src has _quake' {
    assert "$xsrc/_quake" is_file
}
@test 'more_src has _springlobby' {
    assert "$xsrc/_springlobby" is_file
}
@test 'more_src has _teeworlds' {
    assert "$xsrc/_teeworlds" is_file
}
@test 'more_src has _kasumi' {
    assert "$xsrc/_kasumi" is_file
}
@test 'more_src has _anthy-agent' {
    assert "$xsrc/_anthy-agent" is_file
}
@test 'more_src has _uim-fep' {
    assert "$xsrc/_uim-fep" is_file
}
@test 'more_src has _uim-sh' {
    assert "$xsrc/_uim-sh" is_file
}
@test 'more_src has _fcitx-skk' {
    assert "$xsrc/_fcitx-skk" is_file
}
@test 'more_src has _ibus-pinyin' {
    assert "$xsrc/_ibus-pinyin" is_file
}
@test 'more_src has _ibus-anthy' {
    assert "$xsrc/_ibus-anthy" is_file
}
@test 'more_src has _mozc-tool' {
    assert "$xsrc/_mozc-tool" is_file
}
@test 'more_src has _rocminfo' {
    assert "$xsrc/_rocminfo" is_file
}
@test 'more_src has _rocm-smi' {
    assert "$xsrc/_rocm-smi" is_file
}
@test 'more_src has _rocm-bandwidth-test' {
    assert "$xsrc/_rocm-bandwidth-test" is_file
}
@test 'more_src has _hipify-clang' {
    assert "$xsrc/_hipify-clang" is_file
}
@test 'more_src has _cuobjdump' {
    assert "$xsrc/_cuobjdump" is_file
}
@test 'more_src has _nvdisasm' {
    assert "$xsrc/_nvdisasm" is_file
}
@test 'more_src has _ptxas' {
    assert "$xsrc/_ptxas" is_file
}
@test 'more_src has _fatbinary' {
    assert "$xsrc/_fatbinary" is_file
}
@test 'more_src has _compute-sanitizer' {
    assert "$xsrc/_compute-sanitizer" is_file
}
@test 'more_src has _cuda-memcheck' {
    assert "$xsrc/_cuda-memcheck" is_file
}
@test 'more_src has _nvprof' {
    assert "$xsrc/_nvprof" is_file
}
@test 'more_src has _nvidia-bug-report' {
    assert "$xsrc/_nvidia-bug-report" is_file
}
@test 'more_src has _nvidia-detect' {
    assert "$xsrc/_nvidia-detect" is_file
}
@test 'more_src has _orte-ps' {
    assert "$xsrc/_orte-ps" is_file
}
@test 'more_src has _mpifc' {
    assert "$xsrc/_mpifc" is_file
}
@test 'more_src has _mpiexec.mpich' {
    assert "$xsrc/_mpiexec.mpich" is_file
}
@test 'more_src has _mpiexec.ompi' {
    assert "$xsrc/_mpiexec.ompi" is_file
}
@test 'more_src has _cudaminer' {
    assert "$xsrc/_cudaminer" is_file
}
@test 'more_src has _sgminer' {
    assert "$xsrc/_sgminer" is_file
}
@test 'more_src has _ethminer' {
    assert "$xsrc/_ethminer" is_file
}
@test 'more_src has _amdtop' {
    assert "$xsrc/_amdtop" is_file
}
@test 'more_src has _mpicc-mpich' {
    assert "$xsrc/_mpicc-mpich" is_file
}
@test 'more_src has _mpicc-openmpi' {
    assert "$xsrc/_mpicc-openmpi" is_file
}
@test 'more_src has _mpirun-mpich' {
    assert "$xsrc/_mpirun-mpich" is_file
}
@test 'more_src has _mpirun-ompi' {
    assert "$xsrc/_mpirun-ompi" is_file
}
@test 'more_src has _jikes' {
    assert "$xsrc/_jikes" is_file
}
@test 'more_src has _kjc' {
    assert "$xsrc/_kjc" is_file
}
@test 'more_src has _jvc' {
    assert "$xsrc/_jvc" is_file
}
@test 'more_src has _gjar' {
    assert "$xsrc/_gjar" is_file
}
@test 'more_src has _gjavah' {
    assert "$xsrc/_gjavah" is_file
}
@test 'more_src has _gnative2ascii' {
    assert "$xsrc/_gnative2ascii" is_file
}
@test 'more_src has _gappletviewer' {
    assert "$xsrc/_gappletviewer" is_file
}
@test 'more_src has _icedtea7' {
    assert "$xsrc/_icedtea7" is_file
}
@test 'more_src has _proguardgui' {
    assert "$xsrc/_proguardgui" is_file
}
@test 'more_src has _clojurec' {
    assert "$xsrc/_clojurec" is_file
}
@test 'more_src has _rebel-readline' {
    assert "$xsrc/_rebel-readline" is_file
}
@test 'more_src has _sentinel' {
    assert "$xsrc/_sentinel" is_file
}
@test 'more_src has _scala3' {
    assert "$xsrc/_scala3" is_file
}
@test 'more_src has _jpackager' {
    assert "$xsrc/_jpackager" is_file
}
@test 'more_src has _antlr' {
    assert "$xsrc/_antlr" is_file
}
@test 'more_src has _antlrworks' {
    assert "$xsrc/_antlrworks" is_file
}
@test 'more_src has _rust-bindgen' {
    assert "$xsrc/_rust-bindgen" is_file
}
@test 'more_src has _rust-objcopy' {
    assert "$xsrc/_rust-objcopy" is_file
}
@test 'more_src has _rust-objdump' {
    assert "$xsrc/_rust-objdump" is_file
}
@test 'more_src has _rust-readobj' {
    assert "$xsrc/_rust-readobj" is_file
}
@test 'more_src has _rust-size' {
    assert "$xsrc/_rust-size" is_file
}
@test 'more_src has _rust-strings' {
    assert "$xsrc/_rust-strings" is_file
}
@test 'more_src has _rust-strip' {
    assert "$xsrc/_rust-strip" is_file
}
@test 'more_src has _genie' {
    assert "$xsrc/_genie" is_file
}
@test 'more_src has _nmake' {
    assert "$xsrc/_nmake" is_file
}
@test 'more_src has _mac' {
    assert "$xsrc/_mac" is_file
}
@test 'more_src has _neroAacEnc' {
    assert "$xsrc/_neroAacEnc" is_file
}
@test 'more_src has _neroAacDec' {
    assert "$xsrc/_neroAacDec" is_file
}
@test 'more_src has _neroAacTag' {
    assert "$xsrc/_neroAacTag" is_file
}
@test 'more_src has _id3tool' {
    assert "$xsrc/_id3tool" is_file
}
@test 'more_src has _puddletag' {
    assert "$xsrc/_puddletag" is_file
}
@test 'more_src has _konsole5' {
    assert "$xsrc/_konsole5" is_file
}
@test 'more_src has _w3mimgdisplay' {
    assert "$xsrc/_w3mimgdisplay" is_file
}
@test 'more_src has _lightworks' {
    assert "$xsrc/_lightworks" is_file
}
@test 'more_src has _olive-editor' {
    assert "$xsrc/_olive-editor" is_file
}
@test 'more_src has _xine' {
    assert "$xsrc/_xine" is_file
}
@test 'more_src has _xine-ui' {
    assert "$xsrc/_xine-ui" is_file
}
@test 'more_src has _aqualung' {
    assert "$xsrc/_aqualung" is_file
}
@test 'more_src has _pithos' {
    assert "$xsrc/_pithos" is_file
}
@test 'more_src has _cd-discid' {
    assert "$xsrc/_cd-discid" is_file
}
@test 'more_src has _vdr' {
    assert "$xsrc/_vdr" is_file
}
@test 'more_src has _vdradmin' {
    assert "$xsrc/_vdradmin" is_file
}
@test 'more_src has _svdrpsend' {
    assert "$xsrc/_svdrpsend" is_file
}
@test 'more_src has _nut-monitor' {
    assert "$xsrc/_nut-monitor" is_file
}
@test 'more_src has _vidalia' {
    assert "$xsrc/_vidalia" is_file
}
@test 'more_src has _terminix' {
    assert "$xsrc/_terminix" is_file
}
@test 'more_src has _nxterm' {
    assert "$xsrc/_nxterm" is_file
}
@test 'more_src has _sndfile-resample' {
    assert "$xsrc/_sndfile-resample" is_file
}
@test 'more_src has _sndfile-jackplay' {
    assert "$xsrc/_sndfile-jackplay" is_file
}
@test 'more_src has _sndfile-mix-to-mono' {
    assert "$xsrc/_sndfile-mix-to-mono" is_file
}
@test 'more_src has _innoextract' {
    assert "$xsrc/_innoextract" is_file
}
@test 'more_src has _rpmdev-bumpspec' {
    assert "$xsrc/_rpmdev-bumpspec" is_file
}
@test 'more_src has _rpmdev-extract' {
    assert "$xsrc/_rpmdev-extract" is_file
}
@test 'more_src has _rpmdev-checksig' {
    assert "$xsrc/_rpmdev-checksig" is_file
}
@test 'more_src has _rpmdev-md5' {
    assert "$xsrc/_rpmdev-md5" is_file
}
@test 'more_src has _rpmdev-packager' {
    assert "$xsrc/_rpmdev-packager" is_file
}
@test 'more_src has _rpmdev-newinit' {
    assert "$xsrc/_rpmdev-newinit" is_file
}
@test 'more_src has _rpmdev-rmdevelrpms' {
    assert "$xsrc/_rpmdev-rmdevelrpms" is_file
}
@test 'more_src has _rpmdev-rpmlintian' {
    assert "$xsrc/_rpmdev-rpmlintian" is_file
}
@test 'more_src has _rpmdev-sortpkgs' {
    assert "$xsrc/_rpmdev-sortpkgs" is_file
}
@test 'more_src has _rpmdev-sourcesum' {
    assert "$xsrc/_rpmdev-sourcesum" is_file
}
@test 'more_src has _rpmdev-srcdir' {
    assert "$xsrc/_rpmdev-srcdir" is_file
}
@test 'more_src has _rpmgrill' {
    assert "$xsrc/_rpmgrill" is_file
}
@test 'more_src has _zulucrypt' {
    assert "$xsrc/_zulucrypt" is_file
}
@test 'more_src has _booster' {
    assert "$xsrc/_booster" is_file
}
@test 'more_src has _plymouth-create-initrd' {
    assert "$xsrc/_plymouth-create-initrd" is_file
}
@test 'more_src has _plymouth-list-fonts' {
    assert "$xsrc/_plymouth-list-fonts" is_file
}
@test 'more_src has _grub-customizer' {
    assert "$xsrc/_grub-customizer" is_file
}
@test 'more_src has _refind-install' {
    assert "$xsrc/_refind-install" is_file
}
@test 'more_src has _refind-mkdefault' {
    assert "$xsrc/_refind-mkdefault" is_file
}
@test 'more_src has _refind-mkfont' {
    assert "$xsrc/_refind-mkfont" is_file
}
@test 'more_src has _cabarc' {
    assert "$xsrc/_cabarc" is_file
}
@test 'more_src has _adbsync' {
    assert "$xsrc/_adbsync" is_file
}
@test 'more_src has _plyr' {
    assert "$xsrc/_plyr" is_file
}
@test 'more_src has _tzdata-update' {
    assert "$xsrc/_tzdata-update" is_file
}
@test 'more_src has _kgpg' {
    assert "$xsrc/_kgpg" is_file
}
@test 'more_src has _kleopatra' {
    assert "$xsrc/_kleopatra" is_file
}
@test 'more_src has _akonadi' {
    assert "$xsrc/_akonadi" is_file
}
@test 'more_src has _kjournal' {
    assert "$xsrc/_kjournal" is_file
}
@test 'more_src has _kmymoney' {
    assert "$xsrc/_kmymoney" is_file
}
@test 'more_src has _skrooge' {
    assert "$xsrc/_skrooge" is_file
}
@test 'more_src has _kcharselect' {
    assert "$xsrc/_kcharselect" is_file
}
@test 'more_src has _ksysguard5' {
    assert "$xsrc/_ksysguard5" is_file
}
@test 'more_src has _ksysguardd' {
    assert "$xsrc/_ksysguardd" is_file
}
@test 'more_src has _ksystemlog' {
    assert "$xsrc/_ksystemlog" is_file
}
@test 'more_src has _ksnapshot' {
    assert "$xsrc/_ksnapshot" is_file
}
@test 'more_src has _kscreenlocker_greet' {
    assert "$xsrc/_kscreenlocker_greet" is_file
}
@test 'more_src has _kvkbd' {
    assert "$xsrc/_kvkbd" is_file
}
@test 'more_src has _cellwriter' {
    assert "$xsrc/_cellwriter" is_file
}
@test 'more_src has _xfontscale' {
    assert "$xsrc/_xfontscale" is_file
}
@test 'more_src has _dolphin5' {
    assert "$xsrc/_dolphin5" is_file
}
@test 'more_src has _kget' {
    assert "$xsrc/_kget" is_file
}
@test 'more_src has _kio-fuse' {
    assert "$xsrc/_kio-fuse" is_file
}
@test 'more_src has _kioworker' {
    assert "$xsrc/_kioworker" is_file
}
@test 'more_src has _fish-pager' {
    assert "$xsrc/_fish-pager" is_file
}
@test 'more_src has _fish-key-reader' {
    assert "$xsrc/_fish-key-reader" is_file
}
@test 'more_src has _fish-update-completions' {
    assert "$xsrc/_fish-update-completions" is_file
}
@test 'more_src has _kjsembed' {
    assert "$xsrc/_kjsembed" is_file
}
@test 'more_src has _kclock' {
    assert "$xsrc/_kclock" is_file
}
@test 'more_src has _kfilebox' {
    assert "$xsrc/_kfilebox" is_file
}
@test 'more_src has _osmium-tool' {
    assert "$xsrc/_osmium-tool" is_file
}
@test 'more_src has _osmconvert' {
    assert "$xsrc/_osmconvert" is_file
}
@test 'more_src has _osmfilter' {
    assert "$xsrc/_osmfilter" is_file
}
@test 'more_src has _osmupdate' {
    assert "$xsrc/_osmupdate" is_file
}
@test 'more_src has _mkgmap' {
    assert "$xsrc/_mkgmap" is_file
}
@test 'more_src has _routino' {
    assert "$xsrc/_routino" is_file
}
@test 'more_src has _mapnik' {
    assert "$xsrc/_mapnik" is_file
}
@test 'more_src has _mb-util' {
    assert "$xsrc/_mb-util" is_file
}
@test 'more_src has _mapsoft' {
    assert "$xsrc/_mapsoft" is_file
}
@test 'more_src has _geos-config' {
    assert "$xsrc/_geos-config" is_file
}
@test 'more_src has _postgis' {
    assert "$xsrc/_postgis" is_file
}
@test 'more_src has _spatialite_tool' {
    assert "$xsrc/_spatialite_tool" is_file
}
@test 'more_src has _spatialite_network' {
    assert "$xsrc/_spatialite_network" is_file
}
@test 'more_src has _spatialite_gml' {
    assert "$xsrc/_spatialite_gml" is_file
}
@test 'more_src has _spatialite_dem' {
    assert "$xsrc/_spatialite_dem" is_file
}
@test 'more_src has _spatialite_osm' {
    assert "$xsrc/_spatialite_osm" is_file
}
@test 'more_src has _spatialite_xml2sql' {
    assert "$xsrc/_spatialite_xml2sql" is_file
}
@test 'more_src has _gdallocationinfo' {
    assert "$xsrc/_gdallocationinfo" is_file
}
@test 'more_src has _gdaltindex' {
    assert "$xsrc/_gdaltindex" is_file
}
@test 'more_src has _tilemill' {
    assert "$xsrc/_tilemill" is_file
}
@test 'more_src has _josm' {
    assert "$xsrc/_josm" is_file
}
@test 'more_src has _gosmore' {
    assert "$xsrc/_gosmore" is_file
}
@test 'more_src has _merkaartor' {
    assert "$xsrc/_merkaartor" is_file
}
@test 'more_src has _qmapshack' {
    assert "$xsrc/_qmapshack" is_file
}
@test 'more_src has _geoserver' {
    assert "$xsrc/_geoserver" is_file
}
@test 'more_src has _xsane' {
    assert "$xsrc/_xsane" is_file
}
@test 'more_src has _xscanimage' {
    assert "$xsrc/_xscanimage" is_file
}
@test 'more_src has _gocr' {
    assert "$xsrc/_gocr" is_file
}
@test 'more_src has _ocrad' {
    assert "$xsrc/_ocrad" is_file
}
@test 'more_src has _cuneiform' {
    assert "$xsrc/_cuneiform" is_file
}
@test 'more_src has _ocropy' {
    assert "$xsrc/_ocropy" is_file
}
@test 'more_src has _paperless' {
    assert "$xsrc/_paperless" is_file
}
@test 'more_src has _paperwork' {
    assert "$xsrc/_paperwork" is_file
}
@test 'more_src has _hp-toolbox' {
    assert "$xsrc/_hp-toolbox" is_file
}
@test 'more_src has _hp-systray' {
    assert "$xsrc/_hp-systray" is_file
}
@test 'more_src has _hp-mkuri' {
    assert "$xsrc/_hp-mkuri" is_file
}
@test 'more_src has _hp-fab' {
    assert "$xsrc/_hp-fab" is_file
}
@test 'more_src has _hp-fax' {
    assert "$xsrc/_hp-fax" is_file
}
@test 'more_src has _hp-faxsetup' {
    assert "$xsrc/_hp-faxsetup" is_file
}
@test 'more_src has _hp-makecopies' {
    assert "$xsrc/_hp-makecopies" is_file
}
@test 'more_src has _hp-print' {
    assert "$xsrc/_hp-print" is_file
}
@test 'more_src has _hp-sendfax' {
    assert "$xsrc/_hp-sendfax" is_file
}
@test 'more_src has _hp-unload' {
    assert "$xsrc/_hp-unload" is_file
}
@test 'more_src has _hp-uninstall' {
    assert "$xsrc/_hp-uninstall" is_file
}
@test 'more_src has _hp-upgrade' {
    assert "$xsrc/_hp-upgrade" is_file
}
@test 'more_src has _hp-wificonfig' {
    assert "$xsrc/_hp-wificonfig" is_file
}
@test 'more_src has _ippproxy' {
    assert "$xsrc/_ippproxy" is_file
}
@test 'more_src has _ippdiscover' {
    assert "$xsrc/_ippdiscover" is_file
}
@test 'more_src has _foomatic-cleanupdrivers' {
    assert "$xsrc/_foomatic-cleanupdrivers" is_file
}
@test 'more_src has _ippregfile' {
    assert "$xsrc/_ippregfile" is_file
}
@test 'more_src has _pencil' {
    assert "$xsrc/_pencil" is_file
}
@test 'more_src has _azpainter' {
    assert "$xsrc/_azpainter" is_file
}
@test 'more_src has _mtpaint' {
    assert "$xsrc/_mtpaint" is_file
}
@test 'more_src has _kolourpaint' {
    assert "$xsrc/_kolourpaint" is_file
}
@test 'more_src has _xpaint' {
    assert "$xsrc/_xpaint" is_file
}
@test 'more_src has _pinta' {
    assert "$xsrc/_pinta" is_file
}
@test 'more_src has _drawpile' {
    assert "$xsrc/_drawpile" is_file
}
@test 'more_src has _deluged' {
    assert "$xsrc/_deluged" is_file
}
@test 'more_src has _deluge-gtk' {
    assert "$xsrc/_deluge-gtk" is_file
}
@test 'more_src has _deluge-web' {
    assert "$xsrc/_deluge-web" is_file
}
@test 'more_src has _ariang' {
    assert "$xsrc/_ariang" is_file
}
@test 'more_src has _mldonkey-server' {
    assert "$xsrc/_mldonkey-server" is_file
}
@test 'more_src has _amule-daemon' {
    assert "$xsrc/_amule-daemon" is_file
}
@test 'more_src has _freerapid' {
    assert "$xsrc/_freerapid" is_file
}
@test 'more_src has _notecase' {
    assert "$xsrc/_notecase" is_file
}
@test 'more_src has _rednotebook' {
    assert "$xsrc/_rednotebook" is_file
}
@test 'more_src has _leo-editor' {
    assert "$xsrc/_leo-editor" is_file
}
@test 'more_src has _photoflow' {
    assert "$xsrc/_photoflow" is_file
}
@test 'more_src has _photofilmstrip' {
    assert "$xsrc/_photofilmstrip" is_file
}
@test 'more_src has _entangle' {
    assert "$xsrc/_entangle" is_file
}
@test 'more_src has _syncthing-relaysrv' {
    assert "$xsrc/_syncthing-relaysrv" is_file
}
@test 'more_src has _syncthing-discosrv' {
    assert "$xsrc/_syncthing-discosrv" is_file
}
@test 'more_src has _grsync' {
    assert "$xsrc/_grsync" is_file
}
@test 'more_src has _luckybackup' {
    assert "$xsrc/_luckybackup" is_file
}
@test 'more_src has _pika-backup' {
    assert "$xsrc/_pika-backup" is_file
}
@test 'more_src has _bareos-fd' {
    assert "$xsrc/_bareos-fd" is_file
}
@test 'more_src has _bareos-sd' {
    assert "$xsrc/_bareos-sd" is_file
}
@test 'more_src has _bareos-dir' {
    assert "$xsrc/_bareos-dir" is_file
}
@test 'more_src has _bareos-dbcheck' {
    assert "$xsrc/_bareos-dbcheck" is_file
}
@test 'more_src has _bareos-bscan' {
    assert "$xsrc/_bareos-bscan" is_file
}
@test 'more_src has _bareos-bextract' {
    assert "$xsrc/_bareos-bextract" is_file
}
@test 'more_src has _bareos-bls' {
    assert "$xsrc/_bareos-bls" is_file
}
@test 'more_src has _bareos-bcopy' {
    assert "$xsrc/_bareos-bcopy" is_file
}
@test 'more_src has _bareos-btape' {
    assert "$xsrc/_bareos-btape" is_file
}
@test 'more_src has _bareos-bsmtp' {
    assert "$xsrc/_bareos-bsmtp" is_file
}
@test 'more_src has _bareos-bregex' {
    assert "$xsrc/_bareos-bregex" is_file
}
@test 'more_src has _bareos-bwild' {
    assert "$xsrc/_bareos-bwild" is_file
}
@test 'more_src has _bareos-bconsole' {
    assert "$xsrc/_bareos-bconsole" is_file
}
@test 'more_src has _fbsetbg' {
    assert "$xsrc/_fbsetbg" is_file
}
@test 'more_src has _fbrun' {
    assert "$xsrc/_fbrun" is_file
}
@test 'more_src has _bsetbg' {
    assert "$xsrc/_bsetbg" is_file
}
@test 'more_src has _bsetroot' {
    assert "$xsrc/_bsetroot" is_file
}
@test 'more_src has _fluxbox-update_configs' {
    assert "$xsrc/_fluxbox-update_configs" is_file
}
@test 'more_src has _fluxbox-generate_menu' {
    assert "$xsrc/_fluxbox-generate_menu" is_file
}
@test 'more_src has _openbox-session' {
    assert "$xsrc/_openbox-session" is_file
}
@test 'more_src has _openbox-xdg-autostart' {
    assert "$xsrc/_openbox-xdg-autostart" is_file
}
@test 'more_src has _pamtester' {
    assert "$xsrc/_pamtester" is_file
}
@test 'more_src has _pamu2fcfg' {
    assert "$xsrc/_pamu2fcfg" is_file
}
@test 'more_src has _poldek' {
    assert "$xsrc/_poldek" is_file
}
@test 'more_src has _polkit-mate' {
    assert "$xsrc/_polkit-mate" is_file
}
@test 'more_src has _iptcedit' {
    assert "$xsrc/_iptcedit" is_file
}
@test 'more_src has _metadata-extractor' {
    assert "$xsrc/_metadata-extractor" is_file
}
@test 'more_src has _pesign' {
    assert "$xsrc/_pesign" is_file
}
@test 'more_src has _xmlsec' {
    assert "$xsrc/_xmlsec" is_file
}
@test 'more_src has _keysmith' {
    assert "$xsrc/_keysmith" is_file
}
@test 'more_src has _rezound' {
    assert "$xsrc/_rezound" is_file
}
@test 'more_src has _signal-desktop' {
    assert "$xsrc/_signal-desktop" is_file
}
@test 'more_src has _session-desktop' {
    assert "$xsrc/_session-desktop" is_file
}
@test 'more_src has _gnurl' {
    assert "$xsrc/_gnurl" is_file
}
@test 'more_src has _toxic' {
    assert "$xsrc/_toxic" is_file
}
@test 'more_src has _chains' {
    assert "$xsrc/_chains" is_file
}
@test 'more_src has _bandwidthd' {
    assert "$xsrc/_bandwidthd" is_file
}
@test 'more_src has _pmacct' {
    assert "$xsrc/_pmacct" is_file
}
@test 'more_src has _flowd' {
    assert "$xsrc/_flowd" is_file
}
@test 'more_src has _fwbuilder' {
    assert "$xsrc/_fwbuilder" is_file
}
@test 'more_src has _ipfwadm' {
    assert "$xsrc/_ipfwadm" is_file
}
@test 'more_src has _bro' {
    assert "$xsrc/_bro" is_file
}
@test 'more_src has _zeekctl' {
    assert "$xsrc/_zeekctl" is_file
}
@test 'more_src has _icingadb' {
    assert "$xsrc/_icingadb" is_file
}
@test 'more_src has _icingaweb2' {
    assert "$xsrc/_icingaweb2" is_file
}
@test 'more_src has _redis-stat' {
    assert "$xsrc/_redis-stat" is_file
}
@test 'more_src has _clickhouse-bench' {
    assert "$xsrc/_clickhouse-bench" is_file
}
@test 'more_src has _virt-pki-query' {
    assert "$xsrc/_virt-pki-query" is_file
}
@test 'more_src has _ovirt-engine-cli' {
    assert "$xsrc/_ovirt-engine-cli" is_file
}
@test 'more_src has _memcached-cli' {
    assert "$xsrc/_memcached-cli" is_file
}
@test 'more_src has _cyrus-imapd' {
    assert "$xsrc/_cyrus-imapd" is_file
}
@test 'more_src has _cyrus-master' {
    assert "$xsrc/_cyrus-master" is_file
}
@test 'more_src has _cyrus-quota' {
    assert "$xsrc/_cyrus-quota" is_file
}
@test 'more_src has _cyrus-deliver' {
    assert "$xsrc/_cyrus-deliver" is_file
}
@test 'more_src has _cyrus-fud' {
    assert "$xsrc/_cyrus-fud" is_file
}
@test 'more_src has _cyrus-tls_prune' {
    assert "$xsrc/_cyrus-tls_prune" is_file
}
@test 'more_src has _cyrus-arbitron' {
    assert "$xsrc/_cyrus-arbitron" is_file
}
@test 'more_src has _cyrus-chk_cyrus' {
    assert "$xsrc/_cyrus-chk_cyrus" is_file
}
@test 'more_src has _cyrus-cyradm' {
    assert "$xsrc/_cyrus-cyradm" is_file
}
@test 'more_src has _cyrus-cvt_cyrusdb' {
    assert "$xsrc/_cyrus-cvt_cyrusdb" is_file
}
@test 'more_src has _cyrus-ipurge' {
    assert "$xsrc/_cyrus-ipurge" is_file
}
@test 'more_src has _cyrus-mbexamine' {
    assert "$xsrc/_cyrus-mbexamine" is_file
}
@test 'more_src has _cyrus-mbpath' {
    assert "$xsrc/_cyrus-mbpath" is_file
}
@test 'more_src has _cyrus-mbtest' {
    assert "$xsrc/_cyrus-mbtest" is_file
}
@test 'more_src has _cyrus-pop3d' {
    assert "$xsrc/_cyrus-pop3d" is_file
}
@test 'more_src has _cyrus-promstatsd' {
    assert "$xsrc/_cyrus-promstatsd" is_file
}
@test 'more_src has _cyrus-rehash' {
    assert "$xsrc/_cyrus-rehash" is_file
}
@test 'more_src has _cyrus-reconstruct' {
    assert "$xsrc/_cyrus-reconstruct" is_file
}
@test 'more_src has _cyrus-smmapd' {
    assert "$xsrc/_cyrus-smmapd" is_file
}
@test 'more_src has _cyrus-squatter' {
    assert "$xsrc/_cyrus-squatter" is_file
}
@test 'more_src has _cyrus-sync_client' {
    assert "$xsrc/_cyrus-sync_client" is_file
}
@test 'more_src has _cyrus-sync_reset' {
    assert "$xsrc/_cyrus-sync_reset" is_file
}
@test 'more_src has _cyrus-sync_server' {
    assert "$xsrc/_cyrus-sync_server" is_file
}
@test 'more_src has _cyrus-timsieved' {
    assert "$xsrc/_cyrus-timsieved" is_file
}
@test 'more_src has _cyrus-unexpunge' {
    assert "$xsrc/_cyrus-unexpunge" is_file
}
@test 'more_src has _mailgraph' {
    assert "$xsrc/_mailgraph" is_file
}
@test 'more_src has _pflogsumm' {
    assert "$xsrc/_pflogsumm" is_file
}
@test 'more_src has _pfqueue' {
    assert "$xsrc/_pfqueue" is_file
}
@test 'more_src has _mhonarc' {
    assert "$xsrc/_mhonarc" is_file
}
@test 'more_src has _mimedefang' {
    assert "$xsrc/_mimedefang" is_file
}
@test 'more_src has _spamprobe' {
    assert "$xsrc/_spamprobe" is_file
}
@test 'more_src has _eximon' {
    assert "$xsrc/_eximon" is_file
}
@test 'more_src has _exim_dumpdb' {
    assert "$xsrc/_exim_dumpdb" is_file
}
@test 'more_src has _exim_fixdb' {
    assert "$xsrc/_exim_fixdb" is_file
}
@test 'more_src has _exim_tidydb' {
    assert "$xsrc/_exim_tidydb" is_file
}
@test 'more_src has _exinext' {
    assert "$xsrc/_exinext" is_file
}
@test 'more_src has _exiwhat' {
    assert "$xsrc/_exiwhat" is_file
}
@test 'more_src has _notmuch-mutt' {
    assert "$xsrc/_notmuch-mutt" is_file
}
@test 'more_src has _mailpile' {
    assert "$xsrc/_mailpile" is_file
}
@test 'more_src has _mailman3' {
    assert "$xsrc/_mailman3" is_file
}
@test 'more_src has _postfwd' {
    assert "$xsrc/_postfwd" is_file
}
@test 'more_src has _policyd' {
    assert "$xsrc/_policyd" is_file
}
@test 'more_src has _exim_convert4r4' {
    assert "$xsrc/_exim_convert4r4" is_file
}
@test 'more_src has _postfix-policyd-spf-perl' {
    assert "$xsrc/_postfix-policyd-spf-perl" is_file
}
@test 'more_src has _claws-mail-archiver' {
    assert "$xsrc/_claws-mail-archiver" is_file
}
@test 'more_src has _mutt-wizard' {
    assert "$xsrc/_mutt-wizard" is_file
}
@test 'more_src has _clawsker' {
    assert "$xsrc/_clawsker" is_file
}
@test 'more_src has _imapbackup' {
    assert "$xsrc/_imapbackup" is_file
}
@test 'more_src has _mailfilter' {
    assert "$xsrc/_mailfilter" is_file
}
@test 'more_src has _opendmarc' {
    assert "$xsrc/_opendmarc" is_file
}
@test 'more_src has _opendkim-keygen' {
    assert "$xsrc/_opendkim-keygen" is_file
}
@test 'more_src has _opendkim-stats' {
    assert "$xsrc/_opendkim-stats" is_file
}
@test 'more_src has _opendkim-importstats' {
    assert "$xsrc/_opendkim-importstats" is_file
}
@test 'more_src has _ldns-mx' {
    assert "$xsrc/_ldns-mx" is_file
}
@test 'more_src has _ldns-chaos' {
    assert "$xsrc/_ldns-chaos" is_file
}
@test 'more_src has _ldns-secret' {
    assert "$xsrc/_ldns-secret" is_file
}
@test 'more_src has _nsd-checkzone' {
    assert "$xsrc/_nsd-checkzone" is_file
}
@test 'more_src has _nsd-zonec' {
    assert "$xsrc/_nsd-zonec" is_file
}
@test 'more_src has _nsd-control-setup' {
    assert "$xsrc/_nsd-control-setup" is_file
}
@test 'more_src has _pdns-control' {
    assert "$xsrc/_pdns-control" is_file
}
@test 'more_src has _pdns-doh' {
    assert "$xsrc/_pdns-doh" is_file
}
@test 'more_src has _ods-control' {
    assert "$xsrc/_ods-control" is_file
}
@test 'more_src has _ods-ksmutil' {
    assert "$xsrc/_ods-ksmutil" is_file
}
@test 'more_src has _pdns-server' {
    assert "$xsrc/_pdns-server" is_file
}
@test 'more_src has _knot' {
    assert "$xsrc/_knot" is_file
}
@test 'more_src has _knsec3hash' {
    assert "$xsrc/_knsec3hash" is_file
}
@test 'more_src has _krollover' {
    assert "$xsrc/_krollover" is_file
}
@test 'more_src has _zonemd' {
    assert "$xsrc/_zonemd" is_file
}
@test 'more_src has _zoneminder' {
    assert "$xsrc/_zoneminder" is_file
}
@test 'more_src has _snort3' {
    assert "$xsrc/_snort3" is_file
}
@test 'more_src has _snortsam' {
    assert "$xsrc/_snortsam" is_file
}
@test 'more_src has _suricata-update' {
    assert "$xsrc/_suricata-update" is_file
}
@test 'more_src has _pulledpork' {
    assert "$xsrc/_pulledpork" is_file
}
@test 'more_src has _pulledpork3' {
    assert "$xsrc/_pulledpork3" is_file
}
@test 'more_src has _integrit' {
    assert "$xsrc/_integrit" is_file
}
@test 'more_src has _zabbix-agent' {
    assert "$xsrc/_zabbix-agent" is_file
}
@test 'more_src has _zabbix-agent2' {
    assert "$xsrc/_zabbix-agent2" is_file
}
@test 'more_src has _zabbix-get' {
    assert "$xsrc/_zabbix-get" is_file
}
@test 'more_src has _zabbix-sender' {
    assert "$xsrc/_zabbix-sender" is_file
}
@test 'more_src has _zabbix-proxy' {
    assert "$xsrc/_zabbix-proxy" is_file
}
@test 'more_src has _zabbix-server' {
    assert "$xsrc/_zabbix-server" is_file
}
@test 'more_src has _zabbix-java-gateway' {
    assert "$xsrc/_zabbix-java-gateway" is_file
}
@test 'more_src has _munin-run' {
    assert "$xsrc/_munin-run" is_file
}
@test 'more_src has _munin-async' {
    assert "$xsrc/_munin-async" is_file
}
@test 'more_src has _munin-asyncd' {
    assert "$xsrc/_munin-asyncd" is_file
}
@test 'more_src has _munin-mkconfig' {
    assert "$xsrc/_munin-mkconfig" is_file
}
@test 'more_src has _munin-collect' {
    assert "$xsrc/_munin-collect" is_file
}
@test 'more_src has _ksmtuned' {
    assert "$xsrc/_ksmtuned" is_file
}
@test 'more_src has _tuned-gui' {
    assert "$xsrc/_tuned-gui" is_file
}
@test 'more_src has _spice-html5' {
    assert "$xsrc/_spice-html5" is_file
}
@test 'more_src has _prom2json' {
    assert "$xsrc/_prom2json" is_file
}
@test 'more_src has _victoria-logs' {
    assert "$xsrc/_victoria-logs" is_file
}
@test 'more_src has _pinot' {
    assert "$xsrc/_pinot" is_file
}
@test 'more_src has _ntpstat' {
    assert "$xsrc/_ntpstat" is_file
}
@test 'more_src has _redfish-finder' {
    assert "$xsrc/_redfish-finder" is_file
}
@test 'more_src has _libreswan' {
    assert "$xsrc/_libreswan" is_file
}
@test 'more_src has _accel-pppd' {
    assert "$xsrc/_accel-pppd" is_file
}
@test 'more_src has _openl2tp' {
    assert "$xsrc/_openl2tp" is_file
}
@test 'more_src has _openl2tpd' {
    assert "$xsrc/_openl2tpd" is_file
}
@test 'more_src has _vpnc-script' {
    assert "$xsrc/_vpnc-script" is_file
}
@test 'more_src has _ipa-csr-gen' {
    assert "$xsrc/_ipa-csr-gen" is_file
}
@test 'more_src has _ipa-ca-install' {
    assert "$xsrc/_ipa-ca-install" is_file
}
@test 'more_src has _ipa-certupdate' {
    assert "$xsrc/_ipa-certupdate" is_file
}
@test 'more_src has _ipa-dns-install' {
    assert "$xsrc/_ipa-dns-install" is_file
}
@test 'more_src has _ipa-kra-install' {
    assert "$xsrc/_ipa-kra-install" is_file
}
@test 'more_src has _ipa-otptoken-import' {
    assert "$xsrc/_ipa-otptoken-import" is_file
}
@test 'more_src has _ipa-ldap-updater' {
    assert "$xsrc/_ipa-ldap-updater" is_file
}
@test 'more_src has _ipa-nis-manage' {
    assert "$xsrc/_ipa-nis-manage" is_file
}
@test 'more_src has _ipa-pwd-extop' {
    assert "$xsrc/_ipa-pwd-extop" is_file
}
@test 'more_src has _ipa-server-certinstall' {
    assert "$xsrc/_ipa-server-certinstall" is_file
}
@test 'more_src has _ipa-winsync-migrate' {
    assert "$xsrc/_ipa-winsync-migrate" is_file
}
@test 'more_src has _ipa-backup' {
    assert "$xsrc/_ipa-backup" is_file
}
@test 'more_src has _ipa-restore' {
    assert "$xsrc/_ipa-restore" is_file
}
@test 'more_src has _ipa-advise' {
    assert "$xsrc/_ipa-advise" is_file
}
@test 'more_src has _ipa-adtrust-install' {
    assert "$xsrc/_ipa-adtrust-install" is_file
}
@test 'more_src has _ipa-trust-add' {
    assert "$xsrc/_ipa-trust-add" is_file
}
@test 'more_src has _ipa-trust-mod' {
    assert "$xsrc/_ipa-trust-mod" is_file
}
@test 'more_src has _ipa-trust-del' {
    assert "$xsrc/_ipa-trust-del" is_file
}
@test 'more_src has _ipa-client-automount' {
    assert "$xsrc/_ipa-client-automount" is_file
}
@test 'more_src has _ds-replcheck' {
    assert "$xsrc/_ds-replcheck" is_file
}
@test 'more_src has _ds-logpipe' {
    assert "$xsrc/_ds-logpipe" is_file
}
@test 'more_src has _dsidm' {
    assert "$xsrc/_dsidm" is_file
}
@test 'more_src has _dsctl' {
    assert "$xsrc/_dsctl" is_file
}
@test 'more_src has _dsconf' {
    assert "$xsrc/_dsconf" is_file
}
@test 'more_src has _tdbrestore' {
    assert "$xsrc/_tdbrestore" is_file
}
@test 'more_src has _pkimanage' {
    assert "$xsrc/_pkimanage" is_file
}
@test 'more_src has _pkispawn' {
    assert "$xsrc/_pkispawn" is_file
}
@test 'more_src has _pkidestroy' {
    assert "$xsrc/_pkidestroy" is_file
}
@test 'more_src has _pki-server' {
    assert "$xsrc/_pki-server" is_file
}
@test 'more_src has _pki-healthcheck' {
    assert "$xsrc/_pki-healthcheck" is_file
}
@test 'more_src has _uacme' {
    assert "$xsrc/_uacme" is_file
}
@test 'more_src has _ocserv-client' {
    assert "$xsrc/_ocserv-client" is_file
}
@test 'more_src has _ocserv-fwd' {
    assert "$xsrc/_ocserv-fwd" is_file
}
@test 'more_src has _ipsec-iked' {
    assert "$xsrc/_ipsec-iked" is_file
}
@test 'more_src has _ipsec-iked-ctl' {
    assert "$xsrc/_ipsec-iked-ctl" is_file
}
@test 'more_src has _ipsec-charon' {
    assert "$xsrc/_ipsec-charon" is_file
}
@test 'more_src has _clevis-encrypt-tang' {
    assert "$xsrc/_clevis-encrypt-tang" is_file
}
@test 'more_src has _clevis-encrypt-sss' {
    assert "$xsrc/_clevis-encrypt-sss" is_file
}
@test 'more_src has _clevis-encrypt-tpm2' {
    assert "$xsrc/_clevis-encrypt-tpm2" is_file
}
@test 'more_src has _clevis-decrypt' {
    assert "$xsrc/_clevis-decrypt" is_file
}
@test 'more_src has _clevis-luks-list' {
    assert "$xsrc/_clevis-luks-list" is_file
}
@test 'more_src has _clevis-luks-bind' {
    assert "$xsrc/_clevis-luks-bind" is_file
}
@test 'more_src has _clevis-luks-unbind' {
    assert "$xsrc/_clevis-luks-unbind" is_file
}
@test 'more_src has _clevis-luks-pass' {
    assert "$xsrc/_clevis-luks-pass" is_file
}
@test 'more_src has _tangd' {
    assert "$xsrc/_tangd" is_file
}
@test 'more_src has _tang-show-keys' {
    assert "$xsrc/_tang-show-keys" is_file
}
@test 'more_src has _luksmeta' {
    assert "$xsrc/_luksmeta" is_file
}
@test 'more_src has _yubikey-luks' {
    assert "$xsrc/_yubikey-luks" is_file
}
@test 'more_src has _certbot-renew' {
    assert "$xsrc/_certbot-renew" is_file
}
@test 'more_src has _acmeman' {
    assert "$xsrc/_acmeman" is_file
}
@test 'more_src has _genkey' {
    assert "$xsrc/_genkey" is_file
}
@test 'more_src has _nss-cert-import' {
    assert "$xsrc/_nss-cert-import" is_file
}
@test 'more_src has _nss-policy-check' {
    assert "$xsrc/_nss-policy-check" is_file
}
@test 'more_src has _nss-list-trust-records' {
    assert "$xsrc/_nss-list-trust-records" is_file
}
@test 'more_src has _cmstool' {
    assert "$xsrc/_cmstool" is_file
}
@test 'more_src has _ckbiutil' {
    assert "$xsrc/_ckbiutil" is_file
}
@test 'more_src has _ckpasswd' {
    assert "$xsrc/_ckpasswd" is_file
}
@test 'more_src has _keepass' {
    assert "$xsrc/_keepass" is_file
}
@test 'more_src has _keepass2' {
    assert "$xsrc/_keepass2" is_file
}
@test 'more_src has _pass-rotate' {
    assert "$xsrc/_pass-rotate" is_file
}
@test 'more_src has _gopass-jsonapi' {
    assert "$xsrc/_gopass-jsonapi" is_file
}
@test 'more_src has _pwsafe-cli' {
    assert "$xsrc/_pwsafe-cli" is_file
}
@test 'more_src has _systemd-coredump' {
    assert "$xsrc/_systemd-coredump" is_file
}
@test 'more_src has _kwalletmanager5' {
    assert "$xsrc/_kwalletmanager5" is_file
}
@test 'more_src has _fwupd-helpers' {
    assert "$xsrc/_fwupd-helpers" is_file
}
@test 'more_src has _vbe-tools' {
    assert "$xsrc/_vbe-tools" is_file
}
@test 'more_src has _passenger-config' {
    assert "$xsrc/_passenger-config" is_file
}
@test 'more_src has _passenger-install-apache2-module' {
    assert "$xsrc/_passenger-install-apache2-module" is_file
}
@test 'more_src has _passenger-status' {
    assert "$xsrc/_passenger-status" is_file
}
@test 'more_src has _mod_md' {
    assert "$xsrc/_mod_md" is_file
}
@test 'more_src has _dovecot-sysreport' {
    assert "$xsrc/_dovecot-sysreport" is_file
}
@test 'more_src has _dovecot-lda' {
    assert "$xsrc/_dovecot-lda" is_file
}
@test 'more_src has _phpass' {
    assert "$xsrc/_phpass" is_file
}
@test 'more_src has _p11tool-cli' {
    assert "$xsrc/_p11tool-cli" is_file
}
@test 'more_src has _softhsm-bin' {
    assert "$xsrc/_softhsm-bin" is_file
}
@test 'more_src has _mythtv-setup' {
    assert "$xsrc/_mythtv-setup" is_file
}
@test 'more_src has _mythbackend' {
    assert "$xsrc/_mythbackend" is_file
}
@test 'more_src has _mythfrontend' {
    assert "$xsrc/_mythfrontend" is_file
}
@test 'more_src has _mythwelcome' {
    assert "$xsrc/_mythwelcome" is_file
}
@test 'more_src has _mythcommflag' {
    assert "$xsrc/_mythcommflag" is_file
}
@test 'more_src has _mythccextractor' {
    assert "$xsrc/_mythccextractor" is_file
}
@test 'more_src has _mythutil' {
    assert "$xsrc/_mythutil" is_file
}
@test 'more_src has _mythffmpeg' {
    assert "$xsrc/_mythffmpeg" is_file
}
@test 'more_src has _mythreplex' {
    assert "$xsrc/_mythreplex" is_file
}
@test 'more_src has _mythfilldatabase' {
    assert "$xsrc/_mythfilldatabase" is_file
}
@test 'more_src has _mythlogserver' {
    assert "$xsrc/_mythlogserver" is_file
}
@test 'more_src has _mythmetadatalookup' {
    assert "$xsrc/_mythmetadatalookup" is_file
}
@test 'more_src has _mythpreviewgen' {
    assert "$xsrc/_mythpreviewgen" is_file
}
@test 'more_src has _mythscreenwizard' {
    assert "$xsrc/_mythscreenwizard" is_file
}
@test 'more_src has _mythshutdown' {
    assert "$xsrc/_mythshutdown" is_file
}
@test 'more_src has _mythtranscode' {
    assert "$xsrc/_mythtranscode" is_file
}
@test 'more_src has _mythstoragegroup' {
    assert "$xsrc/_mythstoragegroup" is_file
}
@test 'more_src has _mythlcdserver' {
    assert "$xsrc/_mythlcdserver" is_file
}
@test 'more_src has _mythipxe' {
    assert "$xsrc/_mythipxe" is_file
}
@test 'more_src has _tvheadend' {
    assert "$xsrc/_tvheadend" is_file
}
@test 'more_src has _kaffeine' {
    assert "$xsrc/_kaffeine" is_file
}
@test 'more_src has _kmplayer' {
    assert "$xsrc/_kmplayer" is_file
}
@test 'more_src has _kplayer' {
    assert "$xsrc/_kplayer" is_file
}
@test 'more_src has _dragonplayer' {
    assert "$xsrc/_dragonplayer" is_file
}
@test 'more_src has _osmo' {
    assert "$xsrc/_osmo" is_file
}
@test 'more_src has _kpackagetool6' {
    assert "$xsrc/_kpackagetool6" is_file
}
@test 'more_src has _gnome-packagekit' {
    assert "$xsrc/_gnome-packagekit" is_file
}
@test 'more_src has _packagekitd' {
    assert "$xsrc/_packagekitd" is_file
}
@test 'more_src has _appstream-generator' {
    assert "$xsrc/_appstream-generator" is_file
}
@test 'more_src has _alpine-info' {
    assert "$xsrc/_alpine-info" is_file
}
@test 'more_src has _gnome-disk-utility' {
    assert "$xsrc/_gnome-disk-utility" is_file
}
@test 'more_src has _systemsettings5' {
    assert "$xsrc/_systemsettings5" is_file
}
@test 'more_src has _systemsettings6' {
    assert "$xsrc/_systemsettings6" is_file
}
@test 'more_src has _kded6' {
    assert "$xsrc/_kded6" is_file
}
@test 'more_src has _kdeinit6' {
    assert "$xsrc/_kdeinit6" is_file
}
@test 'more_src has _krunner5' {
    assert "$xsrc/_krunner5" is_file
}
@test 'more_src has _krunner6' {
    assert "$xsrc/_krunner6" is_file
}
@test 'more_src has _gnome-extensions-cli' {
    assert "$xsrc/_gnome-extensions-cli" is_file
}
@test 'more_src has _pamac-cli' {
    assert "$xsrc/_pamac-cli" is_file
}
@test 'more_src has _pamac-manager' {
    assert "$xsrc/_pamac-manager" is_file
}
@test 'more_src has _xfce4-volumed-pulse' {
    assert "$xsrc/_xfce4-volumed-pulse" is_file
}
@test 'more_src has _xfce4-screensaver' {
    assert "$xsrc/_xfce4-screensaver" is_file
}
@test 'more_src has _xfce4-screensaver-command' {
    assert "$xsrc/_xfce4-screensaver-command" is_file
}
@test 'more_src has _xfce4-screensaver-preferences' {
    assert "$xsrc/_xfce4-screensaver-preferences" is_file
}
@test 'more_src has _xfce4-orage' {
    assert "$xsrc/_xfce4-orage" is_file
}
@test 'more_src has _pidgin-otr' {
    assert "$xsrc/_pidgin-otr" is_file
}
@test 'more_src has _vokoscreenng' {
    assert "$xsrc/_vokoscreenng" is_file
}
@test 'more_src has _gtk-recordmydesktop' {
    assert "$xsrc/_gtk-recordmydesktop" is_file
}
@test 'more_src has _ffcast' {
    assert "$xsrc/_ffcast" is_file
}
@test 'more_src has _apt-clone-cli' {
    assert "$xsrc/_apt-clone-cli" is_file
}
@test 'more_src has _xinput-calibrator' {
    assert "$xsrc/_xinput-calibrator" is_file
}
@test 'more_src has _wf-shell' {
    assert "$xsrc/_wf-shell" is_file
}
@test 'more_src has _wcm' {
    assert "$xsrc/_wcm" is_file
}
@test 'more_src has _wf-config' {
    assert "$xsrc/_wf-config" is_file
}
@test 'more_src has _wf-info' {
    assert "$xsrc/_wf-info" is_file
}
@test 'more_src has _wayhaus' {
    assert "$xsrc/_wayhaus" is_file
}
@test 'more_src has _mako-utils' {
    assert "$xsrc/_mako-utils" is_file
}
@test 'more_src has _wlinhibit' {
    assert "$xsrc/_wlinhibit" is_file
}
@test 'more_src has _emptty' {
    assert "$xsrc/_emptty" is_file
}
@test 'more_src has _wluma' {
    assert "$xsrc/_wluma" is_file
}
@test 'more_src has _wofi-emoji' {
    assert "$xsrc/_wofi-emoji" is_file
}
@test 'more_src has _wofi-pass' {
    assert "$xsrc/_wofi-pass" is_file
}
@test 'more_src has _wl-clipboard-x11' {
    assert "$xsrc/_wl-clipboard-x11" is_file
}
@test 'more_src has _river' {
    assert "$xsrc/_river" is_file
}
@test 'more_src has _riverwm' {
    assert "$xsrc/_riverwm" is_file
}
@test 'more_src has _labwc-greet' {
    assert "$xsrc/_labwc-greet" is_file
}
@test 'more_src has _weston-info' {
    assert "$xsrc/_weston-info" is_file
}
@test 'more_src has _weston-launch' {
    assert "$xsrc/_weston-launch" is_file
}
@test 'more_src has _weston-debug' {
    assert "$xsrc/_weston-debug" is_file
}
@test 'more_src has _weston-keyboard' {
    assert "$xsrc/_weston-keyboard" is_file
}
@test 'more_src has _weston-screenshooter' {
    assert "$xsrc/_weston-screenshooter" is_file
}
@test 'more_src has _phosh' {
    assert "$xsrc/_phosh" is_file
}
@test 'more_src has _phoc' {
    assert "$xsrc/_phoc" is_file
}
@test 'more_src has _squeekboard' {
    assert "$xsrc/_squeekboard" is_file
}
@test 'more_src has _nwg-shell' {
    assert "$xsrc/_nwg-shell" is_file
}
@test 'more_src has _lircmd' {
    assert "$xsrc/_lircmd" is_file
}
@test 'more_src has _lircrcd' {
    assert "$xsrc/_lircrcd" is_file
}
@test 'more_src has _mode2' {
    assert "$xsrc/_mode2" is_file
}
@test 'more_src has _irw' {
    assert "$xsrc/_irw" is_file
}
@test 'more_src has _irexec' {
    assert "$xsrc/_irexec" is_file
}
@test 'more_src has _irrecord' {
    assert "$xsrc/_irrecord" is_file
}
@test 'more_src has _irsend' {
    assert "$xsrc/_irsend" is_file
}
@test 'more_src has _ircat' {
    assert "$xsrc/_ircat" is_file
}
@test 'more_src has _eventlircd' {
    assert "$xsrc/_eventlircd" is_file
}
@test 'more_src has _inputlirc' {
    assert "$xsrc/_inputlirc" is_file
}
@test 'more_src has _fcitx5-config-qt' {
    assert "$xsrc/_fcitx5-config-qt" is_file
}
@test 'more_src has _fcitx5-configtool' {
    assert "$xsrc/_fcitx5-configtool" is_file
}
@test 'more_src has _fcitx5-diagnose' {
    assert "$xsrc/_fcitx5-diagnose" is_file
}
@test 'more_src has _fcitx5-skk' {
    assert "$xsrc/_fcitx5-skk" is_file
}
@test 'more_src has _fcitx5-mozc' {
    assert "$xsrc/_fcitx5-mozc" is_file
}
@test 'more_src has _fcitx5-anthy' {
    assert "$xsrc/_fcitx5-anthy" is_file
}
@test 'more_src has _fcitx5-pinyin' {
    assert "$xsrc/_fcitx5-pinyin" is_file
}
@test 'more_src has _fcitx5-rime' {
    assert "$xsrc/_fcitx5-rime" is_file
}
@test 'more_src has _fcitx5-table' {
    assert "$xsrc/_fcitx5-table" is_file
}
@test 'more_src has _fcitx5-unicode' {
    assert "$xsrc/_fcitx5-unicode" is_file
}
@test 'more_src has _fcitx5-quickphrase-editor' {
    assert "$xsrc/_fcitx5-quickphrase-editor" is_file
}
@test 'more_src has _xonotic' {
    assert "$xsrc/_xonotic" is_file
}
@test 'more_src has _openarena' {
    assert "$xsrc/_openarena" is_file
}
@test 'more_src has _nexuiz' {
    assert "$xsrc/_nexuiz" is_file
}
@test 'more_src has _warsow' {
    assert "$xsrc/_warsow" is_file
}
@test 'more_src has _quake4' {
    assert "$xsrc/_quake4" is_file
}
@test 'more_src has _fteqw' {
    assert "$xsrc/_fteqw" is_file
}
@test 'more_src has _assault-cube' {
    assert "$xsrc/_assault-cube" is_file
}
@test 'more_src has _worldofpadman' {
    assert "$xsrc/_worldofpadman" is_file
}
@test 'more_src has _cube2' {
    assert "$xsrc/_cube2" is_file
}
@test 'more_src has _sauerbraten' {
    assert "$xsrc/_sauerbraten" is_file
}
@test 'more_src has _redeclipse' {
    assert "$xsrc/_redeclipse" is_file
}
@test 'more_src has _urban-terror' {
    assert "$xsrc/_urban-terror" is_file
}
@test 'more_src has _tremulous' {
    assert "$xsrc/_tremulous" is_file
}
@test 'more_src has _unvanquished' {
    assert "$xsrc/_unvanquished" is_file
}
@test 'more_src has _pioneer' {
    assert "$xsrc/_pioneer" is_file
}
@test 'more_src has _frets-on-fire' {
    assert "$xsrc/_frets-on-fire" is_file
}
@test 'more_src has _fbgrab' {
    assert "$xsrc/_fbgrab" is_file
}
@test 'more_src has _xtitle' {
    assert "$xsrc/_xtitle" is_file
}
@test 'more_src has _xresprobe' {
    assert "$xsrc/_xresprobe" is_file
}
@test 'more_src has _lxsplit' {
    assert "$xsrc/_lxsplit" is_file
}
@test 'more_src has _crawl' {
    assert "$xsrc/_crawl" is_file
}
@test 'more_src has _tome2' {
    assert "$xsrc/_tome2" is_file
}
@test 'more_src has _zangband' {
    assert "$xsrc/_zangband" is_file
}
@test 'more_src has _moria' {
    assert "$xsrc/_moria" is_file
}
@test 'more_src has _omega' {
    assert "$xsrc/_omega" is_file
}
@test 'more_src has _dwarffortress' {
    assert "$xsrc/_dwarffortress" is_file
}
@test 'more_src has _dosemu' {
    assert "$xsrc/_dosemu" is_file
}
@test 'more_src has _atari800' {
    assert "$xsrc/_atari800" is_file
}
@test 'more_src has _hatari' {
    assert "$xsrc/_hatari" is_file
}
@test 'more_src has _yabause' {
    assert "$xsrc/_yabause" is_file
}
@test 'more_src has _desmume' {
    assert "$xsrc/_desmume" is_file
}
@test 'more_src has _citra' {
    assert "$xsrc/_citra" is_file
}
@test 'more_src has _yuzu' {
    assert "$xsrc/_yuzu" is_file
}
@test 'more_src has _ryujinx' {
    assert "$xsrc/_ryujinx" is_file
}
@test 'more_src has _epsxe' {
    assert "$xsrc/_epsxe" is_file
}
@test 'more_src has _mGBA' {
    assert "$xsrc/_mGBA" is_file
}
@test 'more_src has _mgba-qt' {
    assert "$xsrc/_mgba-qt" is_file
}
@test 'more_src has _mgba-sdl' {
    assert "$xsrc/_mgba-sdl" is_file
}
@test 'more_src has _melonds' {
    assert "$xsrc/_melonds" is_file
}
@test 'more_src has _raine' {
    assert "$xsrc/_raine" is_file
}
@test 'more_src has _mednaffe' {
    assert "$xsrc/_mednaffe" is_file
}
@test 'more_src has _sdlmame' {
    assert "$xsrc/_sdlmame" is_file
}
@test 'more_src has _uxn' {
    assert "$xsrc/_uxn" is_file
}
@test 'more_src has _uxntal' {
    assert "$xsrc/_uxntal" is_file
}
@test 'more_src has _uxnemu' {
    assert "$xsrc/_uxnemu" is_file
}
@test 'more_src has _bsnes-jg' {
    assert "$xsrc/_bsnes-jg" is_file
}
@test 'more_src has _bsnes-mt' {
    assert "$xsrc/_bsnes-mt" is_file
}
@test 'more_src has _pSX' {
    assert "$xsrc/_pSX" is_file
}
@test 'more_src has _bochs' {
    assert "$xsrc/_bochs" is_file
}
@test 'more_src has _box86' {
    assert "$xsrc/_box86" is_file
}
@test 'more_src has _box64' {
    assert "$xsrc/_box64" is_file
}
@test 'more_src has _fs-uae' {
    assert "$xsrc/_fs-uae" is_file
}
@test 'more_src has _fs-uae-launcher' {
    assert "$xsrc/_fs-uae-launcher" is_file
}
@test 'more_src has _amiberry' {
    assert "$xsrc/_amiberry" is_file
}
@test 'more_src has _vice' {
    assert "$xsrc/_vice" is_file
}
@test 'more_src has _x64' {
    assert "$xsrc/_x64" is_file
}
@test 'more_src has _x64sc' {
    assert "$xsrc/_x64sc" is_file
}
@test 'more_src has _xpet' {
    assert "$xsrc/_xpet" is_file
}
@test 'more_src has _xplus4' {
    assert "$xsrc/_xplus4" is_file
}
@test 'more_src has _xvic' {
    assert "$xsrc/_xvic" is_file
}
@test 'more_src has _xcbm2' {
    assert "$xsrc/_xcbm2" is_file
}
@test 'more_src has _xcbm5x0' {
    assert "$xsrc/_xcbm5x0" is_file
}
@test 'more_src has _xscpu64' {
    assert "$xsrc/_xscpu64" is_file
}
@test 'more_src has _c1541' {
    assert "$xsrc/_c1541" is_file
}
@test 'more_src has _petcat' {
    assert "$xsrc/_petcat" is_file
}
@test 'more_src has _cartconv' {
    assert "$xsrc/_cartconv" is_file
}
@test 'more_src has _q4wine' {
    assert "$xsrc/_q4wine" is_file
}
@test 'more_src has _play-on-linux' {
    assert "$xsrc/_play-on-linux" is_file
}
@test 'more_src has _joyserver' {
    assert "$xsrc/_joyserver" is_file
}
@test 'more_src has _joystick-test' {
    assert "$xsrc/_joystick-test" is_file
}
@test 'more_src has _jstest-gtk' {
    assert "$xsrc/_jstest-gtk" is_file
}
@test 'more_src has _nestopia-ue' {
    assert "$xsrc/_nestopia-ue" is_file
}
@test 'more_src has _scummvm-tools' {
    assert "$xsrc/_scummvm-tools" is_file
}
@test 'more_src has _residualvm' {
    assert "$xsrc/_residualvm" is_file
}
@test 'more_src has _gemrb' {
    assert "$xsrc/_gemrb" is_file
}
@test 'more_src has _iortcw' {
    assert "$xsrc/_iortcw" is_file
}
@test 'more_src has _thedarkmod' {
    assert "$xsrc/_thedarkmod" is_file
}
@test 'more_src has _slade' {
    assert "$xsrc/_slade" is_file
}
@test 'more_src has _sarien' {
    assert "$xsrc/_sarien" is_file
}
@test 'more_src has _love' {
    assert "$xsrc/_love" is_file
}
@test 'more_src has _minetest' {
    assert "$xsrc/_minetest" is_file
}
@test 'more_src has _luanti' {
    assert "$xsrc/_luanti" is_file
}
@test 'more_src has _minecraft-launcher' {
    assert "$xsrc/_minecraft-launcher" is_file
}
@test 'more_src has _minetest-server' {
    assert "$xsrc/_minetest-server" is_file
}
@test 'more_src has _endless-sky' {
    assert "$xsrc/_endless-sky" is_file
}
@test 'more_src has _unknown-horizons' {
    assert "$xsrc/_unknown-horizons" is_file
}
@test 'more_src has _liquidwar' {
    assert "$xsrc/_liquidwar" is_file
}
@test 'more_src has _liquidwar6' {
    assert "$xsrc/_liquidwar6" is_file
}
@test 'more_src has _0verkill' {
    assert "$xsrc/_0verkill" is_file
}
@test 'more_src has _battle-tanks' {
    assert "$xsrc/_battle-tanks" is_file
}
@test 'more_src has _springrts' {
    assert "$xsrc/_springrts" is_file
}
@test 'more_src has _kgoldrunner' {
    assert "$xsrc/_kgoldrunner" is_file
}
@test 'more_src has _kteatime' {
    assert "$xsrc/_kteatime" is_file
}
@test 'more_src has _guayadeque' {
    assert "$xsrc/_guayadeque" is_file
}
@test 'more_src has _gnome-mpv' {
    assert "$xsrc/_gnome-mpv" is_file
}
@test 'more_src has _klotski' {
    assert "$xsrc/_klotski" is_file
}
@test 'more_src has _kgomore' {
    assert "$xsrc/_kgomore" is_file
}
@test 'more_src has _7kaa' {
    assert "$xsrc/_7kaa" is_file
}
@test 'more_src has _tyrian2000' {
    assert "$xsrc/_tyrian2000" is_file
}
@test 'more_src has _hyperrogue' {
    assert "$xsrc/_hyperrogue" is_file
}
@test 'more_src has _freeorion' {
    assert "$xsrc/_freeorion" is_file
}
@test 'more_src has _megaglest' {
    assert "$xsrc/_megaglest" is_file
}
@test 'more_src has _flare' {
    assert "$xsrc/_flare" is_file
}
@test 'more_src has _cataclysm-dda' {
    assert "$xsrc/_cataclysm-dda" is_file
}
@test 'more_src has _sdcpp' {
    assert "$xsrc/_sdcpp" is_file
}
@test 'more_src has _sdasz80' {
    assert "$xsrc/_sdasz80" is_file
}
@test 'more_src has _sdar' {
    assert "$xsrc/_sdar" is_file
}
@test 'more_src has _sdldlink' {
    assert "$xsrc/_sdldlink" is_file
}
@test 'more_src has _sdobjcopy' {
    assert "$xsrc/_sdobjcopy" is_file
}
@test 'more_src has _sdldlz80' {
    assert "$xsrc/_sdldlz80" is_file
}
@test 'more_src has _sdldgb' {
    assert "$xsrc/_sdldgb" is_file
}
@test 'more_src has _sdas8051' {
    assert "$xsrc/_sdas8051" is_file
}
@test 'more_src has _sdcclib' {
    assert "$xsrc/_sdcclib" is_file
}
@test 'more_src has _makebin' {
    assert "$xsrc/_makebin" is_file
}
@test 'more_src has _packihx' {
    assert "$xsrc/_packihx" is_file
}
@test 'more_src has _inform' {
    assert "$xsrc/_inform" is_file
}
@test 'more_src has _inform6' {
    assert "$xsrc/_inform6" is_file
}
@test 'more_src has _inform7' {
    assert "$xsrc/_inform7" is_file
}
@test 'more_src has _glulx' {
    assert "$xsrc/_glulx" is_file
}
@test 'more_src has _gargoyle' {
    assert "$xsrc/_gargoyle" is_file
}
@test 'more_src has _scott' {
    assert "$xsrc/_scott" is_file
}
@test 'more_src has _srec_cat' {
    assert "$xsrc/_srec_cat" is_file
}
@test 'more_src has _srec_cmp' {
    assert "$xsrc/_srec_cmp" is_file
}
@test 'more_src has _srec_info' {
    assert "$xsrc/_srec_info" is_file
}
@test 'more_src has _as31' {
    assert "$xsrc/_as31" is_file
}
@test 'more_src has _zxbasic' {
    assert "$xsrc/_zxbasic" is_file
}
@test 'more_src has _z88dk' {
    assert "$xsrc/_z88dk" is_file
}
@test 'more_src has _hex2bin' {
    assert "$xsrc/_hex2bin" is_file
}
@test 'more_src has _visualboyadvance' {
    assert "$xsrc/_visualboyadvance" is_file
}
@test 'more_src has _fasm' {
    assert "$xsrc/_fasm" is_file
}
@test 'more_src has _fasm2' {
    assert "$xsrc/_fasm2" is_file
}
@test 'more_src has _fasmg' {
    assert "$xsrc/_fasmg" is_file
}
@test 'more_src has _jwasm' {
    assert "$xsrc/_jwasm" is_file
}
@test 'more_src has _hjwasm' {
    assert "$xsrc/_hjwasm" is_file
}
@test 'more_src has _uasm' {
    assert "$xsrc/_uasm" is_file
}
@test 'more_src has _avra' {
    assert "$xsrc/_avra" is_file
}
@test 'more_src has _tasm' {
    assert "$xsrc/_tasm" is_file
}
@test 'more_src has _masm32' {
    assert "$xsrc/_masm32" is_file
}
@test 'more_src has _objconv' {
    assert "$xsrc/_objconv" is_file
}
@test 'more_src has _iaito' {
    assert "$xsrc/_iaito" is_file
}
@test 'more_src has _mkboot' {
    assert "$xsrc/_mkboot" is_file
}
@test 'more_src has _mkdtboimg' {
    assert "$xsrc/_mkdtboimg" is_file
}
@test 'more_src has _simg2img' {
    assert "$xsrc/_simg2img" is_file
}
@test 'more_src has _img2simg' {
    assert "$xsrc/_img2simg" is_file
}
@test 'more_src has _angr' {
    assert "$xsrc/_angr" is_file
}
@test 'more_src has _pince' {
    assert "$xsrc/_pince" is_file
}
@test 'more_src has _hexer' {
    assert "$xsrc/_hexer" is_file
}
@test 'more_src has _fhex' {
    assert "$xsrc/_fhex" is_file
}
@test 'more_src has _bviplus' {
    assert "$xsrc/_bviplus" is_file
}
@test 'more_src has _wxhexeditor' {
    assert "$xsrc/_wxhexeditor" is_file
}
@test 'more_src has _okteta' {
    assert "$xsrc/_okteta" is_file
}
@test 'more_src has _hyx' {
    assert "$xsrc/_hyx" is_file
}
@test 'more_src has _tweak' {
    assert "$xsrc/_tweak" is_file
}
@test 'more_src has _bedit' {
    assert "$xsrc/_bedit" is_file
}
@test 'more_src has _mkbootfs' {
    assert "$xsrc/_mkbootfs" is_file
}
@test 'more_src has _fastbootd' {
    assert "$xsrc/_fastbootd" is_file
}
@test 'more_src has _payload_dumper' {
    assert "$xsrc/_payload_dumper" is_file
}
@test 'more_src has _avbtool' {
    assert "$xsrc/_avbtool" is_file
}
@test 'more_src has _fdtgrep' {
    assert "$xsrc/_fdtgrep" is_file
}
@test 'more_src has _mokvar' {
    assert "$xsrc/_mokvar" is_file
}
@test 'more_src has _tegrarcm' {
    assert "$xsrc/_tegrarcm" is_file
}
@test 'more_src has _nvflash' {
    assert "$xsrc/_nvflash" is_file
}
@test 'more_src has _u-boot-mkimage' {
    assert "$xsrc/_u-boot-mkimage" is_file
}
@test 'more_src has _idme' {
    assert "$xsrc/_idme" is_file
}
@test 'more_src has _memstat' {
    assert "$xsrc/_memstat" is_file
}
@test 'more_src has _smbios-battery-ctl' {
    assert "$xsrc/_smbios-battery-ctl" is_file
}
@test 'more_src has _smbios-keyboard-ctl' {
    assert "$xsrc/_smbios-keyboard-ctl" is_file
}
@test 'more_src has _smbios-passwd' {
    assert "$xsrc/_smbios-passwd" is_file
}
@test 'more_src has _smbios-sys-info' {
    assert "$xsrc/_smbios-sys-info" is_file
}
@test 'more_src has _smbios-thermal-ctl' {
    assert "$xsrc/_smbios-thermal-ctl" is_file
}
@test 'more_src has _smbios-token-ctl' {
    assert "$xsrc/_smbios-token-ctl" is_file
}
@test 'more_src has _smbios-upflag-ctl' {
    assert "$xsrc/_smbios-upflag-ctl" is_file
}
@test 'more_src has _smbios-wakeup-ctl' {
    assert "$xsrc/_smbios-wakeup-ctl" is_file
}
@test 'more_src has _nvbootflash' {
    assert "$xsrc/_nvbootflash" is_file
}
@test 'more_src has _nvautoflash' {
    assert "$xsrc/_nvautoflash" is_file
}
@test 'more_src has _nvgetdtb' {
    assert "$xsrc/_nvgetdtb" is_file
}
@test 'more_src has _nvtboot' {
    assert "$xsrc/_nvtboot" is_file
}
@test 'more_src has _tf-a-tools' {
    assert "$xsrc/_tf-a-tools" is_file
}
@test 'more_src has _heimdall-frontend' {
    assert "$xsrc/_heimdall-frontend" is_file
}
@test 'more_src has _heaptrack-print' {
    assert "$xsrc/_heaptrack-print" is_file
}
@test 'more_src has _stapio' {
    assert "$xsrc/_stapio" is_file
}
@test 'more_src has _stap-prep' {
    assert "$xsrc/_stap-prep" is_file
}
@test 'more_src has _stap-report' {
    assert "$xsrc/_stap-report" is_file
}
@test 'more_src has _libreport-cli' {
    assert "$xsrc/_libreport-cli" is_file
}
@test 'more_src has _reportbug-ng' {
    assert "$xsrc/_reportbug-ng" is_file
}
@test 'more_src has _bug-buddy' {
    assert "$xsrc/_bug-buddy" is_file
}
@test 'more_src has _jiracli' {
    assert "$xsrc/_jiracli" is_file
}
@test 'more_src has _cd2cue' {
    assert "$xsrc/_cd2cue" is_file
}
@test 'more_src has _cdda2mp4' {
    assert "$xsrc/_cdda2mp4" is_file
}
@test 'more_src has _cdda2flac' {
    assert "$xsrc/_cdda2flac" is_file
}
@test 'more_src has _emacs23' {
    assert "$xsrc/_emacs23" is_file
}
@test 'more_src has _emacs24' {
    assert "$xsrc/_emacs24" is_file
}
@test 'more_src has _emacs25' {
    assert "$xsrc/_emacs25" is_file
}
@test 'more_src has _emacs26' {
    assert "$xsrc/_emacs26" is_file
}
@test 'more_src has _emacs27' {
    assert "$xsrc/_emacs27" is_file
}
@test 'more_src has _emacs28' {
    assert "$xsrc/_emacs28" is_file
}
@test 'more_src has _emacs29' {
    assert "$xsrc/_emacs29" is_file
}
@test 'more_src has _emacs30' {
    assert "$xsrc/_emacs30" is_file
}
@test 'more_src has _neovim-qt' {
    assert "$xsrc/_neovim-qt" is_file
}
@test 'more_src has _vim-tiny' {
    assert "$xsrc/_vim-tiny" is_file
}
@test 'more_src has _vim-athena' {
    assert "$xsrc/_vim-athena" is_file
}
@test 'more_src has _vim-gtk3' {
    assert "$xsrc/_vim-gtk3" is_file
}
@test 'more_src has _vim-gnome' {
    assert "$xsrc/_vim-gnome" is_file
}
@test 'more_src has _rmailmm' {
    assert "$xsrc/_rmailmm" is_file
}
@test 'more_src has _pari-gp' {
    assert "$xsrc/_pari-gp" is_file
}
@test 'more_src has _xmaxima' {
    assert "$xsrc/_xmaxima" is_file
}
@test 'more_src has _imaxima' {
    assert "$xsrc/_imaxima" is_file
}
@test 'more_src has _maxima-jupyter' {
    assert "$xsrc/_maxima-jupyter" is_file
}
@test 'more_src has _fig2ps2tex' {
    assert "$xsrc/_fig2ps2tex" is_file
}
@test 'more_src has _fig2sxd' {
    assert "$xsrc/_fig2sxd" is_file
}
@test 'more_src has _transfig' {
    assert "$xsrc/_transfig" is_file
}
@test 'more_src has _pic2tikz' {
    assert "$xsrc/_pic2tikz" is_file
}
@test 'more_src has _jupyter-console' {
    assert "$xsrc/_jupyter-console" is_file
}
@test 'more_src has _jupyter-qtconsole' {
    assert "$xsrc/_jupyter-qtconsole" is_file
}
@test 'more_src has _ipdb' {
    assert "$xsrc/_ipdb" is_file
}
@test 'more_src has _ipdbpp' {
    assert "$xsrc/_ipdbpp" is_file
}
@test 'more_src has _nbdiff' {
    assert "$xsrc/_nbdiff" is_file
}
@test 'more_src has _nbmerge' {
    assert "$xsrc/_nbmerge" is_file
}
@test 'more_src has _hatchling' {
    assert "$xsrc/_hatchling" is_file
}
@test 'more_src has _flit-core' {
    assert "$xsrc/_flit-core" is_file
}
@test 'more_src has _gnome-terminal-server' {
    assert "$xsrc/_gnome-terminal-server" is_file
}
@test 'more_src has _tinkerforge' {
    assert "$xsrc/_tinkerforge" is_file
}
@test 'more_src has _brickv' {
    assert "$xsrc/_brickv" is_file
}
@test 'more_src has _brickd' {
    assert "$xsrc/_brickd" is_file
}
@test 'more_src has _cgmadison' {
    assert "$xsrc/_cgmadison" is_file
}
@test 'more_src has _cgrun' {
    assert "$xsrc/_cgrun" is_file
}
@test 'more_src has _entropy-broker' {
    assert "$xsrc/_entropy-broker" is_file
}
@test 'more_src has _entropy-broker-client' {
    assert "$xsrc/_entropy-broker-client" is_file
}
@test 'more_src has _egd' {
    assert "$xsrc/_egd" is_file
}
@test 'more_src has _opensmtpd' {
    assert "$xsrc/_opensmtpd" is_file
}
@test 'more_src has _smtpctl' {
    assert "$xsrc/_smtpctl" is_file
}
@test 'more_src has _greenmail' {
    assert "$xsrc/_greenmail" is_file
}
@test 'more_src has _listadmin' {
    assert "$xsrc/_listadmin" is_file
}
@test 'more_src has _imaptest' {
    assert "$xsrc/_imaptest" is_file
}
@test 'more_src has _mailwrapper' {
    assert "$xsrc/_mailwrapper" is_file
}
@test 'more_src has _spamass-milter' {
    assert "$xsrc/_spamass-milter" is_file
}
@test 'more_src has _dspam' {
    assert "$xsrc/_dspam" is_file
}
@test 'more_src has _cyradm' {
    assert "$xsrc/_cyradm" is_file
}
@test 'more_src has _cyrdeliver' {
    assert "$xsrc/_cyrdeliver" is_file
}
@test 'more_src has _mupdate' {
    assert "$xsrc/_mupdate" is_file
}
@test 'more_src has _altermime' {
    assert "$xsrc/_altermime" is_file
}
@test 'more_src has _opendkim' {
    assert "$xsrc/_opendkim" is_file
}
@test 'more_src has _opendkim-testadsp' {
    assert "$xsrc/_opendkim-testadsp" is_file
}
@test 'more_src has _opendkim-genzone' {
    assert "$xsrc/_opendkim-genzone" is_file
}
@test 'more_src has _arc-milter' {
    assert "$xsrc/_arc-milter" is_file
}
@test 'more_src has _clamsmtp' {
    assert "$xsrc/_clamsmtp" is_file
}
@test 'more_src has _clamsmtpd' {
    assert "$xsrc/_clamsmtpd" is_file
}
@test 'more_src has _biff' {
    assert "$xsrc/_biff" is_file
}
@test 'more_src has _tbsm' {
    assert "$xsrc/_tbsm" is_file
}
@test 'more_src has _cdm' {
    assert "$xsrc/_cdm" is_file
}
@test 'more_src has _kdesudo' {
    assert "$xsrc/_kdesudo" is_file
}
@test 'more_src has _polkit-kde-authentication-agent-1' {
    assert "$xsrc/_polkit-kde-authentication-agent-1" is_file
}
@test 'more_src has _vmpop3d' {
    assert "$xsrc/_vmpop3d" is_file
}
@test 'more_src has _milter-manager' {
    assert "$xsrc/_milter-manager" is_file
}
@test 'more_src has _xrootd' {
    assert "$xsrc/_xrootd" is_file
}
@test 'more_src has _xrdcp' {
    assert "$xsrc/_xrdcp" is_file
}
@test 'more_src has _xrdfs' {
    assert "$xsrc/_xrdfs" is_file
}
@test 'more_src has _xrdgsiproxy' {
    assert "$xsrc/_xrdgsiproxy" is_file
}
@test 'more_src has _xrdadler32' {
    assert "$xsrc/_xrdadler32" is_file
}
@test 'more_src has _xrdmapc' {
    assert "$xsrc/_xrdmapc" is_file
}
@test 'more_src has _xrdpwd' {
    assert "$xsrc/_xrdpwd" is_file
}
@test 'more_src has _xrdsssadmin' {
    assert "$xsrc/_xrdsssadmin" is_file
}
@test 'more_src has _globus-url-copy' {
    assert "$xsrc/_globus-url-copy" is_file
}
@test 'more_src has _uberftp' {
    assert "$xsrc/_uberftp" is_file
}
@test 'more_src has _gfal-copy' {
    assert "$xsrc/_gfal-copy" is_file
}
@test 'more_src has _gfal-ls' {
    assert "$xsrc/_gfal-ls" is_file
}
@test 'more_src has _gfal-rm' {
    assert "$xsrc/_gfal-rm" is_file
}
@test 'more_src has _gfal-stat' {
    assert "$xsrc/_gfal-stat" is_file
}
@test 'more_src has _gfal-cat' {
    assert "$xsrc/_gfal-cat" is_file
}
@test 'more_src has _gfal-mkdir' {
    assert "$xsrc/_gfal-mkdir" is_file
}
@test 'more_src has _gfal-rmdir' {
    assert "$xsrc/_gfal-rmdir" is_file
}
@test 'more_src has _gfal-rename' {
    assert "$xsrc/_gfal-rename" is_file
}
@test 'more_src has _voms-proxy-init' {
    assert "$xsrc/_voms-proxy-init" is_file
}
@test 'more_src has _voms-proxy-destroy' {
    assert "$xsrc/_voms-proxy-destroy" is_file
}
@test 'more_src has _voms-proxy-info' {
    assert "$xsrc/_voms-proxy-info" is_file
}
@test 'more_src has _arcproxy' {
    assert "$xsrc/_arcproxy" is_file
}
@test 'more_src has _arcsub' {
    assert "$xsrc/_arcsub" is_file
}
@test 'more_src has _arcstat' {
    assert "$xsrc/_arcstat" is_file
}
@test 'more_src has _arcget' {
    assert "$xsrc/_arcget" is_file
}
@test 'more_src has _pbs_server' {
    assert "$xsrc/_pbs_server" is_file
}
@test 'more_src has _pbs_mom' {
    assert "$xsrc/_pbs_mom" is_file
}
@test 'more_src has _qdel' {
    assert "$xsrc/_qdel" is_file
}
@test 'more_src has _qhold' {
    assert "$xsrc/_qhold" is_file
}
@test 'more_src has _qrls' {
    assert "$xsrc/_qrls" is_file
}
@test 'more_src has _qalter' {
    assert "$xsrc/_qalter" is_file
}
@test 'more_src has _qmove' {
    assert "$xsrc/_qmove" is_file
}
@test 'more_src has _qsig' {
    assert "$xsrc/_qsig" is_file
}
@test 'more_src has _qrerun' {
    assert "$xsrc/_qrerun" is_file
}
@test 'more_src has _qselect' {
    assert "$xsrc/_qselect" is_file
}
@test 'more_src has _qorder' {
    assert "$xsrc/_qorder" is_file
}
@test 'more_src has _qenable' {
    assert "$xsrc/_qenable" is_file
}
@test 'more_src has _qdisable' {
    assert "$xsrc/_qdisable" is_file
}
@test 'more_src has _qterm' {
    assert "$xsrc/_qterm" is_file
}
@test 'more_src has _qmsg' {
    assert "$xsrc/_qmsg" is_file
}
@test 'more_src has _qchkpt' {
    assert "$xsrc/_qchkpt" is_file
}
@test 'more_src has _qrelease' {
    assert "$xsrc/_qrelease" is_file
}
@test 'more_src has _pbsnodes' {
    assert "$xsrc/_pbsnodes" is_file
}
@test 'more_src has _printjob' {
    assert "$xsrc/_printjob" is_file
}
@test 'more_src has _lshosts' {
    assert "$xsrc/_lshosts" is_file
}
@test 'more_src has _lsload' {
    assert "$xsrc/_lsload" is_file
}
@test 'more_src has _lsinfo' {
    assert "$xsrc/_lsinfo" is_file
}
@test 'more_src has _lsplace' {
    assert "$xsrc/_lsplace" is_file
}
@test 'more_src has _lsmake' {
    assert "$xsrc/_lsmake" is_file
}
@test 'more_src has _lspasswd' {
    assert "$xsrc/_lspasswd" is_file
}
@test 'more_src has _lsadmin' {
    assert "$xsrc/_lsadmin" is_file
}
@test 'more_src has _badmin' {
    assert "$xsrc/_badmin" is_file
}
@test 'more_src has _bsub' {
    assert "$xsrc/_bsub" is_file
}
@test 'more_src has _bjobs' {
    assert "$xsrc/_bjobs" is_file
}
@test 'more_src has _bkill' {
    assert "$xsrc/_bkill" is_file
}
@test 'more_src has _bhosts' {
    assert "$xsrc/_bhosts" is_file
}
@test 'more_src has _bqueues' {
    assert "$xsrc/_bqueues" is_file
}
@test 'more_src has _bparams' {
    assert "$xsrc/_bparams" is_file
}
@test 'more_src has _bhist' {
    assert "$xsrc/_bhist" is_file
}
@test 'more_src has _condor_submit' {
    assert "$xsrc/_condor_submit" is_file
}
@test 'more_src has _condor_q' {
    assert "$xsrc/_condor_q" is_file
}
@test 'more_src has _condor_status' {
    assert "$xsrc/_condor_status" is_file
}
@test 'more_src has _condor_history' {
    assert "$xsrc/_condor_history" is_file
}
@test 'more_src has _condor_rm' {
    assert "$xsrc/_condor_rm" is_file
}
@test 'more_src has _condor_hold' {
    assert "$xsrc/_condor_hold" is_file
}
@test 'more_src has _condor_release' {
    assert "$xsrc/_condor_release" is_file
}
@test 'more_src has _condor_prio' {
    assert "$xsrc/_condor_prio" is_file
}
@test 'more_src has _condor_userlog' {
    assert "$xsrc/_condor_userlog" is_file
}
@test 'more_src has _condor_userprio' {
    assert "$xsrc/_condor_userprio" is_file
}
@test 'more_src has _condor_off' {
    assert "$xsrc/_condor_off" is_file
}
@test 'more_src has _condor_on' {
    assert "$xsrc/_condor_on" is_file
}
@test 'more_src has _condor_reconfig' {
    assert "$xsrc/_condor_reconfig" is_file
}
@test 'more_src has _condor_reschedule' {
    assert "$xsrc/_condor_reschedule" is_file
}
@test 'more_src has _condor_restart' {
    assert "$xsrc/_condor_restart" is_file
}
@test 'more_src has _condor_config_val' {
    assert "$xsrc/_condor_config_val" is_file
}
@test 'more_src has _condor_master' {
    assert "$xsrc/_condor_master" is_file
}
@test 'more_src has _condor_schedd' {
    assert "$xsrc/_condor_schedd" is_file
}
@test 'more_src has _condor_negotiator' {
    assert "$xsrc/_condor_negotiator" is_file
}
@test 'more_src has _condor_collector' {
    assert "$xsrc/_condor_collector" is_file
}
@test 'more_src has _condor_startd' {
    assert "$xsrc/_condor_startd" is_file
}
@test 'more_src has _condor_shadow' {
    assert "$xsrc/_condor_shadow" is_file
}
@test 'more_src has _condor_starter' {
    assert "$xsrc/_condor_starter" is_file
}
@test 'more_src has _condor_dagman' {
    assert "$xsrc/_condor_dagman" is_file
}
@test 'more_src has _condor_compile' {
    assert "$xsrc/_condor_compile" is_file
}
@test 'more_src has _condor_chirp' {
    assert "$xsrc/_condor_chirp" is_file
}
@test 'more_src has _condor_advertise' {
    assert "$xsrc/_condor_advertise" is_file
}
@test 'more_src has _condor_fetchlog' {
    assert "$xsrc/_condor_fetchlog" is_file
}
@test 'more_src has _condor_findhost' {
    assert "$xsrc/_condor_findhost" is_file
}
@test 'more_src has _condor_ping' {
    assert "$xsrc/_condor_ping" is_file
}
@test 'more_src has _condor_qedit' {
    assert "$xsrc/_condor_qedit" is_file
}
@test 'more_src has _condor_qsub' {
    assert "$xsrc/_condor_qsub" is_file
}
@test 'more_src has _condor_run' {
    assert "$xsrc/_condor_run" is_file
}
@test 'more_src has _condor_ssh_to_job' {
    assert "$xsrc/_condor_ssh_to_job" is_file
}
@test 'more_src has _condor_stats' {
    assert "$xsrc/_condor_stats" is_file
}
@test 'more_src has _condor_store_cred' {
    assert "$xsrc/_condor_store_cred" is_file
}
@test 'more_src has _condor_tail' {
    assert "$xsrc/_condor_tail" is_file
}
@test 'more_src has _condor_transform_ads' {
    assert "$xsrc/_condor_transform_ads" is_file
}
@test 'more_src has _condor_update_machine_ad' {
    assert "$xsrc/_condor_update_machine_ad" is_file
}
@test 'more_src has _condor_vacate' {
    assert "$xsrc/_condor_vacate" is_file
}
@test 'more_src has _condor_vacate_job' {
    assert "$xsrc/_condor_vacate_job" is_file
}
@test 'more_src has _oshcc' {
    assert "$xsrc/_oshcc" is_file
}
@test 'more_src has _oshfort' {
    assert "$xsrc/_oshfort" is_file
}
@test 'more_src has _gasnetrun_mpi' {
    assert "$xsrc/_gasnetrun_mpi" is_file
}
@test 'more_src has _gasnetrun_smp' {
    assert "$xsrc/_gasnetrun_smp" is_file
}
@test 'more_src has _gasnetrun_ibv' {
    assert "$xsrc/_gasnetrun_ibv" is_file
}
@test 'more_src has _upcc' {
    assert "$xsrc/_upcc" is_file
}
@test 'more_src has _upcrun' {
    assert "$xsrc/_upcrun" is_file
}
@test 'more_src has _ompi-ps' {
    assert "$xsrc/_ompi-ps" is_file
}
@test 'more_src has _ompi-top' {
    assert "$xsrc/_ompi-top" is_file
}
@test 'more_src has _ompi-checkpoint' {
    assert "$xsrc/_ompi-checkpoint" is_file
}
@test 'more_src has _ompi-restart' {
    assert "$xsrc/_ompi-restart" is_file
}
@test 'more_src has _ompi-iof' {
    assert "$xsrc/_ompi-iof" is_file
}
@test 'more_src has _prte' {
    assert "$xsrc/_prte" is_file
}
@test 'more_src has _pterm' {
    assert "$xsrc/_pterm" is_file
}
@test 'more_src has _hydra_pmi_proxy' {
    assert "$xsrc/_hydra_pmi_proxy" is_file
}
@test 'more_src has _hydra_persist' {
    assert "$xsrc/_hydra_persist" is_file
}
@test 'more_src has _mpdcleanup' {
    assert "$xsrc/_mpdcleanup" is_file
}
@test 'more_src has _mpdtrace' {
    assert "$xsrc/_mpdtrace" is_file
}
@test 'more_src has _mpdringtest' {
    assert "$xsrc/_mpdringtest" is_file
}
@test 'more_src has _mpdlistjobs' {
    assert "$xsrc/_mpdlistjobs" is_file
}
@test 'more_src has _mpdkilljob' {
    assert "$xsrc/_mpdkilljob" is_file
}
@test 'more_src has _mpdsigjob' {
    assert "$xsrc/_mpdsigjob" is_file
}
@test 'more_src has _fi_info' {
    assert "$xsrc/_fi_info" is_file
}
@test 'more_src has _fi_pingpong' {
    assert "$xsrc/_fi_pingpong" is_file
}
@test 'more_src has _fi_strerror' {
    assert "$xsrc/_fi_strerror" is_file
}
@test 'more_src has _ibcheckerrs' {
    assert "$xsrc/_ibcheckerrs" is_file
}
@test 'more_src has _ibcheckerrors' {
    assert "$xsrc/_ibcheckerrors" is_file
}
@test 'more_src has _ibcheckport' {
    assert "$xsrc/_ibcheckport" is_file
}
@test 'more_src has _ibcheckportstate' {
    assert "$xsrc/_ibcheckportstate" is_file
}
@test 'more_src has _ibcheckportwidth' {
    assert "$xsrc/_ibcheckportwidth" is_file
}
@test 'more_src has _ibcheckstate' {
    assert "$xsrc/_ibcheckstate" is_file
}
@test 'more_src has _ibcheckwidth' {
    assert "$xsrc/_ibcheckwidth" is_file
}
@test 'more_src has _ibchecknet' {
    assert "$xsrc/_ibchecknet" is_file
}
@test 'more_src has _ibchecknode' {
    assert "$xsrc/_ibchecknode" is_file
}
@test 'more_src has _ibhca_self_test' {
    assert "$xsrc/_ibhca_self_test" is_file
}
@test 'more_src has _mlxconfig' {
    assert "$xsrc/_mlxconfig" is_file
}
@test 'more_src has _mlxfwmanager' {
    assert "$xsrc/_mlxfwmanager" is_file
}
@test 'more_src has _mlxfwreset' {
    assert "$xsrc/_mlxfwreset" is_file
}
@test 'more_src has _mlxlink' {
    assert "$xsrc/_mlxlink" is_file
}
@test 'more_src has _mlxreg' {
    assert "$xsrc/_mlxreg" is_file
}
@test 'more_src has _mlxprivhost' {
    assert "$xsrc/_mlxprivhost" is_file
}
@test 'more_src has _mlxqos' {
    assert "$xsrc/_mlxqos" is_file
}
@test 'more_src has _mlxuptime' {
    assert "$xsrc/_mlxuptime" is_file
}
@test 'more_src has _mst' {
    assert "$xsrc/_mst" is_file
}
@test 'more_src has _mstconfig' {
    assert "$xsrc/_mstconfig" is_file
}
@test 'more_src has _mstflint' {
    assert "$xsrc/_mstflint" is_file
}
@test 'more_src has _mstfwmanager' {
    assert "$xsrc/_mstfwmanager" is_file
}
@test 'more_src has _mstprivhost' {
    assert "$xsrc/_mstprivhost" is_file
}
@test 'more_src has _mstregdump' {
    assert "$xsrc/_mstregdump" is_file
}
@test 'more_src has _mstvpd' {
    assert "$xsrc/_mstvpd" is_file
}
@test 'more_src has _nvidia-installer' {
    assert "$xsrc/_nvidia-installer" is_file
}
@test 'more_src has _nvidia-cuda-mps-control' {
    assert "$xsrc/_nvidia-cuda-mps-control" is_file
}
@test 'more_src has _nvidia-cuda-mps-server' {
    assert "$xsrc/_nvidia-cuda-mps-server" is_file
}
@test 'more_src has _nvidia-detector' {
    assert "$xsrc/_nvidia-detector" is_file
}
@test 'more_src has _nvidia-uninstall' {
    assert "$xsrc/_nvidia-uninstall" is_file
}
@test 'more_src has _cuda-gdbserver' {
    assert "$xsrc/_cuda-gdbserver" is_file
}
@test 'more_src has _nv-nsight-cu-cli' {
    assert "$xsrc/_nv-nsight-cu-cli" is_file
}
@test 'more_src has _nvprune' {
    assert "$xsrc/_nvprune" is_file
}
@test 'more_src has _nvidia-driver' {
    assert "$xsrc/_nvidia-driver" is_file
}
@test 'more_src has _nvidia-container-cli' {
    assert "$xsrc/_nvidia-container-cli" is_file
}
@test 'more_src has _nvidia-ctk' {
    assert "$xsrc/_nvidia-ctk" is_file
}
@test 'more_src has _nvidia-docker' {
    assert "$xsrc/_nvidia-docker" is_file
}
@test 'more_src has _rocprof' {
    assert "$xsrc/_rocprof" is_file
}
@test 'more_src has _rocgdb' {
    assert "$xsrc/_rocgdb" is_file
}
@test 'more_src has _hipify-perl' {
    assert "$xsrc/_hipify-perl" is_file
}
@test 'more_src has _amd-smi' {
    assert "$xsrc/_amd-smi" is_file
}
@test 'more_src has _nv-fabricmanager' {
    assert "$xsrc/_nv-fabricmanager" is_file
}
@test 'more_src has _nvfortran' {
    assert "$xsrc/_nvfortran" is_file
}
@test 'more_src has _nvc++' {
    assert "$xsrc/_nvc++" is_file
}
@test 'more_src has _nvlink' {
    assert "$xsrc/_nvlink" is_file
}
@test 'more_src has _nvvp' {
    assert "$xsrc/_nvvp" is_file
}
@test 'more_src has _cudafe++' {
    assert "$xsrc/_cudafe++" is_file
}
@test 'more_src has _cuda-install-samples' {
    assert "$xsrc/_cuda-install-samples" is_file
}
@test 'more_src has _cudafe' {
    assert "$xsrc/_cudafe" is_file
}
@test 'more_src has _nsight-systems' {
    assert "$xsrc/_nsight-systems" is_file
}
@test 'more_src has _kea-admin' {
    assert "$xsrc/_kea-admin" is_file
}
@test 'more_src has _kea-ctrl-agent' {
    assert "$xsrc/_kea-ctrl-agent" is_file
}
@test 'more_src has _kea-dhcp-ddns' {
    assert "$xsrc/_kea-dhcp-ddns" is_file
}
@test 'more_src has _kea-dhcp4' {
    assert "$xsrc/_kea-dhcp4" is_file
}
@test 'more_src has _kea-dhcp6' {
    assert "$xsrc/_kea-dhcp6" is_file
}
@test 'more_src has _kea-lfc' {
    assert "$xsrc/_kea-lfc" is_file
}
@test 'more_src has _kea-netconf' {
    assert "$xsrc/_kea-netconf" is_file
}
@test 'more_src has _keactrl' {
    assert "$xsrc/_keactrl" is_file
}
@test 'more_src has _kea-shell' {
    assert "$xsrc/_kea-shell" is_file
}
@test 'more_src has _dibbler-server' {
    assert "$xsrc/_dibbler-server" is_file
}
@test 'more_src has _dibbler-client' {
    assert "$xsrc/_dibbler-client" is_file
}
@test 'more_src has _dibbler-relay' {
    assert "$xsrc/_dibbler-relay" is_file
}
@test 'more_src has _dhcp_release' {
    assert "$xsrc/_dhcp_release" is_file
}
@test 'more_src has _dhcp_release6' {
    assert "$xsrc/_dhcp_release6" is_file
}
@test 'more_src has _dhcp_lease_time' {
    assert "$xsrc/_dhcp_lease_time" is_file
}
@test 'more_src has _dhcrelay' {
    assert "$xsrc/_dhcrelay" is_file
}
@test 'more_src has _dhcrelay6' {
    assert "$xsrc/_dhcrelay6" is_file
}
@test 'more_src has _dhcping' {
    assert "$xsrc/_dhcping" is_file
}
@test 'more_src has _omshell' {
    assert "$xsrc/_omshell" is_file
}
@test 'more_src has _odhcp6c' {
    assert "$xsrc/_odhcp6c" is_file
}
@test 'more_src has _odhcpd' {
    assert "$xsrc/_odhcpd" is_file
}
@test 'more_src has _opensm' {
    assert "$xsrc/_opensm" is_file
}
@test 'more_src has _osmtest' {
    assert "$xsrc/_osmtest" is_file
}
@test 'more_src has _ibsim' {
    assert "$xsrc/_ibsim" is_file
}
@test 'more_src has _ibmgtsim' {
    assert "$xsrc/_ibmgtsim" is_file
}
@test 'more_src has _ceph-volume' {
    assert "$xsrc/_ceph-volume" is_file
}
@test 'more_src has _ceph-mon' {
    assert "$xsrc/_ceph-mon" is_file
}
@test 'more_src has _ceph-osd' {
    assert "$xsrc/_ceph-osd" is_file
}
@test 'more_src has _ceph-mgr' {
    assert "$xsrc/_ceph-mgr" is_file
}
@test 'more_src has _ceph-mds' {
    assert "$xsrc/_ceph-mds" is_file
}
@test 'more_src has _ceph-conf' {
    assert "$xsrc/_ceph-conf" is_file
}
@test 'more_src has _ceph-disk' {
    assert "$xsrc/_ceph-disk" is_file
}
@test 'more_src has _ceph-authtool' {
    assert "$xsrc/_ceph-authtool" is_file
}
@test 'more_src has _ceph-bluestore-tool' {
    assert "$xsrc/_ceph-bluestore-tool" is_file
}
@test 'more_src has _ceph-create-keys' {
    assert "$xsrc/_ceph-create-keys" is_file
}
@test 'more_src has _ceph-deploy' {
    assert "$xsrc/_ceph-deploy" is_file
}
@test 'more_src has _ceph-detect-init' {
    assert "$xsrc/_ceph-detect-init" is_file
}
@test 'more_src has _rbd-fuse' {
    assert "$xsrc/_rbd-fuse" is_file
}
@test 'more_src has _rbd-mirror' {
    assert "$xsrc/_rbd-mirror" is_file
}
@test 'more_src has _rbd-nbd' {
    assert "$xsrc/_rbd-nbd" is_file
}
@test 'more_src has _radosgw' {
    assert "$xsrc/_radosgw" is_file
}
@test 'more_src has _radosgw-token' {
    assert "$xsrc/_radosgw-token" is_file
}
@test 'more_src has _cephfs-data-scan' {
    assert "$xsrc/_cephfs-data-scan" is_file
}
@test 'more_src has _cephfs-journal-tool' {
    assert "$xsrc/_cephfs-journal-tool" is_file
}
@test 'more_src has _cephfs-table-tool' {
    assert "$xsrc/_cephfs-table-tool" is_file
}
@test 'more_src has _ceph-syn' {
    assert "$xsrc/_ceph-syn" is_file
}
@test 'more_src has _ceph-dencoder' {
    assert "$xsrc/_ceph-dencoder" is_file
}
@test 'more_src has _ceph-objectstore-tool' {
    assert "$xsrc/_ceph-objectstore-tool" is_file
}
@test 'more_src has _ceph-kvstore-tool' {
    assert "$xsrc/_ceph-kvstore-tool" is_file
}
@test 'more_src has _ceph-clsinfo' {
    assert "$xsrc/_ceph-clsinfo" is_file
}
@test 'more_src has _glusterd' {
    assert "$xsrc/_glusterd" is_file
}
@test 'more_src has _gfid2path' {
    assert "$xsrc/_gfid2path" is_file
}
@test 'more_src has _glfsheal' {
    assert "$xsrc/_glfsheal" is_file
}
@test 'more_src has _mfschunkserver' {
    assert "$xsrc/_mfschunkserver" is_file
}
@test 'more_src has _mfsmaster' {
    assert "$xsrc/_mfsmaster" is_file
}
@test 'more_src has _mfsmetalogger' {
    assert "$xsrc/_mfsmetalogger" is_file
}
@test 'more_src has _mfsmount' {
    assert "$xsrc/_mfsmount" is_file
}
@test 'more_src has _mfscgiserv' {
    assert "$xsrc/_mfscgiserv" is_file
}
@test 'more_src has _mfsappendchunks' {
    assert "$xsrc/_mfsappendchunks" is_file
}
@test 'more_src has _mfschunkstat' {
    assert "$xsrc/_mfschunkstat" is_file
}
@test 'more_src has _mfsdirinfo' {
    assert "$xsrc/_mfsdirinfo" is_file
}
@test 'more_src has _mfsfileinfo' {
    assert "$xsrc/_mfsfileinfo" is_file
}
@test 'more_src has _mfsfilerepair' {
    assert "$xsrc/_mfsfilerepair" is_file
}
@test 'more_src has _mfsgetgoal' {
    assert "$xsrc/_mfsgetgoal" is_file
}
@test 'more_src has _mfssetgoal' {
    assert "$xsrc/_mfssetgoal" is_file
}
@test 'more_src has _mfsgettrashtime' {
    assert "$xsrc/_mfsgettrashtime" is_file
}
@test 'more_src has _mfssettrashtime' {
    assert "$xsrc/_mfssettrashtime" is_file
}
@test 'more_src has _mfsseteattr' {
    assert "$xsrc/_mfsseteattr" is_file
}
@test 'more_src has _mfsgeteattr' {
    assert "$xsrc/_mfsgeteattr" is_file
}
@test 'more_src has _mfsdeleattr' {
    assert "$xsrc/_mfsdeleattr" is_file
}
@test 'more_src has _mfsmetadump' {
    assert "$xsrc/_mfsmetadump" is_file
}
@test 'more_src has _mfsmetarestore' {
    assert "$xsrc/_mfsmetarestore" is_file
}
@test 'more_src has _mfsmakesnapshot' {
    assert "$xsrc/_mfsmakesnapshot" is_file
}
@test 'more_src has _mfsrgetgoal' {
    assert "$xsrc/_mfsrgetgoal" is_file
}
@test 'more_src has _mfsrsetgoal' {
    assert "$xsrc/_mfsrsetgoal" is_file
}
@test 'more_src has _lfs' {
    assert "$xsrc/_lfs" is_file
}
@test 'more_src has _lctl' {
    assert "$xsrc/_lctl" is_file
}
@test 'more_src has _mount.lustre' {
    assert "$xsrc/_mount.lustre" is_file
}
@test 'more_src has _llverdev' {
    assert "$xsrc/_llverdev" is_file
}
@test 'more_src has _mkfs.lustre' {
    assert "$xsrc/_mkfs.lustre" is_file
}
@test 'more_src has _tunefs.lustre' {
    assert "$xsrc/_tunefs.lustre" is_file
}
@test 'more_src has _pvfs2-config' {
    assert "$xsrc/_pvfs2-config" is_file
}
@test 'more_src has _pvfs2-ls' {
    assert "$xsrc/_pvfs2-ls" is_file
}
@test 'more_src has _pvfs2-cp' {
    assert "$xsrc/_pvfs2-cp" is_file
}
@test 'more_src has _pvfs2-rm' {
    assert "$xsrc/_pvfs2-rm" is_file
}
@test 'more_src has _pvfs2-mkdir' {
    assert "$xsrc/_pvfs2-mkdir" is_file
}
@test 'more_src has _pvfs2-rmdir' {
    assert "$xsrc/_pvfs2-rmdir" is_file
}
@test 'more_src has _pvfs2-genconfig' {
    assert "$xsrc/_pvfs2-genconfig" is_file
}
@test 'more_src has _pvfs2-server' {
    assert "$xsrc/_pvfs2-server" is_file
}
@test 'more_src has _beegfs-ctl' {
    assert "$xsrc/_beegfs-ctl" is_file
}
@test 'more_src has _beegfs-fsck' {
    assert "$xsrc/_beegfs-fsck" is_file
}
@test 'more_src has _beegfs-net' {
    assert "$xsrc/_beegfs-net" is_file
}
@test 'more_src has _beegfs-check-servers' {
    assert "$xsrc/_beegfs-check-servers" is_file
}
@test 'more_src has _beegfs-df' {
    assert "$xsrc/_beegfs-df" is_file
}
@test 'more_src has _beegfs-meta' {
    assert "$xsrc/_beegfs-meta" is_file
}
@test 'more_src has _beegfs-mgmtd' {
    assert "$xsrc/_beegfs-mgmtd" is_file
}
@test 'more_src has _beegfs-mon' {
    assert "$xsrc/_beegfs-mon" is_file
}
@test 'more_src has _beegfs-storage' {
    assert "$xsrc/_beegfs-storage" is_file
}
@test 'more_src has _beegfs-helperd' {
    assert "$xsrc/_beegfs-helperd" is_file
}
@test 'more_src has _beegfs-mon-tool' {
    assert "$xsrc/_beegfs-mon-tool" is_file
}
@test 'more_src has _swift-init' {
    assert "$xsrc/_swift-init" is_file
}
@test 'more_src has _swift-proxy-server' {
    assert "$xsrc/_swift-proxy-server" is_file
}
@test 'more_src has _swift-account-server' {
    assert "$xsrc/_swift-account-server" is_file
}
@test 'more_src has _swift-container-server' {
    assert "$xsrc/_swift-container-server" is_file
}
@test 'more_src has _swift-object-server' {
    assert "$xsrc/_swift-object-server" is_file
}
@test 'more_src has _swift-ring-builder' {
    assert "$xsrc/_swift-ring-builder" is_file
}
@test 'more_src has _swift-account-info' {
    assert "$xsrc/_swift-account-info" is_file
}
@test 'more_src has _swift-account-auditor' {
    assert "$xsrc/_swift-account-auditor" is_file
}
@test 'more_src has _swift-account-reaper' {
    assert "$xsrc/_swift-account-reaper" is_file
}
@test 'more_src has _swift-account-replicator' {
    assert "$xsrc/_swift-account-replicator" is_file
}
@test 'more_src has _swift-container-auditor' {
    assert "$xsrc/_swift-container-auditor" is_file
}
@test 'more_src has _swift-container-info' {
    assert "$xsrc/_swift-container-info" is_file
}
@test 'more_src has _swift-container-replicator' {
    assert "$xsrc/_swift-container-replicator" is_file
}
@test 'more_src has _swift-container-sync' {
    assert "$xsrc/_swift-container-sync" is_file
}
@test 'more_src has _swift-container-updater' {
    assert "$xsrc/_swift-container-updater" is_file
}
@test 'more_src has _swift-container-sharder' {
    assert "$xsrc/_swift-container-sharder" is_file
}
@test 'more_src has _swift-object-auditor' {
    assert "$xsrc/_swift-object-auditor" is_file
}
@test 'more_src has _swift-object-info' {
    assert "$xsrc/_swift-object-info" is_file
}
@test 'more_src has _swift-object-replicator' {
    assert "$xsrc/_swift-object-replicator" is_file
}
@test 'more_src has _swift-object-updater' {
    assert "$xsrc/_swift-object-updater" is_file
}
@test 'more_src has _swift-object-expirer' {
    assert "$xsrc/_swift-object-expirer" is_file
}
@test 'more_src has _swift-recon' {
    assert "$xsrc/_swift-recon" is_file
}
@test 'more_src has _swift-get-nodes' {
    assert "$xsrc/_swift-get-nodes" is_file
}
@test 'more_src has _swift-drive-audit' {
    assert "$xsrc/_swift-drive-audit" is_file
}
@test 'more_src has _swift-dispersion-report' {
    assert "$xsrc/_swift-dispersion-report" is_file
}
@test 'more_src has _nova-api' {
    assert "$xsrc/_nova-api" is_file
}
@test 'more_src has _nova-compute' {
    assert "$xsrc/_nova-compute" is_file
}
@test 'more_src has _nova-conductor' {
    assert "$xsrc/_nova-conductor" is_file
}
@test 'more_src has _nova-scheduler' {
    assert "$xsrc/_nova-scheduler" is_file
}
@test 'more_src has _nova-novncproxy' {
    assert "$xsrc/_nova-novncproxy" is_file
}
@test 'more_src has _nova-spicehtml5proxy' {
    assert "$xsrc/_nova-spicehtml5proxy" is_file
}
@test 'more_src has _nova-serialproxy' {
    assert "$xsrc/_nova-serialproxy" is_file
}
@test 'more_src has _nova-status' {
    assert "$xsrc/_nova-status" is_file
}
@test 'more_src has _nova-manage' {
    assert "$xsrc/_nova-manage" is_file
}
@test 'more_src has _nova-rootwrap' {
    assert "$xsrc/_nova-rootwrap" is_file
}
@test 'more_src has _neutron-server' {
    assert "$xsrc/_neutron-server" is_file
}
@test 'more_src has _neutron-dhcp-agent' {
    assert "$xsrc/_neutron-dhcp-agent" is_file
}
@test 'more_src has _neutron-l3-agent' {
    assert "$xsrc/_neutron-l3-agent" is_file
}
@test 'more_src has _neutron-metadata-agent' {
    assert "$xsrc/_neutron-metadata-agent" is_file
}
@test 'more_src has _neutron-openvswitch-agent' {
    assert "$xsrc/_neutron-openvswitch-agent" is_file
}
@test 'more_src has _neutron-linuxbridge-agent' {
    assert "$xsrc/_neutron-linuxbridge-agent" is_file
}
@test 'more_src has _neutron-sanity-check' {
    assert "$xsrc/_neutron-sanity-check" is_file
}
@test 'more_src has _neutron-db-manage' {
    assert "$xsrc/_neutron-db-manage" is_file
}
@test 'more_src has _glance-api' {
    assert "$xsrc/_glance-api" is_file
}
@test 'more_src has _glance-cache-cleaner' {
    assert "$xsrc/_glance-cache-cleaner" is_file
}
@test 'more_src has _glance-cache-manage' {
    assert "$xsrc/_glance-cache-manage" is_file
}
@test 'more_src has _glance-cache-prefetcher' {
    assert "$xsrc/_glance-cache-prefetcher" is_file
}
@test 'more_src has _glance-cache-pruner' {
    assert "$xsrc/_glance-cache-pruner" is_file
}
@test 'more_src has _glance-control' {
    assert "$xsrc/_glance-control" is_file
}
@test 'more_src has _glance-manage' {
    assert "$xsrc/_glance-manage" is_file
}
@test 'more_src has _cinder-api' {
    assert "$xsrc/_cinder-api" is_file
}
@test 'more_src has _cinder-backup' {
    assert "$xsrc/_cinder-backup" is_file
}
@test 'more_src has _cinder-scheduler' {
    assert "$xsrc/_cinder-scheduler" is_file
}
@test 'more_src has _cinder-volume' {
    assert "$xsrc/_cinder-volume" is_file
}
@test 'more_src has _cinder-manage' {
    assert "$xsrc/_cinder-manage" is_file
}
@test 'more_src has _cinder-rootwrap' {
    assert "$xsrc/_cinder-rootwrap" is_file
}
@test 'more_src has _cinder-status' {
    assert "$xsrc/_cinder-status" is_file
}
@test 'more_src has _cinder-rtstool' {
    assert "$xsrc/_cinder-rtstool" is_file
}
@test 'more_src has _keystone-manage' {
    assert "$xsrc/_keystone-manage" is_file
}
@test 'more_src has _keystone-status' {
    assert "$xsrc/_keystone-status" is_file
}
@test 'more_src has _keystone-wsgi-admin' {
    assert "$xsrc/_keystone-wsgi-admin" is_file
}
@test 'more_src has _keystone-wsgi-public' {
    assert "$xsrc/_keystone-wsgi-public" is_file
}
@test 'more_src has _heat-api' {
    assert "$xsrc/_heat-api" is_file
}
@test 'more_src has _heat-api-cfn' {
    assert "$xsrc/_heat-api-cfn" is_file
}
@test 'more_src has _heat-api-cloudwatch' {
    assert "$xsrc/_heat-api-cloudwatch" is_file
}
@test 'more_src has _heat-engine' {
    assert "$xsrc/_heat-engine" is_file
}
@test 'more_src has _heat-manage' {
    assert "$xsrc/_heat-manage" is_file
}
@test 'more_src has _heat-status' {
    assert "$xsrc/_heat-status" is_file
}
@test 'more_src has _heat-db-setup' {
    assert "$xsrc/_heat-db-setup" is_file
}
@test 'more_src has _ironic-api' {
    assert "$xsrc/_ironic-api" is_file
}
@test 'more_src has _ironic-conductor' {
    assert "$xsrc/_ironic-conductor" is_file
}
@test 'more_src has _ironic-dbsync' {
    assert "$xsrc/_ironic-dbsync" is_file
}
@test 'more_src has _ironic-rootwrap' {
    assert "$xsrc/_ironic-rootwrap" is_file
}
@test 'more_src has _ironic-status' {
    assert "$xsrc/_ironic-status" is_file
}
@test 'more_src has _octavia-api' {
    assert "$xsrc/_octavia-api" is_file
}
@test 'more_src has _designate-api' {
    assert "$xsrc/_designate-api" is_file
}
@test 'more_src has _designate-central' {
    assert "$xsrc/_designate-central" is_file
}
@test 'more_src has _designate-manage' {
    assert "$xsrc/_designate-manage" is_file
}
@test 'more_src has _designate-mdns' {
    assert "$xsrc/_designate-mdns" is_file
}
@test 'more_src has _designate-producer' {
    assert "$xsrc/_designate-producer" is_file
}
@test 'more_src has _designate-sink' {
    assert "$xsrc/_designate-sink" is_file
}
@test 'more_src has _designate-status' {
    assert "$xsrc/_designate-status" is_file
}
@test 'more_src has _designate-worker' {
    assert "$xsrc/_designate-worker" is_file
}
@test 'more_src has _designate-agent' {
    assert "$xsrc/_designate-agent" is_file
}
@test 'more_src has _magnum-api' {
    assert "$xsrc/_magnum-api" is_file
}
@test 'more_src has _magnum-conductor' {
    assert "$xsrc/_magnum-conductor" is_file
}
@test 'more_src has _magnum-status' {
    assert "$xsrc/_magnum-status" is_file
}
@test 'more_src has _manila-api' {
    assert "$xsrc/_manila-api" is_file
}
@test 'more_src has _manila-data' {
    assert "$xsrc/_manila-data" is_file
}
@test 'more_src has _manila-manage' {
    assert "$xsrc/_manila-manage" is_file
}
@test 'more_src has _manila-rootwrap' {
    assert "$xsrc/_manila-rootwrap" is_file
}
@test 'more_src has _manila-scheduler' {
    assert "$xsrc/_manila-scheduler" is_file
}
@test 'more_src has _manila-share' {
    assert "$xsrc/_manila-share" is_file
}
@test 'more_src has _manila-status' {
    assert "$xsrc/_manila-status" is_file
}
@test 'more_src has _panko-api' {
    assert "$xsrc/_panko-api" is_file
}
@test 'more_src has _panko-expirer' {
    assert "$xsrc/_panko-expirer" is_file
}
@test 'more_src has _aodh-api' {
    assert "$xsrc/_aodh-api" is_file
}
@test 'more_src has _aodh-evaluator' {
    assert "$xsrc/_aodh-evaluator" is_file
}
@test 'more_src has _aodh-listener' {
    assert "$xsrc/_aodh-listener" is_file
}
@test 'more_src has _aodh-notifier' {
    assert "$xsrc/_aodh-notifier" is_file
}
@test 'more_src has _trove-api' {
    assert "$xsrc/_trove-api" is_file
}
@test 'more_src has _trove-conductor' {
    assert "$xsrc/_trove-conductor" is_file
}
@test 'more_src has _trove-guestagent' {
    assert "$xsrc/_trove-guestagent" is_file
}
@test 'more_src has _trove-manage' {
    assert "$xsrc/_trove-manage" is_file
}
@test 'more_src has _trove-status' {
    assert "$xsrc/_trove-status" is_file
}
@test 'more_src has _trove-taskmanager' {
    assert "$xsrc/_trove-taskmanager" is_file
}
@test 'more_src has _sahara-api' {
    assert "$xsrc/_sahara-api" is_file
}
@test 'more_src has _sahara-engine' {
    assert "$xsrc/_sahara-engine" is_file
}
@test 'more_src has _sahara-manage' {
    assert "$xsrc/_sahara-manage" is_file
}
@test 'more_src has _sahara-status' {
    assert "$xsrc/_sahara-status" is_file
}
@test 'more_src has _watcher-api' {
    assert "$xsrc/_watcher-api" is_file
}
@test 'more_src has _watcher-applier' {
    assert "$xsrc/_watcher-applier" is_file
}
@test 'more_src has _watcher-decision-engine' {
    assert "$xsrc/_watcher-decision-engine" is_file
}
@test 'more_src has _watcher-db-manage' {
    assert "$xsrc/_watcher-db-manage" is_file
}
@test 'more_src has _watcher-status' {
    assert "$xsrc/_watcher-status" is_file
}
@test 'more_src has _ceilometer-agent-central' {
    assert "$xsrc/_ceilometer-agent-central" is_file
}
@test 'more_src has _ceilometer-agent-compute' {
    assert "$xsrc/_ceilometer-agent-compute" is_file
}
@test 'more_src has _ceilometer-agent-notification' {
    assert "$xsrc/_ceilometer-agent-notification" is_file
}
@test 'more_src has _ceilometer-collector' {
    assert "$xsrc/_ceilometer-collector" is_file
}
@test 'more_src has _ceilometer-polling' {
    assert "$xsrc/_ceilometer-polling" is_file
}
@test 'more_src has _ceilometer-upgrade' {
    assert "$xsrc/_ceilometer-upgrade" is_file
}
@test 'more_src has _ceilometer-status' {
    assert "$xsrc/_ceilometer-status" is_file
}
@test 'more_src has _freezer-api' {
    assert "$xsrc/_freezer-api" is_file
}
@test 'more_src has _freezer-manage' {
    assert "$xsrc/_freezer-manage" is_file
}
@test 'more_src has _freezer-status' {
    assert "$xsrc/_freezer-status" is_file
}
@test 'more_src has _mistral-api' {
    assert "$xsrc/_mistral-api" is_file
}
@test 'more_src has _mistral-db-manage' {
    assert "$xsrc/_mistral-db-manage" is_file
}
@test 'more_src has _mistral-engine' {
    assert "$xsrc/_mistral-engine" is_file
}
@test 'more_src has _mistral-event-engine' {
    assert "$xsrc/_mistral-event-engine" is_file
}
@test 'more_src has _mistral-executor' {
    assert "$xsrc/_mistral-executor" is_file
}
@test 'more_src has _mistral-notifier' {
    assert "$xsrc/_mistral-notifier" is_file
}
@test 'more_src has _mistral-server' {
    assert "$xsrc/_mistral-server" is_file
}
@test 'more_src has _zaqar-server' {
    assert "$xsrc/_zaqar-server" is_file
}
@test 'more_src has _zaqar-gc' {
    assert "$xsrc/_zaqar-gc" is_file
}
@test 'more_src has _zaqar-status' {
    assert "$xsrc/_zaqar-status" is_file
}
@test 'more_src has _barbican-api' {
    assert "$xsrc/_barbican-api" is_file
}
@test 'more_src has _barbican-keystone-listener' {
    assert "$xsrc/_barbican-keystone-listener" is_file
}
@test 'more_src has _barbican-manage' {
    assert "$xsrc/_barbican-manage" is_file
}
@test 'more_src has _barbican-retry' {
    assert "$xsrc/_barbican-retry" is_file
}
@test 'more_src has _barbican-status' {
    assert "$xsrc/_barbican-status" is_file
}
@test 'more_src has _tacker-server' {
    assert "$xsrc/_tacker-server" is_file
}
@test 'more_src has _tacker-conductor' {
    assert "$xsrc/_tacker-conductor" is_file
}
@test 'more_src has _tacker-db-manage' {
    assert "$xsrc/_tacker-db-manage" is_file
}
@test 'more_src has _vitrage-api' {
    assert "$xsrc/_vitrage-api" is_file
}
@test 'more_src has _vitrage-graph' {
    assert "$xsrc/_vitrage-graph" is_file
}
@test 'more_src has _vitrage-notifier' {
    assert "$xsrc/_vitrage-notifier" is_file
}
@test 'more_src has _senlin-api' {
    assert "$xsrc/_senlin-api" is_file
}
@test 'more_src has _senlin-engine' {
    assert "$xsrc/_senlin-engine" is_file
}
@test 'more_src has _senlin-manage' {
    assert "$xsrc/_senlin-manage" is_file
}
@test 'more_src has _senlin-status' {
    assert "$xsrc/_senlin-status" is_file
}
@test 'more_src has _monasca-agent-forwarder' {
    assert "$xsrc/_monasca-agent-forwarder" is_file
}
@test 'more_src has _monasca-collector' {
    assert "$xsrc/_monasca-collector" is_file
}
@test 'more_src has _monasca-statsd' {
    assert "$xsrc/_monasca-statsd" is_file
}
@test 'more_src has _monasca-notification' {
    assert "$xsrc/_monasca-notification" is_file
}
@test 'more_src has _monasca-api' {
    assert "$xsrc/_monasca-api" is_file
}
@test 'more_src has _monasca-persister' {
    assert "$xsrc/_monasca-persister" is_file
}
@test 'more_src has _monasca-thresh' {
    assert "$xsrc/_monasca-thresh" is_file
}
@test 'more_src has _masakari-api' {
    assert "$xsrc/_masakari-api" is_file
}
@test 'more_src has _masakari-engine' {
    assert "$xsrc/_masakari-engine" is_file
}
@test 'more_src has _masakari-manage' {
    assert "$xsrc/_masakari-manage" is_file
}
@test 'more_src has _masakari-status' {
    assert "$xsrc/_masakari-status" is_file
}
@test 'more_src has _masakari-monitors' {
    assert "$xsrc/_masakari-monitors" is_file
}
@test 'more_src has _murano-api' {
    assert "$xsrc/_murano-api" is_file
}
@test 'more_src has _murano-cf-api' {
    assert "$xsrc/_murano-cf-api" is_file
}
@test 'more_src has _murano-engine' {
    assert "$xsrc/_murano-engine" is_file
}
@test 'more_src has _murano-manage' {
    assert "$xsrc/_murano-manage" is_file
}
@test 'more_src has _murano-status' {
    assert "$xsrc/_murano-status" is_file
}
@test 'more_src has _murano-test-runner' {
    assert "$xsrc/_murano-test-runner" is_file
}
@test 'more_src has _octavia-worker' {
    assert "$xsrc/_octavia-worker" is_file
}
@test 'more_src has _octavia-health-manager' {
    assert "$xsrc/_octavia-health-manager" is_file
}
@test 'more_src has _octavia-housekeeping' {
    assert "$xsrc/_octavia-housekeeping" is_file
}
@test 'more_src has _octavia-driver-agent' {
    assert "$xsrc/_octavia-driver-agent" is_file
}
@test 'more_src has _placement-manage' {
    assert "$xsrc/_placement-manage" is_file
}
@test 'more_src has _placement-api' {
    assert "$xsrc/_placement-api" is_file
}
@test 'more_src has _placement-status' {
    assert "$xsrc/_placement-status" is_file
}
@test 'more_src has _cyborg-api' {
    assert "$xsrc/_cyborg-api" is_file
}
@test 'more_src has _cyborg-conductor' {
    assert "$xsrc/_cyborg-conductor" is_file
}
@test 'more_src has _cyborg-agent' {
    assert "$xsrc/_cyborg-agent" is_file
}
@test 'more_src has _cyborg-status' {
    assert "$xsrc/_cyborg-status" is_file
}
@test 'more_src has _blazar-api' {
    assert "$xsrc/_blazar-api" is_file
}
@test 'more_src has _blazar-manager' {
    assert "$xsrc/_blazar-manager" is_file
}
@test 'more_src has _blazar-db-manage' {
    assert "$xsrc/_blazar-db-manage" is_file
}
@test 'more_src has _blazar-status' {
    assert "$xsrc/_blazar-status" is_file
}
@test 'more_src has _zun-api' {
    assert "$xsrc/_zun-api" is_file
}
@test 'more_src has _zun-compute' {
    assert "$xsrc/_zun-compute" is_file
}
@test 'more_src has _zun-cni-daemon' {
    assert "$xsrc/_zun-cni-daemon" is_file
}
@test 'more_src has _zun-db-manage' {
    assert "$xsrc/_zun-db-manage" is_file
}
@test 'more_src has _zun-wsproxy' {
    assert "$xsrc/_zun-wsproxy" is_file
}
@test 'more_src has _zun-status' {
    assert "$xsrc/_zun-status" is_file
}
@test 'more_src has _kuryr-cni' {
    assert "$xsrc/_kuryr-cni" is_file
}
@test 'more_src has _kuryr-server' {
    assert "$xsrc/_kuryr-server" is_file
}
@test 'more_src has _kuryr-daemon' {
    assert "$xsrc/_kuryr-daemon" is_file
}
@test 'more_src has _kuryr-controller' {
    assert "$xsrc/_kuryr-controller" is_file
}
@test 'more_src has _searchlight-api' {
    assert "$xsrc/_searchlight-api" is_file
}
@test 'more_src has _searchlight-manage' {
    assert "$xsrc/_searchlight-manage" is_file
}
@test 'more_src has _searchlight-listener' {
    assert "$xsrc/_searchlight-listener" is_file
}
@test 'more_src has _solum-api' {
    assert "$xsrc/_solum-api" is_file
}
@test 'more_src has _solum-conductor' {
    assert "$xsrc/_solum-conductor" is_file
}
@test 'more_src has _solum-worker' {
    assert "$xsrc/_solum-worker" is_file
}
@test 'more_src has _solum-deployer' {
    assert "$xsrc/_solum-deployer" is_file
}
@test 'more_src has _virt-image' {
    assert "$xsrc/_virt-image" is_file
}
@test 'more_src has _virt-sanlock-cleanup' {
    assert "$xsrc/_virt-sanlock-cleanup" is_file
}
@test 'more_src has _virt-builder-repository' {
    assert "$xsrc/_virt-builder-repository" is_file
}
@test 'more_src has _virt-firmware' {
    assert "$xsrc/_virt-firmware" is_file
}
@test 'more_src has _virt-p2v' {
    assert "$xsrc/_virt-p2v" is_file
}
@test 'more_src has _virt-v2v-in-place' {
    assert "$xsrc/_virt-v2v-in-place" is_file
}
@test 'more_src has _virt-bootstrap' {
    assert "$xsrc/_virt-bootstrap" is_file
}
@test 'more_src has _VBoxNetDHCP' {
    assert "$xsrc/_VBoxNetDHCP" is_file
}
@test 'more_src has _VBoxNetAdpCtl' {
    assert "$xsrc/_VBoxNetAdpCtl" is_file
}
@test 'more_src has _VBoxNetNAT' {
    assert "$xsrc/_VBoxNetNAT" is_file
}
@test 'more_src has _VBoxControl' {
    assert "$xsrc/_VBoxControl" is_file
}
@test 'more_src has _VBoxNetBoot' {
    assert "$xsrc/_VBoxNetBoot" is_file
}
@test 'more_src has _VBoxXPCOMIPCD' {
    assert "$xsrc/_VBoxXPCOMIPCD" is_file
}
@test 'more_src has _vhost-user-blk' {
    assert "$xsrc/_vhost-user-blk" is_file
}
@test 'more_src has _vhost-user-net' {
    assert "$xsrc/_vhost-user-net" is_file
}
@test 'more_src has _vhost-user-scsi' {
    assert "$xsrc/_vhost-user-scsi" is_file
}
@test 'more_src has _vhost-user-fs' {
    assert "$xsrc/_vhost-user-fs" is_file
}
@test 'more_src has _vhost-user-gpu' {
    assert "$xsrc/_vhost-user-gpu" is_file
}
@test 'more_src has _xm' {
    assert "$xsrc/_xm" is_file
}
@test 'more_src has _xenstore' {
    assert "$xsrc/_xenstore" is_file
}
@test 'more_src has _xen-bugtool' {
    assert "$xsrc/_xen-bugtool" is_file
}
@test 'more_src has _xen-detect' {
    assert "$xsrc/_xen-detect" is_file
}
@test 'more_src has _xen-list' {
    assert "$xsrc/_xen-list" is_file
}
@test 'more_src has _oxenstored' {
    assert "$xsrc/_oxenstored" is_file
}
@test 'more_src has _xenballoond' {
    assert "$xsrc/_xenballoond" is_file
}
@test 'more_src has _xenbaked' {
    assert "$xsrc/_xenbaked" is_file
}
@test 'more_src has _xenwatch' {
    assert "$xsrc/_xenwatch" is_file
}
@test 'more_src has _xenhypfs' {
    assert "$xsrc/_xenhypfs" is_file
}
@test 'more_src has _xen-livepatch' {
    assert "$xsrc/_xen-livepatch" is_file
}
@test 'more_src has _xenpvnetboot' {
    assert "$xsrc/_xenpvnetboot" is_file
}
@test 'more_src has _xenmon' {
    assert "$xsrc/_xenmon" is_file
}
@test 'more_src has _xen-pciback' {
    assert "$xsrc/_xen-pciback" is_file
}
@test 'more_src has _xen-watchdogd' {
    assert "$xsrc/_xen-watchdogd" is_file
}
@test 'more_src has _xenconsoled' {
    assert "$xsrc/_xenconsoled" is_file
}
@test 'more_src has _xendomains' {
    assert "$xsrc/_xendomains" is_file
}
@test 'more_src has _jailer' {
    assert "$xsrc/_jailer" is_file
}
@test 'more_src has _kata-monitor' {
    assert "$xsrc/_kata-monitor" is_file
}
@test 'more_src has _kata-collect-data' {
    assert "$xsrc/_kata-collect-data" is_file
}
@test 'more_src has _containerd-shim-kata-v2' {
    assert "$xsrc/_containerd-shim-kata-v2" is_file
}
@test 'more_src has _ctr-remote' {
    assert "$xsrc/_ctr-remote" is_file
}
@test 'more_src has _ctr-enc' {
    assert "$xsrc/_ctr-enc" is_file
}
@test 'more_src has _ctd-decoder' {
    assert "$xsrc/_ctd-decoder" is_file
}
@test 'more_src has _conmon-rs' {
    assert "$xsrc/_conmon-rs" is_file
}
@test 'more_src has _sif' {
    assert "$xsrc/_sif" is_file
}
@test 'more_src has _sif-info' {
    assert "$xsrc/_sif-info" is_file
}
@test 'more_src has _ch-build' {
    assert "$xsrc/_ch-build" is_file
}
@test 'more_src has _ch-image' {
    assert "$xsrc/_ch-image" is_file
}
@test 'more_src has _ch-mount' {
    assert "$xsrc/_ch-mount" is_file
}
@test 'more_src has _shifter' {
    assert "$xsrc/_shifter" is_file
}
@test 'more_src has _shifterimg' {
    assert "$xsrc/_shifterimg" is_file
}
@test 'more_src has _kube-apiserver' {
    assert "$xsrc/_kube-apiserver" is_file
}
@test 'more_src has _kube-controller-manager' {
    assert "$xsrc/_kube-controller-manager" is_file
}
@test 'more_src has _kube-scheduler' {
    assert "$xsrc/_kube-scheduler" is_file
}
@test 'more_src has _kube-proxy' {
    assert "$xsrc/_kube-proxy" is_file
}
@test 'more_src has _helm-operator' {
    assert "$xsrc/_helm-operator" is_file
}
@test 'more_src has _operator-courier' {
    assert "$xsrc/_operator-courier" is_file
}
@test 'more_src has _opm' {
    assert "$xsrc/_opm" is_file
}
@test 'more_src has _operator-registry' {
    assert "$xsrc/_operator-registry" is_file
}
@test 'more_src has _kapp-controller' {
    assert "$xsrc/_kapp-controller" is_file
}
@test 'more_src has _prometheus-config-reloader' {
    assert "$xsrc/_prometheus-config-reloader" is_file
}
@test 'more_src has _kube-state-metrics' {
    assert "$xsrc/_kube-state-metrics" is_file
}
@test 'more_src has _karmada-aggregated-apiserver' {
    assert "$xsrc/_karmada-aggregated-apiserver" is_file
}
@test 'more_src has _karmada-controller-manager' {
    assert "$xsrc/_karmada-controller-manager" is_file
}
@test 'more_src has _karmada-scheduler' {
    assert "$xsrc/_karmada-scheduler" is_file
}
@test 'more_src has _karmada-search' {
    assert "$xsrc/_karmada-search" is_file
}
@test 'more_src has _karmada-descheduler' {
    assert "$xsrc/_karmada-descheduler" is_file
}
@test 'more_src has _karmada-webhook' {
    assert "$xsrc/_karmada-webhook" is_file
}
@test 'more_src has _karmada-metrics-adapter' {
    assert "$xsrc/_karmada-metrics-adapter" is_file
}
@test 'more_src has _karmada-agent' {
    assert "$xsrc/_karmada-agent" is_file
}
@test 'more_src has _capa-controller-manager' {
    assert "$xsrc/_capa-controller-manager" is_file
}
@test 'more_src has _capi-controller-manager' {
    assert "$xsrc/_capi-controller-manager" is_file
}
@test 'more_src has _rancher-agent' {
    assert "$xsrc/_rancher-agent" is_file
}
@test 'more_src has _trivy-operator' {
    assert "$xsrc/_trivy-operator" is_file
}
@test 'more_src has _omni-agent' {
    assert "$xsrc/_omni-agent" is_file
}
@test 'more_src has _rancher-server' {
    assert "$xsrc/_rancher-server" is_file
}
@test 'more_src has _cilium-agent' {
    assert "$xsrc/_cilium-agent" is_file
}
@test 'more_src has _cilium-operator' {
    assert "$xsrc/_cilium-operator" is_file
}
@test 'more_src has _cilium-bugtool' {
    assert "$xsrc/_cilium-bugtool" is_file
}
@test 'more_src has _cilium-health' {
    assert "$xsrc/_cilium-health" is_file
}
@test 'more_src has _hubble-relay' {
    assert "$xsrc/_hubble-relay" is_file
}
@test 'more_src has _calico-node' {
    assert "$xsrc/_calico-node" is_file
}
@test 'more_src has _typha' {
    assert "$xsrc/_typha" is_file
}
@test 'more_src has _weave-net' {
    assert "$xsrc/_weave-net" is_file
}
@test 'more_src has _weave-npc' {
    assert "$xsrc/_weave-npc" is_file
}
@test 'more_src has _pilot-agent' {
    assert "$xsrc/_pilot-agent" is_file
}
@test 'more_src has _pilot-discovery' {
    assert "$xsrc/_pilot-discovery" is_file
}
@test 'more_src has _istiod' {
    assert "$xsrc/_istiod" is_file
}
@test 'more_src has _galley' {
    assert "$xsrc/_galley" is_file
}
@test 'more_src has _sidecar-injector' {
    assert "$xsrc/_sidecar-injector" is_file
}
@test 'more_src has _citadel' {
    assert "$xsrc/_citadel" is_file
}
@test 'more_src has _linkerd-proxy' {
    assert "$xsrc/_linkerd-proxy" is_file
}
@test 'more_src has _linkerd-proxy-init' {
    assert "$xsrc/_linkerd-proxy-init" is_file
}
@test 'more_src has _linkerd-destination' {
    assert "$xsrc/_linkerd-destination" is_file
}
@test 'more_src has _linkerd-identity' {
    assert "$xsrc/_linkerd-identity" is_file
}
@test 'more_src has _linkerd-policy' {
    assert "$xsrc/_linkerd-policy" is_file
}
@test 'more_src has _consul-replicate' {
    assert "$xsrc/_consul-replicate" is_file
}
@test 'more_src has _consul-snapshot' {
    assert "$xsrc/_consul-snapshot" is_file
}
@test 'more_src has _vault-agent' {
    assert "$xsrc/_vault-agent" is_file
}
@test 'more_src has _vault-csi-provider' {
    assert "$xsrc/_vault-csi-provider" is_file
}
@test 'more_src has _kn-quickstart' {
    assert "$xsrc/_kn-quickstart" is_file
}
@test 'more_src has _external-dns' {
    assert "$xsrc/_external-dns" is_file
}
@test 'more_src has _cert-manager-controller' {
    assert "$xsrc/_cert-manager-controller" is_file
}
@test 'more_src has _cert-manager-webhook' {
    assert "$xsrc/_cert-manager-webhook" is_file
}
@test 'more_src has _cert-manager-cainjector' {
    assert "$xsrc/_cert-manager-cainjector" is_file
}
@test 'more_src has _emissary-ingress' {
    assert "$xsrc/_emissary-ingress" is_file
}
@test 'more_src has _argocd-server' {
    assert "$xsrc/_argocd-server" is_file
}
@test 'more_src has _argocd-application-controller' {
    assert "$xsrc/_argocd-application-controller" is_file
}
@test 'more_src has _argocd-repo-server' {
    assert "$xsrc/_argocd-repo-server" is_file
}
@test 'more_src has _argocd-applicationset-controller' {
    assert "$xsrc/_argocd-applicationset-controller" is_file
}
@test 'more_src has _argocd-notifications-controller' {
    assert "$xsrc/_argocd-notifications-controller" is_file
}
@test 'more_src has _external-secrets' {
    assert "$xsrc/_external-secrets" is_file
}
@test 'more_src has _reloader' {
    assert "$xsrc/_reloader" is_file
}
@test 'more_src has _skipper' {
    assert "$xsrc/_skipper" is_file
}
@test 'more_src has _eskip' {
    assert "$xsrc/_eskip" is_file
}
@test 'more_src has _grafana-agentctl' {
    assert "$xsrc/_grafana-agentctl" is_file
}
@test 'more_src has _grafana-image-renderer' {
    assert "$xsrc/_grafana-image-renderer" is_file
}
@test 'more_src has _grafana-agent-operator' {
    assert "$xsrc/_grafana-agent-operator" is_file
}
@test 'more_src has _mimir-tool' {
    assert "$xsrc/_mimir-tool" is_file
}
@test 'more_src has _influxd-meta' {
    assert "$xsrc/_influxd-meta" is_file
}
@test 'more_src has _influxd-data' {
    assert "$xsrc/_influxd-data" is_file
}
@test 'more_src has _influxd-ctl' {
    assert "$xsrc/_influxd-ctl" is_file
}
@test 'more_src has _woodpecker-agent' {
    assert "$xsrc/_woodpecker-agent" is_file
}
@test 'more_src has _woodpecker-server' {
    assert "$xsrc/_woodpecker-server" is_file
}
@test 'more_src has _kong-operator' {
    assert "$xsrc/_kong-operator" is_file
}
@test 'more_src has _nginx-ingress' {
    assert "$xsrc/_nginx-ingress" is_file
}
@test 'more_src has _jaeger-operator' {
    assert "$xsrc/_jaeger-operator" is_file
}
@test 'more_src has _zipkin' {
    assert "$xsrc/_zipkin" is_file
}
@test 'more_src has _kiali' {
    assert "$xsrc/_kiali" is_file
}
@test 'more_src has _kiali-operator' {
    assert "$xsrc/_kiali-operator" is_file
}
@test 'more_src has _opentelemetry-collector' {
    assert "$xsrc/_opentelemetry-collector" is_file
}
@test 'more_src has _opentelemetry-collector-contrib' {
    assert "$xsrc/_opentelemetry-collector-contrib" is_file
}
@test 'more_src has _vector-cli' {
    assert "$xsrc/_vector-cli" is_file
}
@test 'more_src has _vector-tap' {
    assert "$xsrc/_vector-tap" is_file
}
@test 'more_src has _fluentbit' {
    assert "$xsrc/_fluentbit" is_file
}
@test 'more_src has _td-agent-bit' {
    assert "$xsrc/_td-agent-bit" is_file
}
@test 'more_src has _nri-prometheus' {
    assert "$xsrc/_nri-prometheus" is_file
}
@test 'more_src has _nri-flex' {
    assert "$xsrc/_nri-flex" is_file
}
@test 'more_src has _nri-discovery' {
    assert "$xsrc/_nri-discovery" is_file
}
@test 'more_src has _nri-docker' {
    assert "$xsrc/_nri-docker" is_file
}
@test 'more_src has _nri-kubernetes' {
    assert "$xsrc/_nri-kubernetes" is_file
}
@test 'more_src has _sumo-collector' {
    assert "$xsrc/_sumo-collector" is_file
}
@test 'more_src has _sumo-otel-distro' {
    assert "$xsrc/_sumo-otel-distro" is_file
}
@test 'more_src has _honeycomb-cli' {
    assert "$xsrc/_honeycomb-cli" is_file
}
@test 'more_src has _sentry-server' {
    assert "$xsrc/_sentry-server" is_file
}
@test 'more_src has _rollbar-agent' {
    assert "$xsrc/_rollbar-agent" is_file
}
@test 'more_src has _cabot' {
    assert "$xsrc/_cabot" is_file
}
@test 'more_src has _dynatrace-agent' {
    assert "$xsrc/_dynatrace-agent" is_file
}
@test 'more_src has _oneagent' {
    assert "$xsrc/_oneagent" is_file
}
@test 'more_src has _oneagentctl' {
    assert "$xsrc/_oneagentctl" is_file
}
@test 'more_src has _newrelic-license-manager' {
    assert "$xsrc/_newrelic-license-manager" is_file
}
@test 'more_src has _pg_combinebackup' {
    assert "$xsrc/_pg_combinebackup" is_file
}
@test 'more_src has _pg_createsubscriber' {
    assert "$xsrc/_pg_createsubscriber" is_file
}
@test 'more_src has _pg_walsummary' {
    assert "$xsrc/_pg_walsummary" is_file
}
@test 'more_src has _pgcopydb' {
    assert "$xsrc/_pgcopydb" is_file
}
@test 'more_src has _pcp_attach_node' {
    assert "$xsrc/_pcp_attach_node" is_file
}
@test 'more_src has _pcp_detach_node' {
    assert "$xsrc/_pcp_detach_node" is_file
}
@test 'more_src has _pcp_recovery_node' {
    assert "$xsrc/_pcp_recovery_node" is_file
}
@test 'more_src has _pcp_promote_node' {
    assert "$xsrc/_pcp_promote_node" is_file
}
@test 'more_src has _pcp_node_count' {
    assert "$xsrc/_pcp_node_count" is_file
}
@test 'more_src has _pcp_node_info' {
    assert "$xsrc/_pcp_node_info" is_file
}
@test 'more_src has _pcp_pool_status' {
    assert "$xsrc/_pcp_pool_status" is_file
}
@test 'more_src has _pcp_watchdog_info' {
    assert "$xsrc/_pcp_watchdog_info" is_file
}
@test 'more_src has _pcp_proc_count' {
    assert "$xsrc/_pcp_proc_count" is_file
}
@test 'more_src has _pcp_proc_info' {
    assert "$xsrc/_pcp_proc_info" is_file
}
@test 'more_src has _pcp_health_check_stats' {
    assert "$xsrc/_pcp_health_check_stats" is_file
}
@test 'more_src has _pcp_stop_pgpool' {
    assert "$xsrc/_pcp_stop_pgpool" is_file
}
@test 'more_src has _pcp_reload_config' {
    assert "$xsrc/_pcp_reload_config" is_file
}
@test 'more_src has _pgxc_ctl' {
    assert "$xsrc/_pgxc_ctl" is_file
}
@test 'more_src has _mariadbd' {
    assert "$xsrc/_mariadbd" is_file
}
@test 'more_src has _mariadb-fix-extensions' {
    assert "$xsrc/_mariadb-fix-extensions" is_file
}
@test 'more_src has _mariadb-service-convert' {
    assert "$xsrc/_mariadb-service-convert" is_file
}
@test 'more_src has _mysql-router' {
    assert "$xsrc/_mysql-router" is_file
}
@test 'more_src has _mysql-router-bootstrap' {
    assert "$xsrc/_mysql-router-bootstrap" is_file
}
@test 'more_src has _mysql-router-passwd' {
    assert "$xsrc/_mysql-router-passwd" is_file
}
@test 'more_src has _mysql-shell' {
    assert "$xsrc/_mysql-shell" is_file
}
@test 'more_src has _sqlite3rsync' {
    assert "$xsrc/_sqlite3rsync" is_file
}
@test 'more_src has _sqlite-web' {
    assert "$xsrc/_sqlite-web" is_file
}
@test 'more_src has _sqlite-ftvs' {
    assert "$xsrc/_sqlite-ftvs" is_file
}
@test 'more_src has _sqlitebiter' {
    assert "$xsrc/_sqlitebiter" is_file
}
@test 'more_src has _sqlitestudio' {
    assert "$xsrc/_sqlitestudio" is_file
}
@test 'more_src has _mongocryptd' {
    assert "$xsrc/_mongocryptd" is_file
}
@test 'more_src has _mongokerberos' {
    assert "$xsrc/_mongokerberos" is_file
}
@test 'more_src has _mongoldap' {
    assert "$xsrc/_mongoldap" is_file
}
@test 'more_src has _mongocompass' {
    assert "$xsrc/_mongocompass" is_file
}
@test 'more_src has _keydb-benchmark' {
    assert "$xsrc/_keydb-benchmark" is_file
}
@test 'more_src has _keydb-check-aof' {
    assert "$xsrc/_keydb-check-aof" is_file
}
@test 'more_src has _keydb-check-rdb' {
    assert "$xsrc/_keydb-check-rdb" is_file
}
@test 'more_src has _keydb-sentinel' {
    assert "$xsrc/_keydb-sentinel" is_file
}
@test 'more_src has _garnet-cli' {
    assert "$xsrc/_garnet-cli" is_file
}
@test 'more_src has _dragonfly-cli' {
    assert "$xsrc/_dragonfly-cli" is_file
}
@test 'more_src has _memcached-debug' {
    assert "$xsrc/_memcached-debug" is_file
}
@test 'more_src has _valkey-benchmark' {
    assert "$xsrc/_valkey-benchmark" is_file
}
@test 'more_src has _valkey-sentinel' {
    assert "$xsrc/_valkey-sentinel" is_file
}
@test 'more_src has _valkey-check-aof' {
    assert "$xsrc/_valkey-check-aof" is_file
}
@test 'more_src has _valkey-check-rdb' {
    assert "$xsrc/_valkey-check-rdb" is_file
}
@test 'more_src has _tile38' {
    assert "$xsrc/_tile38" is_file
}
@test 'more_src has _tile38-cli' {
    assert "$xsrc/_tile38-cli" is_file
}
@test 'more_src has _tile38-benchmark' {
    assert "$xsrc/_tile38-benchmark" is_file
}
@test 'more_src has _sstablekeys' {
    assert "$xsrc/_sstablekeys" is_file
}
@test 'more_src has _sstable2json' {
    assert "$xsrc/_sstable2json" is_file
}
@test 'more_src has _elasticsearch-syskeygen' {
    assert "$xsrc/_elasticsearch-syskeygen" is_file
}
@test 'more_src has _elasticsearch-certutil' {
    assert "$xsrc/_elasticsearch-certutil" is_file
}
@test 'more_src has _elasticsearch-certgen' {
    assert "$xsrc/_elasticsearch-certgen" is_file
}
@test 'more_src has _elasticsearch-setup-passwords' {
    assert "$xsrc/_elasticsearch-setup-passwords" is_file
}
@test 'more_src has _elasticsearch-translog' {
    assert "$xsrc/_elasticsearch-translog" is_file
}
@test 'more_src has _elasticsearch-node' {
    assert "$xsrc/_elasticsearch-node" is_file
}
@test 'more_src has _elasticsearch-service-tokens' {
    assert "$xsrc/_elasticsearch-service-tokens" is_file
}
@test 'more_src has _opensearch-plugin' {
    assert "$xsrc/_opensearch-plugin" is_file
}
@test 'more_src has _opensearch-keystore' {
    assert "$xsrc/_opensearch-keystore" is_file
}
@test 'more_src has _opensearch-perf-tool' {
    assert "$xsrc/_opensearch-perf-tool" is_file
}
@test 'more_src has _solr-zkcli' {
    assert "$xsrc/_solr-zkcli" is_file
}
@test 'more_src has _zookeeper-server' {
    assert "$xsrc/_zookeeper-server" is_file
}
@test 'more_src has _zkserver' {
    assert "$xsrc/_zkserver" is_file
}
@test 'more_src has _clickhouse-keeper-converter' {
    assert "$xsrc/_clickhouse-keeper-converter" is_file
}
@test 'more_src has _clickhouse-git-import' {
    assert "$xsrc/_clickhouse-git-import" is_file
}
@test 'more_src has _clickhouse-library-bridge' {
    assert "$xsrc/_clickhouse-library-bridge" is_file
}
@test 'more_src has _clickhouse-odbc-bridge' {
    assert "$xsrc/_clickhouse-odbc-bridge" is_file
}
@test 'more_src has _yugabyte' {
    assert "$xsrc/_yugabyte" is_file
}
@test 'more_src has _yugabytedb' {
    assert "$xsrc/_yugabytedb" is_file
}
@test 'more_src has _crate' {
    assert "$xsrc/_crate" is_file
}
@test 'more_src has _crate-admin' {
    assert "$xsrc/_crate-admin" is_file
}
@test 'more_src has _tigris-cli' {
    assert "$xsrc/_tigris-cli" is_file
}
@test 'more_src has _edgedb-server' {
    assert "$xsrc/_edgedb-server" is_file
}
@test 'more_src has _rocksdb_ldb' {
    assert "$xsrc/_rocksdb_ldb" is_file
}
@test 'more_src has _rocksdb_sst_dump' {
    assert "$xsrc/_rocksdb_sst_dump" is_file
}
@test 'more_src has _rocksdb_repair' {
    assert "$xsrc/_rocksdb_repair" is_file
}
@test 'more_src has _natscli' {
    assert "$xsrc/_natscli" is_file
}
@test 'more_src has _nats-pub' {
    assert "$xsrc/_nats-pub" is_file
}
@test 'more_src has _nats-sub' {
    assert "$xsrc/_nats-sub" is_file
}
@test 'more_src has _artemis-cli' {
    assert "$xsrc/_artemis-cli" is_file
}
@test 'more_src has _artemis-jms-client' {
    assert "$xsrc/_artemis-jms-client" is_file
}
@test 'more_src has _pulsar-daemon' {
    assert "$xsrc/_pulsar-daemon" is_file
}
@test 'more_src has _zenoh-bridge-dds' {
    assert "$xsrc/_zenoh-bridge-dds" is_file
}
@test 'more_src has _zenoh-bridge-mqtt' {
    assert "$xsrc/_zenoh-bridge-mqtt" is_file
}
@test 'more_src has _zenoh-bridge-ros2dds' {
    assert "$xsrc/_zenoh-bridge-ros2dds" is_file
}
@test 'more_src has _zenoh-router' {
    assert "$xsrc/_zenoh-router" is_file
}
@test 'more_src has _zenohd' {
    assert "$xsrc/_zenohd" is_file
}
@test 'more_src has _juju' {
    assert "$xsrc/_juju" is_file
}
@test 'more_src has _juju-run' {
    assert "$xsrc/_juju-run" is_file
}
@test 'more_src has _liftbridge' {
    assert "$xsrc/_liftbridge" is_file
}
@test 'more_src has _liftctl' {
    assert "$xsrc/_liftctl" is_file
}
@test 'more_src has _stan-server' {
    assert "$xsrc/_stan-server" is_file
}
@test 'more_src has _tbot' {
    assert "$xsrc/_tbot" is_file
}
@test 'more_src has _teleport-event-handler' {
    assert "$xsrc/_teleport-event-handler" is_file
}
@test 'more_src has _pyroscope-cli' {
    assert "$xsrc/_pyroscope-cli" is_file
}
@test 'more_src has _pyroscope-server' {
    assert "$xsrc/_pyroscope-server" is_file
}
@test 'more_src has _tempo-cli' {
    assert "$xsrc/_tempo-cli" is_file
}
@test 'more_src has _tempo-vulture' {
    assert "$xsrc/_tempo-vulture" is_file
}
@test 'more_src has _vlogs' {
    assert "$xsrc/_vlogs" is_file
}
@test 'more_src has _vlinsert' {
    assert "$xsrc/_vlinsert" is_file
}
@test 'more_src has _vlselect' {
    assert "$xsrc/_vlselect" is_file
}
@test 'more_src has _dagster-daemon' {
    assert "$xsrc/_dagster-daemon" is_file
}
@test 'more_src has _dagster-webserver' {
    assert "$xsrc/_dagster-webserver" is_file
}
@test 'more_src has _dagit' {
    assert "$xsrc/_dagit" is_file
}
@test 'more_src has _argo-server' {
    assert "$xsrc/_argo-server" is_file
}
@test 'more_src has _argo-cd-image-updater' {
    assert "$xsrc/_argo-cd-image-updater" is_file
}
@test 'more_src has _argo-rollouts' {
    assert "$xsrc/_argo-rollouts" is_file
}
@test 'more_src has _tekton-cli' {
    assert "$xsrc/_tekton-cli" is_file
}
@test 'more_src has _tektoncd-cli' {
    assert "$xsrc/_tektoncd-cli" is_file
}
@test 'more_src has _jenkinsfile-runner' {
    assert "$xsrc/_jenkinsfile-runner" is_file
}
@test 'more_src has _kfp-cli' {
    assert "$xsrc/_kfp-cli" is_file
}
@test 'more_src has _karpor' {
    assert "$xsrc/_karpor" is_file
}
@test 'more_src has _karporctl' {
    assert "$xsrc/_karporctl" is_file
}
@test 'more_src has _gpu-feature-discovery' {
    assert "$xsrc/_gpu-feature-discovery" is_file
}
@test 'more_src has _k8s-device-plugin' {
    assert "$xsrc/_k8s-device-plugin" is_file
}
@test 'more_src has _nvidia-device-plugin' {
    assert "$xsrc/_nvidia-device-plugin" is_file
}
@test 'more_src has _amd-device-plugin' {
    assert "$xsrc/_amd-device-plugin" is_file
}
@test 'more_src has _sriov-cni' {
    assert "$xsrc/_sriov-cni" is_file
}
@test 'more_src has _multus-cni' {
    assert "$xsrc/_multus-cni" is_file
}
@test 'more_src has _multus-daemon' {
    assert "$xsrc/_multus-daemon" is_file
}
@test 'more_src has _falco-exporter' {
    assert "$xsrc/_falco-exporter" is_file
}
@test 'more_src has _falco-driver-loader' {
    assert "$xsrc/_falco-driver-loader" is_file
}
@test 'more_src has _snort2' {
    assert "$xsrc/_snort2" is_file
}
@test 'more_src has _snort_inline' {
    assert "$xsrc/_snort_inline" is_file
}
@test 'more_src has _suricatactl' {
    assert "$xsrc/_suricatactl" is_file
}
@test 'more_src has _suricatasc' {
    assert "$xsrc/_suricatasc" is_file
}
@test 'more_src has _weave-scope' {
    assert "$xsrc/_weave-scope" is_file
}
@test 'more_src has _wazuh-logtest' {
    assert "$xsrc/_wazuh-logtest" is_file
}
@test 'more_src has _wazuh-manager' {
    assert "$xsrc/_wazuh-manager" is_file
}
@test 'more_src has _wazuh-modulesd' {
    assert "$xsrc/_wazuh-modulesd" is_file
}
@test 'more_src has _wazuh-syscheckd' {
    assert "$xsrc/_wazuh-syscheckd" is_file
}
@test 'more_src has _wazuh-execd' {
    assert "$xsrc/_wazuh-execd" is_file
}
@test 'more_src has _wazuh-monitord' {
    assert "$xsrc/_wazuh-monitord" is_file
}
@test 'more_src has _wazuh-analysisd' {
    assert "$xsrc/_wazuh-analysisd" is_file
}
@test 'more_src has _wazuh-remoted' {
    assert "$xsrc/_wazuh-remoted" is_file
}
@test 'more_src has _ossec-control' {
    assert "$xsrc/_ossec-control" is_file
}
@test 'more_src has _ossec-agent' {
    assert "$xsrc/_ossec-agent" is_file
}
@test 'more_src has _ossec-agent-auth' {
    assert "$xsrc/_ossec-agent-auth" is_file
}
@test 'more_src has _ossec-logtest' {
    assert "$xsrc/_ossec-logtest" is_file
}
@test 'more_src has _ossec-makelists' {
    assert "$xsrc/_ossec-makelists" is_file
}
@test 'more_src has _ossec-regex' {
    assert "$xsrc/_ossec-regex" is_file
}
@test 'more_src has _owasp-zap' {
    assert "$xsrc/_owasp-zap" is_file
}
@test 'more_src has _zap-baseline' {
    assert "$xsrc/_zap-baseline" is_file
}
@test 'more_src has _zap-full-scan' {
    assert "$xsrc/_zap-full-scan" is_file
}
@test 'more_src has _zap-api-scan' {
    assert "$xsrc/_zap-api-scan" is_file
}
@test 'more_src has _airdrop-ng' {
    assert "$xsrc/_airdrop-ng" is_file
}
@test 'more_src has _airgraph-ng' {
    assert "$xsrc/_airgraph-ng" is_file
}
@test 'more_src has _wpaclean' {
    assert "$xsrc/_wpaclean" is_file
}
@test 'more_src has _aide-init' {
    assert "$xsrc/_aide-init" is_file
}
@test 'more_src has _aide-update' {
    assert "$xsrc/_aide-update" is_file
}
@test 'more_src has _aide-check' {
    assert "$xsrc/_aide-check" is_file
}
@test 'more_src has _samhainctl' {
    assert "$xsrc/_samhainctl" is_file
}
@test 'more_src has _rekall' {
    assert "$xsrc/_rekall" is_file
}
@test 'more_src has _autopsy-cli' {
    assert "$xsrc/_autopsy-cli" is_file
}
@test 'more_src has _dls' {
    assert "$xsrc/_dls" is_file
}
@test 'more_src has _tsk_dirstat' {
    assert "$xsrc/_tsk_dirstat" is_file
}
@test 'more_src has _ssdeep-update' {
    assert "$xsrc/_ssdeep-update" is_file
}
@test 'more_src has _freshclam-config' {
    assert "$xsrc/_freshclam-config" is_file
}
@test 'more_src has _clamav-unofficial-sigs' {
    assert "$xsrc/_clamav-unofficial-sigs" is_file
}
@test 'more_src has _bcrypt-tool' {
    assert "$xsrc/_bcrypt-tool" is_file
}
@test 'more_src has _pwgen-perl' {
    assert "$xsrc/_pwgen-perl" is_file
}
@test 'more_src has _passphrase' {
    assert "$xsrc/_passphrase" is_file
}
@test 'more_src has _passhash' {
    assert "$xsrc/_passhash" is_file
}
@test 'more_src has _scapy3k' {
    assert "$xsrc/_scapy3k" is_file
}
@test 'more_src has _netcat-traditional' {
    assert "$xsrc/_netcat-traditional" is_file
}
@test 'more_src has _netcat-openbsd' {
    assert "$xsrc/_netcat-openbsd" is_file
}
@test 'more_src has _traceroute-paris' {
    assert "$xsrc/_traceroute-paris" is_file
}
@test 'more_src has _sequoia-sq' {
    assert "$xsrc/_sequoia-sq" is_file
}
@test 'more_src has _rnp' {
    assert "$xsrc/_rnp" is_file
}
@test 'more_src has _rnpkeys' {
    assert "$xsrc/_rnpkeys" is_file
}
@test 'more_src has _rnpv' {
    assert "$xsrc/_rnpv" is_file
}
@test 'more_src has _signify-openbsd' {
    assert "$xsrc/_signify-openbsd" is_file
}
@test 'more_src has _openpgp-card-tool' {
    assert "$xsrc/_openpgp-card-tool" is_file
}
@test 'more_src has _openpgp-card-admin' {
    assert "$xsrc/_openpgp-card-admin" is_file
}
@test 'more_src has _efitools' {
    assert "$xsrc/_efitools" is_file
}
@test 'more_src has _efivarfs-test' {
    assert "$xsrc/_efivarfs-test" is_file
}
@test 'more_src has _sectok' {
    assert "$xsrc/_sectok" is_file
}
@test 'more_src has _tflite_convert' {
    assert "$xsrc/_tflite_convert" is_file
}
@test 'more_src has _toco' {
    assert "$xsrc/_toco" is_file
}
@test 'more_src has _saved_model_cli' {
    assert "$xsrc/_saved_model_cli" is_file
}
@test 'more_src has _tf2onnx' {
    assert "$xsrc/_tf2onnx" is_file
}
@test 'more_src has _onnx-graphsurgeon' {
    assert "$xsrc/_onnx-graphsurgeon" is_file
}
@test 'more_src has _onnxsim' {
    assert "$xsrc/_onnxsim" is_file
}
@test 'more_src has _trtexec' {
    assert "$xsrc/_trtexec" is_file
}
@test 'more_src has _polygraphy' {
    assert "$xsrc/_polygraphy" is_file
}
@test 'more_src has _torch-model-archiver' {
    assert "$xsrc/_torch-model-archiver" is_file
}
@test 'more_src has _llama-cpp-server' {
    assert "$xsrc/_llama-cpp-server" is_file
}
@test 'more_src has _llama-tokenize' {
    assert "$xsrc/_llama-tokenize" is_file
}
@test 'more_src has _llama-gguf-split' {
    assert "$xsrc/_llama-gguf-split" is_file
}
@test 'more_src has _tabby-cli' {
    assert "$xsrc/_tabby-cli" is_file
}
@test 'more_src has _text-generation-server' {
    assert "$xsrc/_text-generation-server" is_file
}
@test 'more_src has _triton-inference-server' {
    assert "$xsrc/_triton-inference-server" is_file
}
@test 'more_src has _xgboost' {
    assert "$xsrc/_xgboost" is_file
}
@test 'more_src has _lightgbm' {
    assert "$xsrc/_lightgbm" is_file
}
@test 'more_src has _seldon-batch-processor' {
    assert "$xsrc/_seldon-batch-processor" is_file
}
@test 'more_src has _flyteadmin' {
    assert "$xsrc/_flyteadmin" is_file
}
@test 'more_src has _flytepropeller' {
    assert "$xsrc/_flytepropeller" is_file
}
@test 'more_src has _metaflow-cli' {
    assert "$xsrc/_metaflow-cli" is_file
}
@test 'more_src has _zenml-cli' {
    assert "$xsrc/_zenml-cli" is_file
}
@test 'more_src has _kedro-cli' {
    assert "$xsrc/_kedro-cli" is_file
}
@test 'more_src has _modelmesh' {
    assert "$xsrc/_modelmesh" is_file
}
@test 'more_src has _h2o-3' {
    assert "$xsrc/_h2o-3" is_file
}
@test 'more_src has _maxima-help' {
    assert "$xsrc/_maxima-help" is_file
}
@test 'more_src has _reduce' {
    assert "$xsrc/_reduce" is_file
}
@test 'more_src has _gnuplotmkpov' {
    assert "$xsrc/_gnuplotmkpov" is_file
}
@test 'more_src has _gp2c-run' {
    assert "$xsrc/_gp2c-run" is_file
}
@test 'more_src has _mupad' {
    assert "$xsrc/_mupad" is_file
}
@test 'more_src has _kdesvn' {
    assert "$xsrc/_kdesvn" is_file
}
@test 'more_src has _keditbookmarks' {
    assert "$xsrc/_keditbookmarks" is_file
}
@test 'more_src has _khelpcenter' {
    assert "$xsrc/_khelpcenter" is_file
}
@test 'more_src has _kdevelop' {
    assert "$xsrc/_kdevelop" is_file
}
@test 'more_src has _kompare' {
    assert "$xsrc/_kompare" is_file
}
@test 'more_src has _krename' {
    assert "$xsrc/_krename" is_file
}
@test 'more_src has _krfb' {
    assert "$xsrc/_krfb" is_file
}
@test 'more_src has _krdc' {
    assert "$xsrc/_krdc" is_file
}
@test 'more_src has _kcalc' {
    assert "$xsrc/_kcalc" is_file
}
@test 'more_src has _kapptemplate' {
    assert "$xsrc/_kapptemplate" is_file
}
@test 'more_src has _kbookmarkmerger' {
    assert "$xsrc/_kbookmarkmerger" is_file
}
@test 'more_src has _kphotoalbum' {
    assert "$xsrc/_kphotoalbum" is_file
}
@test 'more_src has _kmag' {
    assert "$xsrc/_kmag" is_file
}
@test 'more_src has _kmix' {
    assert "$xsrc/_kmix" is_file
}
@test 'more_src has _kuiviewer' {
    assert "$xsrc/_kuiviewer" is_file
}
@test 'more_src has _kwalletmanager' {
    assert "$xsrc/_kwalletmanager" is_file
}
@test 'more_src has _kwalletd6' {
    assert "$xsrc/_kwalletd6" is_file
}
@test 'more_src has _kwave' {
    assert "$xsrc/_kwave" is_file
}
@test 'more_src has _kwriteconfig6' {
    assert "$xsrc/_kwriteconfig6" is_file
}
@test 'more_src has _kbluetoothd' {
    assert "$xsrc/_kbluetoothd" is_file
}
@test 'more_src has _gnome-screensaver' {
    assert "$xsrc/_gnome-screensaver" is_file
}
@test 'more_src has _gnome-boxes' {
    assert "$xsrc/_gnome-boxes" is_file
}
@test 'more_src has _gnome-builder' {
    assert "$xsrc/_gnome-builder" is_file
}
@test 'more_src has _xfce4-settings' {
    assert "$xsrc/_xfce4-settings" is_file
}
@test 'more_src has _xfce4-clipman-settings' {
    assert "$xsrc/_xfce4-clipman-settings" is_file
}
@test 'more_src has _xfce4-mixer' {
    assert "$xsrc/_xfce4-mixer" is_file
}
@test 'more_src has _xfce4-mount-plugin' {
    assert "$xsrc/_xfce4-mount-plugin" is_file
}
@test 'more_src has _xfce4-sensors-plugin' {
    assert "$xsrc/_xfce4-sensors-plugin" is_file
}
@test 'more_src has _xfce4-systemload-plugin' {
    assert "$xsrc/_xfce4-systemload-plugin" is_file
}
@test 'more_src has _xfce4-time-out-plugin' {
    assert "$xsrc/_xfce4-time-out-plugin" is_file
}
@test 'more_src has _xfce4-timer-plugin' {
    assert "$xsrc/_xfce4-timer-plugin" is_file
}
@test 'more_src has _xfce4-weather-plugin' {
    assert "$xsrc/_xfce4-weather-plugin" is_file
}
@test 'more_src has _xfce4-wavelan-plugin' {
    assert "$xsrc/_xfce4-wavelan-plugin" is_file
}
@test 'more_src has _mate-disk-utility' {
    assert "$xsrc/_mate-disk-utility" is_file
}
@test 'more_src has _mate-disk-image-mounter' {
    assert "$xsrc/_mate-disk-image-mounter" is_file
}
@test 'more_src has _mate-notification-properties' {
    assert "$xsrc/_mate-notification-properties" is_file
}
@test 'more_src has _mate-display-properties' {
    assert "$xsrc/_mate-display-properties" is_file
}
@test 'more_src has _caja-bookmarks' {
    assert "$xsrc/_caja-bookmarks" is_file
}
@test 'more_src has _caja-fileproperties' {
    assert "$xsrc/_caja-fileproperties" is_file
}
@test 'more_src has _caja-folder-handler' {
    assert "$xsrc/_caja-folder-handler" is_file
}
@test 'more_src has _caja-image' {
    assert "$xsrc/_caja-image" is_file
}
@test 'more_src has _caja-pluma' {
    assert "$xsrc/_caja-pluma" is_file
}
@test 'more_src has _caja-share' {
    assert "$xsrc/_caja-share" is_file
}
@test 'more_src has _caja-actions' {
    assert "$xsrc/_caja-actions" is_file
}
@test 'more_src has _caja-rabbitvcs' {
    assert "$xsrc/_caja-rabbitvcs" is_file
}
@test 'more_src has _lxqt-config' {
    assert "$xsrc/_lxqt-config" is_file
}
@test 'more_src has _lxqt-runner' {
    assert "$xsrc/_lxqt-runner" is_file
}
@test 'more_src has _lxqt-leave' {
    assert "$xsrc/_lxqt-leave" is_file
}
@test 'more_src has _lxqt-config-appearance' {
    assert "$xsrc/_lxqt-config-appearance" is_file
}
@test 'more_src has _lxqt-config-globalkeyshortcuts' {
    assert "$xsrc/_lxqt-config-globalkeyshortcuts" is_file
}
@test 'more_src has _lxqt-config-input' {
    assert "$xsrc/_lxqt-config-input" is_file
}
@test 'more_src has _lxqt-config-locale' {
    assert "$xsrc/_lxqt-config-locale" is_file
}
@test 'more_src has _lxqt-config-monitor' {
    assert "$xsrc/_lxqt-config-monitor" is_file
}
@test 'more_src has _lxqt-policykit-agent' {
    assert "$xsrc/_lxqt-policykit-agent" is_file
}
@test 'more_src has _lxqt-powermanagement' {
    assert "$xsrc/_lxqt-powermanagement" is_file
}
@test 'more_src has _lxqt-archiver' {
    assert "$xsrc/_lxqt-archiver" is_file
}
@test 'more_src has _lxqt-about' {
    assert "$xsrc/_lxqt-about" is_file
}
@test 'more_src has _lxqt-config-brightness' {
    assert "$xsrc/_lxqt-config-brightness" is_file
}
@test 'more_src has _lxqt-config-cursor' {
    assert "$xsrc/_lxqt-config-cursor" is_file
}
@test 'more_src has _lxqt-config-file-associations' {
    assert "$xsrc/_lxqt-config-file-associations" is_file
}
@test 'more_src has _lxqt-config-notificationd' {
    assert "$xsrc/_lxqt-config-notificationd" is_file
}
@test 'more_src has _lxqt-config-randr' {
    assert "$xsrc/_lxqt-config-randr" is_file
}
@test 'more_src has _lxqt-confupdate' {
    assert "$xsrc/_lxqt-confupdate" is_file
}
@test 'more_src has _lxqt-lockscreen' {
    assert "$xsrc/_lxqt-lockscreen" is_file
}
@test 'more_src has _lxqt-notificationd' {
    assert "$xsrc/_lxqt-notificationd" is_file
}
@test 'more_src has _lxqt-openssh-askpass' {
    assert "$xsrc/_lxqt-openssh-askpass" is_file
}
@test 'more_src has _lxqt-pcmanfm' {
    assert "$xsrc/_lxqt-pcmanfm" is_file
}
@test 'more_src has _lxqt-sudo' {
    assert "$xsrc/_lxqt-sudo" is_file
}
@test 'more_src has _lxqt-trayman' {
    assert "$xsrc/_lxqt-trayman" is_file
}
@test 'more_src has _lxqt-wallet' {
    assert "$xsrc/_lxqt-wallet" is_file
}
@test 'more_src has _cinnamon-settings-daemon' {
    assert "$xsrc/_cinnamon-settings-daemon" is_file
}
@test 'more_src has _cinnamon-killer-daemon' {
    assert "$xsrc/_cinnamon-killer-daemon" is_file
}
@test 'more_src has _cinnamon-menu-editor' {
    assert "$xsrc/_cinnamon-menu-editor" is_file
}
@test 'more_src has _cinnamon-screensaver-lock-dialog' {
    assert "$xsrc/_cinnamon-screensaver-lock-dialog" is_file
}
@test 'more_src has _nemo-autorun-software' {
    assert "$xsrc/_nemo-autorun-software" is_file
}
@test 'more_src has _nemo-preview' {
    assert "$xsrc/_nemo-preview" is_file
}
@test 'more_src has _budgie-desktop' {
    assert "$xsrc/_budgie-desktop" is_file
}
@test 'more_src has _budgie-wm' {
    assert "$xsrc/_budgie-wm" is_file
}
@test 'more_src has _budgie-rundialog' {
    assert "$xsrc/_budgie-rundialog" is_file
}
@test 'more_src has _wingpanel' {
    assert "$xsrc/_wingpanel" is_file
}
@test 'more_src has _pantheon-files' {
    assert "$xsrc/_pantheon-files" is_file
}
@test 'more_src has _pantheon-terminal' {
    assert "$xsrc/_pantheon-terminal" is_file
}
@test 'more_src has _pantheon-photos' {
    assert "$xsrc/_pantheon-photos" is_file
}
@test 'more_src has _enlightenment' {
    assert "$xsrc/_enlightenment" is_file
}
@test 'more_src has _enlightenment_start' {
    assert "$xsrc/_enlightenment_start" is_file
}
@test 'more_src has _enlightenment_filemanager' {
    assert "$xsrc/_enlightenment_filemanager" is_file
}
@test 'more_src has _enlightenment_imc' {
    assert "$xsrc/_enlightenment_imc" is_file
}
@test 'more_src has _enlightenment_open' {
    assert "$xsrc/_enlightenment_open" is_file
}
@test 'more_src has _enlightenment_remote' {
    assert "$xsrc/_enlightenment_remote" is_file
}
@test 'more_src has _enlightenment_thumb' {
    assert "$xsrc/_enlightenment_thumb" is_file
}
@test 'more_src has _enlightenment_backlight' {
    assert "$xsrc/_enlightenment_backlight" is_file
}
@test 'more_src has _edje_decc' {
    assert "$xsrc/_edje_decc" is_file
}
@test 'more_src has _edje_player' {
    assert "$xsrc/_edje_player" is_file
}
@test 'more_src has _edje_recc' {
    assert "$xsrc/_edje_recc" is_file
}
@test 'more_src has _entrance' {
    assert "$xsrc/_entrance" is_file
}
@test 'more_src has _i3-config-wizard' {
    assert "$xsrc/_i3-config-wizard" is_file
}
@test 'more_src has _i3-dump-log' {
    assert "$xsrc/_i3-dump-log" is_file
}
@test 'more_src has _i3-sensible-editor' {
    assert "$xsrc/_i3-sensible-editor" is_file
}
@test 'more_src has _i3-sensible-pager' {
    assert "$xsrc/_i3-sensible-pager" is_file
}
@test 'more_src has _i3-sensible-terminal' {
    assert "$xsrc/_i3-sensible-terminal" is_file
}
@test 'more_src has _wayfire-cli' {
    assert "$xsrc/_wayfire-cli" is_file
}
@test 'more_src has _wf-cmd' {
    assert "$xsrc/_wf-cmd" is_file
}
@test 'more_src has _wf-msg' {
    assert "$xsrc/_wf-msg" is_file
}
@test 'more_src has _labwc-tweaks' {
    assert "$xsrc/_labwc-tweaks" is_file
}
@test 'more_src has _picom-trans' {
    assert "$xsrc/_picom-trans" is_file
}
@test 'more_src has _openbox-gnome-session' {
    assert "$xsrc/_openbox-gnome-session" is_file
}
@test 'more_src has _openbox-kde-session' {
    assert "$xsrc/_openbox-kde-session" is_file
}
@test 'more_src has _obconf-qt' {
    assert "$xsrc/_obconf-qt" is_file
}
@test 'more_src has _fluxbox-remote' {
    assert "$xsrc/_fluxbox-remote" is_file
}
@test 'more_src has _fbsetroot' {
    assert "$xsrc/_fbsetroot" is_file
}
@test 'more_src has _wmsetbg' {
    assert "$xsrc/_wmsetbg" is_file
}
@test 'more_src has _wmclock' {
    assert "$xsrc/_wmclock" is_file
}
@test 'more_src has _wmnetload' {
    assert "$xsrc/_wmnetload" is_file
}
@test 'more_src has _wmweather' {
    assert "$xsrc/_wmweather" is_file
}
@test 'more_src has _wmnd' {
    assert "$xsrc/_wmnd" is_file
}
@test 'more_src has _wmtune' {
    assert "$xsrc/_wmtune" is_file
}
@test 'more_src has _wmrack' {
    assert "$xsrc/_wmrack" is_file
}
@test 'more_src has _icewm-toolbar' {
    assert "$xsrc/_icewm-toolbar" is_file
}
@test 'more_src has _icewmhint' {
    assert "$xsrc/_icewmhint" is_file
}
@test 'more_src has _flwm' {
    assert "$xsrc/_flwm" is_file
}
@test 'more_src has _waydroid-cli' {
    assert "$xsrc/_waydroid-cli" is_file
}
@test 'more_src has _waylandpp' {
    assert "$xsrc/_waylandpp" is_file
}
@test 'more_src has _wlroots-headless' {
    assert "$xsrc/_wlroots-headless" is_file
}
@test 'more_src has _gtklp' {
    assert "$xsrc/_gtklp" is_file
}
@test 'more_src has _gtklpr' {
    assert "$xsrc/_gtklpr" is_file
}
@test 'more_src has _gtklp-cli' {
    assert "$xsrc/_gtklp-cli" is_file
}
@test 'more_src has _mailpile-cli' {
    assert "$xsrc/_mailpile-cli" is_file
}
@test 'more_src has _sound-recorder' {
    assert "$xsrc/_sound-recorder" is_file
}
@test 'more_src has _gnome-screenrecorder' {
    assert "$xsrc/_gnome-screenrecorder" is_file
}
@test 'more_src has _mate-sound-recorder' {
    assert "$xsrc/_mate-sound-recorder" is_file
}
@test 'more_src has _kazam' {
    assert "$xsrc/_kazam" is_file
}
@test 'more_src has _vokoscreen' {
    assert "$xsrc/_vokoscreen" is_file
}
@test 'more_src has _vokoscreen-ng' {
    assert "$xsrc/_vokoscreen-ng" is_file
}
@test 'more_src has _simplescreenrecorder' {
    assert "$xsrc/_simplescreenrecorder" is_file
}
@test 'more_src has _gpu-screen-recorder' {
    assert "$xsrc/_gpu-screen-recorder" is_file
}
@test 'more_src has _lossless-cut' {
    assert "$xsrc/_lossless-cut" is_file
}
@test 'more_src has _cinelerra' {
    assert "$xsrc/_cinelerra" is_file
}
@test 'more_src has _obs-websocket' {
    assert "$xsrc/_obs-websocket" is_file
}
@test 'more_src has _streamlabs-obs' {
    assert "$xsrc/_streamlabs-obs" is_file
}
@test 'more_src has _mailcatcher' {
    assert "$xsrc/_mailcatcher" is_file
}
@test 'more_src has _xrec' {
    assert "$xsrc/_xrec" is_file
}
@test 'more_src has _inox' {
    assert "$xsrc/_inox" is_file
}
@test 'more_src has _mhfix' {
    assert "$xsrc/_mhfix" is_file
}
@test 'more_src has _fmtdump' {
    assert "$xsrc/_fmtdump" is_file
}
@test 'more_src has _gtklp-utils' {
    assert "$xsrc/_gtklp-utils" is_file
}
@test 'more_src has _jack_midisine' {
    assert "$xsrc/_jack_midisine" is_file
}
@test 'more_src has _jack_monitor_client' {
    assert "$xsrc/_jack_monitor_client" is_file
}
@test 'more_src has _jack_mp3rec' {
    assert "$xsrc/_jack_mp3rec" is_file
}
@test 'more_src has _jack_server_control' {
    assert "$xsrc/_jack_server_control" is_file
}
@test 'more_src has _jack_session_notify' {
    assert "$xsrc/_jack_session_notify" is_file
}
@test 'more_src has _jack_simple_client' {
    assert "$xsrc/_jack_simple_client" is_file
}
@test 'more_src has _jack_simple_session_client' {
    assert "$xsrc/_jack_simple_session_client" is_file
}
@test 'more_src has _jack_thru' {
    assert "$xsrc/_jack_thru" is_file
}
@test 'more_src has _jack_transport' {
    assert "$xsrc/_jack_transport" is_file
}
@test 'more_src has _jackdmp' {
    assert "$xsrc/_jackdmp" is_file
}
@test 'more_src has _jackctl' {
    assert "$xsrc/_jackctl" is_file
}
@test 'more_src has _jackdbus' {
    assert "$xsrc/_jackdbus" is_file
}
@test 'more_src has _jackrack' {
    assert "$xsrc/_jackrack" is_file
}
@test 'more_src has _gmusicbrowser' {
    assert "$xsrc/_gmusicbrowser" is_file
}
@test 'more_src has _amarok' {
    assert "$xsrc/_amarok" is_file
}
@test 'more_src has _tomahawk' {
    assert "$xsrc/_tomahawk" is_file
}
@test 'more_src has _asoundconf' {
    assert "$xsrc/_asoundconf" is_file
}
@test 'more_src has _asoundconf-gtk' {
    assert "$xsrc/_asoundconf-gtk" is_file
}
@test 'more_src has _mpd-mpris' {
    assert "$xsrc/_mpd-mpris" is_file
}
@test 'more_src has _spop' {
    assert "$xsrc/_spop" is_file
}
@test 'more_src has _aubionotes' {
    assert "$xsrc/_aubionotes" is_file
}
@test 'more_src has _aubioonset' {
    assert "$xsrc/_aubioonset" is_file
}
@test 'more_src has _aubiopitch' {
    assert "$xsrc/_aubiopitch" is_file
}
@test 'more_src has _aubioquiet' {
    assert "$xsrc/_aubioquiet" is_file
}
@test 'more_src has _aubiotrack' {
    assert "$xsrc/_aubiotrack" is_file
}
@test 'more_src has _aubiomfcc' {
    assert "$xsrc/_aubiomfcc" is_file
}
@test 'more_src has _bristoljackstats' {
    assert "$xsrc/_bristoljackstats" is_file
}
@test 'more_src has _dssi-list-plugins' {
    assert "$xsrc/_dssi-list-plugins" is_file
}
@test 'more_src has _dssi-server' {
    assert "$xsrc/_dssi-server" is_file
}
@test 'more_src has _hexter' {
    assert "$xsrc/_hexter" is_file
}
@test 'more_src has _zynaddsubfx-jack' {
    assert "$xsrc/_zynaddsubfx-jack" is_file
}
@test 'more_src has _zyn-fusion' {
    assert "$xsrc/_zyn-fusion" is_file
}
@test 'more_src has _carla-control' {
    assert "$xsrc/_carla-control" is_file
}
@test 'more_src has _carla-database' {
    assert "$xsrc/_carla-database" is_file
}
@test 'more_src has _carla-discovery' {
    assert "$xsrc/_carla-discovery" is_file
}
@test 'more_src has _a2jmidi-bridge' {
    assert "$xsrc/_a2jmidi-bridge" is_file
}
@test 'more_src has _a2jmidi' {
    assert "$xsrc/_a2jmidi" is_file
}
@test 'more_src has _a2jmidid' {
    assert "$xsrc/_a2jmidid" is_file
}
@test 'more_src has _jackmix' {
    assert "$xsrc/_jackmix" is_file
}
@test 'more_src has _jackmeter' {
    assert "$xsrc/_jackmeter" is_file
}
@test 'more_src has _jack-mixer' {
    assert "$xsrc/_jack-mixer" is_file
}
@test 'more_src has _ecawave' {
    assert "$xsrc/_ecawave" is_file
}
@test 'more_src has _ecasignalview' {
    assert "$xsrc/_ecasignalview" is_file
}
@test 'more_src has _gtick' {
    assert "$xsrc/_gtick" is_file
}
@test 'more_src has _yoshimi-launcher' {
    assert "$xsrc/_yoshimi-launcher" is_file
}
@test 'more_src has _fmit' {
    assert "$xsrc/_fmit" is_file
}
@test 'more_src has _geonkick' {
    assert "$xsrc/_geonkick" is_file
}
@test 'more_src has _whysynth' {
    assert "$xsrc/_whysynth" is_file
}
@test 'more_src has _meterbridge' {
    assert "$xsrc/_meterbridge" is_file
}
@test 'more_src has _linuxsampler' {
    assert "$xsrc/_linuxsampler" is_file
}
@test 'more_src has _darktable-cltest' {
    assert "$xsrc/_darktable-cltest" is_file
}
@test 'more_src has _darktable-chart' {
    assert "$xsrc/_darktable-chart" is_file
}
@test 'more_src has _darktable-curve-tool' {
    assert "$xsrc/_darktable-curve-tool" is_file
}
@test 'more_src has _darktable-rs-identify' {
    assert "$xsrc/_darktable-rs-identify" is_file
}
@test 'more_src has _darktable-generate-cache' {
    assert "$xsrc/_darktable-generate-cache" is_file
}
@test 'more_src has _hugin-cli' {
    assert "$xsrc/_hugin-cli" is_file
}
@test 'more_src has _autopano' {
    assert "$xsrc/_autopano" is_file
}
@test 'more_src has _autopano-sift' {
    assert "$xsrc/_autopano-sift" is_file
}
@test 'more_src has _linefind' {
    assert "$xsrc/_linefind" is_file
}
@test 'more_src has _picview' {
    assert "$xsrc/_picview" is_file
}
@test 'more_src has _xnviewmp' {
    assert "$xsrc/_xnviewmp" is_file
}
@test 'more_src has _xnconvert' {
    assert "$xsrc/_xnconvert" is_file
}
@test 'more_src has _vipsedit' {
    assert "$xsrc/_vipsedit" is_file
}
@test 'more_src has _vipsdisp' {
    assert "$xsrc/_vipsdisp" is_file
}
@test 'more_src has _gscan2pdf' {
    assert "$xsrc/_gscan2pdf" is_file
}
@test 'more_src has _snapper-cleanup' {
    assert "$xsrc/_snapper-cleanup" is_file
}
@test 'more_src has _snapper-config' {
    assert "$xsrc/_snapper-config" is_file
}
@test 'more_src has _gimp-test-clipboard' {
    assert "$xsrc/_gimp-test-clipboard" is_file
}
@test 'more_src has _gmic-qt' {
    assert "$xsrc/_gmic-qt" is_file
}
@test 'more_src has _exifgrep' {
    assert "$xsrc/_exifgrep" is_file
}
@test 'more_src has _djpeg-turbo' {
    assert "$xsrc/_djpeg-turbo" is_file
}
@test 'more_src has _cjpeg-turbo' {
    assert "$xsrc/_cjpeg-turbo" is_file
}
@test 'more_src has _rawtherapee-pp' {
    assert "$xsrc/_rawtherapee-pp" is_file
}
@test 'more_src has _kphotoalbum-cli' {
    assert "$xsrc/_kphotoalbum-cli" is_file
}
@test 'more_src has _digikam-cli' {
    assert "$xsrc/_digikam-cli" is_file
}
@test 'more_src has _emacs-snapshot' {
    assert "$xsrc/_emacs-snapshot" is_file
}
@test 'more_src has _emacs-nox' {
    assert "$xsrc/_emacs-nox" is_file
}
@test 'more_src has _xemacs21' {
    assert "$xsrc/_xemacs21" is_file
}
@test 'more_src has _howl' {
    assert "$xsrc/_howl" is_file
}
@test 'more_src has _viless' {
    assert "$xsrc/_viless" is_file
}
@test 'more_src has _textosaurus' {
    assert "$xsrc/_textosaurus" is_file
}
@test 'more_src has _focuswriter' {
    assert "$xsrc/_focuswriter" is_file
}
@test 'more_src has _calligraauthor' {
    assert "$xsrc/_calligraauthor" is_file
}
@test 'more_src has _calligrachart' {
    assert "$xsrc/_calligrachart" is_file
}
@test 'more_src has _calligraflow' {
    assert "$xsrc/_calligraflow" is_file
}
@test 'more_src has _calligraplan' {
    assert "$xsrc/_calligraplan" is_file
}
@test 'more_src has _calligrasheets' {
    assert "$xsrc/_calligrasheets" is_file
}
@test 'more_src has _calligrastage' {
    assert "$xsrc/_calligrastage" is_file
}
@test 'more_src has _calligrawords' {
    assert "$xsrc/_calligrawords" is_file
}
@test 'more_src has _cobblerd' {
    assert "$xsrc/_cobblerd" is_file
}
@test 'more_src has _cockpit-bridge' {
    assert "$xsrc/_cockpit-bridge" is_file
}
@test 'more_src has _cockpit-tls' {
    assert "$xsrc/_cockpit-tls" is_file
}
@test 'more_src has _cockpit-ws' {
    assert "$xsrc/_cockpit-ws" is_file
}
@test 'more_src has _cockpit-pcp' {
    assert "$xsrc/_cockpit-pcp" is_file
}
@test 'more_src has _cockpit-machines' {
    assert "$xsrc/_cockpit-machines" is_file
}
@test 'more_src has _foreman-installer' {
    assert "$xsrc/_foreman-installer" is_file
}
@test 'more_src has _hammer' {
    assert "$xsrc/_hammer" is_file
}
@test 'more_src has _virt-who' {
    assert "$xsrc/_virt-who" is_file
}
@test 'more_src has _satellite-installer' {
    assert "$xsrc/_satellite-installer" is_file
}
@test 'more_src has _pulp-admin' {
    assert "$xsrc/_pulp-admin" is_file
}
@test 'more_src has _maas' {
    assert "$xsrc/_maas" is_file
}
@test 'more_src has _maas-cli' {
    assert "$xsrc/_maas-cli" is_file
}
@test 'more_src has _maas-rack-controller' {
    assert "$xsrc/_maas-rack-controller" is_file
}
@test 'more_src has _maas-region-controller' {
    assert "$xsrc/_maas-region-controller" is_file
}
@test 'more_src has _maas-syslog' {
    assert "$xsrc/_maas-syslog" is_file
}
@test 'more_src has _maas-test-db' {
    assert "$xsrc/_maas-test-db" is_file
}
@test 'more_src has _cloud-config-init' {
    assert "$xsrc/_cloud-config-init" is_file
}
@test 'more_src has _cloud-init-modules' {
    assert "$xsrc/_cloud-init-modules" is_file
}
@test 'more_src has _cloud-final' {
    assert "$xsrc/_cloud-final" is_file
}
@test 'more_src has _cloud-image-utils' {
    assert "$xsrc/_cloud-image-utils" is_file
}
@test 'more_src has _tang' {
    assert "$xsrc/_tang" is_file
}
@test 'more_src has _clevis-encrypt-http' {
    assert "$xsrc/_clevis-encrypt-http" is_file
}
@test 'more_src has _clevis-luks-regen' {
    assert "$xsrc/_clevis-luks-regen" is_file
}
@test 'more_src has _clevis-luks-unlock' {
    assert "$xsrc/_clevis-luks-unlock" is_file
}
@test 'more_src has _dracut-install' {
    assert "$xsrc/_dracut-install" is_file
}
@test 'more_src has _semodule_deps' {
    assert "$xsrc/_semodule_deps" is_file
}
@test 'more_src has _selinuxexeccon' {
    assert "$xsrc/_selinuxexeccon" is_file
}
@test 'more_src has _ssh-host-config' {
    assert "$xsrc/_ssh-host-config" is_file
}
@test 'more_src has _libvirt-guests' {
    assert "$xsrc/_libvirt-guests" is_file
}
@test 'more_src has _xenpaging' {
    assert "$xsrc/_xenpaging" is_file
}
@test 'more_src has _jailkit' {
    assert "$xsrc/_jailkit" is_file
}
@test 'more_src has _ronin' {
    assert "$xsrc/_ronin" is_file
}
@test 'more_src has _dracut-uki' {
    assert "$xsrc/_dracut-uki" is_file
}
@test 'more_src has _dracut-pre-pivot' {
    assert "$xsrc/_dracut-pre-pivot" is_file
}
@test 'more_src has _dracut-ng' {
    assert "$xsrc/_dracut-ng" is_file
}
@test 'more_src has _nfs-ganesha' {
    assert "$xsrc/_nfs-ganesha" is_file
}
@test 'more_src has _ganesha.nfsd' {
    assert "$xsrc/_ganesha.nfsd" is_file
}
@test 'more_src has _ganesha-rados-grace' {
    assert "$xsrc/_ganesha-rados-grace" is_file
}
@test 'more_src has _ganesha-grace' {
    assert "$xsrc/_ganesha-grace" is_file
}
@test 'more_src has _samba-bgqd' {
    assert "$xsrc/_samba-bgqd" is_file
}
@test 'more_src has _samba-dcerpcd' {
    assert "$xsrc/_samba-dcerpcd" is_file
}
@test 'more_src has _samba_spotlightd' {
    assert "$xsrc/_samba_spotlightd" is_file
}
@test 'more_src has _smbprint' {
    assert "$xsrc/_smbprint" is_file
}
@test 'more_src has _quotastats' {
    assert "$xsrc/_quotastats" is_file
}
@test 'more_src has _quota-warn' {
    assert "$xsrc/_quota-warn" is_file
}
@test 'more_src has _tdbtune' {
    assert "$xsrc/_tdbtune" is_file
}
@test 'more_src has _cifsdd' {
    assert "$xsrc/_cifsdd" is_file
}
@test 'more_src has _tgt-admin' {
    assert "$xsrc/_tgt-admin" is_file
}
@test 'more_src has _targetcli' {
    assert "$xsrc/_targetcli" is_file
}
@test 'more_src has _targetcli-fb' {
    assert "$xsrc/_targetcli-fb" is_file
}
@test 'more_src has _scstadmin' {
    assert "$xsrc/_scstadmin" is_file
}
@test 'more_src has _corosync-blackbox' {
    assert "$xsrc/_corosync-blackbox" is_file
}
@test 'more_src has _corosync-keygen' {
    assert "$xsrc/_corosync-keygen" is_file
}
@test 'more_src has _corosync-quorumtool' {
    assert "$xsrc/_corosync-quorumtool" is_file
}
@test 'more_src has _corosync-cfgtool' {
    assert "$xsrc/_corosync-cfgtool" is_file
}
@test 'more_src has _corosync-cmapctl' {
    assert "$xsrc/_corosync-cmapctl" is_file
}
@test 'more_src has _pacemaker-attrd' {
    assert "$xsrc/_pacemaker-attrd" is_file
}
@test 'more_src has _pacemaker' {
    assert "$xsrc/_pacemaker" is_file
}
@test 'more_src has _drbd-utils' {
    assert "$xsrc/_drbd-utils" is_file
}
@test 'more_src has _fcoeplumb' {
    assert "$xsrc/_fcoeplumb" is_file
}
@test 'more_src has _pacemaker-fenced' {
    assert "$xsrc/_pacemaker-fenced" is_file
}
@test 'more_src has _pacemaker-execd' {
    assert "$xsrc/_pacemaker-execd" is_file
}
@test 'more_src has _pacemaker-based' {
    assert "$xsrc/_pacemaker-based" is_file
}
@test 'more_src has _pacemaker-schedulerd' {
    assert "$xsrc/_pacemaker-schedulerd" is_file
}
@test 'more_src has _pacemaker-controld' {
    assert "$xsrc/_pacemaker-controld" is_file
}
@test 'more_src has _pacemaker-remoted' {
    assert "$xsrc/_pacemaker-remoted" is_file
}
@test 'more_src has _attrd_updater' {
    assert "$xsrc/_attrd_updater" is_file
}
@test 'more_src has _stonith_admin' {
    assert "$xsrc/_stonith_admin" is_file
}
@test 'more_src has _crmadmin' {
    assert "$xsrc/_crmadmin" is_file
}
@test 'more_src has _crm_attribute' {
    assert "$xsrc/_crm_attribute" is_file
}
@test 'more_src has _crm_diff' {
    assert "$xsrc/_crm_diff" is_file
}
@test 'more_src has _crm_error' {
    assert "$xsrc/_crm_error" is_file
}
@test 'more_src has _crm_failcount' {
    assert "$xsrc/_crm_failcount" is_file
}
@test 'more_src has _crm_master' {
    assert "$xsrc/_crm_master" is_file
}
@test 'more_src has _crm_mon' {
    assert "$xsrc/_crm_mon" is_file
}
@test 'more_src has _crm_node' {
    assert "$xsrc/_crm_node" is_file
}
@test 'more_src has _crm_report' {
    assert "$xsrc/_crm_report" is_file
}
@test 'more_src has _crm_resource' {
    assert "$xsrc/_crm_resource" is_file
}
@test 'more_src has _crm_rule' {
    assert "$xsrc/_crm_rule" is_file
}
@test 'more_src has _crm_shadow' {
    assert "$xsrc/_crm_shadow" is_file
}
@test 'more_src has _crm_simulate' {
    assert "$xsrc/_crm_simulate" is_file
}
@test 'more_src has _crm_standby' {
    assert "$xsrc/_crm_standby" is_file
}
@test 'more_src has _crm_ticket' {
    assert "$xsrc/_crm_ticket" is_file
}
@test 'more_src has _crm_verify' {
    assert "$xsrc/_crm_verify" is_file
}
@test 'more_src has _cibadmin' {
    assert "$xsrc/_cibadmin" is_file
}
@test 'more_src has _lvmlockd' {
    assert "$xsrc/_lvmlockd" is_file
}
@test 'more_src has _lvmlockctl' {
    assert "$xsrc/_lvmlockctl" is_file
}
@test 'more_src has _lvmdbus' {
    assert "$xsrc/_lvmdbus" is_file
}
@test 'more_src has _lvmsadc' {
    assert "$xsrc/_lvmsadc" is_file
}
@test 'more_src has _lvm_dump' {
    assert "$xsrc/_lvm_dump" is_file
}
@test 'more_src has _thin_migrate' {
    assert "$xsrc/_thin_migrate" is_file
}
@test 'more_src has _thin_show_duplicates' {
    assert "$xsrc/_thin_show_duplicates" is_file
}
@test 'more_src has _megacli' {
    assert "$xsrc/_megacli" is_file
}
@test 'more_src has _megaclisas-status' {
    assert "$xsrc/_megaclisas-status" is_file
}
@test 'more_src has _arcconf' {
    assert "$xsrc/_arcconf" is_file
}
@test 'more_src has _storcli' {
    assert "$xsrc/_storcli" is_file
}
@test 'more_src has _storcli64' {
    assert "$xsrc/_storcli64" is_file
}
@test 'more_src has _perccli' {
    assert "$xsrc/_perccli" is_file
}
@test 'more_src has _perccli64' {
    assert "$xsrc/_perccli64" is_file
}
@test 'more_src has _hpacucli' {
    assert "$xsrc/_hpacucli" is_file
}
@test 'more_src has _hpssacli' {
    assert "$xsrc/_hpssacli" is_file
}
@test 'more_src has _ssacli' {
    assert "$xsrc/_ssacli" is_file
}
@test 'more_src has _hpssaducli' {
    assert "$xsrc/_hpssaducli" is_file
}
@test 'more_src has _ssaducli' {
    assert "$xsrc/_ssaducli" is_file
}
@test 'more_src has _raidstart' {
    assert "$xsrc/_raidstart" is_file
}
@test 'more_src has _raidautorun' {
    assert "$xsrc/_raidautorun" is_file
}
@test 'more_src has _raid-check' {
    assert "$xsrc/_raid-check" is_file
}
@test 'more_src has _raid-monitor' {
    assert "$xsrc/_raid-monitor" is_file
}
@test 'more_src has _megamgr' {
    assert "$xsrc/_megamgr" is_file
}
@test 'more_src has _megaraid-cli' {
    assert "$xsrc/_megaraid-cli" is_file
}
@test 'more_src has _ipmi-time-sync' {
    assert "$xsrc/_ipmi-time-sync" is_file
}
@test 'more_src has _ipmi-watchdog' {
    assert "$xsrc/_ipmi-watchdog" is_file
}
@test 'more_src has _bmc-watchdog' {
    assert "$xsrc/_bmc-watchdog" is_file
}
@test 'more_src has _idracadm' {
    assert "$xsrc/_idracadm" is_file
}
@test 'more_src has _idracadm7' {
    assert "$xsrc/_idracadm7" is_file
}
@test 'more_src has _idrac-cli' {
    assert "$xsrc/_idrac-cli" is_file
}
@test 'more_src has _openhpi-utils' {
    assert "$xsrc/_openhpi-utils" is_file
}
@test 'more_src has _openhpi-clients' {
    assert "$xsrc/_openhpi-clients" is_file
}
@test 'more_src has _ohcli' {
    assert "$xsrc/_ohcli" is_file
}
@test 'more_src has _ohrun' {
    assert "$xsrc/_ohrun" is_file
}
@test 'more_src has _smbiosdump' {
    assert "$xsrc/_smbiosdump" is_file
}
@test 'more_src has _efivar-tools' {
    assert "$xsrc/_efivar-tools" is_file
}
@test 'more_src has _ucsm-cli' {
    assert "$xsrc/_ucsm-cli" is_file
}
@test 'more_src has _wsman' {
    assert "$xsrc/_wsman" is_file
}
@test 'more_src has _cimcli' {
    assert "$xsrc/_cimcli" is_file
}
@test 'more_src has _lshw-gtk' {
    assert "$xsrc/_lshw-gtk" is_file
}
@test 'more_src has _memtest' {
    assert "$xsrc/_memtest" is_file
}
@test 'more_src has _y-cruncher' {
    assert "$xsrc/_y-cruncher" is_file
}
@test 'more_src has _prime95' {
    assert "$xsrc/_prime95" is_file
}
@test 'more_src has _acpi_fakekey' {
    assert "$xsrc/_acpi_fakekey" is_file
}
@test 'more_src has _upowerd' {
    assert "$xsrc/_upowerd" is_file
}
@test 'more_src has _powercap-info' {
    assert "$xsrc/_powercap-info" is_file
}
@test 'more_src has _pm-action' {
    assert "$xsrc/_pm-action" is_file
}
@test 'more_src has _pm-pmu' {
    assert "$xsrc/_pm-pmu" is_file
}
@test 'more_src has _sensors-applet' {
    assert "$xsrc/_sensors-applet" is_file
}
@test 'more_src has _uefitool' {
    assert "$xsrc/_uefitool" is_file
}
@test 'more_src has _uefi-firmware-parser' {
    assert "$xsrc/_uefi-firmware-parser" is_file
}
@test 'more_src has _grub-menulst2cfg' {
    assert "$xsrc/_grub-menulst2cfg" is_file
}
@test 'more_src has _grub-ofpathname' {
    assert "$xsrc/_grub-ofpathname" is_file
}
@test 'more_src has _grub-protect' {
    assert "$xsrc/_grub-protect" is_file
}
@test 'more_src has _grub-sparc64-setup' {
    assert "$xsrc/_grub-sparc64-setup" is_file
}
@test 'more_src has _syslinux-utils' {
    assert "$xsrc/_syslinux-utils" is_file
}
@test 'more_src has _syslinux-common' {
    assert "$xsrc/_syslinux-common" is_file
}
@test 'more_src has _pxelinux' {
    assert "$xsrc/_pxelinux" is_file
}
@test 'more_src has _extlinux-update' {
    assert "$xsrc/_extlinux-update" is_file
}
@test 'more_src has _isolinux' {
    assert "$xsrc/_isolinux" is_file
}
@test 'more_src has _mshowfat' {
    assert "$xsrc/_mshowfat" is_file
}
@test 'more_src has _unsquashfs4' {
    assert "$xsrc/_unsquashfs4" is_file
}
@test 'more_src has _cramfsck' {
    assert "$xsrc/_cramfsck" is_file
}
@test 'more_src has _mkcramfs' {
    assert "$xsrc/_mkcramfs" is_file
}
@test 'more_src has _cramfsswap' {
    assert "$xsrc/_cramfsswap" is_file
}
@test 'more_src has _edk2' {
    assert "$xsrc/_edk2" is_file
}
@test 'more_src has _edk2-tools' {
    assert "$xsrc/_edk2-tools" is_file
}
@test 'more_src has _edk2-build' {
    assert "$xsrc/_edk2-build" is_file
}
@test 'more_src has _bootloader-grub2' {
    assert "$xsrc/_bootloader-grub2" is_file
}
@test 'more_src has _bootloader-systemd' {
    assert "$xsrc/_bootloader-systemd" is_file
}
@test 'more_src has _refind-mkrlconf' {
    assert "$xsrc/_refind-mkrlconf" is_file
}
@test 'more_src has _elilo' {
    assert "$xsrc/_elilo" is_file
}
@test 'more_src has _kexec-tools' {
    assert "$xsrc/_kexec-tools" is_file
}
@test 'more_src has _sd-mux-ctrl' {
    assert "$xsrc/_sd-mux-ctrl" is_file
}
@test 'more_src has _fwupdoffline' {
    assert "$xsrc/_fwupdoffline" is_file
}
@test 'more_src has _fwupd-refresh' {
    assert "$xsrc/_fwupd-refresh" is_file
}
@test 'more_src has _firmware-test-suite' {
    assert "$xsrc/_firmware-test-suite" is_file
}
@test 'more_src has _firmware-update' {
    assert "$xsrc/_firmware-update" is_file
}
@test 'more_src has _flashprog' {
    assert "$xsrc/_flashprog" is_file
}
@test 'more_src has _amdvbflash' {
    assert "$xsrc/_amdvbflash" is_file
}
@test 'more_src has _atiflash' {
    assert "$xsrc/_atiflash" is_file
}
@test 'more_src has _pcm-power' {
    assert "$xsrc/_pcm-power" is_file
}
@test 'more_src has _pcm-pcie' {
    assert "$xsrc/_pcm-pcie" is_file
}
@test 'more_src has _pcm-memory' {
    assert "$xsrc/_pcm-memory" is_file
}
@test 'more_src has _pcm-numa' {
    assert "$xsrc/_pcm-numa" is_file
}
@test 'more_src has _pcm-iio' {
    assert "$xsrc/_pcm-iio" is_file
}
@test 'more_src has _pcm-tsx' {
    assert "$xsrc/_pcm-tsx" is_file
}
@test 'more_src has _pcm-msr' {
    assert "$xsrc/_pcm-msr" is_file
}
@test 'more_src has _pcm-raw' {
    assert "$xsrc/_pcm-raw" is_file
}
@test 'more_src has _intel-cmt-cat' {
    assert "$xsrc/_intel-cmt-cat" is_file
}
@test 'more_src has _nvidia-vbiosflash' {
    assert "$xsrc/_nvidia-vbiosflash" is_file
}
@test 'more_src has _fwupd-cli' {
    assert "$xsrc/_fwupd-cli" is_file
}
@test 'more_src has _fwupd-update' {
    assert "$xsrc/_fwupd-update" is_file
}
@test 'more_src has _bios-update' {
    assert "$xsrc/_bios-update" is_file
}
@test 'more_src has _uefi-update' {
    assert "$xsrc/_uefi-update" is_file
}
@test 'more_src has _intel-fw-tools' {
    assert "$xsrc/_intel-fw-tools" is_file
}
@test 'more_src has _flashrom-config' {
    assert "$xsrc/_flashrom-config" is_file
}
@test 'more_src has _flashrom-stable' {
    assert "$xsrc/_flashrom-stable" is_file
}
@test 'more_src has _flashutil' {
    assert "$xsrc/_flashutil" is_file
}
@test 'more_src has _ntpdate-debian' {
    assert "$xsrc/_ntpdate-debian" is_file
}
@test 'more_src has _ntpdate-utils' {
    assert "$xsrc/_ntpdate-utils" is_file
}
@test 'more_src has _ntpkeygen' {
    assert "$xsrc/_ntpkeygen" is_file
}
@test 'more_src has _roughtime' {
    assert "$xsrc/_roughtime" is_file
}
@test 'more_src has _cputempd' {
    assert "$xsrc/_cputempd" is_file
}
@test 'more_src has _acpi-call' {
    assert "$xsrc/_acpi-call" is_file
}
@test 'more_src has _obfsproxy' {
    assert "$xsrc/_obfsproxy" is_file
}
@test 'more_src has _meek-client' {
    assert "$xsrc/_meek-client" is_file
}
@test 'more_src has _meek-server' {
    assert "$xsrc/_meek-server" is_file
}
@test 'more_src has _snowflake-client' {
    assert "$xsrc/_snowflake-client" is_file
}
@test 'more_src has _snowflake-broker' {
    assert "$xsrc/_snowflake-broker" is_file
}
@test 'more_src has _snowflake-proxy' {
    assert "$xsrc/_snowflake-proxy" is_file
}
@test 'more_src has _onionshare-cli' {
    assert "$xsrc/_onionshare-cli" is_file
}
@test 'more_src has _i2prouter' {
    assert "$xsrc/_i2prouter" is_file
}
@test 'more_src has _ricochet-refresh' {
    assert "$xsrc/_ricochet-refresh" is_file
}
@test 'more_src has _paros' {
    assert "$xsrc/_paros" is_file
}
@test 'more_src has _w3af-console' {
    assert "$xsrc/_w3af-console" is_file
}
@test 'more_src has _vega' {
    assert "$xsrc/_vega" is_file
}
@test 'more_src has _arachni' {
    assert "$xsrc/_arachni" is_file
}
@test 'more_src has _nikto2' {
    assert "$xsrc/_nikto2" is_file
}
@test 'more_src has _radvd-config' {
    assert "$xsrc/_radvd-config" is_file
}
@test 'more_src has _radvd-utils' {
    assert "$xsrc/_radvd-utils" is_file
}
@test 'more_src has _ras-mc-ctl' {
    assert "$xsrc/_ras-mc-ctl" is_file
}
@test 'more_src has _mcelog-cli' {
    assert "$xsrc/_mcelog-cli" is_file
}
@test 'more_src has _mcelog-config' {
    assert "$xsrc/_mcelog-config" is_file
}
@test 'more_src has _zaproxy-cli' {
    assert "$xsrc/_zaproxy-cli" is_file
}
@test 'more_src has _impacket-secretsdump' {
    assert "$xsrc/_impacket-secretsdump" is_file
}
@test 'more_src has _impacket-smbserver' {
    assert "$xsrc/_impacket-smbserver" is_file
}
@test 'more_src has _impacket-getuserspns' {
    assert "$xsrc/_impacket-getuserspns" is_file
}
@test 'more_src has _impacket-goldenpac' {
    assert "$xsrc/_impacket-goldenpac" is_file
}
@test 'more_src has _impacket-smbexec' {
    assert "$xsrc/_impacket-smbexec" is_file
}
@test 'more_src has _impacket-ntlmrelayx' {
    assert "$xsrc/_impacket-ntlmrelayx" is_file
}
@test 'more_src has _impacket-addcomputer' {
    assert "$xsrc/_impacket-addcomputer" is_file
}
@test 'more_src has _impacket-atexec' {
    assert "$xsrc/_impacket-atexec" is_file
}
@test 'more_src has _impacket-dpapi' {
    assert "$xsrc/_impacket-dpapi" is_file
}
@test 'more_src has _impacket-findDelegation' {
    assert "$xsrc/_impacket-findDelegation" is_file
}
@test 'more_src has _impacket-GetADUsers' {
    assert "$xsrc/_impacket-GetADUsers" is_file
}
@test 'more_src has _impacket-getNPUsers' {
    assert "$xsrc/_impacket-getNPUsers" is_file
}
@test 'more_src has _impacket-getST' {
    assert "$xsrc/_impacket-getST" is_file
}
@test 'more_src has _impacket-Get-GPPPassword' {
    assert "$xsrc/_impacket-Get-GPPPassword" is_file
}
@test 'more_src has _impacket-karmaSMB' {
    assert "$xsrc/_impacket-karmaSMB" is_file
}
@test 'more_src has _impacket-keylistattack' {
    assert "$xsrc/_impacket-keylistattack" is_file
}
@test 'more_src has _impacket-kintercept' {
    assert "$xsrc/_impacket-kintercept" is_file
}
@test 'more_src has _impacket-lookupsid' {
    assert "$xsrc/_impacket-lookupsid" is_file
}
@test 'more_src has _impacket-mimikatz' {
    assert "$xsrc/_impacket-mimikatz" is_file
}
@test 'more_src has _impacket-mssqlclient' {
    assert "$xsrc/_impacket-mssqlclient" is_file
}
@test 'more_src has _impacket-mssqlinstance' {
    assert "$xsrc/_impacket-mssqlinstance" is_file
}
@test 'more_src has _impacket-nmapAnswerMachine' {
    assert "$xsrc/_impacket-nmapAnswerMachine" is_file
}
@test 'more_src has _impacket-owneredit' {
    assert "$xsrc/_impacket-owneredit" is_file
}
@test 'more_src has _impacket-ping' {
    assert "$xsrc/_impacket-ping" is_file
}
@test 'more_src has _impacket-ping6' {
    assert "$xsrc/_impacket-ping6" is_file
}
@test 'more_src has _impacket-sniffer' {
    assert "$xsrc/_impacket-sniffer" is_file
}
@test 'more_src has _impacket-split' {
    assert "$xsrc/_impacket-split" is_file
}
@test 'more_src has _impacket-ticketconverter' {
    assert "$xsrc/_impacket-ticketconverter" is_file
}
@test 'more_src has _impacket-ticketer' {
    assert "$xsrc/_impacket-ticketer" is_file
}
@test 'more_src has _impacket-tstool' {
    assert "$xsrc/_impacket-tstool" is_file
}
@test 'more_src has _impacket-wmipersist' {
    assert "$xsrc/_impacket-wmipersist" is_file
}
@test 'more_src has _impacket-rdp_check' {
    assert "$xsrc/_impacket-rdp_check" is_file
}
@test 'more_src has _impacket-machine_role' {
    assert "$xsrc/_impacket-machine_role" is_file
}
@test 'more_src has _stunnel5' {
    assert "$xsrc/_stunnel5" is_file
}
@test 'more_src has _oqs-openssl' {
    assert "$xsrc/_oqs-openssl" is_file
}
@test 'more_src has _wolfssh' {
    assert "$xsrc/_wolfssh" is_file
}
@test 'more_src has _wolfsshd' {
    assert "$xsrc/_wolfsshd" is_file
}
@test 'more_src has _openct' {
    assert "$xsrc/_openct" is_file
}
@test 'more_src has _openct-tool' {
    assert "$xsrc/_openct-tool" is_file
}
@test 'more_src has _cardpeek' {
    assert "$xsrc/_cardpeek" is_file
}
@test 'more_src has _pcsc-tools' {
    assert "$xsrc/_pcsc-tools" is_file
}
@test 'more_src has _pcsc-spy' {
    assert "$xsrc/_pcsc-spy" is_file
}
@test 'more_src has _engine-pkcs11' {
    assert "$xsrc/_engine-pkcs11" is_file
}
@test 'more_src has _libcacard-tool' {
    assert "$xsrc/_libcacard-tool" is_file
}
@test 'more_src has _yubikey-personalization-gui' {
    assert "$xsrc/_yubikey-personalization-gui" is_file
}
@test 'more_src has _evil-winrm-py3' {
    assert "$xsrc/_evil-winrm-py3" is_file
}
@test 'more_src has _bloodhound-py' {
    assert "$xsrc/_bloodhound-py" is_file
}
@test 'more_src has _nbtscan-unixwiz' {
    assert "$xsrc/_nbtscan-unixwiz" is_file
}
@test 'more_src has _libfido2' {
    assert "$xsrc/_libfido2" is_file
}
@test 'more_src has _impacket-secretsdump-py' {
    assert "$xsrc/_impacket-secretsdump-py" is_file
}
@test 'more_src has _povray37' {
    assert "$xsrc/_povray37" is_file
}
@test 'more_src has _rpict' {
    assert "$xsrc/_rpict" is_file
}
@test 'more_src has _rtrace' {
    assert "$xsrc/_rtrace" is_file
}
@test 'more_src has _rcalc' {
    assert "$xsrc/_rcalc" is_file
}
@test 'more_src has _rfluxmtx' {
    assert "$xsrc/_rfluxmtx" is_file
}
@test 'more_src has _rhpict' {
    assert "$xsrc/_rhpict" is_file
}
@test 'more_src has _ttf2pt1' {
    assert "$xsrc/_ttf2pt1" is_file
}
@test 'more_src has _ttf2woff' {
    assert "$xsrc/_ttf2woff" is_file
}
@test 'more_src has _ttf2woff2' {
    assert "$xsrc/_ttf2woff2" is_file
}
@test 'more_src has _tfm2afm' {
    assert "$xsrc/_tfm2afm" is_file
}
@test 'more_src has _makempx' {
    assert "$xsrc/_makempx" is_file
}
@test 'more_src has _dvi2bitmap' {
    assert "$xsrc/_dvi2bitmap" is_file
}
@test 'more_src has _hgview' {
    assert "$xsrc/_hgview" is_file
}
@test 'more_src has _tikzedt' {
    assert "$xsrc/_tikzedt" is_file
}
@test 'more_src has _tikzit' {
    assert "$xsrc/_tikzit" is_file
}
@test 'more_src has _bibtexml' {
    assert "$xsrc/_bibtexml" is_file
}
@test 'more_src has _zhmcclient' {
    assert "$xsrc/_zhmcclient" is_file
}
@test 'more_src has _zhmccli' {
    assert "$xsrc/_zhmccli" is_file
}
@test 'more_src has _psftostl' {
    assert "$xsrc/_psftostl" is_file
}
@test 'more_src has _psftostroke' {
    assert "$xsrc/_psftostroke" is_file
}
@test 'more_src has _dvi2html' {
    assert "$xsrc/_dvi2html" is_file
}
@test 'more_src has _dvi2tty-ng' {
    assert "$xsrc/_dvi2tty-ng" is_file
}
@test 'more_src has _radiance' {
    assert "$xsrc/_radiance" is_file
}
@test 'more_src has _dv2dt' {
    assert "$xsrc/_dv2dt" is_file
}
@test 'more_src has _fricas' {
    assert "$xsrc/_fricas" is_file
}
@test 'more_src has _pcb-rnd' {
    assert "$xsrc/_pcb-rnd" is_file
}
@test 'more_src has _pcbnew' {
    assert "$xsrc/_pcbnew" is_file
}
@test 'more_src has _eeschema' {
    assert "$xsrc/_eeschema" is_file
}
@test 'more_src has _xschem' {
    assert "$xsrc/_xschem" is_file
}
@test 'more_src has _magic-vlsi' {
    assert "$xsrc/_magic-vlsi" is_file
}
@test 'more_src has _magic' {
    assert "$xsrc/_magic" is_file
}
@test 'more_src has _electric' {
    assert "$xsrc/_electric" is_file
}
@test 'more_src has _qucs' {
    assert "$xsrc/_qucs" is_file
}
@test 'more_src has _gnucap' {
    assert "$xsrc/_gnucap" is_file
}
@test 'more_src has _yosys-abc' {
    assert "$xsrc/_yosys-abc" is_file
}
@test 'more_src has _yosys-smtbmc' {
    assert "$xsrc/_yosys-smtbmc" is_file
}
@test 'more_src has _yosys-witness' {
    assert "$xsrc/_yosys-witness" is_file
}
@test 'more_src has _yosys-filterlib' {
    assert "$xsrc/_yosys-filterlib" is_file
}
@test 'more_src has _yosys-config' {
    assert "$xsrc/_yosys-config" is_file
}
@test 'more_src has _freecad-daily' {
    assert "$xsrc/_freecad-daily" is_file
}
@test 'more_src has _openvsp' {
    assert "$xsrc/_openvsp" is_file
}
@test 'more_src has _openvsp-connect' {
    assert "$xsrc/_openvsp-connect" is_file
}
@test 'more_src has _openvsp-helper' {
    assert "$xsrc/_openvsp-helper" is_file
}
@test 'more_src has _kicost' {
    assert "$xsrc/_kicost" is_file
}
@test 'more_src has _partsbox' {
    assert "$xsrc/_partsbox" is_file
}
@test 'more_src has _kicad-cli-nightly' {
    assert "$xsrc/_kicad-cli-nightly" is_file
}
@test 'more_src has _freecad-cli' {
    assert "$xsrc/_freecad-cli" is_file
}
@test 'more_src has _freecad-cmd' {
    assert "$xsrc/_freecad-cmd" is_file
}
@test 'more_src has _freecadqt' {
    assert "$xsrc/_freecadqt" is_file
}
@test 'more_src has _qucs-cli' {
    assert "$xsrc/_qucs-cli" is_file
}
@test 'more_src has _salome' {
    assert "$xsrc/_salome" is_file
}
@test 'more_src has _salome-launcher' {
    assert "$xsrc/_salome-launcher" is_file
}
@test 'more_src has _elmergrid' {
    assert "$xsrc/_elmergrid" is_file
}
@test 'more_src has _elmersolver' {
    assert "$xsrc/_elmersolver" is_file
}
@test 'more_src has _elmerf90' {
    assert "$xsrc/_elmerf90" is_file
}
@test 'more_src has _elmergui' {
    assert "$xsrc/_elmergui" is_file
}
@test 'more_src has _pvbatch' {
    assert "$xsrc/_pvbatch" is_file
}
@test 'more_src has _pvpython' {
    assert "$xsrc/_pvpython" is_file
}
@test 'more_src has _pvserver' {
    assert "$xsrc/_pvserver" is_file
}
@test 'more_src has _pvdataserver' {
    assert "$xsrc/_pvdataserver" is_file
}
@test 'more_src has _pvrenderserver' {
    assert "$xsrc/_pvrenderserver" is_file
}
@test 'more_src has _visit' {
    assert "$xsrc/_visit" is_file
}
@test 'more_src has _ovito' {
    assert "$xsrc/_ovito" is_file
}
@test 'more_src has _netgen' {
    assert "$xsrc/_netgen" is_file
}
@test 'more_src has _fenics' {
    assert "$xsrc/_fenics" is_file
}
@test 'more_src has _simpleFoam' {
    assert "$xsrc/_simpleFoam" is_file
}
@test 'more_src has _icoFoam' {
    assert "$xsrc/_icoFoam" is_file
}
@test 'more_src has _blockMesh' {
    assert "$xsrc/_blockMesh" is_file
}
@test 'more_src has _snappyHexMesh' {
    assert "$xsrc/_snappyHexMesh" is_file
}
@test 'more_src has _decomposePar' {
    assert "$xsrc/_decomposePar" is_file
}
@test 'more_src has _reconstructPar' {
    assert "$xsrc/_reconstructPar" is_file
}
@test 'more_src has _paraFoam' {
    assert "$xsrc/_paraFoam" is_file
}
@test 'more_src has _foamLog' {
    assert "$xsrc/_foamLog" is_file
}
@test 'more_src has _foamJob' {
    assert "$xsrc/_foamJob" is_file
}
@test 'more_src has _wmake' {
    assert "$xsrc/_wmake" is_file
}
@test 'more_src has _vasp' {
    assert "$xsrc/_vasp" is_file
}
@test 'more_src has _lmp' {
    assert "$xsrc/_lmp" is_file
}
@test 'more_src has _gromacs' {
    assert "$xsrc/_gromacs" is_file
}
@test 'more_src has _gmx_d' {
    assert "$xsrc/_gmx_d" is_file
}
@test 'more_src has _namd2' {
    assert "$xsrc/_namd2" is_file
}
@test 'more_src has _namdcuda' {
    assert "$xsrc/_namdcuda" is_file
}
@test 'more_src has _cp.x' {
    assert "$xsrc/_cp.x" is_file
}
@test 'more_src has _dos.x' {
    assert "$xsrc/_dos.x" is_file
}
@test 'more_src has _bands.x' {
    assert "$xsrc/_bands.x" is_file
}
@test 'more_src has _epw.x' {
    assert "$xsrc/_epw.x" is_file
}
@test 'more_src has _ph.x' {
    assert "$xsrc/_ph.x" is_file
}
@test 'more_src has _quantum-espresso' {
    assert "$xsrc/_quantum-espresso" is_file
}
@test 'more_src has _sander' {
    assert "$xsrc/_sander" is_file
}
@test 'more_src has _pmemd' {
    assert "$xsrc/_pmemd" is_file
}
@test 'more_src has _cpptraj' {
    assert "$xsrc/_cpptraj" is_file
}
@test 'more_src has _antechamber' {
    assert "$xsrc/_antechamber" is_file
}
@test 'more_src has _tleap' {
    assert "$xsrc/_tleap" is_file
}
@test 'more_src has _parmed' {
    assert "$xsrc/_parmed" is_file
}
@test 'more_src has _tinker' {
    assert "$xsrc/_tinker" is_file
}
@test 'more_src has _openmm' {
    assert "$xsrc/_openmm" is_file
}
@test 'more_src has _mdtraj' {
    assert "$xsrc/_mdtraj" is_file
}
@test 'more_src has _mopac' {
    assert "$xsrc/_mopac" is_file
}
@test 'more_src has _pyscf' {
    assert "$xsrc/_pyscf" is_file
}
@test 'more_src has _rosetta_scripts' {
    assert "$xsrc/_rosetta_scripts" is_file
}
@test 'more_src has _adf' {
    assert "$xsrc/_adf" is_file
}
@test 'more_src has _blast' {
    assert "$xsrc/_blast" is_file
}
@test 'more_src has _psiblast' {
    assert "$xsrc/_psiblast" is_file
}
@test 'more_src has _rpsblast' {
    assert "$xsrc/_rpsblast" is_file
}
@test 'more_src has _deltablast' {
    assert "$xsrc/_deltablast" is_file
}
@test 'more_src has _tophat' {
    assert "$xsrc/_tophat" is_file
}
@test 'more_src has _tophat2' {
    assert "$xsrc/_tophat2" is_file
}
@test 'more_src has _cufflinks' {
    assert "$xsrc/_cufflinks" is_file
}
@test 'more_src has _cuffcompare' {
    assert "$xsrc/_cuffcompare" is_file
}
@test 'more_src has _cuffdiff' {
    assert "$xsrc/_cuffdiff" is_file
}
@test 'more_src has _cuffmerge' {
    assert "$xsrc/_cuffmerge" is_file
}
@test 'more_src has _cuffquant' {
    assert "$xsrc/_cuffquant" is_file
}
@test 'more_src has _vcftools' {
    assert "$xsrc/_vcftools" is_file
}
@test 'more_src has _seqtk' {
    assert "$xsrc/_seqtk" is_file
}
@test 'more_src has _plink2' {
    assert "$xsrc/_plink2" is_file
}
@test 'more_src has _admixture' {
    assert "$xsrc/_admixture" is_file
}
@test 'more_src has _vcfutils.pl' {
    assert "$xsrc/_vcfutils.pl" is_file
}
@test 'more_src has _mosdepth' {
    assert "$xsrc/_mosdepth" is_file
}
@test 'more_src has _fastqc' {
    assert "$xsrc/_fastqc" is_file
}
@test 'more_src has _multiqc' {
    assert "$xsrc/_multiqc" is_file
}
@test 'more_src has _trim-galore' {
    assert "$xsrc/_trim-galore" is_file
}
@test 'more_src has _trimgalore' {
    assert "$xsrc/_trimgalore" is_file
}
@test 'more_src has _trimmomatic' {
    assert "$xsrc/_trimmomatic" is_file
}
@test 'more_src has _mafft' {
    assert "$xsrc/_mafft" is_file
}
@test 'more_src has _mrbayes' {
    assert "$xsrc/_mrbayes" is_file
}
@test 'more_src has _raxml-ng' {
    assert "$xsrc/_raxml-ng" is_file
}
@test 'more_src has _iqtree' {
    assert "$xsrc/_iqtree" is_file
}
@test 'more_src has _iqtree2' {
    assert "$xsrc/_iqtree2" is_file
}
@test 'more_src has _fasttree' {
    assert "$xsrc/_fasttree" is_file
}
@test 'more_src has _fasttreemp' {
    assert "$xsrc/_fasttreemp" is_file
}
@test 'more_src has _clustalw' {
    assert "$xsrc/_clustalw" is_file
}
@test 'more_src has _clustalw2' {
    assert "$xsrc/_clustalw2" is_file
}
@test 'more_src has _clustalo' {
    assert "$xsrc/_clustalo" is_file
}
@test 'more_src has _muscle3' {
    assert "$xsrc/_muscle3" is_file
}
@test 'more_src has _muscle5' {
    assert "$xsrc/_muscle5" is_file
}
@test 'more_src has _t-coffee' {
    assert "$xsrc/_t-coffee" is_file
}
@test 'more_src has _tcoffee' {
    assert "$xsrc/_tcoffee" is_file
}
@test 'more_src has _abyss' {
    assert "$xsrc/_abyss" is_file
}
@test 'more_src has _spades' {
    assert "$xsrc/_spades" is_file
}
@test 'more_src has _canu' {
    assert "$xsrc/_canu" is_file
}
@test 'more_src has _wtdbg2' {
    assert "$xsrc/_wtdbg2" is_file
}
@test 'more_src has _hifiasm' {
    assert "$xsrc/_hifiasm" is_file
}
@test 'more_src has _flye' {
    assert "$xsrc/_flye" is_file
}
@test 'more_src has _gatk4' {
    assert "$xsrc/_gatk4" is_file
}
@test 'more_src has _picard-tools' {
    assert "$xsrc/_picard-tools" is_file
}
@test 'more_src has _delly' {
    assert "$xsrc/_delly" is_file
}
@test 'more_src has _manta' {
    assert "$xsrc/_manta" is_file
}
@test 'more_src has _strelka2' {
    assert "$xsrc/_strelka2" is_file
}
@test 'more_src has _mutect2' {
    assert "$xsrc/_mutect2" is_file
}
@test 'more_src has _vep' {
    assert "$xsrc/_vep" is_file
}
@test 'more_src has _ensembl-vep' {
    assert "$xsrc/_ensembl-vep" is_file
}
@test 'more_src has _hmmscan' {
    assert "$xsrc/_hmmscan" is_file
}
@test 'more_src has _hmmsearch' {
    assert "$xsrc/_hmmsearch" is_file
}
@test 'more_src has _hmmalign' {
    assert "$xsrc/_hmmalign" is_file
}
@test 'more_src has _hmmbuild' {
    assert "$xsrc/_hmmbuild" is_file
}
@test 'more_src has _hmmpress' {
    assert "$xsrc/_hmmpress" is_file
}
@test 'more_src has _jackhmmer' {
    assert "$xsrc/_jackhmmer" is_file
}
@test 'more_src has _phmmer' {
    assert "$xsrc/_phmmer" is_file
}
@test 'more_src has _nhmmer' {
    assert "$xsrc/_nhmmer" is_file
}
@test 'more_src has _nhmmscan' {
    assert "$xsrc/_nhmmscan" is_file
}
@test 'more_src has _esl-alimanip' {
    assert "$xsrc/_esl-alimanip" is_file
}
@test 'more_src has _esl-alimask' {
    assert "$xsrc/_esl-alimask" is_file
}
@test 'more_src has _esl-alimerge' {
    assert "$xsrc/_esl-alimerge" is_file
}
@test 'more_src has _esl-alipid' {
    assert "$xsrc/_esl-alipid" is_file
}
@test 'more_src has _esl-alistat' {
    assert "$xsrc/_esl-alistat" is_file
}
@test 'more_src has _esl-compstruct' {
    assert "$xsrc/_esl-compstruct" is_file
}
@test 'more_src has _esl-construct' {
    assert "$xsrc/_esl-construct" is_file
}
@test 'more_src has _esl-mask' {
    assert "$xsrc/_esl-mask" is_file
}
@test 'more_src has _esl-mixdchlet' {
    assert "$xsrc/_esl-mixdchlet" is_file
}
@test 'more_src has _esl-reformat' {
    assert "$xsrc/_esl-reformat" is_file
}
@test 'more_src has _esl-selectn' {
    assert "$xsrc/_esl-selectn" is_file
}
@test 'more_src has _esl-seqstat' {
    assert "$xsrc/_esl-seqstat" is_file
}
@test 'more_src has _esl-seqrange' {
    assert "$xsrc/_esl-seqrange" is_file
}
@test 'more_src has _esl-shuffle' {
    assert "$xsrc/_esl-shuffle" is_file
}
@test 'more_src has _esl-sfetch' {
    assert "$xsrc/_esl-sfetch" is_file
}
@test 'more_src has _esl-translate' {
    assert "$xsrc/_esl-translate" is_file
}
@test 'more_src has _cmscan' {
    assert "$xsrc/_cmscan" is_file
}
@test 'more_src has _cmsearch' {
    assert "$xsrc/_cmsearch" is_file
}
@test 'more_src has _cmalign' {
    assert "$xsrc/_cmalign" is_file
}
@test 'more_src has _cmbuild' {
    assert "$xsrc/_cmbuild" is_file
}
@test 'more_src has _cmcalibrate' {
    assert "$xsrc/_cmcalibrate" is_file
}
@test 'more_src has _cmconvert' {
    assert "$xsrc/_cmconvert" is_file
}
@test 'more_src has _cmemit' {
    assert "$xsrc/_cmemit" is_file
}
@test 'more_src has _cmfetch' {
    assert "$xsrc/_cmfetch" is_file
}
@test 'more_src has _cmpress' {
    assert "$xsrc/_cmpress" is_file
}
@test 'more_src has _cmstat' {
    assert "$xsrc/_cmstat" is_file
}
@test 'more_src has _RNAfold' {
    assert "$xsrc/_RNAfold" is_file
}
@test 'more_src has _RNAplot' {
    assert "$xsrc/_RNAplot" is_file
}
@test 'more_src has _RNAheat' {
    assert "$xsrc/_RNAheat" is_file
}
@test 'more_src has _RNALfold' {
    assert "$xsrc/_RNALfold" is_file
}
@test 'more_src has _rnaeval' {
    assert "$xsrc/_rnaeval" is_file
}
@test 'more_src has _rnaalifold' {
    assert "$xsrc/_rnaalifold" is_file
}
@test 'more_src has _rnacofold' {
    assert "$xsrc/_rnacofold" is_file
}
@test 'more_src has _rnaduplex' {
    assert "$xsrc/_rnaduplex" is_file
}
@test 'more_src has _rnainverse' {
    assert "$xsrc/_rnainverse" is_file
}
@test 'more_src has _rnasubopt' {
    assert "$xsrc/_rnasubopt" is_file
}
@test 'more_src has _rnaplfold' {
    assert "$xsrc/_rnaplfold" is_file
}
@test 'more_src has _esearch' {
    assert "$xsrc/_esearch" is_file
}
@test 'more_src has _efetch' {
    assert "$xsrc/_efetch" is_file
}
@test 'more_src has _elink' {
    assert "$xsrc/_elink" is_file
}
@test 'more_src has _seqret' {
    assert "$xsrc/_seqret" is_file
}
