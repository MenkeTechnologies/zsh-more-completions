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
    xsrc_find() {
        local d
        for d in more_src more_src2 more_src3; do
            if [[ -f "$pluginDir/$d/$1" ]]; then echo "$pluginDir/$d/$1"; return; fi
        done
        echo "$pluginDir/more_src/$1"
    }
}

# ─── File existence tests ───────────────────────────────────────────────────
@test 'more_src has _0ad' {
    assert "$(xsrc_find _0ad)" is_file
}
@test 'more_src has _0install' {
    assert "$(xsrc_find _0install)" is_file
}
@test 'more_src has _0launch' {
    assert "$(xsrc_find _0launch)" is_file
}
@test 'more_src has _0verkill' {
    assert "$(xsrc_find _0verkill)" is_file
}
@test 'more_src has _0xFFFF' {
    assert "$(xsrc_find _0xFFFF)" is_file
}
@test 'more_src has _1ls' {
    assert "$(xsrc_find _1ls)" is_file
}
@test 'more_src has _2pd' {
    assert "$(xsrc_find _2pd)" is_file
}
@test 'more_src has _3proxy' {
    assert "$(xsrc_find _3proxy)" is_file
}
@test 'more_src has _7kaa' {
    assert "$(xsrc_find _7kaa)" is_file
}
@test 'more_src has _9base' {
    assert "$(xsrc_find _9base)" is_file
}
@test 'more_src has _9mount' {
    assert "$(xsrc_find _9mount)" is_file
}
@test 'more_src has _9pfuse' {
    assert "$(xsrc_find _9pfuse)" is_file
}
@test 'more_src has _9pserve' {
    assert "$(xsrc_find _9pserve)" is_file
}
@test 'more_src has _Bifrost' {
    assert "$(xsrc_find _Bifrost)" is_file
}
@test 'more_src has _CompileDaemon' {
    assert "$(xsrc_find _CompileDaemon)" is_file
}
@test 'more_src has _DAS_Tool' {
    assert "$(xsrc_find _DAS_Tool)" is_file
}
@test 'more_src has _ExpansionHunter' {
    assert "$(xsrc_find _ExpansionHunter)" is_file
}
@test 'more_src has _GUESSmyLT' {
    assert "$(xsrc_find _GUESSmyLT)" is_file
}
@test 'more_src has _Genrich' {
    assert "$(xsrc_find _Genrich)" is_file
}
@test 'more_src has _GraphAligner' {
    assert "$(xsrc_find _GraphAligner)" is_file
}
@test 'more_src has _HandBrakeCLI' {
    assert "$(xsrc_find _HandBrakeCLI)" is_file
}
@test 'more_src has _LimeUtil' {
    assert "$(xsrc_find _LimeUtil)" is_file
}
@test 'more_src has _MBG' {
    assert "$(xsrc_find _MBG)" is_file
}
@test 'more_src has _MethylDackel' {
    assert "$(xsrc_find _MethylDackel)" is_file
}
@test 'more_src has _NanoFilt' {
    assert "$(xsrc_find _NanoFilt)" is_file
}
@test 'more_src has _NanoPlot' {
    assert "$(xsrc_find _NanoPlot)" is_file
}
@test 'more_src has _NanoStat' {
    assert "$(xsrc_find _NanoStat)" is_file
}
@test 'more_src has _PTBatcherGUI' {
    assert "$(xsrc_find _PTBatcherGUI)" is_file
}
@test 'more_src has _PlistBuddy' {
    assert "$(xsrc_find _PlistBuddy)" is_file
}
@test 'more_src has _ProcessRepeats' {
    assert "$(xsrc_find _ProcessRepeats)" is_file
}
@test 'more_src has _RNALfold' {
    assert "$(xsrc_find _RNALfold)" is_file
}
@test 'more_src has _RNAfold' {
    assert "$(xsrc_find _RNAfold)" is_file
}
@test 'more_src has _RNAheat' {
    assert "$(xsrc_find _RNAheat)" is_file
}
@test 'more_src has _RNAplot' {
    assert "$(xsrc_find _RNAplot)" is_file
}
@test 'more_src has _RepeatMasker' {
    assert "$(xsrc_find _RepeatMasker)" is_file
}
@test 'more_src has _RepeatModeler' {
    assert "$(xsrc_find _RepeatModeler)" is_file
}
@test 'more_src has _RepeatProteinMask' {
    assert "$(xsrc_find _RepeatProteinMask)" is_file
}
@test 'more_src has _SOT' {
    assert "$(xsrc_find _SOT)" is_file
}
@test 'more_src has _STAR' {
    assert "$(xsrc_find _STAR)" is_file
}
@test 'more_src has _STAR-Fusion' {
    assert "$(xsrc_find _STAR-Fusion)" is_file
}
@test 'more_src has _SnpSift' {
    assert "$(xsrc_find _SnpSift)" is_file
}
@test 'more_src has _TransDecoder.LongOrfs' {
    assert "$(xsrc_find _TransDecoder.LongOrfs)" is_file
}
@test 'more_src has _TransDecoder.Predict' {
    assert "$(xsrc_find _TransDecoder.Predict)" is_file
}
@test 'more_src has _Trinity' {
    assert "$(xsrc_find _Trinity)" is_file
}
@test 'more_src has _VBoxControl' {
    assert "$(xsrc_find _VBoxControl)" is_file
}
@test 'more_src has _VBoxManage' {
    assert "$(xsrc_find _VBoxManage)" is_file
}
@test 'more_src has _VBoxNetAdpCtl' {
    assert "$(xsrc_find _VBoxNetAdpCtl)" is_file
}
@test 'more_src has _VBoxNetBoot' {
    assert "$(xsrc_find _VBoxNetBoot)" is_file
}
@test 'more_src has _VBoxNetDHCP' {
    assert "$(xsrc_find _VBoxNetDHCP)" is_file
}
@test 'more_src has _VBoxNetNAT' {
    assert "$(xsrc_find _VBoxNetNAT)" is_file
}
@test 'more_src has _VBoxXPCOMIPCD' {
    assert "$(xsrc_find _VBoxXPCOMIPCD)" is_file
}
@test 'more_src has _Zzz' {
    assert "$(xsrc_find _Zzz)" is_file
}
@test 'more_src has _a11ywatch' {
    assert "$(xsrc_find _a11ywatch)" is_file
}
@test 'more_src has _a2jmidi' {
    assert "$(xsrc_find _a2jmidi)" is_file
}
@test 'more_src has _a2jmidi-bridge' {
    assert "$(xsrc_find _a2jmidi-bridge)" is_file
}
@test 'more_src has _a2jmidid' {
    assert "$(xsrc_find _a2jmidid)" is_file
}
@test 'more_src has _aa-log.zsh' {
    assert "$(xsrc_find _aa-log.zsh)" is_file
}
@test 'more_src has _aaindexextract' {
    assert "$(xsrc_find _aaindexextract)" is_file
}
@test 'more_src has _ab-av1' {
    assert "$(xsrc_find _ab-av1)" is_file
}
@test 'more_src has _abba-baba' {
    assert "$(xsrc_find _abba-baba)" is_file
}
@test 'more_src has _abbr' {
    assert "$(xsrc_find _abbr)" is_file
}
@test 'more_src has _abc2ps' {
    assert "$(xsrc_find _abc2ps)" is_file
}
@test 'more_src has _abcl' {
    assert "$(xsrc_find _abcl)" is_file
}
@test 'more_src has _abcrypt' {
    assert "$(xsrc_find _abcrypt)" is_file
}
@test 'more_src has _abctl' {
    assert "$(xsrc_find _abctl)" is_file
}
@test 'more_src has _abduco' {
    assert "$(xsrc_find _abduco)" is_file
}
@test 'more_src has _abiview' {
    assert "$(xsrc_find _abiview)" is_file
}
@test 'more_src has _abook' {
    assert "$(xsrc_find _abook)" is_file
}
@test 'more_src has _abpoa' {
    assert "$(xsrc_find _abpoa)" is_file
}
@test 'more_src has _abricate' {
    assert "$(xsrc_find _abricate)" is_file
}
@test 'more_src has _abstouch' {
    assert "$(xsrc_find _abstouch)" is_file
}
@test 'more_src has _abyss' {
    assert "$(xsrc_find _abyss)" is_file
}
@test 'more_src has _abyss-align' {
    assert "$(xsrc_find _abyss-align)" is_file
}
@test 'more_src has _abyss-bloom' {
    assert "$(xsrc_find _abyss-bloom)" is_file
}
@test 'more_src has _abyss-fac' {
    assert "$(xsrc_find _abyss-fac)" is_file
}
@test 'more_src has _abyss-fixmate' {
    assert "$(xsrc_find _abyss-fixmate)" is_file
}
@test 'more_src has _abyss-index' {
    assert "$(xsrc_find _abyss-index)" is_file
}
@test 'more_src has _abyss-map' {
    assert "$(xsrc_find _abyss-map)" is_file
}
@test 'more_src has _abyss-pe' {
    assert "$(xsrc_find _abyss-pe)" is_file
}
@test 'more_src has _acarsdec' {
    assert "$(xsrc_find _acarsdec)" is_file
}
@test 'more_src has _accel-pppd' {
    assert "$(xsrc_find _accel-pppd)" is_file
}
@test 'more_src has _acdc' {
    assert "$(xsrc_find _acdc)" is_file
}
@test 'more_src has _acdgalaxy' {
    assert "$(xsrc_find _acdgalaxy)" is_file
}
@test 'more_src has _acdpretty' {
    assert "$(xsrc_find _acdpretty)" is_file
}
@test 'more_src has _acdtable' {
    assert "$(xsrc_find _acdtable)" is_file
}
@test 'more_src has _acdvalid' {
    assert "$(xsrc_find _acdvalid)" is_file
}
@test 'more_src has _acme' {
    assert "$(xsrc_find _acme)" is_file
}
@test 'more_src has _acmeman' {
    assert "$(xsrc_find _acmeman)" is_file
}
@test 'more_src has _acpi-call' {
    assert "$(xsrc_find _acpi-call)" is_file
}
@test 'more_src has _acpi_fakekey' {
    assert "$(xsrc_find _acpi_fakekey)" is_file
}
@test 'more_src has _acr' {
    assert "$(xsrc_find _acr)" is_file
}
@test 'more_src has _act' {
    assert "$(xsrc_find _act)" is_file
}
@test 'more_src has _act_runner' {
    assert "$(xsrc_find _act_runner)" is_file
}
@test 'more_src has _actinia-server' {
    assert "$(xsrc_find _actinia-server)" is_file
}
@test 'more_src has _activemq' {
    assert "$(xsrc_find _activemq)" is_file
}
@test 'more_src has _adbsync' {
    assert "$(xsrc_find _adbsync)" is_file
}
@test 'more_src has _add-skill' {
    assert "$(xsrc_find _add-skill)" is_file
}
@test 'more_src has _addgnupghome' {
    assert "$(xsrc_find _addgnupghome)" is_file
}
@test 'more_src has _addlicense' {
    assert "$(xsrc_find _addlicense)" is_file
}
@test 'more_src has _aderyn' {
    assert "$(xsrc_find _aderyn)" is_file
}
@test 'more_src has _adf' {
    assert "$(xsrc_find _adf)" is_file
}
@test 'more_src has _adk' {
    assert "$(xsrc_find _adk)" is_file
}
@test 'more_src has _admixture' {
    assert "$(xsrc_find _admixture)" is_file
}
@test 'more_src has _adns_resolve' {
    assert "$(xsrc_find _adns_resolve)" is_file
}
@test 'more_src has _adns_test' {
    assert "$(xsrc_find _adns_test)" is_file
}
@test 'more_src has _advcp' {
    assert "$(xsrc_find _advcp)" is_file
}
@test 'more_src has _advdef' {
    assert "$(xsrc_find _advdef)" is_file
}
@test 'more_src has _advixe-cl' {
    assert "$(xsrc_find _advixe-cl)" is_file
}
@test 'more_src has _aeolus' {
    assert "$(xsrc_find _aeolus)" is_file
}
@test 'more_src has _aerc' {
    assert "$(xsrc_find _aerc)" is_file
}
@test 'more_src has _affected' {
    assert "$(xsrc_find _affected)" is_file
}
@test 'more_src has _afinfo' {
    assert "$(xsrc_find _afinfo)" is_file
}
@test 'more_src has _afmtopl' {
    assert "$(xsrc_find _afmtopl)" is_file
}
@test 'more_src has _aftman' {
    assert "$(xsrc_find _aftman)" is_file
}
@test 'more_src has _agat' {
    assert "$(xsrc_find _agat)" is_file
}
@test 'more_src has _agat_convert_bed2gff.pl' {
    assert "$(xsrc_find _agat_convert_bed2gff.pl)" is_file
}
@test 'more_src has _agat_convert_embl2gff.pl' {
    assert "$(xsrc_find _agat_convert_embl2gff.pl)" is_file
}
@test 'more_src has _agat_convert_genscan2gff.pl' {
    assert "$(xsrc_find _agat_convert_genscan2gff.pl)" is_file
}
@test 'more_src has _agat_convert_mfannot2gff.pl' {
    assert "$(xsrc_find _agat_convert_mfannot2gff.pl)" is_file
}
@test 'more_src has _agat_convert_minimap2_bam2gff.pl' {
    assert "$(xsrc_find _agat_convert_minimap2_bam2gff.pl)" is_file
}
@test 'more_src has _agat_convert_sp_gff2bed.pl' {
    assert "$(xsrc_find _agat_convert_sp_gff2bed.pl)" is_file
}
@test 'more_src has _agat_convert_sp_gff2gtf.pl' {
    assert "$(xsrc_find _agat_convert_sp_gff2gtf.pl)" is_file
}
@test 'more_src has _agat_convert_sp_gff2tsv.pl' {
    assert "$(xsrc_find _agat_convert_sp_gff2tsv.pl)" is_file
}
@test 'more_src has _agat_convert_sp_gff2zff.pl' {
    assert "$(xsrc_find _agat_convert_sp_gff2zff.pl)" is_file
}
@test 'more_src has _agat_sp_Prokka_inferNameFromAttributes.pl' {
    assert "$(xsrc_find _agat_sp_Prokka_inferNameFromAttributes.pl)" is_file
}
@test 'more_src has _agat_sp_add_attribute_shortest_exon_size.pl' {
    assert "$(xsrc_find _agat_sp_add_attribute_shortest_exon_size.pl)" is_file
}
@test 'more_src has _agat_sp_add_attribute_shortest_intron_size.pl' {
    assert "$(xsrc_find _agat_sp_add_attribute_shortest_intron_size.pl)" is_file
}
@test 'more_src has _agat_sp_add_introns.pl' {
    assert "$(xsrc_find _agat_sp_add_introns.pl)" is_file
}
@test 'more_src has _agat_sp_add_start_and_stop.pl' {
    assert "$(xsrc_find _agat_sp_add_start_and_stop.pl)" is_file
}
@test 'more_src has _agat_sp_alignment_output_style.pl' {
    assert "$(xsrc_find _agat_sp_alignment_output_style.pl)" is_file
}
@test 'more_src has _agat_sp_clipN_seqExtremities_and_fixCoordinates.pl' {
    assert "$(xsrc_find _agat_sp_clipN_seqExtremities_and_fixCoordinates.pl)" is_file
}
@test 'more_src has _agat_sp_compare_two_BUSCOs.pl' {
    assert "$(xsrc_find _agat_sp_compare_two_BUSCOs.pl)" is_file
}
@test 'more_src has _agat_sp_compare_two_annotations.pl' {
    assert "$(xsrc_find _agat_sp_compare_two_annotations.pl)" is_file
}
@test 'more_src has _agat_sp_complement_annotations.pl' {
    assert "$(xsrc_find _agat_sp_complement_annotations.pl)" is_file
}
@test 'more_src has _agat_sp_ensembl_output_style.pl' {
    assert "$(xsrc_find _agat_sp_ensembl_output_style.pl)" is_file
}
@test 'more_src has _agda-mode' {
    assert "$(xsrc_find _agda-mode)" is_file
}
@test 'more_src has _age' {
    assert "$(xsrc_find _age)" is_file
}
@test 'more_src has _age-keygen' {
    assert "$(xsrc_find _age-keygen)" is_file
}
@test 'more_src has _agency-swarm' {
    assert "$(xsrc_find _agency-swarm)" is_file
}
@test 'more_src has _agent-browser' {
    assert "$(xsrc_find _agent-browser)" is_file
}
@test 'more_src has _agent-cli' {
    assert "$(xsrc_find _agent-cli)" is_file
}
@test 'more_src has _agent-memory' {
    assert "$(xsrc_find _agent-memory)" is_file
}
@test 'more_src has _agent-procs' {
    assert "$(xsrc_find _agent-procs)" is_file
}
@test 'more_src has _agent-protocol' {
    assert "$(xsrc_find _agent-protocol)" is_file
}
@test 'more_src has _agent_control' {
    assert "$(xsrc_find _agent_control)" is_file
}
@test 'more_src has _agentchrome' {
    assert "$(xsrc_find _agentchrome)" is_file
}
@test 'more_src has _agentcode' {
    assert "$(xsrc_find _agentcode)" is_file
}
@test 'more_src has _agentforge' {
    assert "$(xsrc_find _agentforge)" is_file
}
@test 'more_src has _agentic-shell' {
    assert "$(xsrc_find _agentic-shell)" is_file
}
@test 'more_src has _agentmemory' {
    assert "$(xsrc_find _agentmemory)" is_file
}
@test 'more_src has _agentop' {
    assert "$(xsrc_find _agentop)" is_file
}
@test 'more_src has _agentpack' {
    assert "$(xsrc_find _agentpack)" is_file
}
@test 'more_src has _agentql' {
    assert "$(xsrc_find _agentql)" is_file
}
@test 'more_src has _agentsinc' {
    assert "$(xsrc_find _agentsinc)" is_file
}
@test 'more_src has _agentstack' {
    assert "$(xsrc_find _agentstack)" is_file
}
@test 'more_src has _agentswarm' {
    assert "$(xsrc_find _agentswarm)" is_file
}
@test 'more_src has _agentvm' {
    assert "$(xsrc_find _agentvm)" is_file
}
@test 'more_src has _agentwork' {
    assert "$(xsrc_find _agentwork)" is_file
}
@test 'more_src has _agentworkforce' {
    assert "$(xsrc_find _agentworkforce)" is_file
}
@test 'more_src has _agixt' {
    assert "$(xsrc_find _agixt)" is_file
}
@test 'more_src has _agixt-cli' {
    assert "$(xsrc_find _agixt-cli)" is_file
}
@test 'more_src has _agno' {
    assert "$(xsrc_find _agno)" is_file
}
@test 'more_src has _agno-cli' {
    assert "$(xsrc_find _agno-cli)" is_file
}
@test 'more_src has _agrep' {
    assert "$(xsrc_find _agrep)" is_file
}
@test 'more_src has _agrind' {
    assert "$(xsrc_find _agrind)" is_file
}
@test 'more_src has _agvtool' {
    assert "$(xsrc_find _agvtool)" is_file
}
@test 'more_src has _agy' {
    assert "$(xsrc_find _agy)" is_file
}
@test 'more_src has _ai-claude' {
    assert "$(xsrc_find _ai-claude)" is_file
}
@test 'more_src has _ai-codex' {
    assert "$(xsrc_find _ai-codex)" is_file
}
@test 'more_src has _ai-costs' {
    assert "$(xsrc_find _ai-costs)" is_file
}
@test 'more_src has _ai-explain' {
    assert "$(xsrc_find _ai-explain)" is_file
}
@test 'more_src has _ai-gemini' {
    assert "$(xsrc_find _ai-gemini)" is_file
}
@test 'more_src has _ai-git' {
    assert "$(xsrc_find _ai-git)" is_file
}
@test 'more_src has _ai-manager' {
    assert "$(xsrc_find _ai-manager)" is_file
}
@test 'more_src has _ai-memory' {
    assert "$(xsrc_find _ai-memory)" is_file
}
@test 'more_src has _ai-renamer' {
    assert "$(xsrc_find _ai-renamer)" is_file
}
@test 'more_src has _ai-shell' {
    assert "$(xsrc_find _ai-shell)" is_file
}
@test 'more_src has _ai-status' {
    assert "$(xsrc_find _ai-status)" is_file
}
@test 'more_src has _aiautocommit' {
    assert "$(xsrc_find _aiautocommit)" is_file
}
@test 'more_src has _aichat' {
    assert "$(xsrc_find _aichat)" is_file
}
@test 'more_src has _aide-check' {
    assert "$(xsrc_find _aide-check)" is_file
}
@test 'more_src has _aide-init' {
    assert "$(xsrc_find _aide-init)" is_file
}
@test 'more_src has _aide-update' {
    assert "$(xsrc_find _aide-update)" is_file
}
@test 'more_src has _aideinit' {
    assert "$(xsrc_find _aideinit)" is_file
}
@test 'more_src has _aider' {
    assert "$(xsrc_find _aider)" is_file
}
@test 'more_src has _aiderdesk-extensions' {
    assert "$(xsrc_find _aiderdesk-extensions)" is_file
}
@test 'more_src has _ailloy' {
    assert "$(xsrc_find _ailloy)" is_file
}
@test 'more_src has _air' {
    assert "$(xsrc_find _air)" is_file
}
@test 'more_src has _airbyte-ci' {
    assert "$(xsrc_find _airbyte-ci)" is_file
}
@test 'more_src has _airdrop-ng' {
    assert "$(xsrc_find _airdrop-ng)" is_file
}
@test 'more_src has _airgraph-ng' {
    assert "$(xsrc_find _airgraph-ng)" is_file
}
@test 'more_src has _airis' {
    assert "$(xsrc_find _airis)" is_file
}
@test 'more_src has _airlift' {
    assert "$(xsrc_find _airlift)" is_file
}
@test 'more_src has _airshare' {
    assert "$(xsrc_find _airshare)" is_file
}
@test 'more_src has _airspy_info' {
    assert "$(xsrc_find _airspy_info)" is_file
}
@test 'more_src has _aisleriot' {
    assert "$(xsrc_find _aisleriot)" is_file
}
@test 'more_src has _akonadi' {
    assert "$(xsrc_find _akonadi)" is_file
}
@test 'more_src has _akonadictl' {
    assert "$(xsrc_find _akonadictl)" is_file
}
@test 'more_src has _akv.zsh' {
    assert "$(xsrc_find _akv.zsh)" is_file
}
@test 'more_src has _alertmanager' {
    assert "$(xsrc_find _alertmanager)" is_file
}
@test 'more_src has _alfons' {
    assert "$(xsrc_find _alfons)" is_file
}
@test 'more_src has _alfred' {
    assert "$(xsrc_find _alfred)" is_file
}
@test 'more_src has _align_image_stack' {
    assert "$(xsrc_find _align_image_stack)" is_file
}
@test 'more_src has _aligncopy' {
    assert "$(xsrc_find _aligncopy)" is_file
}
@test 'more_src has _aligncopypair' {
    assert "$(xsrc_find _aligncopypair)" is_file
}
@test 'more_src has _alistral' {
    assert "$(xsrc_find _alistral)" is_file
}
@test 'more_src has _all.sh' {
    assert "$(xsrc_find _all.sh)" is_file
}
@test 'more_src has _alock' {
    assert "$(xsrc_find _alock)" is_file
}
@test 'more_src has _alot' {
    assert "$(xsrc_find _alot)" is_file
}
@test 'more_src has _alpen' {
    assert "$(xsrc_find _alpen)" is_file
}
@test 'more_src has _alpine-info' {
    assert "$(xsrc_find _alpine-info)" is_file
}
@test 'more_src has _alr' {
    assert "$(xsrc_find _alr)" is_file
}
@test 'more_src has _altermime' {
    assert "$(xsrc_find _altermime)" is_file
}
@test 'more_src has _altium-cli' {
    assert "$(xsrc_find _altium-cli)" is_file
}
@test 'more_src has _am' {
    assert "$(xsrc_find _am)" is_file
}
@test 'more_src has _amarok' {
    assert "$(xsrc_find _amarok)" is_file
}
@test 'more_src has _amavis' {
    assert "$(xsrc_find _amavis)" is_file
}
@test 'more_src has _amavisd' {
    assert "$(xsrc_find _amavisd)" is_file
}
@test 'more_src has _amavisd-new' {
    assert "$(xsrc_find _amavisd-new)" is_file
}
@test 'more_src has _amber' {
    assert "$(xsrc_find _amber)" is_file
}
@test 'more_src has _amd-device-plugin' {
    assert "$(xsrc_find _amd-device-plugin)" is_file
}
@test 'more_src has _amd-smi' {
    assert "$(xsrc_find _amd-smi)" is_file
}
@test 'more_src has _amdtop' {
    assert "$(xsrc_find _amdtop)" is_file
}
@test 'more_src has _amdvbflash' {
    assert "$(xsrc_find _amdvbflash)" is_file
}
@test 'more_src has _amfora' {
    assert "$(xsrc_find _amfora)" is_file
}
@test 'more_src has _amiberry' {
    assert "$(xsrc_find _amiberry)" is_file
}
@test 'more_src has _amon2-setup.pl' {
    assert "$(xsrc_find _amon2-setup.pl)" is_file
}
@test 'more_src has _amp-code' {
    assert "$(xsrc_find _amp-code)" is_file
}
@test 'more_src has _ampelos' {
    assert "$(xsrc_find _ampelos)" is_file
}
@test 'more_src has _ampy' {
    assert "$(xsrc_find _ampy)" is_file
}
@test 'more_src has _amqp-consume' {
    assert "$(xsrc_find _amqp-consume)" is_file
}
@test 'more_src has _amqp-declare-queue' {
    assert "$(xsrc_find _amqp-declare-queue)" is_file
}
@test 'more_src has _amqp-delete-queue' {
    assert "$(xsrc_find _amqp-delete-queue)" is_file
}
@test 'more_src has _amqp-get' {
    assert "$(xsrc_find _amqp-get)" is_file
}
@test 'more_src has _amqp-publish' {
    assert "$(xsrc_find _amqp-publish)" is_file
}
@test 'more_src has _amsynth' {
    assert "$(xsrc_find _amsynth)" is_file
}
@test 'more_src has _amule-daemon' {
    assert "$(xsrc_find _amule-daemon)" is_file
}
@test 'more_src has _anacrontab' {
    assert "$(xsrc_find _anacrontab)" is_file
}
@test 'more_src has _anc' {
    assert "$(xsrc_find _anc)" is_file
}
@test 'more_src has _android' {
    assert "$(xsrc_find _android)" is_file
}
@test 'more_src has _anew' {
    assert "$(xsrc_find _anew)" is_file
}
@test 'more_src has _angr' {
    assert "$(xsrc_find _angr)" is_file
}
@test 'more_src has _angrr' {
    assert "$(xsrc_find _angrr)" is_file
}
@test 'more_src has _angular-create' {
    assert "$(xsrc_find _angular-create)" is_file
}
@test 'more_src has _anka' {
    assert "$(xsrc_find _anka)" is_file
}
@test 'more_src has _anki' {
    assert "$(xsrc_find _anki)" is_file
}
@test 'more_src has _ans' {
    assert "$(xsrc_find _ans)" is_file
}
@test 'more_src has _ansi2image' {
    assert "$(xsrc_find _ansi2image)" is_file
}
@test 'more_src has _ansible-cmdb' {
    assert "$(xsrc_find _ansible-cmdb)" is_file
}
@test 'more_src has _ansible-connection' {
    assert "$(xsrc_find _ansible-connection)" is_file
}
@test 'more_src has _ansible-language-server' {
    assert "$(xsrc_find _ansible-language-server)" is_file
}
@test 'more_src has _ansible-lint' {
    assert "$(xsrc_find _ansible-lint)" is_file
}
@test 'more_src has _ansible-navigator' {
    assert "$(xsrc_find _ansible-navigator)" is_file
}
@test 'more_src has _antechamber' {
    assert "$(xsrc_find _antechamber)" is_file
}
@test 'more_src has _anthropic' {
    assert "$(xsrc_find _anthropic)" is_file
}
@test 'more_src has _anthropic-cli' {
    assert "$(xsrc_find _anthropic-cli)" is_file
}
@test 'more_src has _anthy-agent' {
    assert "$(xsrc_find _anthy-agent)" is_file
}
@test 'more_src has _antidote' {
    assert "$(xsrc_find _antidote)" is_file
}
@test 'more_src has _antlr' {
    assert "$(xsrc_find _antlr)" is_file
}
@test 'more_src has _antlrworks' {
    assert "$(xsrc_find _antlrworks)" is_file
}
@test 'more_src has _anybar' {
    assert "$(xsrc_find _anybar)" is_file
}
@test 'more_src has _aocf' {
    assert "$(xsrc_find _aocf)" is_file
}
@test 'more_src has _aodh-api' {
    assert "$(xsrc_find _aodh-api)" is_file
}
@test 'more_src has _aodh-evaluator' {
    assert "$(xsrc_find _aodh-evaluator)" is_file
}
@test 'more_src has _aodh-listener' {
    assert "$(xsrc_find _aodh-listener)" is_file
}
@test 'more_src has _aodh-notifier' {
    assert "$(xsrc_find _aodh-notifier)" is_file
}
@test 'more_src has _aos' {
    assert "$(xsrc_find _aos)" is_file
}
@test 'more_src has _apcaccess' {
    assert "$(xsrc_find _apcaccess)" is_file
}
@test 'more_src has _apctest' {
    assert "$(xsrc_find _apctest)" is_file
}
@test 'more_src has _apib' {
    assert "$(xsrc_find _apib)" is_file
}
@test 'more_src has _apicula' {
    assert "$(xsrc_find _apicula)" is_file
}
@test 'more_src has _apidoc' {
    assert "$(xsrc_find _apidoc)" is_file
}
@test 'more_src has _apix' {
    assert "$(xsrc_find _apix)" is_file
}
@test 'more_src has _apk-info-cli' {
    assert "$(xsrc_find _apk-info-cli)" is_file
}
@test 'more_src has _apkanalyzer' {
    assert "$(xsrc_find _apkanalyzer)" is_file
}
@test 'more_src has _apko' {
    assert "$(xsrc_find _apko)" is_file
}
@test 'more_src has _apparix' {
    assert "$(xsrc_find _apparix)" is_file
}
@test 'more_src has _apparmor-parser' {
    assert "$(xsrc_find _apparmor-parser)" is_file
}
@test 'more_src has _appcfg.py' {
    assert "$(xsrc_find _appcfg.py)" is_file
}
@test 'more_src has _appimage-builder' {
    assert "$(xsrc_find _appimage-builder)" is_file
}
@test 'more_src has _appleseed' {
    assert "$(xsrc_find _appleseed)" is_file
}
@test 'more_src has _applygnupgdefaults' {
    assert "$(xsrc_find _applygnupgdefaults)" is_file
}
@test 'more_src has _appstream-generator' {
    assert "$(xsrc_find _appstream-generator)" is_file
}
@test 'more_src has _apt-clone-cli' {
    assert "$(xsrc_find _apt-clone-cli)" is_file
}
@test 'more_src has _aptu' {
    assert "$(xsrc_find _aptu)" is_file
}
@test 'more_src has _apx' {
    assert "$(xsrc_find _apx)" is_file
}
@test 'more_src has _aqualung' {
    assert "$(xsrc_find _aqualung)" is_file
}
@test 'more_src has _arachni' {
    assert "$(xsrc_find _arachni)" is_file
}
@test 'more_src has _aranet' {
    assert "$(xsrc_find _aranet)" is_file
}
@test 'more_src has _arasan' {
    assert "$(xsrc_find _arasan)" is_file
}
@test 'more_src has _arc' {
    assert "$(xsrc_find _arc)" is_file
}
@test 'more_src has _arc-milter' {
    assert "$(xsrc_find _arc-milter)" is_file
}
@test 'more_src has _arcade' {
    assert "$(xsrc_find _arcade)" is_file
}
@test 'more_src has _arcade-mcp' {
    assert "$(xsrc_find _arcade-mcp)" is_file
}
@test 'more_src has _arcane-cli' {
    assert "$(xsrc_find _arcane-cli)" is_file
}
@test 'more_src has _arcconf' {
    assert "$(xsrc_find _arcconf)" is_file
}
@test 'more_src has _arce' {
    assert "$(xsrc_find _arce)" is_file
}
@test 'more_src has _arcget' {
    assert "$(xsrc_find _arcget)" is_file
}
@test 'more_src has _archinstall' {
    assert "$(xsrc_find _archinstall)" is_file
}
@test 'more_src has _architect-cli' {
    assert "$(xsrc_find _architect-cli)" is_file
}
@test 'more_src has _archivemount' {
    assert "$(xsrc_find _archivemount)" is_file
}
@test 'more_src has _arcproxy' {
    assert "$(xsrc_find _arcproxy)" is_file
}
@test 'more_src has _arcstat' {
    assert "$(xsrc_find _arcstat)" is_file
}
@test 'more_src has _arcsub' {
    assert "$(xsrc_find _arcsub)" is_file
}
@test 'more_src has _ardour' {
    assert "$(xsrc_find _ardour)" is_file
}
@test 'more_src has _ardour6' {
    assert "$(xsrc_find _ardour6)" is_file
}
@test 'more_src has _ardour7' {
    assert "$(xsrc_find _ardour7)" is_file
}
@test 'more_src has _ardour8' {
    assert "$(xsrc_find _ardour8)" is_file
}
@test 'more_src has _arduino-builder' {
    assert "$(xsrc_find _arduino-builder)" is_file
}
@test 'more_src has _arelo' {
    assert "$(xsrc_find _arelo)" is_file
}
@test 'more_src has _arf' {
    assert "$(xsrc_find _arf)" is_file
}
@test 'more_src has _argo' {
    assert "$(xsrc_find _argo)" is_file
}
@test 'more_src has _argo-cd-image-updater' {
    assert "$(xsrc_find _argo-cd-image-updater)" is_file
}
@test 'more_src has _argo-rollouts' {
    assert "$(xsrc_find _argo-rollouts)" is_file
}
@test 'more_src has _argo-server' {
    assert "$(xsrc_find _argo-server)" is_file
}
@test 'more_src has _argocd' {
    assert "$(xsrc_find _argocd)" is_file
}
@test 'more_src has _argocd-application-controller' {
    assert "$(xsrc_find _argocd-application-controller)" is_file
}
@test 'more_src has _argocd-applicationset-controller' {
    assert "$(xsrc_find _argocd-applicationset-controller)" is_file
}
@test 'more_src has _argocd-notifications-controller' {
    assert "$(xsrc_find _argocd-notifications-controller)" is_file
}
@test 'more_src has _argocd-repo-server' {
    assert "$(xsrc_find _argocd-repo-server)" is_file
}
@test 'more_src has _argocd-server' {
    assert "$(xsrc_find _argocd-server)" is_file
}
@test 'more_src has _args' {
    assert "$(xsrc_find _args)" is_file
}
@test 'more_src has _argus' {
    assert "$(xsrc_find _argus)" is_file
}
@test 'more_src has _aria2c' {
    assert "$(xsrc_find _aria2c)" is_file
}
@test 'more_src has _ariang' {
    assert "$(xsrc_find _ariang)" is_file
}
@test 'more_src has _armagetronad' {
    assert "$(xsrc_find _armagetronad)" is_file
}
@test 'more_src has _arpoison' {
    assert "$(xsrc_find _arpoison)" is_file
}
@test 'more_src has _arpsponge' {
    assert "$(xsrc_find _arpsponge)" is_file
}
@test 'more_src has _artemis-cli' {
    assert "$(xsrc_find _artemis-cli)" is_file
}
@test 'more_src has _artemis-jms-client' {
    assert "$(xsrc_find _artemis-jms-client)" is_file
}
@test 'more_src has _artic' {
    assert "$(xsrc_find _artic)" is_file
}
@test 'more_src has _artifactory-cli' {
    assert "$(xsrc_find _artifactory-cli)" is_file
}
@test 'more_src has _artillery' {
    assert "$(xsrc_find _artillery)" is_file
}
@test 'more_src has _artisan' {
    assert "$(xsrc_find _artisan)" is_file
}
@test 'more_src has _arturo' {
    assert "$(xsrc_find _arturo)" is_file
}
@test 'more_src has _as31' {
    assert "$(xsrc_find _as31)" is_file
}
@test 'more_src has _asb' {
    assert "$(xsrc_find _asb)" is_file
}
@test 'more_src has _asciidoctor-pdf' {
    assert "$(xsrc_find _asciidoctor-pdf)" is_file
}
@test 'more_src has _asciiview' {
    assert "$(xsrc_find _asciiview)" is_file
}
@test 'more_src has _asm2plan9s' {
    assert "$(xsrc_find _asm2plan9s)" is_file
}
@test 'more_src has _asmcli' {
    assert "$(xsrc_find _asmcli)" is_file
}
@test 'more_src has _asn1c' {
    assert "$(xsrc_find _asn1c)" is_file
}
@test 'more_src has _asnmap' {
    assert "$(xsrc_find _asnmap)" is_file
}
@test 'more_src has _asoundconf' {
    assert "$(xsrc_find _asoundconf)" is_file
}
@test 'more_src has _asoundconf-gtk' {
    assert "$(xsrc_find _asoundconf-gtk)" is_file
}
@test 'more_src has _assault-cube' {
    assert "$(xsrc_find _assault-cube)" is_file
}
@test 'more_src has _assimp' {
    assert "$(xsrc_find _assimp)" is_file
}
@test 'more_src has _ast-grep' {
    assert "$(xsrc_find _ast-grep)" is_file
}
@test 'more_src has _ast-grep-cli' {
    assert "$(xsrc_find _ast-grep-cli)" is_file
}
@test 'more_src has _asterisk' {
    assert "$(xsrc_find _asterisk)" is_file
}
@test 'more_src has _asunder' {
    assert "$(xsrc_find _asunder)" is_file
}
@test 'more_src has _at-spi-bus-launcher' {
    assert "$(xsrc_find _at-spi-bus-launcher)" is_file
}
@test 'more_src has _atac' {
    assert "$(xsrc_find _atac)" is_file
}
@test 'more_src has _atari800' {
    assert "$(xsrc_find _atari800)" is_file
}
@test 'more_src has _aterm' {
    assert "$(xsrc_find _aterm)" is_file
}
@test 'more_src has _atiflash' {
    assert "$(xsrc_find _atiflash)" is_file
}
@test 'more_src has _atlantis' {
    assert "$(xsrc_find _atlantis)" is_file
}
@test 'more_src has _atmos' {
    assert "$(xsrc_find _atmos)" is_file
}
@test 'more_src has _atonal-util' {
    assert "$(xsrc_find _atonal-util)" is_file
}
@test 'more_src has _atool' {
    assert "$(xsrc_find _atool)" is_file
}
@test 'more_src has _attempt-cli' {
    assert "$(xsrc_find _attempt-cli)" is_file
}
@test 'more_src has _attrd_updater' {
    assert "$(xsrc_find _attrd_updater)" is_file
}
@test 'more_src has _atuin' {
    assert "$(xsrc_find _atuin)" is_file
}
@test 'more_src has _atuin-server' {
    assert "$(xsrc_find _atuin-server)" is_file
}
@test 'more_src has _aubiomfcc' {
    assert "$(xsrc_find _aubiomfcc)" is_file
}
@test 'more_src has _aubionotes' {
    assert "$(xsrc_find _aubionotes)" is_file
}
@test 'more_src has _aubioonset' {
    assert "$(xsrc_find _aubioonset)" is_file
}
@test 'more_src has _aubiopitch' {
    assert "$(xsrc_find _aubiopitch)" is_file
}
@test 'more_src has _aubioquiet' {
    assert "$(xsrc_find _aubioquiet)" is_file
}
@test 'more_src has _aubiotrack' {
    assert "$(xsrc_find _aubiotrack)" is_file
}
@test 'more_src has _audacity' {
    assert "$(xsrc_find _audacity)" is_file
}
@test 'more_src has _audiowaveform' {
    assert "$(xsrc_find _audiowaveform)" is_file
}
@test 'more_src has _augent' {
    assert "$(xsrc_find _augent)" is_file
}
@test 'more_src has _auggie' {
    assert "$(xsrc_find _auggie)" is_file
}
@test 'more_src has _augment' {
    assert "$(xsrc_find _augment)" is_file
}
@test 'more_src has _aur-build' {
    assert "$(xsrc_find _aur-build)" is_file
}
@test 'more_src has _aur-depends' {
    assert "$(xsrc_find _aur-depends)" is_file
}
@test 'more_src has _aur-fetch' {
    assert "$(xsrc_find _aur-fetch)" is_file
}
@test 'more_src has _aur-gc' {
    assert "$(xsrc_find _aur-gc)" is_file
}
@test 'more_src has _aur-remove' {
    assert "$(xsrc_find _aur-remove)" is_file
}
@test 'more_src has _aur-sync-asroot' {
    assert "$(xsrc_find _aur-sync-asroot)" is_file
}
@test 'more_src has _aur-sync-devel' {
    assert "$(xsrc_find _aur-sync-devel)" is_file
}
@test 'more_src has _aur-sync-list' {
    assert "$(xsrc_find _aur-sync-list)" is_file
}
@test 'more_src has _aur-sync-rebuild' {
    assert "$(xsrc_find _aur-sync-rebuild)" is_file
}
@test 'more_src has _aura' {
    assert "$(xsrc_find _aura)" is_file
}
@test 'more_src has _auracle' {
    assert "$(xsrc_find _auracle)" is_file
}
@test 'more_src has _authentik' {
    assert "$(xsrc_find _authentik)" is_file
}
@test 'more_src has _autocode' {
    assert "$(xsrc_find _autocode)" is_file
}
@test 'more_src has _autocorrect-cli' {
    assert "$(xsrc_find _autocorrect-cli)" is_file
}
@test 'more_src has _autocutsel' {
    assert "$(xsrc_find _autocutsel)" is_file
}
@test 'more_src has _autoexpect' {
    assert "$(xsrc_find _autoexpect)" is_file
}
@test 'more_src has _autogen' {
    assert "$(xsrc_find _autogen)" is_file
}
@test 'more_src has _autogenstudio' {
    assert "$(xsrc_find _autogenstudio)" is_file
}
@test 'more_src has _autogenstudio-cli' {
    assert "$(xsrc_find _autogenstudio-cli)" is_file
}
@test 'more_src has _autogpt' {
    assert "$(xsrc_find _autogpt)" is_file
}
@test 'more_src has _automationmodetool' {
    assert "$(xsrc_find _automationmodetool)" is_file
}
@test 'more_src has _autooptimiser' {
    assert "$(xsrc_find _autooptimiser)" is_file
}
@test 'more_src has _autopano' {
    assert "$(xsrc_find _autopano)" is_file
}
@test 'more_src has _autopano-sift' {
    assert "$(xsrc_find _autopano-sift)" is_file
}
@test 'more_src has _autopano-sift-c' {
    assert "$(xsrc_find _autopano-sift-c)" is_file
}
@test 'more_src has _autopkg' {
    assert "$(xsrc_find _autopkg)" is_file
}
@test 'more_src has _autopsy-cli' {
    assert "$(xsrc_find _autopsy-cli)" is_file
}
@test 'more_src has _autorandr' {
    assert "$(xsrc_find _autorandr)" is_file
}
@test 'more_src has _autorest' {
    assert "$(xsrc_find _autorest)" is_file
}
@test 'more_src has _autosub' {
    assert "$(xsrc_find _autosub)" is_file
}
@test 'more_src has _autotrace' {
    assert "$(xsrc_find _autotrace)" is_file
}
@test 'more_src has _av1an' {
    assert "$(xsrc_find _av1an)" is_file
}
@test 'more_src has _avanor' {
    assert "$(xsrc_find _avanor)" is_file
}
@test 'more_src has _avante' {
    assert "$(xsrc_find _avante)" is_file
}
@test 'more_src has _avbtool' {
    assert "$(xsrc_find _avbtool)" is_file
}
@test 'more_src has _avifgainmaputil' {
    assert "$(xsrc_find _avifgainmaputil)" is_file
}
@test 'more_src has _avra' {
    assert "$(xsrc_find _avra)" is_file
}
@test 'more_src has _awffull' {
    assert "$(xsrc_find _awffull)" is_file
}
@test 'more_src has _awless' {
    assert "$(xsrc_find _awless)" is_file
}
@test 'more_src has _aws-es-proxy' {
    assert "$(xsrc_find _aws-es-proxy)" is_file
}
@test 'more_src has _aws-gate' {
    assert "$(xsrc_find _aws-gate)" is_file
}
@test 'more_src has _aws-vault' {
    assert "$(xsrc_find _aws-vault)" is_file
}
@test 'more_src has _aws_completer' {
    assert "$(xsrc_find _aws_completer)" is_file
}
@test 'more_src has _aws_profiles' {
    assert "$(xsrc_find _aws_profiles)" is_file
}
@test 'more_src has _awsdac' {
    assert "$(xsrc_find _awsdac)" is_file
}
@test 'more_src has _awsdac-mcp-server' {
    assert "$(xsrc_find _awsdac-mcp-server)" is_file
}
@test 'more_src has _awstats' {
    assert "$(xsrc_find _awstats)" is_file
}
@test 'more_src has _awww' {
    assert "$(xsrc_find _awww)" is_file
}
@test 'more_src has _axe' {
    assert "$(xsrc_find _axe)" is_file
}
@test 'more_src has _axfr-get' {
    assert "$(xsrc_find _axfr-get)" is_file
}
@test 'more_src has _axfrdns' {
    assert "$(xsrc_find _axfrdns)" is_file
}
@test 'more_src has _axiom' {
    assert "$(xsrc_find _axiom)" is_file
}
@test 'more_src has _axolotl' {
    assert "$(xsrc_find _axolotl)" is_file
}
@test 'more_src has _az' {
    assert "$(xsrc_find _az)" is_file
}
@test 'more_src has _azcopy' {
    assert "$(xsrc_find _azcopy)" is_file
}
@test 'more_src has _azpainter' {
    assert "$(xsrc_find _azpainter)" is_file
}
@test 'more_src has _azurehound' {
    assert "$(xsrc_find _azurehound)" is_file
}
@test 'more_src has _b3sum' {
    assert "$(xsrc_find _b3sum)" is_file
}
@test 'more_src has _b4' {
    assert "$(xsrc_find _b4)" is_file
}
@test 'more_src has _babashka' {
    assert "$(xsrc_find _babashka)" is_file
}
@test 'more_src has _babelfish' {
    assert "$(xsrc_find _babelfish)" is_file
}
@test 'more_src has _babeltrace' {
    assert "$(xsrc_find _babeltrace)" is_file
}
@test 'more_src has _backblaze-b2' {
    assert "$(xsrc_find _backblaze-b2)" is_file
}
@test 'more_src has _backgroundremover' {
    assert "$(xsrc_find _backgroundremover)" is_file
}
@test 'more_src has _backtranambig' {
    assert "$(xsrc_find _backtranambig)" is_file
}
@test 'more_src has _backtranseq' {
    assert "$(xsrc_find _backtranseq)" is_file
}
@test 'more_src has _bacon' {
    assert "$(xsrc_find _bacon)" is_file
}
@test 'more_src has _bacon-ls' {
    assert "$(xsrc_find _bacon-ls)" is_file
}
@test 'more_src has _badmin' {
    assert "$(xsrc_find _badmin)" is_file
}
@test 'more_src has _badread' {
    assert "$(xsrc_find _badread)" is_file
}
@test 'more_src has _baidu-pcs-cli-rs' {
    assert "$(xsrc_find _baidu-pcs-cli-rs)" is_file
}
@test 'more_src has _baidupcs-go' {
    assert "$(xsrc_find _baidupcs-go)" is_file
}
@test 'more_src has _balance' {
    assert "$(xsrc_find _balance)" is_file
}
@test 'more_src has _baml' {
    assert "$(xsrc_find _baml)" is_file
}
@test 'more_src has _bamrescue' {
    assert "$(xsrc_find _bamrescue)" is_file
}
@test 'more_src has _banana' {
    assert "$(xsrc_find _banana)" is_file
}
@test 'more_src has _bandcamp-dl' {
    assert "$(xsrc_find _bandcamp-dl)" is_file
}
@test 'more_src has _bandit' {
    assert "$(xsrc_find _bandit)" is_file
}
@test 'more_src has _bands.x' {
    assert "$(xsrc_find _bands.x)" is_file
}
@test 'more_src has _bandwhich' {
    assert "$(xsrc_find _bandwhich)" is_file
}
@test 'more_src has _bandwidthd' {
    assert "$(xsrc_find _bandwidthd)" is_file
}
@test 'more_src has _banshee' {
    assert "$(xsrc_find _banshee)" is_file
}
@test 'more_src has _barbican-api' {
    assert "$(xsrc_find _barbican-api)" is_file
}
@test 'more_src has _barbican-keystone-listener' {
    assert "$(xsrc_find _barbican-keystone-listener)" is_file
}
@test 'more_src has _barbican-manage' {
    assert "$(xsrc_find _barbican-manage)" is_file
}
@test 'more_src has _barbican-retry' {
    assert "$(xsrc_find _barbican-retry)" is_file
}
@test 'more_src has _barbican-status' {
    assert "$(xsrc_find _barbican-status)" is_file
}
@test 'more_src has _barcode' {
    assert "$(xsrc_find _barcode)" is_file
}
@test 'more_src has _bareos-bconsole' {
    assert "$(xsrc_find _bareos-bconsole)" is_file
}
@test 'more_src has _bareos-bcopy' {
    assert "$(xsrc_find _bareos-bcopy)" is_file
}
@test 'more_src has _bareos-bextract' {
    assert "$(xsrc_find _bareos-bextract)" is_file
}
@test 'more_src has _bareos-bls' {
    assert "$(xsrc_find _bareos-bls)" is_file
}
@test 'more_src has _bareos-bregex' {
    assert "$(xsrc_find _bareos-bregex)" is_file
}
@test 'more_src has _bareos-bscan' {
    assert "$(xsrc_find _bareos-bscan)" is_file
}
@test 'more_src has _bareos-bsmtp' {
    assert "$(xsrc_find _bareos-bsmtp)" is_file
}
@test 'more_src has _bareos-btape' {
    assert "$(xsrc_find _bareos-btape)" is_file
}
@test 'more_src has _bareos-bwild' {
    assert "$(xsrc_find _bareos-bwild)" is_file
}
@test 'more_src has _bareos-dbcheck' {
    assert "$(xsrc_find _bareos-dbcheck)" is_file
}
@test 'more_src has _bareos-dir' {
    assert "$(xsrc_find _bareos-dir)" is_file
}
@test 'more_src has _bareos-fd' {
    assert "$(xsrc_find _bareos-fd)" is_file
}
@test 'more_src has _bareos-sd' {
    assert "$(xsrc_find _bareos-sd)" is_file
}
@test 'more_src has _barman-cloud-backup' {
    assert "$(xsrc_find _barman-cloud-backup)" is_file
}
@test 'more_src has _barman-cloud-backup-delete' {
    assert "$(xsrc_find _barman-cloud-backup-delete)" is_file
}
@test 'more_src has _barman-cloud-backup-keep' {
    assert "$(xsrc_find _barman-cloud-backup-keep)" is_file
}
@test 'more_src has _barman-cloud-backup-list' {
    assert "$(xsrc_find _barman-cloud-backup-list)" is_file
}
@test 'more_src has _barman-cloud-backup-show' {
    assert "$(xsrc_find _barman-cloud-backup-show)" is_file
}
@test 'more_src has _barman-cloud-check-wal-archive' {
    assert "$(xsrc_find _barman-cloud-check-wal-archive)" is_file
}
@test 'more_src has _barman-cloud-restore' {
    assert "$(xsrc_find _barman-cloud-restore)" is_file
}
@test 'more_src has _barman-cloud-wal-archive' {
    assert "$(xsrc_find _barman-cloud-wal-archive)" is_file
}
@test 'more_src has _barman-cloud-wal-restore' {
    assert "$(xsrc_find _barman-cloud-wal-restore)" is_file
}
@test 'more_src has _bartib' {
    assert "$(xsrc_find _bartib)" is_file
}
@test 'more_src has _bartycrouch' {
    assert "$(xsrc_find _bartycrouch)" is_file
}
@test 'more_src has _base16_theme' {
    assert "$(xsrc_find _base16_theme)" is_file
}
@test 'more_src has _baseten' {
    assert "$(xsrc_find _baseten)" is_file
}
@test 'more_src has _bash-snippets' {
    assert "$(xsrc_find _bash-snippets)" is_file
}
@test 'more_src has _bashclaw' {
    assert "$(xsrc_find _bashclaw)" is_file
}
@test 'more_src has _basher' {
    assert "$(xsrc_find _basher)" is_file
}
@test 'more_src has _bashly' {
    assert "$(xsrc_find _bashly)" is_file
}
@test 'more_src has _bashtop' {
    assert "$(xsrc_find _bashtop)" is_file
}
@test 'more_src has _basic-app-completion.zsh' {
    assert "$(xsrc_find _basic-app-completion.zsh)" is_file
}
@test 'more_src has _basti' {
    assert "$(xsrc_find _basti)" is_file
}
@test 'more_src has _batcat' {
    assert "$(xsrc_find _batcat)" is_file
}
@test 'more_src has _batect' {
    assert "$(xsrc_find _batect)" is_file
}
@test 'more_src has _battle-tanks' {
    assert "$(xsrc_find _battle-tanks)" is_file
}
@test 'more_src has _bazel' {
    assert "$(xsrc_find _bazel)" is_file
}
@test 'more_src has _bb' {
    assert "$(xsrc_find _bb)" is_file
}
@test 'more_src has _bbe' {
    assert "$(xsrc_find _bbe)" is_file
}
@test 'more_src has _bbedit' {
    assert "$(xsrc_find _bbedit)" is_file
}
@test 'more_src has _bcrypt-tool' {
    assert "$(xsrc_find _bcrypt-tool)" is_file
}
@test 'more_src has _bd' {
    assert "$(xsrc_find _bd)" is_file
}
@test 'more_src has _beads' {
    assert "$(xsrc_find _beads)" is_file
}
@test 'more_src has _beads-cli' {
    assert "$(xsrc_find _beads-cli)" is_file
}
@test 'more_src has _beam' {
    assert "$(xsrc_find _beam)" is_file
}
@test 'more_src has _bean-check' {
    assert "$(xsrc_find _bean-check)" is_file
}
@test 'more_src has _bean-query' {
    assert "$(xsrc_find _bean-query)" is_file
}
@test 'more_src has _beanstalkd' {
    assert "$(xsrc_find _beanstalkd)" is_file
}
@test 'more_src has _bear' {
    assert "$(xsrc_find _bear)" is_file
}
@test 'more_src has _beautysh' {
    assert "$(xsrc_find _beautysh)" is_file
}
@test 'more_src has _bedit' {
    assert "$(xsrc_find _bedit)" is_file
}
@test 'more_src has _bedrock' {
    assert "$(xsrc_find _bedrock)" is_file
}
@test 'more_src has _bedtools' {
    assert "$(xsrc_find _bedtools)" is_file
}
@test 'more_src has _beegfs-check-servers' {
    assert "$(xsrc_find _beegfs-check-servers)" is_file
}
@test 'more_src has _beegfs-ctl' {
    assert "$(xsrc_find _beegfs-ctl)" is_file
}
@test 'more_src has _beegfs-df' {
    assert "$(xsrc_find _beegfs-df)" is_file
}
@test 'more_src has _beegfs-fsck' {
    assert "$(xsrc_find _beegfs-fsck)" is_file
}
@test 'more_src has _beegfs-helperd' {
    assert "$(xsrc_find _beegfs-helperd)" is_file
}
@test 'more_src has _beegfs-meta' {
    assert "$(xsrc_find _beegfs-meta)" is_file
}
@test 'more_src has _beegfs-mgmtd' {
    assert "$(xsrc_find _beegfs-mgmtd)" is_file
}
@test 'more_src has _beegfs-mon' {
    assert "$(xsrc_find _beegfs-mon)" is_file
}
@test 'more_src has _beegfs-mon-tool' {
    assert "$(xsrc_find _beegfs-mon-tool)" is_file
}
@test 'more_src has _beegfs-net' {
    assert "$(xsrc_find _beegfs-net)" is_file
}
@test 'more_src has _beegfs-storage' {
    assert "$(xsrc_find _beegfs-storage)" is_file
}
@test 'more_src has _beekeeper-studio' {
    assert "$(xsrc_find _beekeeper-studio)" is_file
}
@test 'more_src has _beet' {
    assert "$(xsrc_find _beet)" is_file
}
@test 'more_src has _bemenu' {
    assert "$(xsrc_find _bemenu)" is_file
}
@test 'more_src has _bemoji' {
    assert "$(xsrc_find _bemoji)" is_file
}
@test 'more_src has _bench' {
    assert "$(xsrc_find _bench)" is_file
}
@test 'more_src has _bencher' {
    assert "$(xsrc_find _bencher)" is_file
}
@test 'more_src has _benchinit' {
    assert "$(xsrc_find _benchinit)" is_file
}
@test 'more_src has _bender' {
    assert "$(xsrc_find _bender)" is_file
}
@test 'more_src has _benthos' {
    assert "$(xsrc_find _benthos)" is_file
}
@test 'more_src has _bento' {
    assert "$(xsrc_find _bento)" is_file
}
@test 'more_src has _bento4' {
    assert "$(xsrc_find _bento4)" is_file
}
@test 'more_src has _bestls' {
    assert "$(xsrc_find _bestls)" is_file
}
@test 'more_src has _better-auth' {
    assert "$(xsrc_find _better-auth)" is_file
}
@test 'more_src has _betteralign' {
    assert "$(xsrc_find _betteralign)" is_file
}
@test 'more_src has _betterleaks' {
    assert "$(xsrc_find _betterleaks)" is_file
}
@test 'more_src has _bfg' {
    assert "$(xsrc_find _bfg)" is_file
}
@test 'more_src has _bfs' {
    assert "$(xsrc_find _bfs)" is_file
}
@test 'more_src has _bgpd' {
    assert "$(xsrc_find _bgpd)" is_file
}
@test 'more_src has _bhdump' {
    assert "$(xsrc_find _bhdump)" is_file
}
@test 'more_src has _bhist' {
    assert "$(xsrc_find _bhist)" is_file
}
@test 'more_src has _bhosts' {
    assert "$(xsrc_find _bhosts)" is_file
}
@test 'more_src has _biber' {
    assert "$(xsrc_find _biber)" is_file
}
@test 'more_src has _biber-ms' {
    assert "$(xsrc_find _biber-ms)" is_file
}
@test 'more_src has _bibletime' {
    assert "$(xsrc_find _bibletime)" is_file
}
@test 'more_src has _bibtexml' {
    assert "$(xsrc_find _bibtexml)" is_file
}
@test 'more_src has _biff' {
    assert "$(xsrc_find _biff)" is_file
}
@test 'more_src has _bigquery-emulator' {
    assert "$(xsrc_find _bigquery-emulator)" is_file
}
@test 'more_src has _bikeshed' {
    assert "$(xsrc_find _bikeshed)" is_file
}
@test 'more_src has _bindgen' {
    assert "$(xsrc_find _bindgen)" is_file
}
@test 'more_src has _binocle' {
    assert "$(xsrc_find _binocle)" is_file
}
@test 'more_src has _binutils-config' {
    assert "$(xsrc_find _binutils-config)" is_file
}
@test 'more_src has _bioawk' {
    assert "$(xsrc_find _bioawk)" is_file
}
@test 'more_src has _biodiff' {
    assert "$(xsrc_find _biodiff)" is_file
}
@test 'more_src has _biome' {
    assert "$(xsrc_find _biome)" is_file
}
@test 'more_src has _biors' {
    assert "$(xsrc_find _biors)" is_file
}
@test 'more_src has _bios-update' {
    assert "$(xsrc_find _bios-update)" is_file
}
@test 'more_src has _biosed' {
    assert "$(xsrc_find _biosed)" is_file
}
@test 'more_src has _bit' {
    assert "$(xsrc_find _bit)" is_file
}
@test 'more_src has _bittersweet' {
    assert "$(xsrc_find _bittersweet)" is_file
}
@test 'more_src has _bjobs' {
    assert "$(xsrc_find _bjobs)" is_file
}
@test 'more_src has _bkcrack' {
    assert "$(xsrc_find _bkcrack)" is_file
}
@test 'more_src has _bkill' {
    assert "$(xsrc_find _bkill)" is_file
}
@test 'more_src has _bkmr' {
    assert "$(xsrc_find _bkmr)" is_file
}
@test 'more_src has _bkt' {
    assert "$(xsrc_find _bkt)" is_file
}
@test 'more_src has _black' {
    assert "$(xsrc_find _black)" is_file
}
@test 'more_src has _bladerf-cli' {
    assert "$(xsrc_find _bladerf-cli)" is_file
}
@test 'more_src has _blake3sum' {
    assert "$(xsrc_find _blake3sum)" is_file
}
@test 'more_src has _blast' {
    assert "$(xsrc_find _blast)" is_file
}
@test 'more_src has _blastem' {
    assert "$(xsrc_find _blastem)" is_file
}
@test 'more_src has _blastn' {
    assert "$(xsrc_find _blastn)" is_file
}
@test 'more_src has _blastp' {
    assert "$(xsrc_find _blastp)" is_file
}
@test 'more_src has _blastshield' {
    assert "$(xsrc_find _blastshield)" is_file
}
@test 'more_src has _blastx' {
    assert "$(xsrc_find _blastx)" is_file
}
@test 'more_src has _blazar-api' {
    assert "$(xsrc_find _blazar-api)" is_file
}
@test 'more_src has _blazar-db-manage' {
    assert "$(xsrc_find _blazar-db-manage)" is_file
}
@test 'more_src has _blazar-manager' {
    assert "$(xsrc_find _blazar-manager)" is_file
}
@test 'more_src has _blazar-status' {
    assert "$(xsrc_find _blazar-status)" is_file
}
@test 'more_src has _blaze' {
    assert "$(xsrc_find _blaze)" is_file
}
@test 'more_src has _blinken' {
    assert "$(xsrc_find _blinken)" is_file
}
@test 'more_src has _blockMesh' {
    assert "$(xsrc_find _blockMesh)" is_file
}
@test 'more_src has _blockattack' {
    assert "$(xsrc_find _blockattack)" is_file
}
@test 'more_src has _blockhash' {
    assert "$(xsrc_find _blockhash)" is_file
}
@test 'more_src has _blogc' {
    assert "$(xsrc_find _blogc)" is_file
}
@test 'more_src has _bloodhound' {
    assert "$(xsrc_find _bloodhound)" is_file
}
@test 'more_src has _bloodhound-py' {
    assert "$(xsrc_find _bloodhound-py)" is_file
}
@test 'more_src has _bls' {
    assert "$(xsrc_find _bls)" is_file
}
@test 'more_src has _bltool' {
    assert "$(xsrc_find _bltool)" is_file
}
@test 'more_src has _blueutil' {
    assert "$(xsrc_find _blueutil)" is_file
}
@test 'more_src has _bmc-watchdog' {
    assert "$(xsrc_find _bmc-watchdog)" is_file
}
@test 'more_src has _bmk' {
    assert "$(xsrc_find _bmk)" is_file
}
@test 'more_src has _bn' {
    assert "$(xsrc_find _bn)" is_file
}
@test 'more_src has _bnfc' {
    assert "$(xsrc_find _bnfc)" is_file
}
@test 'more_src has _bob' {
    assert "$(xsrc_find _bob)" is_file
}
@test 'more_src has _bochs' {
    assert "$(xsrc_find _bochs)" is_file
}
@test 'more_src has _bom' {
    assert "$(xsrc_find _bom)" is_file
}
@test 'more_src has _bombardier' {
    assert "$(xsrc_find _bombardier)" is_file
}
@test 'more_src has _bomber' {
    assert "$(xsrc_find _bomber)" is_file
}
@test 'more_src has _bookokrat' {
    assert "$(xsrc_find _bookokrat)" is_file
}
@test 'more_src has _bookworm' {
    assert "$(xsrc_find _bookworm)" is_file
}
@test 'more_src has _booster' {
    assert "$(xsrc_find _booster)" is_file
}
@test 'more_src has _bootloader-grub2' {
    assert "$(xsrc_find _bootloader-grub2)" is_file
}
@test 'more_src has _bootloader-systemd' {
    assert "$(xsrc_find _bootloader-systemd)" is_file
}
@test 'more_src has _bootterm' {
    assert "$(xsrc_find _bootterm)" is_file
}
@test 'more_src has _bore' {
    assert "$(xsrc_find _bore)" is_file
}
@test 'more_src has _borg' {
    assert "$(xsrc_find _borg)" is_file
}
@test 'more_src has _borgmatic' {
    assert "$(xsrc_find _borgmatic)" is_file
}
@test 'more_src has _boring' {
    assert "$(xsrc_find _boring)" is_file
}
@test 'more_src has _boringtun' {
    assert "$(xsrc_find _boringtun)" is_file
}
@test 'more_src has _bork' {
    assert "$(xsrc_find _bork)" is_file
}
@test 'more_src has _bosh-cli' {
    assert "$(xsrc_find _bosh-cli)" is_file
}
@test 'more_src has _botan' {
    assert "$(xsrc_find _botan)" is_file
}
@test 'more_src has _bottom' {
    assert "$(xsrc_find _bottom)" is_file
}
@test 'more_src has _boufin' {
    assert "$(xsrc_find _boufin)" is_file
}
@test 'more_src has _bounceback' {
    assert "$(xsrc_find _bounceback)" is_file
}
@test 'more_src has _boundbook' {
    assert "$(xsrc_find _boundbook)" is_file
}
@test 'more_src has _bovo' {
    assert "$(xsrc_find _bovo)" is_file
}
@test 'more_src has _bowtie2' {
    assert "$(xsrc_find _bowtie2)" is_file
}
@test 'more_src has _box64' {
    assert "$(xsrc_find _box64)" is_file
}
@test 'more_src has _box86' {
    assert "$(xsrc_find _box86)" is_file
}
@test 'more_src has _boxlite' {
    assert "$(xsrc_find _boxlite)" is_file
}
@test 'more_src has _bparams' {
    assert "$(xsrc_find _bparams)" is_file
}
@test 'more_src has _bpftool' {
    assert "$(xsrc_find _bpftool)" is_file
}
@test 'more_src has _bpftrace' {
    assert "$(xsrc_find _bpftrace)" is_file
}
@test 'more_src has _bpmnlint' {
    assert "$(xsrc_find _bpmnlint)" is_file
}
@test 'more_src has _bpytop' {
    assert "$(xsrc_find _bpytop)" is_file
}
@test 'more_src has _bqueues' {
    assert "$(xsrc_find _bqueues)" is_file
}
@test 'more_src has _brag' {
    assert "$(xsrc_find _brag)" is_file
}
@test 'more_src has _braid' {
    assert "$(xsrc_find _braid)" is_file
}
@test 'more_src has _brainfuck' {
    assert "$(xsrc_find _brainfuck)" is_file
}
@test 'more_src has _braintrust' {
    assert "$(xsrc_find _braintrust)" is_file
}
@test 'more_src has _brave' {
    assert "$(xsrc_find _brave)" is_file
}
@test 'more_src has _breakrs' {
    assert "$(xsrc_find _breakrs)" is_file
}
@test 'more_src has _breseq' {
    assert "$(xsrc_find _breseq)" is_file
}
@test 'more_src has _brew_cask' {
    assert "$(xsrc_find _brew_cask)" is_file
}
@test 'more_src has _brew_services' {
    assert "$(xsrc_find _brew_services)" is_file
}
@test 'more_src has _brickd' {
    assert "$(xsrc_find _brickd)" is_file
}
@test 'more_src has _brickv' {
    assert "$(xsrc_find _brickv)" is_file
}
@test 'more_src has _brig' {
    assert "$(xsrc_find _brig)" is_file
}
@test 'more_src has _brightness' {
    assert "$(xsrc_find _brightness)" is_file
}
@test 'more_src has _briss' {
    assert "$(xsrc_find _briss)" is_file
}
@test 'more_src has _bristol' {
    assert "$(xsrc_find _bristol)" is_file
}
@test 'more_src has _bristoljackstats' {
    assert "$(xsrc_find _bristoljackstats)" is_file
}
@test 'more_src has _brittany' {
    assert "$(xsrc_find _brittany)" is_file
}
@test 'more_src has _bro' {
    assert "$(xsrc_find _bro)" is_file
}
@test 'more_src has _broot' {
    assert "$(xsrc_find _broot)" is_file
}
@test 'more_src has _browse' {
    assert "$(xsrc_find _browse)" is_file
}
@test 'more_src has _browser-sync' {
    assert "$(xsrc_find _browser-sync)" is_file
}
@test 'more_src has _browser-use' {
    assert "$(xsrc_find _browser-use)" is_file
}
@test 'more_src has _browser-use-cli' {
    assert "$(xsrc_find _browser-use-cli)" is_file
}
@test 'more_src has _browser-use-tui' {
    assert "$(xsrc_find _browser-use-tui)" is_file
}
@test 'more_src has _browsernode-cli' {
    assert "$(xsrc_find _browsernode-cli)" is_file
}
@test 'more_src has _browserslist' {
    assert "$(xsrc_find _browserslist)" is_file
}
@test 'more_src has _browseruse' {
    assert "$(xsrc_find _browseruse)" is_file
}
@test 'more_src has _browsh' {
    assert "$(xsrc_find _browsh)" is_file
}
@test 'more_src has _brpc' {
    assert "$(xsrc_find _brpc)" is_file
}
@test 'more_src has _bruno' {
    assert "$(xsrc_find _bruno)" is_file
}
@test 'more_src has _bruno-cli' {
    assert "$(xsrc_find _bruno-cli)" is_file
}
@test 'more_src has _brush' {
    assert "$(xsrc_find _brush)" is_file
}
@test 'more_src has _brz' {
    assert "$(xsrc_find _brz)" is_file
}
@test 'more_src has _bsdsfv' {
    assert "$(xsrc_find _bsdsfv)" is_file
}
@test 'more_src has _bsetbg' {
    assert "$(xsrc_find _bsetbg)" is_file
}
@test 'more_src has _bsetroot' {
    assert "$(xsrc_find _bsetroot)" is_file
}
@test 'more_src has _bsnes-jg' {
    assert "$(xsrc_find _bsnes-jg)" is_file
}
@test 'more_src has _bsnes-mt' {
    assert "$(xsrc_find _bsnes-mt)" is_file
}
@test 'more_src has _bspatch' {
    assert "$(xsrc_find _bspatch)" is_file
}
@test 'more_src has _bst' {
    assert "$(xsrc_find _bst)" is_file
}
@test 'more_src has _bsub' {
    assert "$(xsrc_find _bsub)" is_file
}
@test 'more_src has _btcli' {
    assert "$(xsrc_find _btcli)" is_file
}
@test 'more_src has _btdu' {
    assert "$(xsrc_find _btdu)" is_file
}
@test 'more_src has _btex' {
    assert "$(xsrc_find _btex)" is_file
}
@test 'more_src has _btfs' {
    assert "$(xsrc_find _btfs)" is_file
}
@test 'more_src has _btpd' {
    assert "$(xsrc_find _btpd)" is_file
}
@test 'more_src has _btrbk' {
    assert "$(xsrc_find _btrbk)" is_file
}
@test 'more_src has _btrfs-check' {
    assert "$(xsrc_find _btrfs-check)" is_file
}
@test 'more_src has _btrfs-corrupt-block' {
    assert "$(xsrc_find _btrfs-corrupt-block)" is_file
}
@test 'more_src has _btrfs-receive' {
    assert "$(xsrc_find _btrfs-receive)" is_file
}
@test 'more_src has _btrfs-rescue' {
    assert "$(xsrc_find _btrfs-rescue)" is_file
}
@test 'more_src has _btrfs-send' {
    assert "$(xsrc_find _btrfs-send)" is_file
}
@test 'more_src has _btrfs-snap' {
    assert "$(xsrc_find _btrfs-snap)" is_file
}
@test 'more_src has _btwisted' {
    assert "$(xsrc_find _btwisted)" is_file
}
@test 'more_src has _bu' {
    assert "$(xsrc_find _bu)" is_file
}
@test 'more_src has _buck2' {
    assert "$(xsrc_find _buck2)" is_file
}
@test 'more_src has _budgie-desktop' {
    assert "$(xsrc_find _budgie-desktop)" is_file
}
@test 'more_src has _budgie-rundialog' {
    assert "$(xsrc_find _budgie-rundialog)" is_file
}
@test 'more_src has _budgie-wm' {
    assert "$(xsrc_find _budgie-wm)" is_file
}
@test 'more_src has _buf' {
    assert "$(xsrc_find _buf)" is_file
}
@test 'more_src has _buffrs' {
    assert "$(xsrc_find _buffrs)" is_file
}
@test 'more_src has _bug-buddy' {
    assert "$(xsrc_find _bug-buddy)" is_file
}
@test 'more_src has _bugz' {
    assert "$(xsrc_find _bugz)" is_file
}
@test 'more_src has _build.sh' {
    assert "$(xsrc_find _build.sh)" is_file
}
@test 'more_src has _buildah' {
    assert "$(xsrc_find _buildah)" is_file
}
@test 'more_src has _buildbot' {
    assert "$(xsrc_find _buildbot)" is_file
}
@test 'more_src has _buildbot-worker' {
    assert "$(xsrc_find _buildbot-worker)" is_file
}
@test 'more_src has _buildctl' {
    assert "$(xsrc_find _buildctl)" is_file
}
@test 'more_src has _builder-dev-tools' {
    assert "$(xsrc_find _builder-dev-tools)" is_file
}
@test 'more_src has _buildifier' {
    assert "$(xsrc_find _buildifier)" is_file
}
@test 'more_src has _buildkitd' {
    assert "$(xsrc_find _buildkitd)" is_file
}
@test 'more_src has _buildozer' {
    assert "$(xsrc_find _buildozer)" is_file
}
@test 'more_src has _buildpack' {
    assert "$(xsrc_find _buildpack)" is_file
}
@test 'more_src has _buku' {
    assert "$(xsrc_find _buku)" is_file
}
@test 'more_src has _bump2version' {
    assert "$(xsrc_find _bump2version)" is_file
}
@test 'more_src has _bun' {
    assert "$(xsrc_find _bun)" is_file
}
@test 'more_src has _burnout' {
    assert "$(xsrc_find _burnout)" is_file
}
@test 'more_src has _burp' {
    assert "$(xsrc_find _burp)" is_file
}
@test 'more_src has _burrow' {
    assert "$(xsrc_find _burrow)" is_file
}
@test 'more_src has _bvi' {
    assert "$(xsrc_find _bvi)" is_file
}
@test 'more_src has _bviplus' {
    assert "$(xsrc_find _bviplus)" is_file
}
@test 'more_src has _bw' {
    assert "$(xsrc_find _bw)" is_file
}
@test 'more_src has _bwa' {
    assert "$(xsrc_find _bwa)" is_file
}
@test 'more_src has _bws' {
    assert "$(xsrc_find _bws)" is_file
}
@test 'more_src has _bwsenv' {
    assert "$(xsrc_find _bwsenv)" is_file
}
@test 'more_src has _byobu' {
    assert "$(xsrc_find _byobu)" is_file
}
@test 'more_src has _byokey' {
    assert "$(xsrc_find _byokey)" is_file
}
@test 'more_src has _byzanz-window' {
    assert "$(xsrc_find _byzanz-window)" is_file
}
@test 'more_src has _bzcmp' {
    assert "$(xsrc_find _bzcmp)" is_file
}
@test 'more_src has _bzdiff' {
    assert "$(xsrc_find _bzdiff)" is_file
}
@test 'more_src has _bzflag' {
    assert "$(xsrc_find _bzflag)" is_file
}
@test 'more_src has _bzip3' {
    assert "$(xsrc_find _bzip3)" is_file
}
@test 'more_src has _c10t' {
    assert "$(xsrc_find _c10t)" is_file
}
@test 'more_src has _c1541' {
    assert "$(xsrc_find _c1541)" is_file
}
@test 'more_src has _c2048' {
    assert "$(xsrc_find _c2048)" is_file
}
@test 'more_src has _c2goasm' {
    assert "$(xsrc_find _c2goasm)" is_file
}
@test 'more_src has _c2rust' {
    assert "$(xsrc_find _c2rust)" is_file
}
@test 'more_src has _c3c' {
    assert "$(xsrc_find _c3c)" is_file
}
@test 'more_src has _cabal-fmt' {
    assert "$(xsrc_find _cabal-fmt)" is_file
}
@test 'more_src has _cabal2nix' {
    assert "$(xsrc_find _cabal2nix)" is_file
}
@test 'more_src has _cabarc' {
    assert "$(xsrc_find _cabarc)" is_file
}
@test 'more_src has _cabbage' {
    assert "$(xsrc_find _cabbage)" is_file
}
@test 'more_src has _cabin' {
    assert "$(xsrc_find _cabin)" is_file
}
@test 'more_src has _cabot' {
    assert "$(xsrc_find _cabot)" is_file
}
@test 'more_src has _cacademo' {
    assert "$(xsrc_find _cacademo)" is_file
}
@test 'more_src has _cacafire' {
    assert "$(xsrc_find _cacafire)" is_file
}
@test 'more_src has _cacaplay' {
    assert "$(xsrc_find _cacaplay)" is_file
}
@test 'more_src has _cacaserver' {
    assert "$(xsrc_find _cacaserver)" is_file
}
@test 'more_src has _cacaview' {
    assert "$(xsrc_find _cacaview)" is_file
}
@test 'more_src has _cachedas' {
    assert "$(xsrc_find _cachedas)" is_file
}
@test 'more_src has _cachedbfetch' {
    assert "$(xsrc_find _cachedbfetch)" is_file
}
@test 'more_src has _cacheebeyesearch' {
    assert "$(xsrc_find _cacheebeyesearch)" is_file
}
@test 'more_src has _cacheensembl' {
    assert "$(xsrc_find _cacheensembl)" is_file
}
@test 'more_src has _cacheentities' {
    assert "$(xsrc_find _cacheentities)" is_file
}
@test 'more_src has _cact.sh' {
    assert "$(xsrc_find _cact.sh)" is_file
}
@test 'more_src has _caddy' {
    assert "$(xsrc_find _caddy)" is_file
}
@test 'more_src has _caddy-l4' {
    assert "$(xsrc_find _caddy-l4)" is_file
}
@test 'more_src has _cadence' {
    assert "$(xsrc_find _cadence)" is_file
}
@test 'more_src has _cadical' {
    assert "$(xsrc_find _cadical)" is_file
}
@test 'more_src has _cadubi' {
    assert "$(xsrc_find _cadubi)" is_file
}
@test 'more_src has _caesiumclt' {
    assert "$(xsrc_find _caesiumclt)" is_file
}
@test 'more_src has _cai' {
    assert "$(xsrc_find _cai)" is_file
}
@test 'more_src has _caja-actions' {
    assert "$(xsrc_find _caja-actions)" is_file
}
@test 'more_src has _caja-bookmarks' {
    assert "$(xsrc_find _caja-bookmarks)" is_file
}
@test 'more_src has _caja-fileproperties' {
    assert "$(xsrc_find _caja-fileproperties)" is_file
}
@test 'more_src has _caja-folder-handler' {
    assert "$(xsrc_find _caja-folder-handler)" is_file
}
@test 'more_src has _caja-image' {
    assert "$(xsrc_find _caja-image)" is_file
}
@test 'more_src has _caja-pluma' {
    assert "$(xsrc_find _caja-pluma)" is_file
}
@test 'more_src has _caja-rabbitvcs' {
    assert "$(xsrc_find _caja-rabbitvcs)" is_file
}
@test 'more_src has _caja-share' {
    assert "$(xsrc_find _caja-share)" is_file
}
@test 'more_src has _cala' {
    assert "$(xsrc_find _cala)" is_file
}
@test 'more_src has _calabrese' {
    assert "$(xsrc_find _calabrese)" is_file
}
@test 'more_src has _calc' {
    assert "$(xsrc_find _calc)" is_file
}
@test 'more_src has _calcurse' {
    assert "$(xsrc_find _calcurse)" is_file
}
@test 'more_src has _calibre' {
    assert "$(xsrc_find _calibre)" is_file
}
@test 'more_src has _calico' {
    assert "$(xsrc_find _calico)" is_file
}
@test 'more_src has _calico-node' {
    assert "$(xsrc_find _calico-node)" is_file
}
@test 'more_src has _caligula' {
    assert "$(xsrc_find _caligula)" is_file
}
@test 'more_src has _calligraauthor' {
    assert "$(xsrc_find _calligraauthor)" is_file
}
@test 'more_src has _calligrachart' {
    assert "$(xsrc_find _calligrachart)" is_file
}
@test 'more_src has _calligraflow' {
    assert "$(xsrc_find _calligraflow)" is_file
}
@test 'more_src has _calligraplan' {
    assert "$(xsrc_find _calligraplan)" is_file
}
@test 'more_src has _calligrasheets' {
    assert "$(xsrc_find _calligrasheets)" is_file
}
@test 'more_src has _calligrastage' {
    assert "$(xsrc_find _calligrastage)" is_file
}
@test 'more_src has _calligrawords' {
    assert "$(xsrc_find _calligrawords)" is_file
}
@test 'more_src has _cambi' {
    assert "$(xsrc_find _cambi)" is_file
}
@test 'more_src has _camunda' {
    assert "$(xsrc_find _camunda)" is_file
}
@test 'more_src has _candy-nest-cli' {
    assert "$(xsrc_find _candy-nest-cli)" is_file
}
@test 'more_src has _canto-curses' {
    assert "$(xsrc_find _canto-curses)" is_file
}
@test 'more_src has _canto-fetch' {
    assert "$(xsrc_find _canto-fetch)" is_file
}
@test 'more_src has _canto-remote' {
    assert "$(xsrc_find _canto-remote)" is_file
}
@test 'more_src has _canu' {
    assert "$(xsrc_find _canu)" is_file
}
@test 'more_src has _canvas-downloader' {
    assert "$(xsrc_find _canvas-downloader)" is_file
}
@test 'more_src has _capa-controller-manager' {
    assert "$(xsrc_find _capa-controller-manager)" is_file
}
@test 'more_src has _capacitor' {
    assert "$(xsrc_find _capacitor)" is_file
}
@test 'more_src has _capi-controller-manager' {
    assert "$(xsrc_find _capi-controller-manager)" is_file
}
@test 'more_src has _capistrano' {
    assert "$(xsrc_find _capistrano)" is_file
}
@test 'more_src has _capnp' {
    assert "$(xsrc_find _capnp)" is_file
}
@test 'more_src has _carapace' {
    assert "$(xsrc_find _carapace)" is_file
}
@test 'more_src has _carbon-c-relay' {
    assert "$(xsrc_find _carbon-c-relay)" is_file
}
@test 'more_src has _carbon-now-cli' {
    assert "$(xsrc_find _carbon-now-cli)" is_file
}
@test 'more_src has _carbonate' {
    assert "$(xsrc_find _carbonate)" is_file
}
@test 'more_src has _cardano-wallet' {
    assert "$(xsrc_find _cardano-wallet)" is_file
}
@test 'more_src has _cardpeek' {
    assert "$(xsrc_find _cardpeek)" is_file
}
@test 'more_src has _cargo-add' {
    assert "$(xsrc_find _cargo-add)" is_file
}
@test 'more_src has _cargo-audit' {
    assert "$(xsrc_find _cargo-audit)" is_file
}
@test 'more_src has _cargo-auditable' {
    assert "$(xsrc_find _cargo-auditable)" is_file
}
@test 'more_src has _cargo-bench' {
    assert "$(xsrc_find _cargo-bench)" is_file
}
@test 'more_src has _cargo-binstall' {
    assert "$(xsrc_find _cargo-binstall)" is_file
}
@test 'more_src has _cargo-bloat' {
    assert "$(xsrc_find _cargo-bloat)" is_file
}
@test 'more_src has _cargo-careful' {
    assert "$(xsrc_find _cargo-careful)" is_file
}
@test 'more_src has _cargo-check' {
    assert "$(xsrc_find _cargo-check)" is_file
}
@test 'more_src has _cargo-clone' {
    assert "$(xsrc_find _cargo-clone)" is_file
}
@test 'more_src has _cargo-component' {
    assert "$(xsrc_find _cargo-component)" is_file
}
@test 'more_src has _cargo-deb' {
    assert "$(xsrc_find _cargo-deb)" is_file
}
@test 'more_src has _cargo-deny' {
    assert "$(xsrc_find _cargo-deny)" is_file
}
@test 'more_src has _cargo-depgraph' {
    assert "$(xsrc_find _cargo-depgraph)" is_file
}
@test 'more_src has _cargo-dist' {
    assert "$(xsrc_find _cargo-dist)" is_file
}
@test 'more_src has _cargo-doc' {
    assert "$(xsrc_find _cargo-doc)" is_file
}
@test 'more_src has _cargo-doc2readme' {
    assert "$(xsrc_find _cargo-doc2readme)" is_file
}
@test 'more_src has _cargo-flamegraph' {
    assert "$(xsrc_find _cargo-flamegraph)" is_file
}
@test 'more_src has _cargo-fresh' {
    assert "$(xsrc_find _cargo-fresh)" is_file
}
@test 'more_src has _cargo-fuzz' {
    assert "$(xsrc_find _cargo-fuzz)" is_file
}
@test 'more_src has _cargo-geiger' {
    assert "$(xsrc_find _cargo-geiger)" is_file
}
@test 'more_src has _cargo-generate' {
    assert "$(xsrc_find _cargo-generate)" is_file
}
@test 'more_src has _cargo-info' {
    assert "$(xsrc_find _cargo-info)" is_file
}
@test 'more_src has _cargo-insta' {
    assert "$(xsrc_find _cargo-insta)" is_file
}
@test 'more_src has _cargo-lambda' {
    assert "$(xsrc_find _cargo-lambda)" is_file
}
@test 'more_src has _cargo-leptos' {
    assert "$(xsrc_find _cargo-leptos)" is_file
}
@test 'more_src has _cargo-license' {
    assert "$(xsrc_find _cargo-license)" is_file
}
@test 'more_src has _cargo-llvm-cov' {
    assert "$(xsrc_find _cargo-llvm-cov)" is_file
}
@test 'more_src has _cargo-machete' {
    assert "$(xsrc_find _cargo-machete)" is_file
}
@test 'more_src has _cargo-make' {
    assert "$(xsrc_find _cargo-make)" is_file
}
@test 'more_src has _cargo-miri' {
    assert "$(xsrc_find _cargo-miri)" is_file
}
@test 'more_src has _cargo-modules' {
    assert "$(xsrc_find _cargo-modules)" is_file
}
@test 'more_src has _cargo-msrv' {
    assert "$(xsrc_find _cargo-msrv)" is_file
}
@test 'more_src has _cargo-mutants' {
    assert "$(xsrc_find _cargo-mutants)" is_file
}
@test 'more_src has _cargo-ndk' {
    assert "$(xsrc_find _cargo-ndk)" is_file
}
@test 'more_src has _cargo-nextest' {
    assert "$(xsrc_find _cargo-nextest)" is_file
}
@test 'more_src has _cargo-nfpm' {
    assert "$(xsrc_find _cargo-nfpm)" is_file
}
@test 'more_src has _cargo-npm' {
    assert "$(xsrc_find _cargo-npm)" is_file
}
@test 'more_src has _cargo-outdated' {
    assert "$(xsrc_find _cargo-outdated)" is_file
}
@test 'more_src has _cargo-pgo' {
    assert "$(xsrc_find _cargo-pgo)" is_file
}
@test 'more_src has _cargo-qual' {
    assert "$(xsrc_find _cargo-qual)" is_file
}
@test 'more_src has _cargo-release' {
    assert "$(xsrc_find _cargo-release)" is_file
}
@test 'more_src has _cargo-rm' {
    assert "$(xsrc_find _cargo-rm)" is_file
}
@test 'more_src has _cargo-semver-checks' {
    assert "$(xsrc_find _cargo-semver-checks)" is_file
}
@test 'more_src has _cargo-show-asm' {
    assert "$(xsrc_find _cargo-show-asm)" is_file
}
@test 'more_src has _cargo-shuttle' {
    assert "$(xsrc_find _cargo-shuttle)" is_file
}
@test 'more_src has _cargo-spellcheck' {
    assert "$(xsrc_find _cargo-spellcheck)" is_file
}
@test 'more_src has _cargo-sweep' {
    assert "$(xsrc_find _cargo-sweep)" is_file
}
@test 'more_src has _cargo-tarpaulin' {
    assert "$(xsrc_find _cargo-tarpaulin)" is_file
}
@test 'more_src has _cargo-udeps' {
    assert "$(xsrc_find _cargo-udeps)" is_file
}
@test 'more_src has _cargo-upgrade' {
    assert "$(xsrc_find _cargo-upgrade)" is_file
}
@test 'more_src has _cargo-upgrades' {
    assert "$(xsrc_find _cargo-upgrades)" is_file
}
@test 'more_src has _cargo-vendor' {
    assert "$(xsrc_find _cargo-vendor)" is_file
}
@test 'more_src has _cargo-vet' {
    assert "$(xsrc_find _cargo-vet)" is_file
}
@test 'more_src has _cargo-watch' {
    assert "$(xsrc_find _cargo-watch)" is_file
}
@test 'more_src has _cargo-workspaces' {
    assert "$(xsrc_find _cargo-workspaces)" is_file
}
@test 'more_src has _cargo-zigbuild' {
    assert "$(xsrc_find _cargo-zigbuild)" is_file
}
@test 'more_src has _carla' {
    assert "$(xsrc_find _carla)" is_file
}
@test 'more_src has _carla-control' {
    assert "$(xsrc_find _carla-control)" is_file
}
@test 'more_src has _carla-database' {
    assert "$(xsrc_find _carla-database)" is_file
}
@test 'more_src has _carla-discovery' {
    assert "$(xsrc_find _carla-discovery)" is_file
}
@test 'more_src has _carmel' {
    assert "$(xsrc_find _carmel)" is_file
}
@test 'more_src has _cartconv' {
    assert "$(xsrc_find _cartconv)" is_file
}
@test 'more_src has _cartog' {
    assert "$(xsrc_find _cartog)" is_file
}
@test 'more_src has _casbin-rust-cli' {
    assert "$(xsrc_find _casbin-rust-cli)" is_file
}
@test 'more_src has _cassandra' {
    assert "$(xsrc_find _cassandra)" is_file
}
@test 'more_src has _cassandra-stress' {
    assert "$(xsrc_find _cassandra-stress)" is_file
}
@test 'more_src has _castero' {
    assert "$(xsrc_find _castero)" is_file
}
@test 'more_src has _cataclysm-dda' {
    assert "$(xsrc_find _cataclysm-dda)" is_file
}
@test 'more_src has _catalina-shutdown' {
    assert "$(xsrc_find _catalina-shutdown)" is_file
}
@test 'more_src has _catalina-startup' {
    assert "$(xsrc_find _catalina-startup)" is_file
}
@test 'more_src has _catppuccin-catwalk' {
    assert "$(xsrc_find _catppuccin-catwalk)" is_file
}
@test 'more_src has _cauwugo' {
    assert "$(xsrc_find _cauwugo)" is_file
}
@test 'more_src has _cava' {
    assert "$(xsrc_find _cava)" is_file
}
@test 'more_src has _cave' {
    assert "$(xsrc_find _cave)" is_file
}
@test 'more_src has _caveman-code' {
    assert "$(xsrc_find _caveman-code)" is_file
}
@test 'more_src has _cayley' {
    assert "$(xsrc_find _cayley)" is_file
}
@test 'more_src has _cbfmt' {
    assert "$(xsrc_find _cbfmt)" is_file
}
@test 'more_src has _cbm' {
    assert "$(xsrc_find _cbm)" is_file
}
@test 'more_src has _cbmc' {
    assert "$(xsrc_find _cbmc)" is_file
}
@test 'more_src has _cbonsai' {
    assert "$(xsrc_find _cbonsai)" is_file
}
@test 'more_src has _cbor-edn' {
    assert "$(xsrc_find _cbor-edn)" is_file
}
@test 'more_src has _cc-test-reporter' {
    assert "$(xsrc_find _cc-test-reporter)" is_file
}
@test 'more_src has _ccc-override.sh' {
    assert "$(xsrc_find _ccc-override.sh)" is_file
}
@test 'more_src has _ccc-rmobjs.sh' {
    assert "$(xsrc_find _ccc-rmobjs.sh)" is_file
}
@test 'more_src has _ccl' {
    assert "$(xsrc_find _ccl)" is_file
}
@test 'more_src has _ccls' {
    assert "$(xsrc_find _ccls)" is_file
}
@test 'more_src has _cd-discid' {
    assert "$(xsrc_find _cd-discid)" is_file
}
@test 'more_src has _cd-gitroot' {
    assert "$(xsrc_find _cd-gitroot)" is_file
}
@test 'more_src has _cd2cue' {
    assert "$(xsrc_find _cd2cue)" is_file
}
@test 'more_src has _cdda2flac' {
    assert "$(xsrc_find _cdda2flac)" is_file
}
@test 'more_src has _cdda2mp3' {
    assert "$(xsrc_find _cdda2mp3)" is_file
}
@test 'more_src has _cdda2mp4' {
    assert "$(xsrc_find _cdda2mp4)" is_file
}
@test 'more_src has _cdda2ogg' {
    assert "$(xsrc_find _cdda2ogg)" is_file
}
@test 'more_src has _cdecl' {
    assert "$(xsrc_find _cdecl)" is_file
}
@test 'more_src has _cdg.zsh' {
    assert "$(xsrc_find _cdg.zsh)" is_file
}
@test 'more_src has _cdialog' {
    assert "$(xsrc_find _cdialog)" is_file
}
@test 'more_src has _cdist' {
    assert "$(xsrc_find _cdist)" is_file
}
@test 'more_src has _cdk' {
    assert "$(xsrc_find _cdk)" is_file
}
@test 'more_src has _cdktf' {
    assert "$(xsrc_find _cdktf)" is_file
}
@test 'more_src has _cdls_popdls_pushdls' {
    assert "$(xsrc_find _cdls_popdls_pushdls)" is_file
}
@test 'more_src has _cdm' {
    assert "$(xsrc_find _cdm)" is_file
}
@test 'more_src has _cdoing' {
    assert "$(xsrc_find _cdoing)" is_file
}
@test 'more_src has _cdpr' {
    assert "$(xsrc_find _cdpr)" is_file
}
@test 'more_src has _cdrskin' {
    assert "$(xsrc_find _cdrskin)" is_file
}
@test 'more_src has _cds' {
    assert "$(xsrc_find _cds)" is_file
}
@test 'more_src has _cds-ts' {
    assert "$(xsrc_find _cds-ts)" is_file
}
@test 'more_src has _cds-tsx' {
    assert "$(xsrc_find _cds-tsx)" is_file
}
@test 'more_src has _cdtool' {
    assert "$(xsrc_find _cdtool)" is_file
}
@test 'more_src has _cdtxt' {
    assert "$(xsrc_find _cdtxt)" is_file
}
@test 'more_src has _ceilometer-agent-central' {
    assert "$(xsrc_find _ceilometer-agent-central)" is_file
}
@test 'more_src has _ceilometer-agent-compute' {
    assert "$(xsrc_find _ceilometer-agent-compute)" is_file
}
@test 'more_src has _ceilometer-agent-notification' {
    assert "$(xsrc_find _ceilometer-agent-notification)" is_file
}
@test 'more_src has _ceilometer-collector' {
    assert "$(xsrc_find _ceilometer-collector)" is_file
}
@test 'more_src has _ceilometer-polling' {
    assert "$(xsrc_find _ceilometer-polling)" is_file
}
@test 'more_src has _ceilometer-status' {
    assert "$(xsrc_find _ceilometer-status)" is_file
}
@test 'more_src has _ceilometer-upgrade' {
    assert "$(xsrc_find _ceilometer-upgrade)" is_file
}
@test 'more_src has _cekit' {
    assert "$(xsrc_find _cekit)" is_file
}
@test 'more_src has _celery' {
    assert "$(xsrc_find _celery)" is_file
}
@test 'more_src has _celeste_standalone' {
    assert "$(xsrc_find _celeste_standalone)" is_file
}
@test 'more_src has _celestia' {
    assert "$(xsrc_find _celestia)" is_file
}
@test 'more_src has _cellwriter' {
    assert "$(xsrc_find _cellwriter)" is_file
}
@test 'more_src has _ceph' {
    assert "$(xsrc_find _ceph)" is_file
}
@test 'more_src has _ceph-authtool' {
    assert "$(xsrc_find _ceph-authtool)" is_file
}
@test 'more_src has _ceph-bluestore-tool' {
    assert "$(xsrc_find _ceph-bluestore-tool)" is_file
}
@test 'more_src has _ceph-clsinfo' {
    assert "$(xsrc_find _ceph-clsinfo)" is_file
}
@test 'more_src has _ceph-conf' {
    assert "$(xsrc_find _ceph-conf)" is_file
}
@test 'more_src has _ceph-create-keys' {
    assert "$(xsrc_find _ceph-create-keys)" is_file
}
@test 'more_src has _ceph-dencoder' {
    assert "$(xsrc_find _ceph-dencoder)" is_file
}
@test 'more_src has _ceph-deploy' {
    assert "$(xsrc_find _ceph-deploy)" is_file
}
@test 'more_src has _ceph-detect-init' {
    assert "$(xsrc_find _ceph-detect-init)" is_file
}
@test 'more_src has _ceph-disk' {
    assert "$(xsrc_find _ceph-disk)" is_file
}
@test 'more_src has _ceph-kvstore-tool' {
    assert "$(xsrc_find _ceph-kvstore-tool)" is_file
}
@test 'more_src has _ceph-mds' {
    assert "$(xsrc_find _ceph-mds)" is_file
}
@test 'more_src has _ceph-mgr' {
    assert "$(xsrc_find _ceph-mgr)" is_file
}
@test 'more_src has _ceph-mon' {
    assert "$(xsrc_find _ceph-mon)" is_file
}
@test 'more_src has _ceph-objectstore-tool' {
    assert "$(xsrc_find _ceph-objectstore-tool)" is_file
}
@test 'more_src has _ceph-osd' {
    assert "$(xsrc_find _ceph-osd)" is_file
}
@test 'more_src has _ceph-syn' {
    assert "$(xsrc_find _ceph-syn)" is_file
}
@test 'more_src has _ceph-volume' {
    assert "$(xsrc_find _ceph-volume)" is_file
}
@test 'more_src has _cephfs-data-scan' {
    assert "$(xsrc_find _cephfs-data-scan)" is_file
}
@test 'more_src has _cephfs-journal-tool' {
    assert "$(xsrc_find _cephfs-journal-tool)" is_file
}
@test 'more_src has _cephfs-table-tool' {
    assert "$(xsrc_find _cephfs-table-tool)" is_file
}
@test 'more_src has _cert-manager-cainjector' {
    assert "$(xsrc_find _cert-manager-cainjector)" is_file
}
@test 'more_src has _cert-manager-controller' {
    assert "$(xsrc_find _cert-manager-controller)" is_file
}
@test 'more_src has _cert-manager-webhook' {
    assert "$(xsrc_find _cert-manager-webhook)" is_file
}
@test 'more_src has _certbot-renew' {
    assert "$(xsrc_find _certbot-renew)" is_file
}
@test 'more_src has _certboy' {
    assert "$(xsrc_find _certboy)" is_file
}
@test 'more_src has _certigo' {
    assert "$(xsrc_find _certigo)" is_file
}
@test 'more_src has _cf-tool' {
    assert "$(xsrc_find _cf-tool)" is_file
}
@test 'more_src has _cfcli' {
    assert "$(xsrc_find _cfcli)" is_file
}
@test 'more_src has _cfn-lint' {
    assert "$(xsrc_find _cfn-lint)" is_file
}
@test 'more_src has _cfspeedtest' {
    assert "$(xsrc_find _cfspeedtest)" is_file
}
@test 'more_src has _cfssl' {
    assert "$(xsrc_find _cfssl)" is_file
}
@test 'more_src has _cga' {
    assert "$(xsrc_find _cga)" is_file
}

@test 'more_src has _cgconfig' {
    assert "$(xsrc_find _cgconfig)" is_file
}
@test 'more_src has _cgen' {
    assert "$(xsrc_find _cgen)" is_file
}
@test 'more_src has _cgmadison' {
    assert "$(xsrc_find _cgmadison)" is_file
}
@test 'more_src has _cgmanager' {
    assert "$(xsrc_find _cgmanager)" is_file
}
@test 'more_src has _cgmanager-proxy' {
    assert "$(xsrc_find _cgmanager-proxy)" is_file
}
@test 'more_src has _cgmodprobe' {
    assert "$(xsrc_find _cgmodprobe)" is_file
}
@test 'more_src has _cgoban' {
    assert "$(xsrc_find _cgoban)" is_file
}
@test 'more_src has _cgoban3' {
    assert "$(xsrc_find _cgoban3)" is_file
}
@test 'more_src has _cgproxy' {
    assert "$(xsrc_find _cgproxy)" is_file
}
@test 'more_src has _cgps' {
    assert "$(xsrc_find _cgps)" is_file
}
@test 'more_src has _cgrep' {
    assert "$(xsrc_find _cgrep)" is_file
}
@test 'more_src has _cgrulesengd' {
    assert "$(xsrc_find _cgrulesengd)" is_file
}
@test 'more_src has _cgrun' {
    assert "$(xsrc_find _cgrun)" is_file
}
@test 'more_src has _ch-build' {
    assert "$(xsrc_find _ch-build)" is_file
}
@test 'more_src has _ch-image' {
    assert "$(xsrc_find _ch-image)" is_file
}
@test 'more_src has _ch-mount' {
    assert "$(xsrc_find _ch-mount)" is_file
}
@test 'more_src has _cha' {
    assert "$(xsrc_find _cha)" is_file
}
@test 'more_src has _chafa' {
    assert "$(xsrc_find _chafa)" is_file
}
@test 'more_src has _chainlit' {
    assert "$(xsrc_find _chainlit)" is_file
}
@test 'more_src has _chainlit-cli' {
    assert "$(xsrc_find _chainlit-cli)" is_file
}
@test 'more_src has _chains' {
    assert "$(xsrc_find _chains)" is_file
}
@test 'more_src has _changelog' {
    assert "$(xsrc_find _changelog)" is_file
}
@test 'more_src has _changelogger.zsh' {
    assert "$(xsrc_find _changelogger.zsh)" is_file
}
@test 'more_src has _changie' {
    assert "$(xsrc_find _changie)" is_file
}
@test 'more_src has _chara' {
    assert "$(xsrc_find _chara)" is_file
}
@test 'more_src has _charge' {
    assert "$(xsrc_find _charge)" is_file
}
@test 'more_src has _charm' {
    assert "$(xsrc_find _charm)" is_file
}
@test 'more_src has _charmcraft' {
    assert "$(xsrc_find _charmcraft)" is_file
}
@test 'more_src has _chauffeur' {
    assert "$(xsrc_find _chauffeur)" is_file
}
@test 'more_src has _chawan' {
    assert "$(xsrc_find _chawan)" is_file
}
@test 'more_src has _checkmake' {
    assert "$(xsrc_find _checkmake)" is_file
}
@test 'more_src has _checkov' {
    assert "$(xsrc_find _checkov)" is_file
}
@test 'more_src has _checksec' {
    assert "$(xsrc_find _checksec)" is_file
}
@test 'more_src has _checktrans' {
    assert "$(xsrc_find _checktrans)" is_file
}
@test 'more_src has _chef-cli' {
    assert "$(xsrc_find _chef-cli)" is_file
}
@test 'more_src has _chefctl' {
    assert "$(xsrc_find _chefctl)" is_file
}
@test 'more_src has _chessx' {
    assert "$(xsrc_find _chessx)" is_file
}
@test 'more_src has _chezmoi' {
    assert "$(xsrc_find _chezmoi)" is_file
}
@test 'more_src has _chezscheme' {
    assert "$(xsrc_find _chezscheme)" is_file
}
@test 'more_src has _chiaki' {
    assert "$(xsrc_find _chiaki)" is_file
}
@test 'more_src has _chicken-csc' {
    assert "$(xsrc_find _chicken-csc)" is_file
}
@test 'more_src has _chicken-install' {
    assert "$(xsrc_find _chicken-install)" is_file
}
@test 'more_src has _childsplay' {
    assert "$(xsrc_find _childsplay)" is_file
}
@test 'more_src has _chips' {
    assert "$(xsrc_find _chips)" is_file
}
@test 'more_src has _chisel' {
    assert "$(xsrc_find _chisel)" is_file
}
@test 'more_src has _chkbit' {
    assert "$(xsrc_find _chkbit)" is_file
}
@test 'more_src has _choose' {
    assert "$(xsrc_find _choose)" is_file
}
@test 'more_src has _choose-rust' {
    assert "$(xsrc_find _choose-rust)" is_file
}
@test 'more_src has _chpst' {
    assert "$(xsrc_find _chpst)" is_file
}
@test 'more_src has _chroma' {
    assert "$(xsrc_find _chroma)" is_file
}
@test 'more_src has _chromadb' {
    assert "$(xsrc_find _chromadb)" is_file
}
@test 'more_src has _chromatic' {
    assert "$(xsrc_find _chromatic)" is_file
}
@test 'more_src has _chromatic-cli' {
    assert "$(xsrc_find _chromatic-cli)" is_file
}
@test 'more_src has _chrome-bookmark-browser' {
    assert "$(xsrc_find _chrome-bookmark-browser)" is_file
}
@test 'more_src has _chrome-history' {
    assert "$(xsrc_find _chrome-history)" is_file
}
@test 'more_src has _chronoctl' {
    assert "$(xsrc_find _chronoctl)" is_file
}
@test 'more_src has _chrpath' {
    assert "$(xsrc_find _chrpath)" is_file
}
@test 'more_src has _chtf' {
    assert "$(xsrc_find _chtf)" is_file
}
@test 'more_src has _chuck' {
    assert "$(xsrc_find _chuck)" is_file
}
@test 'more_src has _cibadmin' {
    assert "$(xsrc_find _cibadmin)" is_file
}
@test 'more_src has _ciel' {
    assert "$(xsrc_find _ciel)" is_file
}
@test 'more_src has _cilium' {
    assert "$(xsrc_find _cilium)" is_file
}
@test 'more_src has _cilium-agent' {
    assert "$(xsrc_find _cilium-agent)" is_file
}
@test 'more_src has _cilium-bugtool' {
    assert "$(xsrc_find _cilium-bugtool)" is_file
}
@test 'more_src has _cilium-health' {
    assert "$(xsrc_find _cilium-health)" is_file
}
@test 'more_src has _cilium-operator' {
    assert "$(xsrc_find _cilium-operator)" is_file
}
@test 'more_src has _cimcli' {
    assert "$(xsrc_find _cimcli)" is_file
}
@test 'more_src has _cinder-api' {
    assert "$(xsrc_find _cinder-api)" is_file
}
@test 'more_src has _cinder-backup' {
    assert "$(xsrc_find _cinder-backup)" is_file
}
@test 'more_src has _cinder-manage' {
    assert "$(xsrc_find _cinder-manage)" is_file
}
@test 'more_src has _cinder-rootwrap' {
    assert "$(xsrc_find _cinder-rootwrap)" is_file
}
@test 'more_src has _cinder-rtstool' {
    assert "$(xsrc_find _cinder-rtstool)" is_file
}
@test 'more_src has _cinder-scheduler' {
    assert "$(xsrc_find _cinder-scheduler)" is_file
}
@test 'more_src has _cinder-status' {
    assert "$(xsrc_find _cinder-status)" is_file
}
@test 'more_src has _cinder-volume' {
    assert "$(xsrc_find _cinder-volume)" is_file
}
@test 'more_src has _cinelerra' {
    assert "$(xsrc_find _cinelerra)" is_file
}
@test 'more_src has _cinnamon-killer-daemon' {
    assert "$(xsrc_find _cinnamon-killer-daemon)" is_file
}
@test 'more_src has _cinnamon-menu-editor' {
    assert "$(xsrc_find _cinnamon-menu-editor)" is_file
}
@test 'more_src has _cinnamon-screensaver-lock-dialog' {
    assert "$(xsrc_find _cinnamon-screensaver-lock-dialog)" is_file
}
@test 'more_src has _cinnamon-settings' {
    assert "$(xsrc_find _cinnamon-settings)" is_file
}
@test 'more_src has _cinnamon-settings-daemon' {
    assert "$(xsrc_find _cinnamon-settings-daemon)" is_file
}
@test 'more_src has _ciptest' {
    assert "$(xsrc_find _ciptest)" is_file
}
@test 'more_src has _circleci' {
    assert "$(xsrc_find _circleci)" is_file
}
@test 'more_src has _circleci-cli' {
    assert "$(xsrc_find _circleci-cli)" is_file
}
@test 'more_src has _cirdna' {
    assert "$(xsrc_find _cirdna)" is_file
}
@test 'more_src has _citadel' {
    assert "$(xsrc_find _citadel)" is_file
}
@test 'more_src has _citra' {
    assert "$(xsrc_find _citra)" is_file
}
@test 'more_src has _civo' {
    assert "$(xsrc_find _civo)" is_file
}
@test 'more_src has _cjpeg-turbo' {
    assert "$(xsrc_find _cjpeg-turbo)" is_file
}
@test 'more_src has _ckb-next' {
    assert "$(xsrc_find _ckb-next)" is_file
}
@test 'more_src has _ckbiutil' {
    assert "$(xsrc_find _ckbiutil)" is_file
}
@test 'more_src has _ckipper' {
    assert "$(xsrc_find _ckipper)" is_file
}
@test 'more_src has _ckpasswd' {
    assert "$(xsrc_find _ckpasswd)" is_file
}
@test 'more_src has _cksfv' {
    assert "$(xsrc_find _cksfv)" is_file
}
@test 'more_src has _clabstop.sh' {
    assert "$(xsrc_find _clabstop.sh)" is_file
}
@test 'more_src has _clair' {
    assert "$(xsrc_find _clair)" is_file
}
@test 'more_src has _clam' {
    assert "$(xsrc_find _clam)" is_file
}
@test 'more_src has _clamav-unofficial-sigs' {
    assert "$(xsrc_find _clamav-unofficial-sigs)" is_file
}
@test 'more_src has _clamsmtp' {
    assert "$(xsrc_find _clamsmtp)" is_file
}
@test 'more_src has _clamsmtpd' {
    assert "$(xsrc_find _clamsmtpd)" is_file
}
@test 'more_src has _clamtk' {
    assert "$(xsrc_find _clamtk)" is_file
}
@test 'more_src has _clang-uml' {
    assert "$(xsrc_find _clang-uml)" is_file
}
@test 'more_src has _clangd-indexer' {
    assert "$(xsrc_find _clangd-indexer)" is_file
}
@test 'more_src has _clarinet' {
    assert "$(xsrc_find _clarinet)" is_file
}
@test 'more_src has _class-dump' {
    assert "$(xsrc_find _class-dump)" is_file
}
@test 'more_src has _claude-cage' {
    assert "$(xsrc_find _claude-cage)" is_file
}
@test 'more_src has _claude-flow' {
    assert "$(xsrc_find _claude-flow)" is_file
}
@test 'more_src has _claude-mcp-manager' {
    assert "$(xsrc_find _claude-mcp-manager)" is_file
}
@test 'more_src has _claude-trace' {
    assert "$(xsrc_find _claude-trace)" is_file
}
@test 'more_src has _claude-vault' {
    assert "$(xsrc_find _claude-vault)" is_file
}
@test 'more_src has _claudectx' {
    assert "$(xsrc_find _claudectx)" is_file
}
@test 'more_src has _claudia' {
    assert "$(xsrc_find _claudia)" is_file
}
@test 'more_src has _claudio-cli' {
    assert "$(xsrc_find _claudio-cli)" is_file
}
@test 'more_src has _claws-mail-archiver' {
    assert "$(xsrc_find _claws-mail-archiver)" is_file
}
@test 'more_src has _clawsker' {
    assert "$(xsrc_find _clawsker)" is_file
}
@test 'more_src has _clean' {
    assert "$(xsrc_find _clean)" is_file
}
@test 'more_src has _clearml-agent' {
    assert "$(xsrc_find _clearml-agent)" is_file
}
@test 'more_src has _clearml-data' {
    assert "$(xsrc_find _clearml-data)" is_file
}
@test 'more_src has _clearml-debug' {
    assert "$(xsrc_find _clearml-debug)" is_file
}
@test 'more_src has _clearml-init' {
    assert "$(xsrc_find _clearml-init)" is_file
}
@test 'more_src has _clearml-param-search' {
    assert "$(xsrc_find _clearml-param-search)" is_file
}
@test 'more_src has _clearml-task' {
    assert "$(xsrc_find _clearml-task)" is_file
}
@test 'more_src has _cleos' {
    assert "$(xsrc_find _cleos)" is_file
}
@test 'more_src has _clerk' {
    assert "$(xsrc_find _clerk)" is_file
}
@test 'more_src has _clever' {
    assert "$(xsrc_find _clever)" is_file
}
@test 'more_src has _clevis-decrypt' {
    assert "$(xsrc_find _clevis-decrypt)" is_file
}
@test 'more_src has _clevis-encrypt-http' {
    assert "$(xsrc_find _clevis-encrypt-http)" is_file
}
@test 'more_src has _clevis-encrypt-sss' {
    assert "$(xsrc_find _clevis-encrypt-sss)" is_file
}
@test 'more_src has _clevis-encrypt-tang' {
    assert "$(xsrc_find _clevis-encrypt-tang)" is_file
}
@test 'more_src has _clevis-encrypt-tpm2' {
    assert "$(xsrc_find _clevis-encrypt-tpm2)" is_file
}
@test 'more_src has _clevis-luks-bind' {
    assert "$(xsrc_find _clevis-luks-bind)" is_file
}
@test 'more_src has _clevis-luks-list' {
    assert "$(xsrc_find _clevis-luks-list)" is_file
}
@test 'more_src has _clevis-luks-pass' {
    assert "$(xsrc_find _clevis-luks-pass)" is_file
}
@test 'more_src has _clevis-luks-regen' {
    assert "$(xsrc_find _clevis-luks-regen)" is_file
}
@test 'more_src has _clevis-luks-unbind' {
    assert "$(xsrc_find _clevis-luks-unbind)" is_file
}
@test 'more_src has _clevis-luks-unlock' {
    assert "$(xsrc_find _clevis-luks-unlock)" is_file
}
@test 'more_src has _cli-forge' {
    assert "$(xsrc_find _cli-forge)" is_file
}
@test 'more_src has _cliapp' {
    assert "$(xsrc_find _cliapp)" is_file
}
@test 'more_src has _clickhouse-bench' {
    assert "$(xsrc_find _clickhouse-bench)" is_file
}
@test 'more_src has _clickhouse-client' {
    assert "$(xsrc_find _clickhouse-client)" is_file
}
@test 'more_src has _clickhouse-git-import' {
    assert "$(xsrc_find _clickhouse-git-import)" is_file
}
@test 'more_src has _clickhouse-keeper-converter' {
    assert "$(xsrc_find _clickhouse-keeper-converter)" is_file
}
@test 'more_src has _clickhouse-library-bridge' {
    assert "$(xsrc_find _clickhouse-library-bridge)" is_file
}
@test 'more_src has _clickhouse-odbc-bridge' {
    assert "$(xsrc_find _clickhouse-odbc-bridge)" is_file
}
@test 'more_src has _cliclick' {
    assert "$(xsrc_find _cliclick)" is_file
}
@test 'more_src has _clifm' {
    assert "$(xsrc_find _clifm)" is_file
}
@test 'more_src has _clight' {
    assert "$(xsrc_find _clight)" is_file
}
@test 'more_src has _clinfo' {
    assert "$(xsrc_find _clinfo)" is_file
}
@test 'more_src has _clio' {
    assert "$(xsrc_find _clio)" is_file
}
@test 'more_src has _clion' {
    assert "$(xsrc_find _clion)" is_file
}
@test 'more_src has _clipcat-notify' {
    assert "$(xsrc_find _clipcat-notify)" is_file
}
@test 'more_src has _clipcatctl' {
    assert "$(xsrc_find _clipcatctl)" is_file
}
@test 'more_src has _cliphist-cli' {
    assert "$(xsrc_find _cliphist-cli)" is_file
}
@test 'more_src has _clispec' {
    assert "$(xsrc_find _clispec)" is_file
}
@test 'more_src has _clite' {
    assert "$(xsrc_find _clite)" is_file
}
@test 'more_src has _cloak' {
    assert "$(xsrc_find _cloak)" is_file
}
@test 'more_src has _cloc' {
    assert "$(xsrc_find _cloc)" is_file
}
@test 'more_src has _clockify-cli' {
    assert "$(xsrc_find _clockify-cli)" is_file
}
@test 'more_src has _clojurec' {
    assert "$(xsrc_find _clojurec)" is_file
}
@test 'more_src has _clonedigger' {
    assert "$(xsrc_find _clonedigger)" is_file
}
@test 'more_src has _cloud-config-init' {
    assert "$(xsrc_find _cloud-config-init)" is_file
}
@test 'more_src has _cloud-final' {
    assert "$(xsrc_find _cloud-final)" is_file
}
@test 'more_src has _cloud-image-utils' {
    assert "$(xsrc_find _cloud-image-utils)" is_file
}
@test 'more_src has _cloud-init-modules' {
    assert "$(xsrc_find _cloud-init-modules)" is_file
}
@test 'more_src has _cloud-localds' {
    assert "$(xsrc_find _cloud-localds)" is_file
}
@test 'more_src has _cloud_sql_proxy' {
    assert "$(xsrc_find _cloud_sql_proxy)" is_file
}
@test 'more_src has _cloudflared' {
    assert "$(xsrc_find _cloudflared)" is_file
}
@test 'more_src has _cloudformatious' {
    assert "$(xsrc_find _cloudformatious)" is_file
}
@test 'more_src has _cloudquery' {
    assert "$(xsrc_find _cloudquery)" is_file
}
@test 'more_src has _clouds' {
    assert "$(xsrc_find _clouds)" is_file
}
@test 'more_src has _clustalo' {
    assert "$(xsrc_find _clustalo)" is_file
}
@test 'more_src has _clustalw' {
    assert "$(xsrc_find _clustalw)" is_file
}
@test 'more_src has _clustalw2' {
    assert "$(xsrc_find _clustalw2)" is_file
}
@test 'more_src has _clusterssh' {
    assert "$(xsrc_find _clusterssh)" is_file
}
@test 'more_src has _cmalign' {
    assert "$(xsrc_find _cmalign)" is_file
}
@test 'more_src has _cmbuild' {
    assert "$(xsrc_find _cmbuild)" is_file
}
@test 'more_src has _cmcalibrate' {
    assert "$(xsrc_find _cmcalibrate)" is_file
}
@test 'more_src has _cmconvert' {
    assert "$(xsrc_find _cmconvert)" is_file
}
@test 'more_src has _cmctl' {
    assert "$(xsrc_find _cmctl)" is_file
}
@test 'more_src has _cmdliner' {
    assert "$(xsrc_find _cmdliner)" is_file
}
@test 'more_src has _cmdr' {
    assert "$(xsrc_find _cmdr)" is_file
}
@test 'more_src has _cmdshelf' {
    assert "$(xsrc_find _cmdshelf)" is_file
}
@test 'more_src has _cmemit' {
    assert "$(xsrc_find _cmemit)" is_file
}
@test 'more_src has _cmfetch' {
    assert "$(xsrc_find _cmfetch)" is_file
}
@test 'more_src has _cmigemo' {
    assert "$(xsrc_find _cmigemo)" is_file
}
@test 'more_src has _cmix' {
    assert "$(xsrc_find _cmix)" is_file
}
@test 'more_src has _cmpress' {
    assert "$(xsrc_find _cmpress)" is_file
}
@test 'more_src has _cmscan' {
    assert "$(xsrc_find _cmscan)" is_file
}
@test 'more_src has _cmsearch' {
    assert "$(xsrc_find _cmsearch)" is_file
}
@test 'more_src has _cmstat' {
    assert "$(xsrc_find _cmstat)" is_file
}
@test 'more_src has _cmstool' {
    assert "$(xsrc_find _cmstool)" is_file
}
@test 'more_src has _cmus' {
    assert "$(xsrc_find _cmus)" is_file
}
@test 'more_src has _cmus-remote' {
    assert "$(xsrc_find _cmus-remote)" is_file
}
@test 'more_src has _cn' {
    assert "$(xsrc_find _cn)" is_file
}
@test 'more_src has _cnc' {
    assert "$(xsrc_find _cnc)" is_file
}
@test 'more_src has _cntr' {
    assert "$(xsrc_find _cntr)" is_file
}
@test 'more_src has _cobbler' {
    assert "$(xsrc_find _cobbler)" is_file
}
@test 'more_src has _cobblerd' {
    assert "$(xsrc_find _cobblerd)" is_file
}
@test 'more_src has _cobra-cli' {
    assert "$(xsrc_find _cobra-cli)" is_file
}
@test 'more_src has _cockpit-bridge' {
    assert "$(xsrc_find _cockpit-bridge)" is_file
}
@test 'more_src has _cockpit-machines' {
    assert "$(xsrc_find _cockpit-machines)" is_file
}
@test 'more_src has _cockpit-pcp' {
    assert "$(xsrc_find _cockpit-pcp)" is_file
}
@test 'more_src has _cockpit-tls' {
    assert "$(xsrc_find _cockpit-tls)" is_file
}
@test 'more_src has _cockpit-ws' {
    assert "$(xsrc_find _cockpit-ws)" is_file
}
@test 'more_src has _cockroach' {
    assert "$(xsrc_find _cockroach)" is_file
}
@test 'more_src has _coco' {
    assert "$(xsrc_find _coco)" is_file
}
@test 'more_src has _cocogitto' {
    assert "$(xsrc_find _cocogitto)" is_file
}
@test 'more_src has _codacy' {
    assert "$(xsrc_find _codacy)" is_file
}
@test 'more_src has _codacy-analysis-cli' {
    assert "$(xsrc_find _codacy-analysis-cli)" is_file
}
@test 'more_src has _codacy-cli' {
    assert "$(xsrc_find _codacy-cli)" is_file
}
@test 'more_src has _codcmp' {
    assert "$(xsrc_find _codcmp)" is_file
}
@test 'more_src has _codcopy' {
    assert "$(xsrc_find _codcopy)" is_file
}
@test 'more_src has _code-git' {
    assert "$(xsrc_find _code-git)" is_file
}
@test 'more_src has _code-minimap' {
    assert "$(xsrc_find _code-minimap)" is_file
}
@test 'more_src has _code-tunnel' {
    assert "$(xsrc_find _code-tunnel)" is_file
}
@test 'more_src has _codebook-lsp' {
    assert "$(xsrc_find _codebook-lsp)" is_file
}
@test 'more_src has _codebuff' {
    assert "$(xsrc_find _codebuff)" is_file
}
@test 'more_src has _codeclimate' {
    assert "$(xsrc_find _codeclimate)" is_file
}
@test 'more_src has _codecompanion' {
    assert "$(xsrc_find _codecompanion)" is_file
}
@test 'more_src has _codecov' {
    assert "$(xsrc_find _codecov)" is_file
}
@test 'more_src has _codecov-cli' {
    assert "$(xsrc_find _codecov-cli)" is_file
}
@test 'more_src has _codecrafters' {
    assert "$(xsrc_find _codecrafters)" is_file
}
@test 'more_src has _codegenie' {
    assert "$(xsrc_find _codegenie)" is_file
}
@test 'more_src has _codelimit' {
    assert "$(xsrc_find _codelimit)" is_file
}
@test 'more_src has _codemie' {
    assert "$(xsrc_find _codemie)" is_file
}
@test 'more_src has _codemod' {
    assert "$(xsrc_find _codemod)" is_file
}
@test 'more_src has _codeql' {
    assert "$(xsrc_find _codeql)" is_file
}
@test 'more_src has _coderet' {
    assert "$(xsrc_find _coderet)" is_file
}
@test 'more_src has _codespell' {
    assert "$(xsrc_find _codespell)" is_file
}
@test 'more_src has _codeswarm' {
    assert "$(xsrc_find _codeswarm)" is_file
}
@test 'more_src has _codex' {
    assert "$(xsrc_find _codex)" is_file
}
@test 'more_src has _codex-acp' {
    assert "$(xsrc_find _codex-acp)" is_file
}
@test 'more_src has _codex-cli' {
    assert "$(xsrc_find _codex-cli)" is_file
}
@test 'more_src has _cody' {
    assert "$(xsrc_find _cody)" is_file
}
@test 'more_src has _cody-agent' {
    assert "$(xsrc_find _cody-agent)" is_file
}
@test 'more_src has _cody-cli' {
    assert "$(xsrc_find _cody-cli)" is_file
}
@test 'more_src has _coercer' {
    assert "$(xsrc_find _coercer)" is_file
}
@test 'more_src has _cog' {
    assert "$(xsrc_find _cog)" is_file
}
@test 'more_src has _cohere-cli' {
    assert "$(xsrc_find _cohere-cli)" is_file
}
@test 'more_src has _cointop' {
    assert "$(xsrc_find _cointop)" is_file
}
@test 'more_src has _colima' {
    assert "$(xsrc_find _colima)" is_file
}
@test 'more_src has _colix' {
    assert "$(xsrc_find _colix)" is_file
}
@test 'more_src has _collectd-tg' {
    assert "$(xsrc_find _collectd-tg)" is_file
}
@test 'more_src has _collectdctl' {
    assert "$(xsrc_find _collectdctl)" is_file
}
@test 'more_src has _colmap' {
    assert "$(xsrc_find _colmap)" is_file
}
@test 'more_src has _colorcoke' {
    assert "$(xsrc_find _colorcoke)" is_file
}
@test 'more_src has _colorscript' {
    assert "$(xsrc_find _colorscript)" is_file
}
@test 'more_src has _comby' {
    assert "$(xsrc_find _comby)" is_file
}
@test 'more_src has _comet' {
    assert "$(xsrc_find _comet)" is_file
}
@test 'more_src has _command-code' {
    assert "$(xsrc_find _command-code)" is_file
}
@test 'more_src has _commitizen' {
    assert "$(xsrc_find _commitizen)" is_file
}
@test 'more_src has _commitlint' {
    assert "$(xsrc_find _commitlint)" is_file
}
@test 'more_src has _comodoro' {
    assert "$(xsrc_find _comodoro)" is_file
}
@test 'more_src has _complete_shellgenius.zsh' {
    assert "$(xsrc_find _complete_shellgenius.zsh)" is_file
}
@test 'more_src has _complete_vocabmaster.zsh' {
    assert "$(xsrc_find _complete_vocabmaster.zsh)" is_file
}
@test 'more_src has _composio' {
    assert "$(xsrc_find _composio)" is_file
}
@test 'more_src has _composio-cli' {
    assert "$(xsrc_find _composio-cli)" is_file
}
@test 'more_src has _composio-js' {
    assert "$(xsrc_find _composio-js)" is_file
}
@test 'more_src has _composio-js-cli' {
    assert "$(xsrc_find _composio-js-cli)" is_file
}
@test 'more_src has _compseq' {
    assert "$(xsrc_find _compseq)" is_file
}
@test 'more_src has _compstyle' {
    assert "$(xsrc_find _compstyle)" is_file
}
@test 'more_src has _compute-sanitizer' {
    assert "$(xsrc_find _compute-sanitizer)" is_file
}
@test 'more_src has _conceal' {
    assert "$(xsrc_find _conceal)" is_file
}
@test 'more_src has _concurrently' {
    assert "$(xsrc_find _concurrently)" is_file
}
@test 'more_src has _conda-env' {
    assert "$(xsrc_find _conda-env)" is_file
}
@test 'more_src has _conda-lock' {
    assert "$(xsrc_find _conda-lock)" is_file
}
@test 'more_src has _condax' {
    assert "$(xsrc_find _condax)" is_file
}
@test 'more_src has _condor_advertise' {
    assert "$(xsrc_find _condor_advertise)" is_file
}
@test 'more_src has _condor_chirp' {
    assert "$(xsrc_find _condor_chirp)" is_file
}
@test 'more_src has _condor_collector' {
    assert "$(xsrc_find _condor_collector)" is_file
}
@test 'more_src has _condor_compile' {
    assert "$(xsrc_find _condor_compile)" is_file
}
@test 'more_src has _condor_config_val' {
    assert "$(xsrc_find _condor_config_val)" is_file
}
@test 'more_src has _condor_dagman' {
    assert "$(xsrc_find _condor_dagman)" is_file
}
@test 'more_src has _condor_fetchlog' {
    assert "$(xsrc_find _condor_fetchlog)" is_file
}
@test 'more_src has _condor_findhost' {
    assert "$(xsrc_find _condor_findhost)" is_file
}
@test 'more_src has _condor_history' {
    assert "$(xsrc_find _condor_history)" is_file
}
@test 'more_src has _condor_hold' {
    assert "$(xsrc_find _condor_hold)" is_file
}
@test 'more_src has _condor_master' {
    assert "$(xsrc_find _condor_master)" is_file
}
@test 'more_src has _condor_negotiator' {
    assert "$(xsrc_find _condor_negotiator)" is_file
}
@test 'more_src has _condor_off' {
    assert "$(xsrc_find _condor_off)" is_file
}
@test 'more_src has _condor_on' {
    assert "$(xsrc_find _condor_on)" is_file
}
@test 'more_src has _condor_ping' {
    assert "$(xsrc_find _condor_ping)" is_file
}
@test 'more_src has _condor_prio' {
    assert "$(xsrc_find _condor_prio)" is_file
}
@test 'more_src has _condor_q' {
    assert "$(xsrc_find _condor_q)" is_file
}
@test 'more_src has _condor_qedit' {
    assert "$(xsrc_find _condor_qedit)" is_file
}
@test 'more_src has _condor_qsub' {
    assert "$(xsrc_find _condor_qsub)" is_file
}
@test 'more_src has _condor_reconfig' {
    assert "$(xsrc_find _condor_reconfig)" is_file
}
@test 'more_src has _condor_release' {
    assert "$(xsrc_find _condor_release)" is_file
}
@test 'more_src has _condor_reschedule' {
    assert "$(xsrc_find _condor_reschedule)" is_file
}
@test 'more_src has _condor_restart' {
    assert "$(xsrc_find _condor_restart)" is_file
}
@test 'more_src has _condor_rm' {
    assert "$(xsrc_find _condor_rm)" is_file
}
@test 'more_src has _condor_run' {
    assert "$(xsrc_find _condor_run)" is_file
}
@test 'more_src has _condor_schedd' {
    assert "$(xsrc_find _condor_schedd)" is_file
}
@test 'more_src has _condor_shadow' {
    assert "$(xsrc_find _condor_shadow)" is_file
}
@test 'more_src has _condor_ssh_to_job' {
    assert "$(xsrc_find _condor_ssh_to_job)" is_file
}
@test 'more_src has _condor_startd' {
    assert "$(xsrc_find _condor_startd)" is_file
}
@test 'more_src has _condor_starter' {
    assert "$(xsrc_find _condor_starter)" is_file
}
@test 'more_src has _condor_stats' {
    assert "$(xsrc_find _condor_stats)" is_file
}
@test 'more_src has _condor_status' {
    assert "$(xsrc_find _condor_status)" is_file
}
@test 'more_src has _condor_store_cred' {
    assert "$(xsrc_find _condor_store_cred)" is_file
}
@test 'more_src has _condor_submit' {
    assert "$(xsrc_find _condor_submit)" is_file
}
@test 'more_src has _condor_tail' {
    assert "$(xsrc_find _condor_tail)" is_file
}
@test 'more_src has _condor_transform_ads' {
    assert "$(xsrc_find _condor_transform_ads)" is_file
}
@test 'more_src has _condor_update_machine_ad' {
    assert "$(xsrc_find _condor_update_machine_ad)" is_file
}
@test 'more_src has _condor_userlog' {
    assert "$(xsrc_find _condor_userlog)" is_file
}
@test 'more_src has _condor_userprio' {
    assert "$(xsrc_find _condor_userprio)" is_file
}
@test 'more_src has _condor_vacate' {
    assert "$(xsrc_find _condor_vacate)" is_file
}
@test 'more_src has _condor_vacate_job' {
    assert "$(xsrc_find _condor_vacate_job)" is_file
}
@test 'more_src has _conductor' {
    assert "$(xsrc_find _conductor)" is_file
}
@test 'more_src has _config-inspector' {
    assert "$(xsrc_find _config-inspector)" is_file
}
@test 'more_src has _confluence' {
    assert "$(xsrc_find _confluence)" is_file
}
@test 'more_src has _conform' {
    assert "$(xsrc_find _conform)" is_file
}
@test 'more_src has _conftest' {
    assert "$(xsrc_find _conftest)" is_file
}
@test 'more_src has _conmon-rs' {
    assert "$(xsrc_find _conmon-rs)" is_file
}
@test 'more_src has _connect-distributed' {
    assert "$(xsrc_find _connect-distributed)" is_file
}
@test 'more_src has _connect-mirror-maker' {
    assert "$(xsrc_find _connect-mirror-maker)" is_file
}
@test 'more_src has _connect-plugin-path' {
    assert "$(xsrc_find _connect-plugin-path)" is_file
}
@test 'more_src has _connect-standalone' {
    assert "$(xsrc_find _connect-standalone)" is_file
}
@test 'more_src has _connmand' {
    assert "$(xsrc_find _connmand)" is_file
}
@test 'more_src has _cons' {
    assert "$(xsrc_find _cons)" is_file
}
@test 'more_src has _consambig' {
    assert "$(xsrc_find _consambig)" is_file
}
@test 'more_src has _console' {
    assert "$(xsrc_find _console)" is_file
}
@test 'more_src has _construct' {
    assert "$(xsrc_find _construct)" is_file
}
@test 'more_src has _consul' {
    assert "$(xsrc_find _consul)" is_file
}
@test 'more_src has _consul-replicate' {
    assert "$(xsrc_find _consul-replicate)" is_file
}
@test 'more_src has _consul-snapshot' {
    assert "$(xsrc_find _consul-snapshot)" is_file
}
@test 'more_src has _consul-template' {
    assert "$(xsrc_find _consul-template)" is_file
}
@test 'more_src has _container' {
    assert "$(xsrc_find _container)" is_file
}
@test 'more_src has _container-builder-local' {
    assert "$(xsrc_find _container-builder-local)" is_file
}
@test 'more_src has _container-diff' {
    assert "$(xsrc_find _container-diff)" is_file
}
@test 'more_src has _containerd-shim-kata-v2' {
    assert "$(xsrc_find _containerd-shim-kata-v2)" is_file
}
@test 'more_src has _context7' {
    assert "$(xsrc_find _context7)" is_file
}
@test 'more_src has _continue' {
    assert "$(xsrc_find _continue)" is_file
}
@test 'more_src has _continue-cli' {
    assert "$(xsrc_find _continue-cli)" is_file
}
@test 'more_src has _controlflow' {
    assert "$(xsrc_find _controlflow)" is_file
}
@test 'more_src has _convos' {
    assert "$(xsrc_find _convos)" is_file
}
@test 'more_src has _cook' {
    assert "$(xsrc_find _cook)" is_file
}
@test 'more_src has _copier' {
    assert "$(xsrc_find _copier)" is_file
}
@test 'more_src has _copilot' {
    assert "$(xsrc_find _copilot)" is_file
}
@test 'more_src has _copilot_aliases' {
    assert "$(xsrc_find _copilot_aliases)" is_file
}
@test 'more_src has _copy_from_container.sh' {
    assert "$(xsrc_find _copy_from_container.sh)" is_file
}
@test 'more_src has _copyq' {
    assert "$(xsrc_find _copyq)" is_file
}
@test 'more_src has _coqide' {
    assert "$(xsrc_find _coqide)" is_file
}
@test 'more_src has _coqwc' {
    assert "$(xsrc_find _coqwc)" is_file
}
@test 'more_src has _cordenex' {
    assert "$(xsrc_find _cordenex)" is_file
}
@test 'more_src has _coredns' {
    assert "$(xsrc_find _coredns)" is_file
}
@test 'more_src has _corepack' {
    assert "$(xsrc_find _corepack)" is_file
}
@test 'more_src has _coretop' {
    assert "$(xsrc_find _coretop)" is_file
}
@test 'more_src has _corosync-blackbox' {
    assert "$(xsrc_find _corosync-blackbox)" is_file
}
@test 'more_src has _corosync-cfgtool' {
    assert "$(xsrc_find _corosync-cfgtool)" is_file
}
@test 'more_src has _corosync-cmapctl' {
    assert "$(xsrc_find _corosync-cmapctl)" is_file
}
@test 'more_src has _corosync-keygen' {
    assert "$(xsrc_find _corosync-keygen)" is_file
}
@test 'more_src has _corosync-quorumtool' {
    assert "$(xsrc_find _corosync-quorumtool)" is_file
}
@test 'more_src has _corteca' {
    assert "$(xsrc_find _corteca)" is_file
}
@test 'more_src has _cosign' {
    assert "$(xsrc_find _cosign)" is_file
}
@test 'more_src has _cosq' {
    assert "$(xsrc_find _cosq)" is_file
}
@test 'more_src has _costpilot' {
    assert "$(xsrc_find _costpilot)" is_file
}
@test 'more_src has _cosy' {
    assert "$(xsrc_find _cosy)" is_file
}
@test 'more_src has _cot' {
    assert "$(xsrc_find _cot)" is_file
}
@test 'more_src has _courier-pop' {
    assert "$(xsrc_find _courier-pop)" is_file
}
@test 'more_src has _courierimap' {
    assert "$(xsrc_find _courierimap)" is_file
}
@test 'more_src has _coverage' {
    assert "$(xsrc_find _coverage)" is_file
}
@test 'more_src has _coveralls' {
    assert "$(xsrc_find _coveralls)" is_file
}
@test 'more_src has _cp.x' {
    assert "$(xsrc_find _cp.x)" is_file
}
@test 'more_src has _cpclean' {
    assert "$(xsrc_find _cpclean)" is_file
}
@test 'more_src has _cpdt.zsh' {
    assert "$(xsrc_find _cpdt.zsh)" is_file
}
@test 'more_src has _cpfind' {
    assert "$(xsrc_find _cpfind)" is_file
}
@test 'more_src has _cpgplot' {
    assert "$(xsrc_find _cpgplot)" is_file
}
@test 'more_src has _cpgreport' {
    assert "$(xsrc_find _cpgreport)" is_file
}
@test 'more_src has _cpphs' {
    assert "$(xsrc_find _cpphs)" is_file
}
@test 'more_src has _cppi' {
    assert "$(xsrc_find _cppi)" is_file
}
@test 'more_src has _cpptraj' {
    assert "$(xsrc_find _cpptraj)" is_file
}
@test 'more_src has _cpu-x' {
    assert "$(xsrc_find _cpu-x)" is_file
}
@test 'more_src has _cpuburn' {
    assert "$(xsrc_find _cpuburn)" is_file
}
@test 'more_src has _cpuctl' {
    assert "$(xsrc_find _cpuctl)" is_file
}
@test 'more_src has _cpufetch' {
    assert "$(xsrc_find _cpufetch)" is_file
}
@test 'more_src has _cpulimit' {
    assert "$(xsrc_find _cpulimit)" is_file
}
@test 'more_src has _cputempd' {
    assert "$(xsrc_find _cputempd)" is_file
}
@test 'more_src has _cql' {
    assert "$(xsrc_find _cql)" is_file
}
@test 'more_src has _cqrlog' {
    assert "$(xsrc_find _cqrlog)" is_file
}
@test 'more_src has _crafty' {
    assert "$(xsrc_find _crafty)" is_file
}
@test 'more_src has _cramfsck' {
    assert "$(xsrc_find _cramfsck)" is_file
}
@test 'more_src has _cramfsswap' {
    assert "$(xsrc_find _cramfsswap)" is_file
}
@test 'more_src has _crane' {
    assert "$(xsrc_find _crane)" is_file
}
@test 'more_src has _crap4rs' {
    assert "$(xsrc_find _crap4rs)" is_file
}
@test 'more_src has _crashlog' {
    assert "$(xsrc_find _crashlog)" is_file
}
@test 'more_src has _crate' {
    assert "$(xsrc_find _crate)" is_file
}
@test 'more_src has _crate-admin' {
    assert "$(xsrc_find _crate-admin)" is_file
}
@test 'more_src has _crate2nix' {
    assert "$(xsrc_find _crate2nix)" is_file
}
@test 'more_src has _crates-tui' {
    assert "$(xsrc_find _crates-tui)" is_file
}
@test 'more_src has _crawl' {
    assert "$(xsrc_find _crawl)" is_file
}
@test 'more_src has _crawl4ai-doctor' {
    assert "$(xsrc_find _crawl4ai-doctor)" is_file
}
@test 'more_src has _crawl4ai-download-models' {
    assert "$(xsrc_find _crawl4ai-download-models)" is_file
}
@test 'more_src has _crawl4ai-migrate' {
    assert "$(xsrc_find _crawl4ai-migrate)" is_file
}
@test 'more_src has _crawl4ai-setup' {
    assert "$(xsrc_find _crawl4ai-setup)" is_file
}
@test 'more_src has _crawlee' {
    assert "$(xsrc_find _crawlee)" is_file
}
@test 'more_src has _crawlforge' {
    assert "$(xsrc_find _crawlforge)" is_file
}
@test 'more_src has _crc32' {
    assert "$(xsrc_find _crc32)" is_file
}
@test 'more_src has _create' {
    assert "$(xsrc_find _create)" is_file
}
@test 'more_src has _create-absolutejs' {
    assert "$(xsrc_find _create-absolutejs)" is_file
}
@test 'more_src has _create-admin-platform' {
    assert "$(xsrc_find _create-admin-platform)" is_file
}
@test 'more_src has _create-adonisjs' {
    assert "$(xsrc_find _create-adonisjs)" is_file
}
@test 'more_src has _create-agent-chat-app' {
    assert "$(xsrc_find _create-agent-chat-app)" is_file
}
@test 'more_src has _create-agent-docs' {
    assert "$(xsrc_find _create-agent-docs)" is_file
}
@test 'more_src has _create-agent-express' {
    assert "$(xsrc_find _create-agent-express)" is_file
}
@test 'more_src has _create-agent-skill' {
    assert "$(xsrc_find _create-agent-skill)" is_file
}
@test 'more_src has _create-agentic-dev' {
    assert "$(xsrc_find _create-agentic-dev)" is_file
}
@test 'more_src has _create-ai-agent' {
    assert "$(xsrc_find _create-ai-agent)" is_file
}
@test 'more_src has _create-ai-agent-setup' {
    assert "$(xsrc_find _create-ai-agent-setup)" is_file
}
@test 'more_src has _create-ai-dev-kit' {
    assert "$(xsrc_find _create-ai-dev-kit)" is_file
}
@test 'more_src has _create-ai-fullstack' {
    assert "$(xsrc_find _create-ai-fullstack)" is_file
}
@test 'more_src has _create-ai-pdlc-factory' {
    assert "$(xsrc_find _create-ai-pdlc-factory)" is_file
}
@test 'more_src has _create-ai-rules' {
    assert "$(xsrc_find _create-ai-rules)" is_file
}
@test 'more_src has _create-alfred-workflow' {
    assert "$(xsrc_find _create-alfred-workflow)" is_file
}
@test 'more_src has _create-amplify' {
    assert "$(xsrc_find _create-amplify)" is_file
}
@test 'more_src has _create-android-app' {
    assert "$(xsrc_find _create-android-app)" is_file
}
@test 'more_src has _create-angular' {
    assert "$(xsrc_find _create-angular)" is_file
}
@test 'more_src has _create-antd-app' {
    assert "$(xsrc_find _create-antd-app)" is_file
}
@test 'more_src has _create-api-docs' {
    assert "$(xsrc_find _create-api-docs)" is_file
}
@test 'more_src has _create-apollo-monorepo' {
    assert "$(xsrc_find _create-apollo-monorepo)" is_file
}
@test 'more_src has _create-app' {
    assert "$(xsrc_find _create-app)" is_file
}
@test 'more_src has _create-app-icon' {
    assert "$(xsrc_find _create-app-icon)" is_file
}
@test 'more_src has _create-app-page' {
    assert "$(xsrc_find _create-app-page)" is_file
}
@test 'more_src has _create-appwrite' {
    assert "$(xsrc_find _create-appwrite)" is_file
}
@test 'more_src has _create-aptos-app' {
    assert "$(xsrc_find _create-aptos-app)" is_file
}
@test 'more_src has _create-aragon-app' {
    assert "$(xsrc_find _create-aragon-app)" is_file
}

@test 'more_src has _create-arcane' {
    assert "$(xsrc_find _create-arcane)" is_file
}
@test 'more_src has _create-arweave-app' {
    assert "$(xsrc_find _create-arweave-app)" is_file
}
@test 'more_src has _create-assistsx-vue' {
    assert "$(xsrc_find _create-assistsx-vue)" is_file
}
@test 'more_src has _create-astro-app' {
    assert "$(xsrc_find _create-astro-app)" is_file
}
@test 'more_src has _create-astro-fleet' {
    assert "$(xsrc_find _create-astro-fleet)" is_file
}
@test 'more_src has _create-astro-ignite' {
    assert "$(xsrc_find _create-astro-ignite)" is_file
}
@test 'more_src has _create-atom-stack' {
    assert "$(xsrc_find _create-atom-stack)" is_file
}
@test 'more_src has _create-atp-agent' {
    assert "$(xsrc_find _create-atp-agent)" is_file
}
@test 'more_src has _create-audius-app' {
    assert "$(xsrc_find _create-audius-app)" is_file
}
@test 'more_src has _create-auralith-app' {
    assert "$(xsrc_find _create-auralith-app)" is_file
}
@test 'more_src has _create-auth' {
    assert "$(xsrc_find _create-auth)" is_file
}
@test 'more_src has _create-auth-system' {
    assert "$(xsrc_find _create-auth-system)" is_file
}
@test 'more_src has _create-azure-app' {
    assert "$(xsrc_find _create-azure-app)" is_file
}
@test 'more_src has _create-babylon-app' {
    assert "$(xsrc_find _create-babylon-app)" is_file
}

@test 'more_src has _create-backend' {
    assert "$(xsrc_find _create-backend)" is_file
}
@test 'more_src has _create-backend-buddy' {
    assert "$(xsrc_find _create-backend-buddy)" is_file
}
@test 'more_src has _create-backend-service' {
    assert "$(xsrc_find _create-backend-service)" is_file
}
@test 'more_src has _create-bembajs' {
    assert "$(xsrc_find _create-bembajs)" is_file
}
@test 'more_src has _create-better-fullstack' {
    assert "$(xsrc_find _create-better-fullstack)" is_file
}
@test 'more_src has _create-better-t-stack' {
    assert "$(xsrc_find _create-better-t-stack)" is_file
}
@test 'more_src has _create-bfs' {
    assert "$(xsrc_find _create-bfs)" is_file
}
@test 'more_src has _create-blockchain-app' {
    assert "$(xsrc_find _create-blockchain-app)" is_file
}
@test 'more_src has _create-book' {
    assert "$(xsrc_find _create-book)" is_file
}
@test 'more_src has _create-bootstrap-app' {
    assert "$(xsrc_find _create-bootstrap-app)" is_file
}
@test 'more_src has _create-bridge-app' {
    assert "$(xsrc_find _create-bridge-app)" is_file
}
@test 'more_src has _create-browser-app' {
    assert "$(xsrc_find _create-browser-app)" is_file
}
@test 'more_src has _create-browser-ext' {
    assert "$(xsrc_find _create-browser-ext)" is_file
}
@test 'more_src has _create-bsmnt-app' {
    assert "$(xsrc_find _create-bsmnt-app)" is_file
}
@test 'more_src has _create-bun' {
    assert "$(xsrc_find _create-bun)" is_file
}
@test 'more_src has _create-bun-app' {
    assert "$(xsrc_find _create-bun-app)" is_file
}
@test 'more_src has _create-bun-package' {
    assert "$(xsrc_find _create-bun-package)" is_file
}

@test 'more_src has _create-bunestro' {
    assert "$(xsrc_find _create-bunestro)" is_file
}
@test 'more_src has _create-bunext-app' {
    assert "$(xsrc_find _create-bunext-app)" is_file
}
@test 'more_src has _create-bunpress' {
    assert "$(xsrc_find _create-bunpress)" is_file
}
@test 'more_src has _create-capacitor-app' {
    assert "$(xsrc_find _create-capacitor-app)" is_file
}
@test 'more_src has _create-catalyst' {
    assert "$(xsrc_find _create-catalyst)" is_file
}
@test 'more_src has _create-cdk-app' {
    assert "$(xsrc_find _create-cdk-app)" is_file
}
@test 'more_src has _create-cencori-app' {
    assert "$(xsrc_find _create-cencori-app)" is_file
}
@test 'more_src has _create-chakra' {
    assert "$(xsrc_find _create-chakra)" is_file
}

@test 'more_src has _create-chat-app' {
    assert "$(xsrc_find _create-chat-app)" is_file
}
@test 'more_src has _create-chrome-ext' {
    assert "$(xsrc_find _create-chrome-ext)" is_file
}
@test 'more_src has _create-chrome-ext-app' {
    assert "$(xsrc_find _create-chrome-ext-app)" is_file
}
@test 'more_src has _create-claude-enjoyer' {
    assert "$(xsrc_find _create-claude-enjoyer)" is_file
}
@test 'more_src has _create-clerk' {
    assert "$(xsrc_find _create-clerk)" is_file
}
@test 'more_src has _create-cli-app' {
    assert "$(xsrc_find _create-cli-app)" is_file
}
@test 'more_src has _create-cloudflare' {
    assert "$(xsrc_find _create-cloudflare)" is_file
}
@test 'more_src has _create-cloudflare-worker' {
    assert "$(xsrc_find _create-cloudflare-worker)" is_file
}
@test 'more_src has _create-cms-app' {
    assert "$(xsrc_find _create-cms-app)" is_file
}
@test 'more_src has _create-commandkit' {
    assert "$(xsrc_find _create-commandkit)" is_file
}
@test 'more_src has _create-component' {
    assert "$(xsrc_find _create-component)" is_file
}

@test 'more_src has _create-component-template-cli' {
    assert "$(xsrc_find _create-component-template-cli)" is_file
}
@test 'more_src has _create-compose-app' {
    assert "$(xsrc_find _create-compose-app)" is_file
}
@test 'more_src has _create-config' {
    assert "$(xsrc_find _create-config)" is_file
}
@test 'more_src has _create-content-site' {
    assert "$(xsrc_find _create-content-site)" is_file
}
@test 'more_src has _create-contentful-app' {
    assert "$(xsrc_find _create-contentful-app)" is_file
}
@test 'more_src has _create-convex' {
    assert "$(xsrc_find _create-convex)" is_file
}
@test 'more_src has _create-convexvalue' {
    assert "$(xsrc_find _create-convexvalue)" is_file
}
@test 'more_src has _create-cordova-app' {
    assert "$(xsrc_find _create-cordova-app)" is_file
}
@test 'more_src has _create-create-app' {
    assert "$(xsrc_find _create-create-app)" is_file
}
@test 'more_src has _create-create-x' {
    assert "$(xsrc_find _create-create-x)" is_file
}
@test 'more_src has _create-daloy' {
    assert "$(xsrc_find _create-daloy)" is_file
}
@test 'more_src has _create-dashboard-app' {
    assert "$(xsrc_find _create-dashboard-app)" is_file
}
@test 'more_src has _create-definite-app' {
    assert "$(xsrc_find _create-definite-app)" is_file
}
@test 'more_src has _create-deno' {
    assert "$(xsrc_find _create-deno)" is_file
}
@test 'more_src has _create-desktop-app' {
    assert "$(xsrc_find _create-desktop-app)" is_file
}
@test 'more_src has _create-directus-extension' {
    assert "$(xsrc_find _create-directus-extension)" is_file
}
@test 'more_src has _create-directus-project' {
    assert "$(xsrc_find _create-directus-project)" is_file
}
@test 'more_src has _create-discord-app' {
    assert "$(xsrc_find _create-discord-app)" is_file
}
@test 'more_src has _create-discord-bot' {
    assert "$(xsrc_find _create-discord-bot)" is_file
}
@test 'more_src has _create-django-app' {
    assert "$(xsrc_find _create-django-app)" is_file
}
@test 'more_src has _create-dmg' {
    assert "$(xsrc_find _create-dmg)" is_file
}
@test 'more_src has _create-docker' {
    assert "$(xsrc_find _create-docker)" is_file
}

@test 'more_src has _create-docs-app' {
    assert "$(xsrc_find _create-docs-app)" is_file
}
@test 'more_src has _create-docus' {
    assert "$(xsrc_find _create-docus)" is_file
}
@test 'more_src has _create-docusaurus' {
    assert "$(xsrc_find _create-docusaurus)" is_file
}
@test 'more_src has _create-docz-app' {
    assert "$(xsrc_find _create-docz-app)" is_file
}
@test 'more_src has _create-doks' {
    assert "$(xsrc_find _create-doks)" is_file
}
@test 'more_src has _create-drizzle-project' {
    assert "$(xsrc_find _create-drizzle-project)" is_file
}
@test 'more_src has _create-dynamic-app' {
    assert "$(xsrc_find _create-dynamic-app)" is_file
}
@test 'more_src has _create-effect-app' {
    assert "$(xsrc_find _create-effect-app)" is_file
}
@test 'more_src has _create-electrobun-stack' {
    assert "$(xsrc_find _create-electrobun-stack)" is_file
}
@test 'more_src has _create-electron-app' {
    assert "$(xsrc_find _create-electron-app)" is_file
}
@test 'more_src has _create-electron-foundation' {
    assert "$(xsrc_find _create-electron-foundation)" is_file
}
@test 'more_src has _create-electron-vite' {
    assert "$(xsrc_find _create-electron-vite)" is_file
}
@test 'more_src has _create-electron-vite-app' {
    assert "$(xsrc_find _create-electron-vite-app)" is_file
}
@test 'more_src has _create-eleventy-app' {
    assert "$(xsrc_find _create-eleventy-app)" is_file
}
@test 'more_src has _create-elit' {
    assert "$(xsrc_find _create-elit)" is_file
}
@test 'more_src has _create-elysia-app' {
    assert "$(xsrc_find _create-elysia-app)" is_file
}
@test 'more_src has _create-esbuild-app' {
    assert "$(xsrc_find _create-esbuild-app)" is_file
}
@test 'more_src has _create-eth' {
    assert "$(xsrc_find _create-eth)" is_file
}
@test 'more_src has _create-eth-app' {
    assert "$(xsrc_find _create-eth-app)" is_file
}
@test 'more_src has _create-expo' {
    assert "$(xsrc_find _create-expo)" is_file
}
@test 'more_src has _create-expo-app' {
    assert "$(xsrc_find _create-expo-app)" is_file
}
@test 'more_src has _create-expo-cljs-app' {
    assert "$(xsrc_find _create-expo-cljs-app)" is_file
}
@test 'more_src has _create-expo-module' {
    assert "$(xsrc_find _create-expo-module)" is_file
}
@test 'more_src has _create-expo-monorepo-template' {
    assert "$(xsrc_find _create-expo-monorepo-template)" is_file
}
@test 'more_src has _create-expo-nativewind' {
    assert "$(xsrc_find _create-expo-nativewind)" is_file
}
@test 'more_src has _create-expo-stack' {
    assert "$(xsrc_find _create-expo-stack)" is_file
}
@test 'more_src has _create-express-app' {
    assert "$(xsrc_find _create-express-app)" is_file
}
@test 'more_src has _create-extension' {
    assert "$(xsrc_find _create-extension)" is_file
}
@test 'more_src has _create-extyped-app' {
    assert "$(xsrc_find _create-extyped-app)" is_file
}
@test 'more_src has _create-farcaster-app' {
    assert "$(xsrc_find _create-farcaster-app)" is_file
}
@test 'more_src has _create-farm' {
    assert "$(xsrc_find _create-farm)" is_file
}
@test 'more_src has _create-farm-app' {
    assert "$(xsrc_find _create-farm-app)" is_file
}
@test 'more_src has _create-flow-app' {
    assert "$(xsrc_find _create-flow-app)" is_file
}
@test 'more_src has _create-flowbite-react' {
    assert "$(xsrc_find _create-flowbite-react)" is_file
}
@test 'more_src has _create-foundation-app' {
    assert "$(xsrc_find _create-foundation-app)" is_file
}
@test 'more_src has _create-foundry' {
    assert "$(xsrc_find _create-foundry)" is_file
}
@test 'more_src has _create-foundry-ui-app' {
    assert "$(xsrc_find _create-foundry-ui-app)" is_file
}
@test 'more_src has _create-four-app' {
    assert "$(xsrc_find _create-four-app)" is_file
}
@test 'more_src has _create-foxglove-extension' {
    assert "$(xsrc_find _create-foxglove-extension)" is_file
}
@test 'more_src has _create-fresh' {
    assert "$(xsrc_find _create-fresh)" is_file
}
@test 'more_src has _create-frontend-pro' {
    assert "$(xsrc_find _create-frontend-pro)" is_file
}
@test 'more_src has _create-fstack-app' {
    assert "$(xsrc_find _create-fstack-app)" is_file
}
@test 'more_src has _create-fullstack-app' {
    assert "$(xsrc_find _create-fullstack-app)" is_file
}
@test 'more_src has _create-fullstack-kit' {
    assert "$(xsrc_find _create-fullstack-kit)" is_file
}
@test 'more_src has _create-fullstack-scaffold' {
    assert "$(xsrc_find _create-fullstack-scaffold)" is_file
}
@test 'more_src has _create-fullstack-starter' {
    assert "$(xsrc_find _create-fullstack-starter)" is_file
}
@test 'more_src has _create-fullstack-starter-kits' {
    assert "$(xsrc_find _create-fullstack-starter-kits)" is_file
}
@test 'more_src has _create-fumadocs-app' {
    assert "$(xsrc_find _create-fumadocs-app)" is_file
}
@test 'more_src has _create-gamecn' {
    assert "$(xsrc_find _create-gamecn)" is_file
}
@test 'more_src has _create-gatsby' {
    assert "$(xsrc_find _create-gatsby)" is_file
}
@test 'more_src has _create-ghost' {
    assert "$(xsrc_find _create-ghost)" is_file
}
@test 'more_src has _create-githat-app' {
    assert "$(xsrc_find _create-githat-app)" is_file
}
@test 'more_src has _create-go-app' {
    assert "$(xsrc_find _create-go-app)" is_file
}

@test 'more_src has _create-graphback' {
    assert "$(xsrc_find _create-graphback)" is_file
}
@test 'more_src has _create-graphql' {
    assert "$(xsrc_find _create-graphql)" is_file
}
@test 'more_src has _create-graphql-api' {
    assert "$(xsrc_find _create-graphql-api)" is_file
}
@test 'more_src has _create-graphql-server' {
    assert "$(xsrc_find _create-graphql-server)" is_file
}
@test 'more_src has _create-grpc-app' {
    assert "$(xsrc_find _create-grpc-app)" is_file
}
@test 'more_src has _create-handover' {
    assert "$(xsrc_find _create-handover)" is_file
}
@test 'more_src has _create-handzon' {
    assert "$(xsrc_find _create-handzon)" is_file
}
@test 'more_src has _create-hardhat' {
    assert "$(xsrc_find _create-hardhat)" is_file
}
@test 'more_src has _create-hardhat-app' {
    assert "$(xsrc_find _create-hardhat-app)" is_file
}
@test 'more_src has _create-hasura-app' {
    assert "$(xsrc_find _create-hasura-app)" is_file
}
@test 'more_src has _create-helix' {
    assert "$(xsrc_find _create-helix)" is_file
}
@test 'more_src has _create-hermit-agent' {
    assert "$(xsrc_find _create-hermit-agent)" is_file
}
@test 'more_src has _create-heroku-app' {
    assert "$(xsrc_find _create-heroku-app)" is_file
}
@test 'more_src has _create-hono-app' {
    assert "$(xsrc_find _create-hono-app)" is_file
}
@test 'more_src has _create-hono-inertia' {
    assert "$(xsrc_find _create-hono-inertia)" is_file
}
@test 'more_src has _create-hydrogen' {
    assert "$(xsrc_find _create-hydrogen)" is_file
}
@test 'more_src has _create-hydrogen-app' {
    assert "$(xsrc_find _create-hydrogen-app)" is_file
}
@test 'more_src has _create-ice' {
    assert "$(xsrc_find _create-ice)" is_file
}
@test 'more_src has _create-icebreaker' {
    assert "$(xsrc_find _create-icebreaker)" is_file
}
@test 'more_src has _create-ink-app' {
    assert "$(xsrc_find _create-ink-app)" is_file
}

@test 'more_src has _create-instant-app' {
    assert "$(xsrc_find _create-instant-app)" is_file
}
@test 'more_src has _create-interchain-app' {
    assert "$(xsrc_find _create-interchain-app)" is_file
}
@test 'more_src has _create-ionic' {
    assert "$(xsrc_find _create-ionic)" is_file
}
@test 'more_src has _create-ipfs-app' {
    assert "$(xsrc_find _create-ipfs-app)" is_file
}
@test 'more_src has _create-jant' {
    assert "$(xsrc_find _create-jant)" is_file
}
@test 'more_src has _create-janus' {
    assert "$(xsrc_find _create-janus)" is_file
}
@test 'more_src has _create-javascript-app' {
    assert "$(xsrc_find _create-javascript-app)" is_file
}
@test 'more_src has _create-jest' {
    assert "$(xsrc_find _create-jest)" is_file
}
@test 'more_src has _create-jmrsquared-website-template' {
    assert "$(xsrc_find _create-jmrsquared-website-template)" is_file
}
@test 'more_src has _create-jollof-app' {
    assert "$(xsrc_find _create-jollof-app)" is_file
}
@test 'more_src has _create-js-stack' {
    assert "$(xsrc_find _create-js-stack)" is_file
}
@test 'more_src has _create-just-dom' {
    assert "$(xsrc_find _create-just-dom)" is_file
}
@test 'more_src has _create-keystone-app' {
    assert "$(xsrc_find _create-keystone-app)" is_file
}
@test 'more_src has _create-knapsack' {
    assert "$(xsrc_find _create-knapsack)" is_file
}
@test 'more_src has _create-koa-app' {
    assert "$(xsrc_find _create-koa-app)" is_file
}
@test 'more_src has _create-ku' {
    assert "$(xsrc_find _create-ku)" is_file
}
@test 'more_src has _create-kurdemy-app' {
    assert "$(xsrc_find _create-kurdemy-app)" is_file
}
@test 'more_src has _create-lambda-app' {
    assert "$(xsrc_find _create-lambda-app)" is_file
}
@test 'more_src has _create-landing-app' {
    assert "$(xsrc_find _create-landing-app)" is_file
}
@test 'more_src has _create-langgraph' {
    assert "$(xsrc_find _create-langgraph)" is_file
}
@test 'more_src has _create-langgraph-app' {
    assert "$(xsrc_find _create-langgraph-app)" is_file
}
@test 'more_src has _create-lerna-app' {
    assert "$(xsrc_find _create-lerna-app)" is_file
}
@test 'more_src has _create-lib-workspace' {
    assert "$(xsrc_find _create-lib-workspace)" is_file
}
@test 'more_src has _create-liferay-microservice-cx' {
    assert "$(xsrc_find _create-liferay-microservice-cx)" is_file
}
@test 'more_src has _create-lit' {
    assert "$(xsrc_find _create-lit)" is_file
}
@test 'more_src has _create-litsx-app' {
    assert "$(xsrc_find _create-litsx-app)" is_file
}
@test 'more_src has _create-liveblocks-app' {
    assert "$(xsrc_find _create-liveblocks-app)" is_file
}
@test 'more_src has _create-llm' {
    assert "$(xsrc_find _create-llm)" is_file
}
@test 'more_src has _create-magento-app' {
    assert "$(xsrc_find _create-magento-app)" is_file
}
@test 'more_src has _create-maizzle' {
    assert "$(xsrc_find _create-maizzle)" is_file
}
@test 'more_src has _create-mantle-devkit-app' {
    assert "$(xsrc_find _create-mantle-devkit-app)" is_file
}
@test 'more_src has _create-mastra' {
    assert "$(xsrc_find _create-mastra)" is_file
}
@test 'more_src has _create-mcp' {
    assert "$(xsrc_find _create-mcp)" is_file
}
@test 'more_src has _create-mcp-server' {
    assert "$(xsrc_find _create-mcp-server)" is_file
}
@test 'more_src has _create-mcp-use-app' {
    assert "$(xsrc_find _create-mcp-use-app)" is_file
}
@test 'more_src has _create-md-computer' {
    assert "$(xsrc_find _create-md-computer)" is_file
}
@test 'more_src has _create-medical-document' {
    assert "$(xsrc_find _create-medical-document)" is_file
}
@test 'more_src has _create-medusa-app' {
    assert "$(xsrc_find _create-medusa-app)" is_file
}
@test 'more_src has _create-medusa-plugin' {
    assert "$(xsrc_find _create-medusa-plugin)" is_file
}
@test 'more_src has _create-mercato-app' {
    assert "$(xsrc_find _create-mercato-app)" is_file
}
@test 'more_src has _create-merged-coverage-reports' {
    assert "$(xsrc_find _create-merged-coverage-reports)" is_file
}
@test 'more_src has _create-mfa-app' {
    assert "$(xsrc_find _create-mfa-app)" is_file
}
@test 'more_src has _create-microfrontend-app' {
    assert "$(xsrc_find _create-microfrontend-app)" is_file
}
@test 'more_src has _create-microservice-app' {
    assert "$(xsrc_find _create-microservice-app)" is_file
}
@test 'more_src has _create-mikro' {
    assert "$(xsrc_find _create-mikro)" is_file
}
@test 'more_src has _create-mikrojs' {
    assert "$(xsrc_find _create-mikrojs)" is_file
}
@test 'more_src has _create-minidapp' {
    assert "$(xsrc_find _create-minidapp)" is_file
}
@test 'more_src has _create-mobile-foundation' {
    assert "$(xsrc_find _create-mobile-foundation)" is_file
}
@test 'more_src has _create-mobile-surfaces' {
    assert "$(xsrc_find _create-mobile-surfaces)" is_file
}
@test 'more_src has _create-mobrowser-app' {
    assert "$(xsrc_find _create-mobrowser-app)" is_file
}
@test 'more_src has _create-modern-app' {
    assert "$(xsrc_find _create-modern-app)" is_file
}
@test 'more_src has _create-module-cli' {
    assert "$(xsrc_find _create-module-cli)" is_file
}

@test 'more_src has _create-module-federation-app' {
    assert "$(xsrc_find _create-module-federation-app)" is_file
}
@test 'more_src has _create-monorepo' {
    assert "$(xsrc_find _create-monorepo)" is_file
}
@test 'more_src has _create-monorepo-app' {
    assert "$(xsrc_find _create-monorepo-app)" is_file
}
@test 'more_src has _create-monorepo-release' {
    assert "$(xsrc_find _create-monorepo-release)" is_file
}
@test 'more_src has _create-moose-app' {
    assert "$(xsrc_find _create-moose-app)" is_file
}
@test 'more_src has _create-move-app' {
    assert "$(xsrc_find _create-move-app)" is_file
}
@test 'more_src has _create-mud' {
    assert "$(xsrc_find _create-mud)" is_file
}
@test 'more_src has _create-mui-app' {
    assert "$(xsrc_find _create-mui-app)" is_file
}
@test 'more_src has _create-mvp-app' {
    assert "$(xsrc_find _create-mvp-app)" is_file
}
@test 'more_src has _create-my-express' {
    assert "$(xsrc_find _create-my-express)" is_file
}
@test 'more_src has _create-my-react-boilerplate' {
    assert "$(xsrc_find _create-my-react-boilerplate)" is_file
}
@test 'more_src has _create-narrarium-book' {
    assert "$(xsrc_find _create-narrarium-book)" is_file
}
@test 'more_src has _create-nat-app' {
    assert "$(xsrc_find _create-nat-app)" is_file
}
@test 'more_src has _create-ncblock' {
    assert "$(xsrc_find _create-ncblock)" is_file
}
@test 'more_src has _create-near-app' {
    assert "$(xsrc_find _create-near-app)" is_file
}
@test 'more_src has _create-neon-app' {
    assert "$(xsrc_find _create-neon-app)" is_file
}
@test 'more_src has _create-ness-app' {
    assert "$(xsrc_find _create-ness-app)" is_file
}
@test 'more_src has _create-nest-app' {
    assert "$(xsrc_find _create-nest-app)" is_file
}
@test 'more_src has _create-nest-ddd-starter' {
    assert "$(xsrc_find _create-nest-ddd-starter)" is_file
}
@test 'more_src has _create-netlify' {
    assert "$(xsrc_find _create-netlify)" is_file
}
@test 'more_src has _create-next' {
    assert "$(xsrc_find _create-next)" is_file
}

@test 'more_src has _create-next-auth-app' {
    assert "$(xsrc_find _create-next-auth-app)" is_file
}
@test 'more_src has _create-next-imagicma' {
    assert "$(xsrc_find _create-next-imagicma)" is_file
}
@test 'more_src has _create-next-lite-app' {
    assert "$(xsrc_find _create-next-lite-app)" is_file
}
@test 'more_src has _create-next-pwa' {
    assert "$(xsrc_find _create-next-pwa)" is_file
}

@test 'more_src has _create-next-shadcn-kit' {
    assert "$(xsrc_find _create-next-shadcn-kit)" is_file
}
@test 'more_src has _create-next-shop' {
    assert "$(xsrc_find _create-next-shop)" is_file
}
@test 'more_src has _create-next-stack' {
    assert "$(xsrc_find _create-next-stack)" is_file
}
@test 'more_src has _create-next-strict' {
    assert "$(xsrc_find _create-next-strict)" is_file
}
@test 'more_src has _create-nexus' {
    assert "$(xsrc_find _create-nexus)" is_file
}

@test 'more_src has _create-nft-app' {
    assert "$(xsrc_find _create-nft-app)" is_file
}
@test 'more_src has _create-ng' {
    assert "$(xsrc_find _create-ng)" is_file
}
@test 'more_src has _create-ng-app' {
    assert "$(xsrc_find _create-ng-app)" is_file
}
@test 'more_src has _create-nocdn-app' {
    assert "$(xsrc_find _create-nocdn-app)" is_file
}
@test 'more_src has _create-nonoise' {
    assert "$(xsrc_find _create-nonoise)" is_file
}
@test 'more_src has _create-nosa' {
    assert "$(xsrc_find _create-nosa)" is_file
}
@test 'more_src has _create-npm' {
    assert "$(xsrc_find _create-npm)" is_file
}
@test 'more_src has _create-nuxt' {
    assert "$(xsrc_find _create-nuxt)" is_file
}
@test 'more_src has _create-nuxt-app' {
    assert "$(xsrc_find _create-nuxt-app)" is_file
}
@test 'more_src has _create-nuxt3' {
    assert "$(xsrc_find _create-nuxt3)" is_file
}
@test 'more_src has _create-nx' {
    assert "$(xsrc_find _create-nx)" is_file
}
@test 'more_src has _create-nx-workspace' {
    assert "$(xsrc_find _create-nx-workspace)" is_file
}
@test 'more_src has _create-p2p-app' {
    assert "$(xsrc_find _create-p2p-app)" is_file
}
@test 'more_src has _create-package' {
    assert "$(xsrc_find _create-package)" is_file
}

@test 'more_src has _create-payload-app' {
    assert "$(xsrc_find _create-payload-app)" is_file
}
@test 'more_src has _create-persql-app' {
    assert "$(xsrc_find _create-persql-app)" is_file
}
@test 'more_src has _create-phantom-app' {
    assert "$(xsrc_find _create-phantom-app)" is_file
}
@test 'more_src has _create-plasmo' {
    assert "$(xsrc_find _create-plasmo)" is_file
}
@test 'more_src has _create-platformatic' {
    assert "$(xsrc_find _create-platformatic)" is_file
}
@test 'more_src has _create-playwright' {
    assert "$(xsrc_find _create-playwright)" is_file
}
@test 'more_src has _create-pnpm-cli' {
    assert "$(xsrc_find _create-pnpm-cli)" is_file
}

@test 'more_src has _create-pocketbase-app' {
    assert "$(xsrc_find _create-pocketbase-app)" is_file
}
@test 'more_src has _create-polystack' {
    assert "$(xsrc_find _create-polystack)" is_file
}
@test 'more_src has _create-ponder' {
    assert "$(xsrc_find _create-ponder)" is_file
}
@test 'more_src has _create-portfolio-app' {
    assert "$(xsrc_find _create-portfolio-app)" is_file
}
@test 'more_src has _create-postgres' {
    assert "$(xsrc_find _create-postgres)" is_file
}

@test 'more_src has _create-postgres-app' {
    assert "$(xsrc_find _create-postgres-app)" is_file
}
@test 'more_src has _create-prisma' {
    assert "$(xsrc_find _create-prisma)" is_file
}
@test 'more_src has _create-prisma-app' {
    assert "$(xsrc_find _create-prisma-app)" is_file
}
@test 'more_src has _create-projx' {
    assert "$(xsrc_find _create-projx)" is_file
}
@test 'more_src has _create-proxy-app' {
    assert "$(xsrc_find _create-proxy-app)" is_file
}
@test 'more_src has _create-quasar' {
    assert "$(xsrc_find _create-quasar)" is_file
}
@test 'more_src has _create-radius-app' {
    assert "$(xsrc_find _create-radius-app)" is_file
}
@test 'more_src has _create-radix-app' {
    assert "$(xsrc_find _create-radix-app)" is_file
}
@test 'more_src has _create-rag-app' {
    assert "$(xsrc_find _create-rag-app)" is_file
}
@test 'more_src has _create-rails-app' {
    assert "$(xsrc_find _create-rails-app)" is_file
}
@test 'more_src has _create-rax' {
    assert "$(xsrc_find _create-rax)" is_file
}
@test 'more_src has _create-react-app-updater' {
    assert "$(xsrc_find _create-react-app-updater)" is_file
}
@test 'more_src has _create-react-native-app' {
    assert "$(xsrc_find _create-react-native-app)" is_file
}
@test 'more_src has _create-react-router' {
    assert "$(xsrc_find _create-react-router)" is_file
}
@test 'more_src has _create-react-router-app' {
    assert "$(xsrc_find _create-react-router-app)" is_file
}

@test 'more_src has _create-react-shadcn-kit' {
    assert "$(xsrc_find _create-react-shadcn-kit)" is_file
}
@test 'more_src has _create-red-app' {
    assert "$(xsrc_find _create-red-app)" is_file
}

@test 'more_src has _create-redwood-app' {
    assert "$(xsrc_find _create-redwood-app)" is_file
}
@test 'more_src has _create-refine-app' {
    assert "$(xsrc_find _create-refine-app)" is_file
}
@test 'more_src has _create-render' {
    assert "$(xsrc_find _create-render)" is_file
}
@test 'more_src has _create-render-app' {
    assert "$(xsrc_find _create-render-app)" is_file
}
@test 'more_src has _create-rest-api-app' {
    assert "$(xsrc_find _create-rest-api-app)" is_file
}
@test 'more_src has _create-revealui' {
    assert "$(xsrc_find _create-revealui)" is_file
}
@test 'more_src has _create-ripple' {
    assert "$(xsrc_find _create-ripple)" is_file
}
@test 'more_src has _create-rn' {
    assert "$(xsrc_find _create-rn)" is_file
}
@test 'more_src has _create-rn-app' {
    assert "$(xsrc_find _create-rn-app)" is_file
}
@test 'more_src has _create-rolldown' {
    assert "$(xsrc_find _create-rolldown)" is_file
}
@test 'more_src has _create-routecraft' {
    assert "$(xsrc_find _create-routecraft)" is_file
}
@test 'more_src has _create-router' {
    assert "$(xsrc_find _create-router)" is_file
}

@test 'more_src has _create-router-app' {
    assert "$(xsrc_find _create-router-app)" is_file
}
@test 'more_src has _create-rsbuild' {
    assert "$(xsrc_find _create-rsbuild)" is_file
}
@test 'more_src has _create-rslib' {
    assert "$(xsrc_find _create-rslib)" is_file
}
@test 'more_src has _create-rspack' {
    assert "$(xsrc_find _create-rspack)" is_file
}
@test 'more_src has _create-rspeedy' {
    assert "$(xsrc_find _create-rspeedy)" is_file
}
@test 'more_src has _create-rspress' {
    assert "$(xsrc_find _create-rspress)" is_file
}
@test 'more_src has _create-rudder' {
    assert "$(xsrc_find _create-rudder)" is_file
}
@test 'more_src has _create-rudder-app' {
    assert "$(xsrc_find _create-rudder-app)" is_file
}
@test 'more_src has _create-saas-app' {
    assert "$(xsrc_find _create-saas-app)" is_file
}
@test 'more_src has _create-saas-boilerplate' {
    assert "$(xsrc_find _create-saas-boilerplate)" is_file
}
@test 'more_src has _create-sanity' {
    assert "$(xsrc_find _create-sanity)" is_file
}
@test 'more_src has _create-scaffold-hbar' {
    assert "$(xsrc_find _create-scaffold-hbar)" is_file
}
@test 'more_src has _create-scaffold-kit' {
    assert "$(xsrc_find _create-scaffold-kit)" is_file
}
@test 'more_src has _create-sdd-project' {
    assert "$(xsrc_find _create-sdd-project)" is_file
}
@test 'more_src has _create-sdlc-agents' {
    assert "$(xsrc_find _create-sdlc-agents)" is_file
}
@test 'more_src has _create-seam' {
    assert "$(xsrc_find _create-seam)" is_file
}
@test 'more_src has _create-seed' {
    assert "$(xsrc_find _create-seed)" is_file
}
@test 'more_src has _create-shadcn-app' {
    assert "$(xsrc_find _create-shadcn-app)" is_file
}
@test 'more_src has _create-shadcn-registry' {
    assert "$(xsrc_find _create-shadcn-registry)" is_file
}
@test 'more_src has _create-shopify' {
    assert "$(xsrc_find _create-shopify)" is_file
}
@test 'more_src has _create-shopify-app' {
    assert "$(xsrc_find _create-shopify-app)" is_file
}
@test 'more_src has _create-sia-app' {
    assert "$(xsrc_find _create-sia-app)" is_file
}
@test 'more_src has _create-slidev' {
    assert "$(xsrc_find _create-slidev)" is_file
}
@test 'more_src has _create-snipara' {
    assert "$(xsrc_find _create-snipara)" is_file
}
@test 'more_src has _create-socket-app' {
    assert "$(xsrc_find _create-socket-app)" is_file
}
@test 'more_src has _create-solana-dapp' {
    assert "$(xsrc_find _create-solana-dapp)" is_file
}
@test 'more_src has _create-solana-program' {
    assert "$(xsrc_find _create-solana-program)" is_file
}
@test 'more_src has _create-solid-app' {
    assert "$(xsrc_find _create-solid-app)" is_file
}
@test 'more_src has _create-some-app' {
    assert "$(xsrc_find _create-some-app)" is_file
}
@test 'more_src has _create-sonicjs' {
    assert "$(xsrc_find _create-sonicjs)" is_file
}
@test 'more_src has _create-spree-app' {
    assert "$(xsrc_find _create-spree-app)" is_file
}
@test 'more_src has _create-spring-app' {
    assert "$(xsrc_find _create-spring-app)" is_file
}
@test 'more_src has _create-sst' {
    assert "$(xsrc_find _create-sst)" is_file
}
@test 'more_src has _create-starknet-app' {
    assert "$(xsrc_find _create-starknet-app)" is_file
}
@test 'more_src has _create-start' {
    assert "$(xsrc_find _create-start)" is_file
}

@test 'more_src has _create-start-app' {
    assert "$(xsrc_find _create-start-app)" is_file
}
@test 'more_src has _create-storyblok-app' {
    assert "$(xsrc_find _create-storyblok-app)" is_file
}
@test 'more_src has _create-storybook' {
    assert "$(xsrc_find _create-storybook)" is_file
}
@test 'more_src has _create-strapi-app' {
    assert "$(xsrc_find _create-strapi-app)" is_file
}
@test 'more_src has _create-strapi-starter' {
    assert "$(xsrc_find _create-strapi-starter)" is_file
}
@test 'more_src has _create-sui-app' {
    assert "$(xsrc_find _create-sui-app)" is_file
}
@test 'more_src has _create-supabase-app' {
    assert "$(xsrc_find _create-supabase-app)" is_file
}
@test 'more_src has _create-supertokens-app' {
    assert "$(xsrc_find _create-supertokens-app)" is_file
}
@test 'more_src has _create-svelte-app' {
    assert "$(xsrc_find _create-svelte-app)" is_file
}
@test 'more_src has _create-svelte-kit' {
    assert "$(xsrc_find _create-svelte-kit)" is_file
}
@test 'more_src has _create-svelte-scorm' {
    assert "$(xsrc_find _create-svelte-scorm)" is_file
}
@test 'more_src has _create-svelte-with-args' {
    assert "$(xsrc_find _create-svelte-with-args)" is_file
}
@test 'more_src has _create-switch-app' {
    assert "$(xsrc_find _create-switch-app)" is_file
}
@test 'more_src has _create-t3-turbo' {
    assert "$(xsrc_find _create-t3-turbo)" is_file
}
@test 'more_src has _create-tailwind' {
    assert "$(xsrc_find _create-tailwind)" is_file
}
@test 'more_src has _create-tailwind-plugin' {
    assert "$(xsrc_find _create-tailwind-plugin)" is_file
}
@test 'more_src has _create-tailwind-styled' {
    assert "$(xsrc_find _create-tailwind-styled)" is_file
}
@test 'more_src has _create-tailwind-type' {
    assert "$(xsrc_find _create-tailwind-type)" is_file
}
@test 'more_src has _create-tailwindcss-app' {
    assert "$(xsrc_find _create-tailwindcss-app)" is_file
}
@test 'more_src has _create-tamagui' {
    assert "$(xsrc_find _create-tamagui)" is_file
}
@test 'more_src has _create-tamagui-app' {
    assert "$(xsrc_find _create-tamagui-app)" is_file
}
@test 'more_src has _create-tanstack' {
    assert "$(xsrc_find _create-tanstack)" is_file
}
@test 'more_src has _create-tanstack-app' {
    assert "$(xsrc_find _create-tanstack-app)" is_file
}
@test 'more_src has _create-taro-app' {
    assert "$(xsrc_find _create-taro-app)" is_file
}
@test 'more_src has _create-tauri' {
    assert "$(xsrc_find _create-tauri)" is_file
}
@test 'more_src has _create-tauri-app' {
    assert "$(xsrc_find _create-tauri-app)" is_file
}
@test 'more_src has _create-tauri-ui' {
    assert "$(xsrc_find _create-tauri-ui)" is_file
}
@test 'more_src has _create-template-next' {
    assert "$(xsrc_find _create-template-next)" is_file
}
@test 'more_src has _create-template-registry' {
    assert "$(xsrc_find _create-template-registry)" is_file
}
@test 'more_src has _create-terraform-app' {
    assert "$(xsrc_find _create-terraform-app)" is_file
}
@test 'more_src has _create-terraform-module' {
    assert "$(xsrc_find _create-terraform-module)" is_file
}
@test 'more_src has _create-tessera' {
    assert "$(xsrc_find _create-tessera)" is_file
}
@test 'more_src has _create-tezos-app' {
    assert "$(xsrc_find _create-tezos-app)" is_file
}
@test 'more_src has _create-tina-app' {
    assert "$(xsrc_find _create-tina-app)" is_file
}
@test 'more_src has _create-tldraw' {
    assert "$(xsrc_find _create-tldraw)" is_file
}
@test 'more_src has _create-tomoro-app' {
    assert "$(xsrc_find _create-tomoro-app)" is_file
}
@test 'more_src has _create-torrent' {
    assert "$(xsrc_find _create-torrent)" is_file
}
@test 'more_src has _create-trpc-appx' {
    assert "$(xsrc_find _create-trpc-appx)" is_file
}
@test 'more_src has _create-tskickstart' {
    assert "$(xsrc_find _create-tskickstart)" is_file
}
@test 'more_src has _create-tsrouter-app' {
    assert "$(xsrc_find _create-tsrouter-app)" is_file
}
@test 'more_src has _create-tsup' {
    assert "$(xsrc_find _create-tsup)" is_file
}
@test 'more_src has _create-turbo' {
    assert "$(xsrc_find _create-turbo)" is_file
}
@test 'more_src has _create-turbo-app' {
    assert "$(xsrc_find _create-turbo-app)" is_file
}
@test 'more_src has _create-turbo-eth' {
    assert "$(xsrc_find _create-turbo-eth)" is_file
}
@test 'more_src has _create-turbo-starter' {
    assert "$(xsrc_find _create-turbo-starter)" is_file
}
@test 'more_src has _create-turbocraft' {
    assert "$(xsrc_find _create-turbocraft)" is_file
}
@test 'more_src has _create-turborepo' {
    assert "$(xsrc_find _create-turborepo)" is_file
}
@test 'more_src has _create-turborepo-app' {
    assert "$(xsrc_find _create-turborepo-app)" is_file
}
@test 'more_src has _create-twosteps-app' {
    assert "$(xsrc_find _create-twosteps-app)" is_file
}
@test 'more_src has _create-tx5dr-plugin' {
    assert "$(xsrc_find _create-tx5dr-plugin)" is_file
}
@test 'more_src has _create-typescript-app' {
    assert "$(xsrc_find _create-typescript-app)" is_file
}

@test 'more_src has _create-typescript-package' {
    assert "$(xsrc_find _create-typescript-package)" is_file
}

@test 'more_src has _create-uikit' {
    assert "$(xsrc_find _create-uikit)" is_file
}
@test 'more_src has _create-umi' {
    assert "$(xsrc_find _create-umi)" is_file
}
@test 'more_src has _create-umi-app' {
    assert "$(xsrc_find _create-umi-app)" is_file
}
@test 'more_src has _create-uni-app' {
    assert "$(xsrc_find _create-uni-app)" is_file
}
@test 'more_src has _create-unplugin' {
    assert "$(xsrc_find _create-unplugin)" is_file
}
@test 'more_src has _create-unstack' {
    assert "$(xsrc_find _create-unstack)" is_file
}
@test 'more_src has _create-validator-ts' {
    assert "$(xsrc_find _create-validator-ts)" is_file
}
@test 'more_src has _create-veto-app' {
    assert "$(xsrc_find _create-veto-app)" is_file
}
@test 'more_src has _create-video' {
    assert "$(xsrc_find _create-video)" is_file
}
@test 'more_src has _create-vite-app' {
    assert "$(xsrc_find _create-vite-app)" is_file
}
@test 'more_src has _create-vite-init' {
    assert "$(xsrc_find _create-vite-init)" is_file
}
@test 'more_src has _create-vite-lustre' {
    assert "$(xsrc_find _create-vite-lustre)" is_file
}
@test 'more_src has _create-vitepress' {
    assert "$(xsrc_find _create-vitepress)" is_file
}
@test 'more_src has _create-vitepress-app' {
    assert "$(xsrc_find _create-vitepress-app)" is_file
}
@test 'more_src has _create-vitest' {
    assert "$(xsrc_find _create-vitest)" is_file
}
@test 'more_src has _create-vivliostyle-theme' {
    assert "$(xsrc_find _create-vivliostyle-theme)" is_file
}
@test 'more_src has _create-volo-app' {
    assert "$(xsrc_find _create-volo-app)" is_file
}
@test 'more_src has _create-vscode-ext' {
    assert "$(xsrc_find _create-vscode-ext)" is_file
}
@test 'more_src has _create-vscode-extension' {
    assert "$(xsrc_find _create-vscode-extension)" is_file
}
@test 'more_src has _create-vue' {
    assert "$(xsrc_find _create-vue)" is_file
}
@test 'more_src has _create-vue-app' {
    assert "$(xsrc_find _create-vue-app)" is_file
}
@test 'more_src has _create-vue-medical' {
    assert "$(xsrc_find _create-vue-medical)" is_file
}
@test 'more_src has _create-vue-vine' {
    assert "$(xsrc_find _create-vue-vine)" is_file
}
@test 'more_src has _create-vuetify' {
    assert "$(xsrc_find _create-vuetify)" is_file
}

@test 'more_src has _create-vusion' {
    assert "$(xsrc_find _create-vusion)" is_file
}
@test 'more_src has _create-wagmi' {
    assert "$(xsrc_find _create-wagmi)" is_file
}
@test 'more_src has _create-waku' {
    assert "$(xsrc_find _create-waku)" is_file
}
@test 'more_src has _create-wdio' {
    assert "$(xsrc_find _create-wdio)" is_file
}
@test 'more_src has _create-weapp-vite' {
    assert "$(xsrc_find _create-weapp-vite)" is_file
}
@test 'more_src has _create-web3' {
    assert "$(xsrc_find _create-web3)" is_file
}
@test 'more_src has _create-web3-dapp' {
    assert "$(xsrc_find _create-web3-dapp)" is_file
}
@test 'more_src has _create-web3-frontend' {
    assert "$(xsrc_find _create-web3-frontend)" is_file
}
@test 'more_src has _create-webbee-app' {
    assert "$(xsrc_find _create-webbee-app)" is_file
}
@test 'more_src has _create-webpack-app' {
    assert "$(xsrc_find _create-webpack-app)" is_file
}
@test 'more_src has _create-wolf-tui' {
    assert "$(xsrc_find _create-wolf-tui)" is_file
}
@test 'more_src has _create-worker-app' {
    assert "$(xsrc_find _create-worker-app)" is_file
}
@test 'more_src has _create-workflow-app' {
    assert "$(xsrc_find _create-workflow-app)" is_file
}
@test 'more_src has _create-x402-app' {
    assert "$(xsrc_find _create-x402-app)" is_file
}
@test 'more_src has _create-xmcp-app' {
    assert "$(xsrc_find _create-xmcp-app)" is_file
}
@test 'more_src has _create-xtarter-app' {
    assert "$(xsrc_find _create-xtarter-app)" is_file
}
@test 'more_src has _create-yuki-stack' {
    assert "$(xsrc_find _create-yuki-stack)" is_file
}
@test 'more_src has _create-zksync-app' {
    assert "$(xsrc_find _create-zksync-app)" is_file
}
@test 'more_src has _create-zs3-app' {
    assert "$(xsrc_find _create-zs3-app)" is_file
}
@test 'more_src has _create-zudoku' {
    assert "$(xsrc_find _create-zudoku)" is_file
}
@test 'more_src has _create-zuplo-api' {
    assert "$(xsrc_find _create-zuplo-api)" is_file
}
@test 'more_src has _createml' {
    assert "$(xsrc_find _createml)" is_file
}
@test 'more_src has _credo' {
    assert "$(xsrc_find _credo)" is_file
}
@test 'more_src has _crewai' {
    assert "$(xsrc_find _crewai)" is_file
}
@test 'more_src has _crewai-cli' {
    assert "$(xsrc_find _crewai-cli)" is_file
}
@test 'more_src has _crf++' {
    assert "$(xsrc_find _crf++)" is_file
}
@test 'more_src has _crfsuite' {
    assert "$(xsrc_find _crfsuite)" is_file
}
@test 'more_src has _cri-tools' {
    assert "$(xsrc_find _cri-tools)" is_file
}
@test 'more_src has _crip' {
    assert "$(xsrc_find _crip)" is_file
}
@test 'more_src has _crm114' {
    assert "$(xsrc_find _crm114)" is_file
}
@test 'more_src has _crm_attribute' {
    assert "$(xsrc_find _crm_attribute)" is_file
}
@test 'more_src has _crm_diff' {
    assert "$(xsrc_find _crm_diff)" is_file
}
@test 'more_src has _crm_error' {
    assert "$(xsrc_find _crm_error)" is_file
}
@test 'more_src has _crm_failcount' {
    assert "$(xsrc_find _crm_failcount)" is_file
}
@test 'more_src has _crm_master' {
    assert "$(xsrc_find _crm_master)" is_file
}
@test 'more_src has _crm_mon' {
    assert "$(xsrc_find _crm_mon)" is_file
}
@test 'more_src has _crm_node' {
    assert "$(xsrc_find _crm_node)" is_file
}
@test 'more_src has _crm_report' {
    assert "$(xsrc_find _crm_report)" is_file
}
@test 'more_src has _crm_resource' {
    assert "$(xsrc_find _crm_resource)" is_file
}
@test 'more_src has _crm_rule' {
    assert "$(xsrc_find _crm_rule)" is_file
}
@test 'more_src has _crm_shadow' {
    assert "$(xsrc_find _crm_shadow)" is_file
}
@test 'more_src has _crm_simulate' {
    assert "$(xsrc_find _crm_simulate)" is_file
}
@test 'more_src has _crm_standby' {
    assert "$(xsrc_find _crm_standby)" is_file
}
@test 'more_src has _crm_ticket' {
    assert "$(xsrc_find _crm_ticket)" is_file
}
@test 'more_src has _crm_verify' {
    assert "$(xsrc_find _crm_verify)" is_file
}
@test 'more_src has _crmadmin' {
    assert "$(xsrc_find _crmadmin)" is_file
}
@test 'more_src has _croc' {
    assert "$(xsrc_find _croc)" is_file
}
@test 'more_src has _cronboard' {
    assert "$(xsrc_find _cronboard)" is_file
}
@test 'more_src has _crossplane' {
    assert "$(xsrc_find _crossplane)" is_file
}
@test 'more_src has _crosstool-ng' {
    assert "$(xsrc_find _crosstool-ng)" is_file
}
@test 'more_src has _crowdin' {
    assert "$(xsrc_find _crowdin)" is_file
}
@test 'more_src has _crunchy-cli' {
    assert "$(xsrc_find _crunchy-cli)" is_file
}
@test 'more_src has _crush-cli' {
    assert "$(xsrc_find _crush-cli)" is_file
}
@test 'more_src has _crwl' {
    assert "$(xsrc_find _crwl)" is_file
}
@test 'more_src has _crypt4gh' {
    assert "$(xsrc_find _crypt4gh)" is_file
}
@test 'more_src has _crypt4gh-keygen' {
    assert "$(xsrc_find _crypt4gh-keygen)" is_file
}
@test 'more_src has _cryptmount' {
    assert "$(xsrc_find _cryptmount)" is_file
}
@test 'more_src has _cryptol' {
    assert "$(xsrc_find _cryptol)" is_file
}
@test 'more_src has _cryptominisat' {
    assert "$(xsrc_find _cryptominisat)" is_file
}
@test 'more_src has _crytic-compile' {
    assert "$(xsrc_find _crytic-compile)" is_file
}
@test 'more_src has _cscli' {
    assert "$(xsrc_find _cscli)" is_file
}
@test 'more_src has _cscope-indexer' {
    assert "$(xsrc_find _cscope-indexer)" is_file
}
@test 'more_src has _csi' {
    assert "$(xsrc_find _csi)" is_file
}
@test 'more_src has _csmith' {
    assert "$(xsrc_find _csmith)" is_file
}
@test 'more_src has _csrutil' {
    assert "$(xsrc_find _csrutil)" is_file
}
@test 'more_src has _csshX' {
    assert "$(xsrc_find _csshX)" is_file
}
@test 'more_src has _csv-merge' {
    assert "$(xsrc_find _csv-merge)" is_file
}
@test 'more_src has _csv2json' {
    assert "$(xsrc_find _csv2json)" is_file
}
@test 'more_src has _csv2parquet' {
    assert "$(xsrc_find _csv2parquet)" is_file
}
@test 'more_src has _csv2sqlite' {
    assert "$(xsrc_find _csv2sqlite)" is_file
}
@test 'more_src has _csvclean' {
    assert "$(xsrc_find _csvclean)" is_file
}
@test 'more_src has _csvcut' {
    assert "$(xsrc_find _csvcut)" is_file
}
@test 'more_src has _csvfix' {
    assert "$(xsrc_find _csvfix)" is_file
}
@test 'more_src has _csvformat' {
    assert "$(xsrc_find _csvformat)" is_file
}
@test 'more_src has _csvgrep' {
    assert "$(xsrc_find _csvgrep)" is_file
}
@test 'more_src has _csview' {
    assert "$(xsrc_find _csview)" is_file
}
@test 'more_src has _csvjoin' {
    assert "$(xsrc_find _csvjoin)" is_file
}
@test 'more_src has _csvlens' {
    assert "$(xsrc_find _csvlens)" is_file
}
@test 'more_src has _csvlook' {
    assert "$(xsrc_find _csvlook)" is_file
}
@test 'more_src has _csvprintf' {
    assert "$(xsrc_find _csvprintf)" is_file
}
@test 'more_src has _csvpy' {
    assert "$(xsrc_find _csvpy)" is_file
}
@test 'more_src has _csvq' {
    assert "$(xsrc_find _csvq)" is_file
}
@test 'more_src has _csvsort' {
    assert "$(xsrc_find _csvsort)" is_file
}
@test 'more_src has _csvsql' {
    assert "$(xsrc_find _csvsql)" is_file
}
@test 'more_src has _csvstack' {
    assert "$(xsrc_find _csvstack)" is_file
}
@test 'more_src has _csvstat' {
    assert "$(xsrc_find _csvstat)" is_file
}
@test 'more_src has _csvtk' {
    assert "$(xsrc_find _csvtk)" is_file
}
@test 'more_src has _ctags-lsp' {
    assert "$(xsrc_find _ctags-lsp)" is_file
}
@test 'more_src has _ctail' {
    assert "$(xsrc_find _ctail)" is_file
}
@test 'more_src has _ctd-decoder' {
    assert "$(xsrc_find _ctd-decoder)" is_file
}
@test 'more_src has _cti' {
    assert "$(xsrc_find _cti)" is_file
}
@test 'more_src has _ctl' {
    assert "$(xsrc_find _ctl)" is_file
}
@test 'more_src has _ctlptl' {
    assert "$(xsrc_find _ctlptl)" is_file
}
@test 'more_src has _ctpv' {
    assert "$(xsrc_find _ctpv)" is_file
}
@test 'more_src has _ctr-enc' {
    assert "$(xsrc_find _ctr-enc)" is_file
}
@test 'more_src has _ctr-remote' {
    assert "$(xsrc_find _ctr-remote)" is_file
}
@test 'more_src has _ctrld' {
    assert "$(xsrc_find _ctrld)" is_file
}
@test 'more_src has _ctx7' {
    assert "$(xsrc_find _ctx7)" is_file
}
@test 'more_src has _cube2' {
    assert "$(xsrc_find _cube2)" is_file
}
@test 'more_src has _cubejs' {
    assert "$(xsrc_find _cubejs)" is_file
}
@test 'more_src has _cucumber-cpp' {
    assert "$(xsrc_find _cucumber-cpp)" is_file
}
@test 'more_src has _cuda-gdb' {
    assert "$(xsrc_find _cuda-gdb)" is_file
}
@test 'more_src has _cuda-gdbserver' {
    assert "$(xsrc_find _cuda-gdbserver)" is_file
}
@test 'more_src has _cuda-install-samples' {
    assert "$(xsrc_find _cuda-install-samples)" is_file
}
@test 'more_src has _cuda-memcheck' {
    assert "$(xsrc_find _cuda-memcheck)" is_file
}
@test 'more_src has _cudafe' {
    assert "$(xsrc_find _cudafe)" is_file
}
@test 'more_src has _cudafe++' {
    assert "$(xsrc_find _cudafe++)" is_file
}
@test 'more_src has _cudaminer' {
    assert "$(xsrc_find _cudaminer)" is_file
}
@test 'more_src has _cue' {
    assert "$(xsrc_find _cue)" is_file
}
@test 'more_src has _cuebreakpoints' {
    assert "$(xsrc_find _cuebreakpoints)" is_file
}
@test 'more_src has _cueconvert' {
    assert "$(xsrc_find _cueconvert)" is_file
}
@test 'more_src has _cueprint' {
    assert "$(xsrc_find _cueprint)" is_file
}
@test 'more_src has _cuetag' {
    assert "$(xsrc_find _cuetag)" is_file
}
@test 'more_src has _cuetools' {
    assert "$(xsrc_find _cuetools)" is_file
}
@test 'more_src has _cuffcompare' {
    assert "$(xsrc_find _cuffcompare)" is_file
}
@test 'more_src has _cuffdiff' {
    assert "$(xsrc_find _cuffdiff)" is_file
}
@test 'more_src has _cufflinks' {
    assert "$(xsrc_find _cufflinks)" is_file
}
@test 'more_src has _cuffmerge' {
    assert "$(xsrc_find _cuffmerge)" is_file
}
@test 'more_src has _cuffquant' {
    assert "$(xsrc_find _cuffquant)" is_file
}
@test 'more_src has _cuneiform' {
    assert "$(xsrc_find _cuneiform)" is_file
}
@test 'more_src has _cuobjdump' {
    assert "$(xsrc_find _cuobjdump)" is_file
}
@test 'more_src has _curlie' {
    assert "$(xsrc_find _curlie)" is_file
}
@test 'more_src has _curseofwar' {
    assert "$(xsrc_find _curseofwar)" is_file
}
@test 'more_src has _cursor-agent' {
    assert "$(xsrc_find _cursor-agent)" is_file
}
@test 'more_src has _cusp' {
    assert "$(xsrc_find _cusp)" is_file
}
@test 'more_src has _custodian' {
    assert "$(xsrc_find _custodian)" is_file
}
@test 'more_src has _custom-install' {
    assert "$(xsrc_find _custom-install)" is_file
}
@test 'more_src has _cutechess' {
    assert "$(xsrc_find _cutechess)" is_file
}
@test 'more_src has _cutechess-cli' {
    assert "$(xsrc_find _cutechess-cli)" is_file
}
@test 'more_src has _cutecom' {
    assert "$(xsrc_find _cutecom)" is_file
}
@test 'more_src has _cutseq' {
    assert "$(xsrc_find _cutseq)" is_file
}
@test 'more_src has _cutter' {
    assert "$(xsrc_find _cutter)" is_file
}
@test 'more_src has _cuyo' {
    assert "$(xsrc_find _cuyo)" is_file
}
@test 'more_src has _cva' {
    assert "$(xsrc_find _cva)" is_file
}
@test 'more_src has _cvlc' {
    assert "$(xsrc_find _cvlc)" is_file
}
@test 'more_src has _cvsconvert' {
    assert "$(xsrc_find _cvsconvert)" is_file
}
@test 'more_src has _cvsutils' {
    assert "$(xsrc_find _cvsutils)" is_file
}
@test 'more_src has _cvsync' {
    assert "$(xsrc_find _cvsync)" is_file
}
@test 'more_src has _cw' {
    assert "$(xsrc_find _cw)" is_file
}
@test 'more_src has _cwalk' {
    assert "$(xsrc_find _cwalk)" is_file
}
@test 'more_src has _cwb-config' {
    assert "$(xsrc_find _cwb-config)" is_file
}
@test 'more_src has _cwcp' {
    assert "$(xsrc_find _cwcp)" is_file
}
@test 'more_src has _cwgen' {
    assert "$(xsrc_find _cwgen)" is_file
}
@test 'more_src has _cx' {
    assert "$(xsrc_find _cx)" is_file
}
@test 'more_src has _cxd' {
    assert "$(xsrc_find _cxd)" is_file
}
@test 'more_src has _cxgo' {
    assert "$(xsrc_find _cxgo)" is_file
}
@test 'more_src has _cxxtest' {
    assert "$(xsrc_find _cxxtest)" is_file
}
@test 'more_src has _cyborg-agent' {
    assert "$(xsrc_find _cyborg-agent)" is_file
}
@test 'more_src has _cyborg-api' {
    assert "$(xsrc_find _cyborg-api)" is_file
}
@test 'more_src has _cyborg-conductor' {
    assert "$(xsrc_find _cyborg-conductor)" is_file
}
@test 'more_src has _cyborg-status' {
    assert "$(xsrc_find _cyborg-status)" is_file
}
@test 'more_src has _cyclonedx-gomod' {
    assert "$(xsrc_find _cyclonedx-gomod)" is_file
}
@test 'more_src has _cyclonedx-python' {
    assert "$(xsrc_find _cyclonedx-python)" is_file
}
@test 'more_src has _cycode' {
    assert "$(xsrc_find _cycode)" is_file
}
@test 'more_src has _cyctl' {
    assert "$(xsrc_find _cyctl)" is_file
}
@test 'more_src has _cyphernetes' {
    assert "$(xsrc_find _cyphernetes)" is_file
}
@test 'more_src has _cyradm' {
    assert "$(xsrc_find _cyradm)" is_file
}
@test 'more_src has _cyrdeliver' {
    assert "$(xsrc_find _cyrdeliver)" is_file
}
@test 'more_src has _cyrus-arbitron' {
    assert "$(xsrc_find _cyrus-arbitron)" is_file
}
@test 'more_src has _cyrus-chk_cyrus' {
    assert "$(xsrc_find _cyrus-chk_cyrus)" is_file
}
@test 'more_src has _cyrus-cvt_cyrusdb' {
    assert "$(xsrc_find _cyrus-cvt_cyrusdb)" is_file
}
@test 'more_src has _cyrus-cyradm' {
    assert "$(xsrc_find _cyrus-cyradm)" is_file
}
@test 'more_src has _cyrus-deliver' {
    assert "$(xsrc_find _cyrus-deliver)" is_file
}
@test 'more_src has _cyrus-fud' {
    assert "$(xsrc_find _cyrus-fud)" is_file
}
@test 'more_src has _cyrus-imapd' {
    assert "$(xsrc_find _cyrus-imapd)" is_file
}
@test 'more_src has _cyrus-ipurge' {
    assert "$(xsrc_find _cyrus-ipurge)" is_file
}
@test 'more_src has _cyrus-master' {
    assert "$(xsrc_find _cyrus-master)" is_file
}
@test 'more_src has _cyrus-mbexamine' {
    assert "$(xsrc_find _cyrus-mbexamine)" is_file
}
@test 'more_src has _cyrus-mbpath' {
    assert "$(xsrc_find _cyrus-mbpath)" is_file
}
@test 'more_src has _cyrus-mbtest' {
    assert "$(xsrc_find _cyrus-mbtest)" is_file
}
@test 'more_src has _cyrus-pop3d' {
    assert "$(xsrc_find _cyrus-pop3d)" is_file
}
@test 'more_src has _cyrus-promstatsd' {
    assert "$(xsrc_find _cyrus-promstatsd)" is_file
}
@test 'more_src has _cyrus-quota' {
    assert "$(xsrc_find _cyrus-quota)" is_file
}
@test 'more_src has _cyrus-reconstruct' {
    assert "$(xsrc_find _cyrus-reconstruct)" is_file
}
@test 'more_src has _cyrus-rehash' {
    assert "$(xsrc_find _cyrus-rehash)" is_file
}
@test 'more_src has _cyrus-smmapd' {
    assert "$(xsrc_find _cyrus-smmapd)" is_file
}
@test 'more_src has _cyrus-squatter' {
    assert "$(xsrc_find _cyrus-squatter)" is_file
}
@test 'more_src has _cyrus-sync_client' {
    assert "$(xsrc_find _cyrus-sync_client)" is_file
}
@test 'more_src has _cyrus-sync_reset' {
    assert "$(xsrc_find _cyrus-sync_reset)" is_file
}
@test 'more_src has _cyrus-sync_server' {
    assert "$(xsrc_find _cyrus-sync_server)" is_file
}
@test 'more_src has _cyrus-timsieved' {
    assert "$(xsrc_find _cyrus-timsieved)" is_file
}
@test 'more_src has _cyrus-tls_prune' {
    assert "$(xsrc_find _cyrus-tls_prune)" is_file
}
@test 'more_src has _cyrus-unexpunge' {
    assert "$(xsrc_find _cyrus-unexpunge)" is_file
}
@test 'more_src has _cz' {
    assert "$(xsrc_find _cz)" is_file
}
@test 'more_src has _czkawka' {
    assert "$(xsrc_find _czkawka)" is_file
}
@test 'more_src has _d2' {
    assert "$(xsrc_find _d2)" is_file
}
@test 'more_src has _daemon8' {
    assert "$(xsrc_find _daemon8)" is_file
}
@test 'more_src has _daemonize' {
    assert "$(xsrc_find _daemonize)" is_file
}
@test 'more_src has _daemonlogger' {
    assert "$(xsrc_find _daemonlogger)" is_file
}
@test 'more_src has _dagger' {
    assert "$(xsrc_find _dagger)" is_file
}
@test 'more_src has _dagit' {
    assert "$(xsrc_find _dagit)" is_file
}
@test 'more_src has _dagster-daemon' {
    assert "$(xsrc_find _dagster-daemon)" is_file
}
@test 'more_src has _dagster-webserver' {
    assert "$(xsrc_find _dagster-webserver)" is_file
}
@test 'more_src has _dagu' {
    assert "$(xsrc_find _dagu)" is_file
}
@test 'more_src has _dalfox' {
    assert "$(xsrc_find _dalfox)" is_file
}
@test 'more_src has _dancer2' {
    assert "$(xsrc_find _dancer2)" is_file
}
@test 'more_src has _dante' {
    assert "$(xsrc_find _dante)" is_file
}
@test 'more_src has _dapr' {
    assert "$(xsrc_find _dapr)" is_file
}
@test 'more_src has _darce' {
    assert "$(xsrc_find _darce)" is_file
}
@test 'more_src has _dark-mode' {
    assert "$(xsrc_find _dark-mode)" is_file
}
@test 'more_src has _darktable' {
    assert "$(xsrc_find _darktable)" is_file
}
@test 'more_src has _darktable-chart' {
    assert "$(xsrc_find _darktable-chart)" is_file
}
@test 'more_src has _darktable-cltest' {
    assert "$(xsrc_find _darktable-cltest)" is_file
}
@test 'more_src has _darktable-curve-tool' {
    assert "$(xsrc_find _darktable-curve-tool)" is_file
}
@test 'more_src has _darktable-generate-cache' {
    assert "$(xsrc_find _darktable-generate-cache)" is_file
}
@test 'more_src has _darktable-rs-identify' {
    assert "$(xsrc_find _darktable-rs-identify)" is_file
}
@test 'more_src has _darwin-debug' {
    assert "$(xsrc_find _darwin-debug)" is_file
}
@test 'more_src has _dasel' {
    assert "$(xsrc_find _dasel)" is_file
}
@test 'more_src has _dash-mpd-cli' {
    assert "$(xsrc_find _dash-mpd-cli)" is_file
}
@test 'more_src has _dashing' {
    assert "$(xsrc_find _dashing)" is_file
}
@test 'more_src has _dasht' {
    assert "$(xsrc_find _dasht)" is_file
}
@test 'more_src has _dasht_docsets' {
    assert "$(xsrc_find _dasht_docsets)" is_file
}
@test 'more_src has _dasht_query_exec' {
    assert "$(xsrc_find _dasht_query_exec)" is_file
}
@test 'more_src has _datalad' {
    assert "$(xsrc_find _datalad)" is_file
}
@test 'more_src has _datasette' {
    assert "$(xsrc_find _datasette)" is_file
}
@test 'more_src has _datocms' {
    assert "$(xsrc_find _datocms)" is_file
}
@test 'more_src has _datree' {
    assert "$(xsrc_find _datree)" is_file
}
@test 'more_src has _daylog' {
    assert "$(xsrc_find _daylog)" is_file
}
@test 'more_src has _dbclient' {
    assert "$(xsrc_find _dbclient)" is_file
}
@test 'more_src has _dbdiff' {
    assert "$(xsrc_find _dbdiff)" is_file
}
@test 'more_src has _dbeaver-cli' {
    assert "$(xsrc_find _dbeaver-cli)" is_file
}
@test 'more_src has _dbgate' {
    assert "$(xsrc_find _dbgate)" is_file
}
@test 'more_src has _dbhash' {
    assert "$(xsrc_find _dbhash)" is_file
}
@test 'more_src has _dbifasta' {
    assert "$(xsrc_find _dbifasta)" is_file
}
@test 'more_src has _dbiflat' {
    assert "$(xsrc_find _dbiflat)" is_file
}
@test 'more_src has _dbigcg' {
    assert "$(xsrc_find _dbigcg)" is_file
}
@test 'more_src has _dbiloc' {
    assert "$(xsrc_find _dbiloc)" is_file
}
@test 'more_src has _dbilogstrip' {
    assert "$(xsrc_find _dbilogstrip)" is_file
}
@test 'more_src has _dbitext' {
    assert "$(xsrc_find _dbitext)" is_file
}
@test 'more_src has _dblatex' {
    assert "$(xsrc_find _dblatex)" is_file
}
@test 'more_src has _dbmate' {
    assert "$(xsrc_find _dbmate)" is_file
}
@test 'more_src has _dbml-cli' {
    assert "$(xsrc_find _dbml-cli)" is_file
}
@test 'more_src has _dbscope' {
    assert "$(xsrc_find _dbscope)" is_file
}
@test 'more_src has _dbtell' {
    assert "$(xsrc_find _dbtell)" is_file
}
@test 'more_src has _dbtoepub' {
    assert "$(xsrc_find _dbtoepub)" is_file
}
@test 'more_src has _dcd-client' {
    assert "$(xsrc_find _dcd-client)" is_file
}
@test 'more_src has _dcg' {
    assert "$(xsrc_find _dcg)" is_file
}
@test 'more_src has _dcron' {
    assert "$(xsrc_find _dcron)" is_file
}
@test 'more_src has _dcutil' {
    assert "$(xsrc_find _dcutil)" is_file
}
@test 'more_src has _ddccontrol' {
    assert "$(xsrc_find _ddccontrol)" is_file
}
@test 'more_src has _ddgr' {
    assert "$(xsrc_find _ddgr)" is_file
}
@test 'more_src has _ddgs' {
    assert "$(xsrc_find _ddgs)" is_file
}
@test 'more_src has _ddlctl' {
    assert "$(xsrc_find _ddlctl)" is_file
}
@test 'more_src has _ddrescueview' {
    assert "$(xsrc_find _ddrescueview)" is_file
}
@test 'more_src has _ddtrace-run' {
    assert "$(xsrc_find _ddtrace-run)" is_file
}
@test 'more_src has _de-macro' {
    assert "$(xsrc_find _de-macro)" is_file
}
@test 'more_src has _deadbranch' {
    assert "$(xsrc_find _deadbranch)" is_file
}
@test 'more_src has _deadfinder' {
    assert "$(xsrc_find _deadfinder)" is_file
}
@test 'more_src has _deb-systemd-helper' {
    assert "$(xsrc_find _deb-systemd-helper)" is_file
}
@test 'more_src has _deb-systemd-invoke' {
    assert "$(xsrc_find _deb-systemd-invoke)" is_file
}
@test 'more_src has _debian_rules' {
    assert "$(xsrc_find _debian_rules)" is_file
}
@test 'more_src has _decibri' {
    assert "$(xsrc_find _decibri)" is_file
}
@test 'more_src has _decompose' {
    assert "$(xsrc_find _decompose)" is_file
}
@test 'more_src has _decomposePar' {
    assert "$(xsrc_find _decomposePar)" is_file
}
@test 'more_src has _deep' {
    assert "$(xsrc_find _deep)" is_file
}
@test 'more_src has _deepagents' {
    assert "$(xsrc_find _deepagents)" is_file
}
@test 'more_src has _deepagents-cli' {
    assert "$(xsrc_find _deepagents-cli)" is_file
}
@test 'more_src has _deepeval' {
    assert "$(xsrc_find _deepeval)" is_file
}
@test 'more_src has _deeplake' {
    assert "$(xsrc_find _deeplake)" is_file
}
@test 'more_src has _deepseek' {
    assert "$(xsrc_find _deepseek)" is_file
}
@test 'more_src has _deepseek-cli' {
    assert "$(xsrc_find _deepseek-cli)" is_file
}
@test 'more_src has _deepseek-tui' {
    assert "$(xsrc_find _deepseek-tui)" is_file
}
@test 'more_src has _deepsource' {
    assert "$(xsrc_find _deepsource)" is_file
}
@test 'more_src has _deepwiki' {
    assert "$(xsrc_find _deepwiki)" is_file
}
@test 'more_src has _degapseq' {
    assert "$(xsrc_find _degapseq)" is_file
}
@test 'more_src has _deheader' {
    assert "$(xsrc_find _deheader)" is_file
}
@test 'more_src has _dejagnu' {
    assert "$(xsrc_find _dejagnu)" is_file
}
@test 'more_src has _dek' {
    assert "$(xsrc_find _dek)" is_file
}
@test 'more_src has _delly' {
    assert "$(xsrc_find _delly)" is_file
}
@test 'more_src has _deltablast' {
    assert "$(xsrc_find _deltablast)" is_file
}
@test 'more_src has _deluge-gtk' {
    assert "$(xsrc_find _deluge-gtk)" is_file
}
@test 'more_src has _deluge-web' {
    assert "$(xsrc_find _deluge-web)" is_file
}
@test 'more_src has _deluged' {
    assert "$(xsrc_find _deluged)" is_file
}
@test 'more_src has _demucs' {
    assert "$(xsrc_find _demucs)" is_file
}
@test 'more_src has _demumble' {
    assert "$(xsrc_find _demumble)" is_file
}
@test 'more_src has _denemo' {
    assert "$(xsrc_find _denemo)" is_file
}
@test 'more_src has _deno' {
    assert "$(xsrc_find _deno)" is_file
}
@test 'more_src has _denominator' {
    assert "$(xsrc_find _denominator)" is_file
}
@test 'more_src has _denyhosts' {
    assert "$(xsrc_find _denyhosts)" is_file
}
@test 'more_src has _depcheck' {
    assert "$(xsrc_find _depcheck)" is_file
}
@test 'more_src has _deplist' {
    assert "$(xsrc_find _deplist)" is_file
}
@test 'more_src has _descseq' {
    assert "$(xsrc_find _descseq)" is_file
}
@test 'more_src has _desed' {
    assert "$(xsrc_find _desed)" is_file
}
@test 'more_src has _designate-agent' {
    assert "$(xsrc_find _designate-agent)" is_file
}
@test 'more_src has _designate-api' {
    assert "$(xsrc_find _designate-api)" is_file
}
@test 'more_src has _designate-central' {
    assert "$(xsrc_find _designate-central)" is_file
}
@test 'more_src has _designate-manage' {
    assert "$(xsrc_find _designate-manage)" is_file
}
@test 'more_src has _designate-mdns' {
    assert "$(xsrc_find _designate-mdns)" is_file
}
@test 'more_src has _designate-producer' {
    assert "$(xsrc_find _designate-producer)" is_file
}
@test 'more_src has _designate-sink' {
    assert "$(xsrc_find _designate-sink)" is_file
}
@test 'more_src has _designate-status' {
    assert "$(xsrc_find _designate-status)" is_file
}
@test 'more_src has _designate-worker' {
    assert "$(xsrc_find _designate-worker)" is_file
}
@test 'more_src has _desk-exec' {
    assert "$(xsrc_find _desk-exec)" is_file
}
@test 'more_src has _desktoppr' {
    assert "$(xsrc_find _desktoppr)" is_file
}
@test 'more_src has _desmume' {
    assert "$(xsrc_find _desmume)" is_file
}
@test 'more_src has _detach' {
    assert "$(xsrc_find _detach)" is_file
}
@test 'more_src has _detect-secrets' {
    assert "$(xsrc_find _detect-secrets)" is_file
}
@test 'more_src has _devbox' {
    assert "$(xsrc_find _devbox)" is_file
}
@test 'more_src has _devcontainer' {
    assert "$(xsrc_find _devcontainer)" is_file
}
@test 'more_src has _devenv' {
    assert "$(xsrc_find _devenv)" is_file
}
@test 'more_src has _devicectl' {
    assert "$(xsrc_find _devicectl)" is_file
}
@test 'more_src has _devin' {
    assert "$(xsrc_find _devin)" is_file
}
@test 'more_src has _devin-cli' {
    assert "$(xsrc_find _devin-cli)" is_file
}
@test 'more_src has _devist' {
    assert "$(xsrc_find _devist)" is_file
}
@test 'more_src has _devorch' {
    assert "$(xsrc_find _devorch)" is_file
}
@test 'more_src has _devpod' {
    assert "$(xsrc_find _devpod)" is_file
}
@test 'more_src has _devpulse' {
    assert "$(xsrc_find _devpulse)" is_file
}
@test 'more_src has _devrig' {
    assert "$(xsrc_find _devrig)" is_file
}
@test 'more_src has _devs' {
    assert "$(xsrc_find _devs)" is_file
}
@test 'more_src has _devspace' {
    assert "$(xsrc_find _devspace)" is_file
}
@test 'more_src has _devtool' {
    assert "$(xsrc_find _devtool)" is_file
}
@test 'more_src has _deweb' {
    assert "$(xsrc_find _deweb)" is_file
}
@test 'more_src has _dexed' {
    assert "$(xsrc_find _dexed)" is_file
}
@test 'more_src has _dexp' {
    assert "$(xsrc_find _dexp)" is_file
}
@test 'more_src has _dfm' {
    assert "$(xsrc_find _dfm)" is_file
}
@test 'more_src has _dfmt' {
    assert "$(xsrc_find _dfmt)" is_file
}
@test 'more_src has _dfrs' {
    assert "$(xsrc_find _dfrs)" is_file
}
@test 'more_src has _dfu-prefix' {
    assert "$(xsrc_find _dfu-prefix)" is_file
}
@test 'more_src has _dfu-programmer' {
    assert "$(xsrc_find _dfu-programmer)" is_file
}
@test 'more_src has _dfu-suffix' {
    assert "$(xsrc_find _dfu-suffix)" is_file
}
@test 'more_src has _dh-php' {
    assert "$(xsrc_find _dh-php)" is_file
}
@test 'more_src has _dhall' {
    assert "$(xsrc_find _dhall)" is_file
}
@test 'more_src has _dhall-lsp-server' {
    assert "$(xsrc_find _dhall-lsp-server)" is_file
}
@test 'more_src has _dhcp_lease_time' {
    assert "$(xsrc_find _dhcp_lease_time)" is_file
}
@test 'more_src has _dhcp_release' {
    assert "$(xsrc_find _dhcp_release)" is_file
}
@test 'more_src has _dhcp_release6' {
    assert "$(xsrc_find _dhcp_release6)" is_file
}
@test 'more_src has _dhcpdump' {
    assert "$(xsrc_find _dhcpdump)" is_file
}
@test 'more_src has _dhcping' {
    assert "$(xsrc_find _dhcping)" is_file
}
@test 'more_src has _dhcrelay' {
    assert "$(xsrc_find _dhcrelay)" is_file
}
@test 'more_src has _dhcrelay6' {
    assert "$(xsrc_find _dhcrelay6)" is_file
}
@test 'more_src has _di' {
    assert "$(xsrc_find _di)" is_file
}
@test 'more_src has _diatheke' {
    assert "$(xsrc_find _diatheke)" is_file
}
@test 'more_src has _dibbler-client' {
    assert "$(xsrc_find _dibbler-client)" is_file
}
@test 'more_src has _dibbler-relay' {
    assert "$(xsrc_find _dibbler-relay)" is_file
}
@test 'more_src has _dibbler-server' {
    assert "$(xsrc_find _dibbler-server)" is_file
}
@test 'more_src has _diesel' {
    assert "$(xsrc_find _diesel)" is_file
}
@test 'more_src has _diff-pdf' {
    assert "$(xsrc_find _diff-pdf)" is_file
}
@test 'more_src has _diff-so-fancy' {
    assert "$(xsrc_find _diff-so-fancy)" is_file
}
@test 'more_src has _diffimg' {
    assert "$(xsrc_find _diffimg)" is_file
}
@test 'more_src has _diffseq' {
    assert "$(xsrc_find _diffseq)" is_file
}
@test 'more_src has _diffsitter' {
    assert "$(xsrc_find _diffsitter)" is_file
}
@test 'more_src has _difftastic' {
    assert "$(xsrc_find _difftastic)" is_file
}
@test 'more_src has _dify' {
    assert "$(xsrc_find _dify)" is_file
}
@test 'more_src has _dify-cli' {
    assert "$(xsrc_find _dify-cli)" is_file
}
@test 'more_src has _digdag' {
    assert "$(xsrc_find _digdag)" is_file
}
@test 'more_src has _digger' {
    assert "$(xsrc_find _digger)" is_file
}
@test 'more_src has _digikam' {
    assert "$(xsrc_find _digikam)" is_file
}
@test 'more_src has _digikam-cli' {
    assert "$(xsrc_find _digikam-cli)" is_file
}
@test 'more_src has _dioxionary' {
    assert "$(xsrc_find _dioxionary)" is_file
}
@test 'more_src has _diraction' {
    assert "$(xsrc_find _diraction)" is_file
}
@test 'more_src has _direnv' {
    assert "$(xsrc_find _direnv)" is_file
}
@test 'more_src has _dirsearch' {
    assert "$(xsrc_find _dirsearch)" is_file
}
@test 'more_src has _diskard' {
    assert "$(xsrc_find _diskard)" is_file
}
@test 'more_src has _disko' {
    assert "$(xsrc_find _disko)" is_file
}
@test 'more_src has _diskonaut' {
    assert "$(xsrc_find _diskonaut)" is_file
}
@test 'more_src has _diskusage' {
    assert "$(xsrc_find _diskusage)" is_file
}
@test 'more_src has _dispatcher' {
    assert "$(xsrc_find _dispatcher)" is_file
}
@test 'more_src has _distcc' {
    assert "$(xsrc_find _distcc)" is_file
}
@test 'more_src has _distmat' {
    assert "$(xsrc_find _distmat)" is_file
}
@test 'more_src has _distro_info' {
    assert "$(xsrc_find _distro_info)" is_file
}
@test 'more_src has _distrobox' {
    assert "$(xsrc_find _distrobox)" is_file
}
@test 'more_src has _distrobox-assemble' {
    assert "$(xsrc_find _distrobox-assemble)" is_file
}
@test 'more_src has _distrobox-ephemeral' {
    assert "$(xsrc_find _distrobox-ephemeral)" is_file
}
@test 'more_src has _distrobox-generate-entry' {
    assert "$(xsrc_find _distrobox-generate-entry)" is_file
}
@test 'more_src has _distrobox-host-exec' {
    assert "$(xsrc_find _distrobox-host-exec)" is_file
}
@test 'more_src has _ditz' {
    assert "$(xsrc_find _ditz)" is_file
}
@test 'more_src has _diun' {
    assert "$(xsrc_find _diun)" is_file
}
@test 'more_src has _dive' {
    assert "$(xsrc_find _dive)" is_file
}
@test 'more_src has _djbdns' {
    assert "$(xsrc_find _djbdns)" is_file
}
@test 'more_src has _djpeg-turbo' {
    assert "$(xsrc_find _djpeg-turbo)" is_file
}
@test 'more_src has _dkimproxy' {
    assert "$(xsrc_find _dkimproxy)" is_file
}
@test 'more_src has _dkit' {
    assert "$(xsrc_find _dkit)" is_file
}
@test 'more_src has _dls' {
    assert "$(xsrc_find _dls)" is_file
}
@test 'more_src has _dlt' {
    assert "$(xsrc_find _dlt)" is_file
}
@test 'more_src has _dmtxquery' {
    assert "$(xsrc_find _dmtxquery)" is_file
}
@test 'more_src has _dmtxread' {
    assert "$(xsrc_find _dmtxread)" is_file
}
@test 'more_src has _dmtxwrite' {
    assert "$(xsrc_find _dmtxwrite)" is_file
}
@test 'more_src has _dmypy' {
    assert "$(xsrc_find _dmypy)" is_file
}
@test 'more_src has _dndmake' {
    assert "$(xsrc_find _dndmake)" is_file
}
@test 'more_src has _dnglab' {
    assert "$(xsrc_find _dnglab)" is_file
}
@test 'more_src has _dnote' {
    assert "$(xsrc_find _dnote)" is_file
}
@test 'more_src has _dns-sd' {
    assert "$(xsrc_find _dns-sd)" is_file
}
@test 'more_src has _dnscap' {
    assert "$(xsrc_find _dnscap)" is_file
}
@test 'more_src has _dnscontrol' {
    assert "$(xsrc_find _dnscontrol)" is_file
}
@test 'more_src has _dnsgen' {
    assert "$(xsrc_find _dnsgen)" is_file
}
@test 'more_src has _dnsproxy' {
    assert "$(xsrc_find _dnsproxy)" is_file
}
@test 'more_src has _dnsq' {
    assert "$(xsrc_find _dnsq)" is_file
}
@test 'more_src has _dnsqr' {
    assert "$(xsrc_find _dnsqr)" is_file
}
@test 'more_src has _dnstrace' {
    assert "$(xsrc_find _dnstrace)" is_file
}
@test 'more_src has _dnstwist' {
    assert "$(xsrc_find _dnstwist)" is_file
}
@test 'more_src has _dnsx' {
    assert "$(xsrc_find _dnsx)" is_file
}
@test 'more_src has _doc-comparator.py' {
    assert "$(xsrc_find _doc-comparator.py)" is_file
}
@test 'more_src has _docbook2dvi' {
    assert "$(xsrc_find _docbook2dvi)" is_file
}
@test 'more_src has _dochelp' {
    assert "$(xsrc_find _dochelp)" is_file
}
@test 'more_src has _docker-app' {
    assert "$(xsrc_find _docker-app)" is_file
}
@test 'more_src has _docker-compose-langserver' {
    assert "$(xsrc_find _docker-compose-langserver)" is_file
}
@test 'more_src has _docker-container-volumes' {
    assert "$(xsrc_find _docker-container-volumes)" is_file
}
@test 'more_src has _docker-credential-gcloud' {
    assert "$(xsrc_find _docker-credential-gcloud)" is_file
}
@test 'more_src has _docker-credential-osxkeychain' {
    assert "$(xsrc_find _docker-credential-osxkeychain)" is_file
}
@test 'more_src has _docker-machine-nfs' {
    assert "$(xsrc_find _docker-machine-nfs)" is_file
}
@test 'more_src has _docker-shell' {
    assert "$(xsrc_find _docker-shell)" is_file
}
@test 'more_src has _docker-slim' {
    assert "$(xsrc_find _docker-slim)" is_file
}
@test 'more_src has _dockeye' {
    assert "$(xsrc_find _dockeye)" is_file
}
@test 'more_src has _dockry' {
    assert "$(xsrc_find _dockry)" is_file
}
@test 'more_src has _dockutil' {
    assert "$(xsrc_find _dockutil)" is_file
}
@test 'more_src has _docmd' {
    assert "$(xsrc_find _docmd)" is_file
}
@test 'more_src has _doctl' {
    assert "$(xsrc_find _doctl)" is_file
}
@test 'more_src has _docusaurus-build' {
    assert "$(xsrc_find _docusaurus-build)" is_file
}
@test 'more_src has _docusaurus-examples' {
    assert "$(xsrc_find _docusaurus-examples)" is_file
}
@test 'more_src has _docusaurus-init' {
    assert "$(xsrc_find _docusaurus-init)" is_file
}
@test 'more_src has _docusaurus-publish' {
    assert "$(xsrc_find _docusaurus-publish)" is_file
}
@test 'more_src has _docusaurus-rename-version' {
    assert "$(xsrc_find _docusaurus-rename-version)" is_file
}
@test 'more_src has _docusaurus-start' {
    assert "$(xsrc_find _docusaurus-start)" is_file
}
@test 'more_src has _docusaurus-version' {
    assert "$(xsrc_find _docusaurus-version)" is_file
}
@test 'more_src has _docusaurus-write-translations' {
    assert "$(xsrc_find _docusaurus-write-translations)" is_file
}
@test 'more_src has _docuum' {
    assert "$(xsrc_find _docuum)" is_file
}
@test 'more_src has _dog' {
    assert "$(xsrc_find _dog)" is_file
}
@test 'more_src has _doggo' {
    assert "$(xsrc_find _doggo)" is_file
}
@test 'more_src has _dogshell' {
    assert "$(xsrc_find _dogshell)" is_file
}
@test 'more_src has _doitlive' {
    assert "$(xsrc_find _doitlive)" is_file
}
@test 'more_src has _dokku' {
    assert "$(xsrc_find _dokku)" is_file
}
@test 'more_src has _dokploy' {
    assert "$(xsrc_find _dokploy)" is_file
}
@test 'more_src has _dolphin-emu' {
    assert "$(xsrc_find _dolphin-emu)" is_file
}
@test 'more_src has _dolphin5' {
    assert "$(xsrc_find _dolphin5)" is_file
}
@test 'more_src has _dolt' {
    assert "$(xsrc_find _dolt)" is_file
}
@test 'more_src has _dolthub' {
    assert "$(xsrc_find _dolthub)" is_file
}
@test 'more_src has _don' {
    assert "$(xsrc_find _don)" is_file
}
@test 'more_src has _doom' {
    assert "$(xsrc_find _doom)" is_file
}
@test 'more_src has _doppler' {
    assert "$(xsrc_find _doppler)" is_file
}
@test 'more_src has _dora' {
    assert "$(xsrc_find _dora)" is_file
}
@test 'more_src has _dos.x' {
    assert "$(xsrc_find _dos.x)" is_file
}
@test 'more_src has _dosbox' {
    assert "$(xsrc_find _dosbox)" is_file
}
@test 'more_src has _dosemu' {
    assert "$(xsrc_find _dosemu)" is_file
}
@test 'more_src has _dot' {
    assert "$(xsrc_find _dot)" is_file
}
@test 'more_src has _dot2tex' {
    assert "$(xsrc_find _dot2tex)" is_file
}
@test 'more_src has _dotdrop.sh-completion.zsh' {
    assert "$(xsrc_find _dotdrop.sh-completion.zsh)" is_file
}
@test 'more_src has _dotenv-vault' {
    assert "$(xsrc_find _dotenv-vault)" is_file
}
@test 'more_src has _dotenvage' {
    assert "$(xsrc_find _dotenvage)" is_file
}
@test 'more_src has _dotenvx' {
    assert "$(xsrc_find _dotenvx)" is_file
}
@test 'more_src has _dotfiles' {
    assert "$(xsrc_find _dotfiles)" is_file
}
@test 'more_src has _dotm' {
    assert "$(xsrc_find _dotm)" is_file
}
@test 'more_src has _dotmatcher' {
    assert "$(xsrc_find _dotmatcher)" is_file
}
@test 'more_src has _dotnet-install.sh' {
    assert "$(xsrc_find _dotnet-install.sh)" is_file
}
@test 'more_src has _dotnet-suggest' {
    assert "$(xsrc_find _dotnet-suggest)" is_file
}
@test 'more_src has _dotpath' {
    assert "$(xsrc_find _dotpath)" is_file
}
@test 'more_src has _dots' {
    assert "$(xsrc_find _dots)" is_file
}
@test 'more_src has _dotstate' {
    assert "$(xsrc_find _dotstate)" is_file
}
@test 'more_src has _dotter' {
    assert "$(xsrc_find _dotter)" is_file
}
@test 'more_src has _dottup' {
    assert "$(xsrc_find _dottup)" is_file
}
@test 'more_src has _dovecot-lda' {
    assert "$(xsrc_find _dovecot-lda)" is_file
}
@test 'more_src has _dovecot-sysreport' {
    assert "$(xsrc_find _dovecot-sysreport)" is_file
}
@test 'more_src has _dprint' {
    assert "$(xsrc_find _dprint)" is_file
}
@test 'more_src has _dr' {
    assert "$(xsrc_find _dr)" is_file
}
@test 'more_src has _dracut-install' {
    assert "$(xsrc_find _dracut-install)" is_file
}
@test 'more_src has _dracut-ng' {
    assert "$(xsrc_find _dracut-ng)" is_file
}
@test 'more_src has _dracut-pre-pivot' {
    assert "$(xsrc_find _dracut-pre-pivot)" is_file
}
@test 'more_src has _dracut-uki' {
    assert "$(xsrc_find _dracut-uki)" is_file
}
@test 'more_src has _drafter' {
    assert "$(xsrc_find _drafter)" is_file
}
@test 'more_src has _dragonfly-cli' {
    assert "$(xsrc_find _dragonfly-cli)" is_file
}
@test 'more_src has _dragonplayer' {
    assert "$(xsrc_find _dragonplayer)" is_file
}
@test 'more_src has _drawpile' {
    assert "$(xsrc_find _drawpile)" is_file
}
@test 'more_src has _drbd-utils' {
    assert "$(xsrc_find _drbd-utils)" is_file
}
@test 'more_src has _dreg' {
    assert "$(xsrc_find _dreg)" is_file
}
@test 'more_src has _drfindid' {
    assert "$(xsrc_find _drfindid)" is_file
}
@test 'more_src has _drfindname' {
    assert "$(xsrc_find _drfindname)" is_file
}
@test 'more_src has _drfindresource' {
    assert "$(xsrc_find _drfindresource)" is_file
}
@test 'more_src has _drget' {
    assert "$(xsrc_find _drget)" is_file
}
@test 'more_src has _driftctl' {
    assert "$(xsrc_find _driftctl)" is_file
}
@test 'more_src has _drizzle-kit' {
    assert "$(xsrc_find _drizzle-kit)" is_file
}
@test 'more_src has _droid' {
    assert "$(xsrc_find _droid)" is_file
}
@test 'more_src has _droidcam-cli' {
    assert "$(xsrc_find _droidcam-cli)" is_file
}
@test 'more_src has _drone' {
    assert "$(xsrc_find _drone)" is_file
}
@test 'more_src has _dropbearconvert' {
    assert "$(xsrc_find _dropbearconvert)" is_file
}
@test 'more_src has _dropbearkey' {
    assert "$(xsrc_find _dropbearkey)" is_file
}
@test 'more_src has _drt-tools' {
    assert "$(xsrc_find _drt-tools)" is_file
}
@test 'more_src has _drtext' {
    assert "$(xsrc_find _drtext)" is_file
}
@test 'more_src has _drug' {
    assert "$(xsrc_find _drug)" is_file
}
@test 'more_src has _drush' {
    assert "$(xsrc_find _drush)" is_file
}
@test 'more_src has _drutil' {
    assert "$(xsrc_find _drutil)" is_file
}
@test 'more_src has _dry' {
    assert "$(xsrc_find _dry)" is_file
}
@test 'more_src has _ds-logpipe' {
    assert "$(xsrc_find _ds-logpipe)" is_file
}
@test 'more_src has _ds-replcheck' {
    assert "$(xsrc_find _ds-replcheck)" is_file
}
@test 'more_src has _dsc' {
    assert "$(xsrc_find _dsc)" is_file
}
@test 'more_src has _dscanner' {
    assert "$(xsrc_find _dscanner)" is_file
}
@test 'more_src has _dscl' {
    assert "$(xsrc_find _dscl)" is_file
}
@test 'more_src has _dsconf' {
    assert "$(xsrc_find _dsconf)" is_file
}
@test 'more_src has _dsctl' {
    assert "$(xsrc_find _dsctl)" is_file
}
@test 'more_src has _dsd' {
    assert "$(xsrc_find _dsd)" is_file
}
@test 'more_src has _dsidm' {
    assert "$(xsrc_find _dsidm)" is_file
}
@test 'more_src has _dsm' {
    assert "$(xsrc_find _dsm)" is_file
}
@test 'more_src has _dspam' {
    assert "$(xsrc_find _dspam)" is_file
}
@test 'more_src has _dspy-cli' {
    assert "$(xsrc_find _dspy-cli)" is_file
}
@test 'more_src has _dsq' {
    assert "$(xsrc_find _dsq)" is_file
}
@test 'more_src has _dssi-list-plugins' {
    assert "$(xsrc_find _dssi-list-plugins)" is_file
}
@test 'more_src has _dssi-server' {
    assert "$(xsrc_find _dssi-server)" is_file
}
@test 'more_src has _dssim' {
    assert "$(xsrc_find _dssim)" is_file
}
@test 'more_src has _dstack' {
    assert "$(xsrc_find _dstack)" is_file
}
@test 'more_src has _dsv' {
    assert "$(xsrc_find _dsv)" is_file
}
@test 'more_src has _dt-cli' {
    assert "$(xsrc_find _dt-cli)" is_file
}
@test 'more_src has _dtools' {
    assert "$(xsrc_find _dtools)" is_file
}
@test 'more_src has _dtplite' {
    assert "$(xsrc_find _dtplite)" is_file
}
@test 'more_src has _dts' {
    assert "$(xsrc_find _dts)" is_file
}
@test 'more_src has _dua' {
    assert "$(xsrc_find _dua)" is_file
}
@test 'more_src has _dualsensectl' {
    assert "$(xsrc_find _dualsensectl)" is_file
}
@test 'more_src has _duc' {
    assert "$(xsrc_find _duc)" is_file
}
@test 'more_src has _duca' {
    assert "$(xsrc_find _duca)" is_file
}
@test 'more_src has _duckdb' {
    assert "$(xsrc_find _duckdb)" is_file
}
@test 'more_src has _duf' {
    assert "$(xsrc_find _duf)" is_file
}
@test 'more_src has _dufs' {
    assert "$(xsrc_find _dufs)" is_file
}
@test 'more_src has _dug' {
    assert "$(xsrc_find _dug)" is_file
}
@test 'more_src has _dugout' {
    assert "$(xsrc_find _dugout)" is_file
}
@test 'more_src has _dumbpipe' {
    assert "$(xsrc_find _dumbpipe)" is_file
}
@test 'more_src has _dump1090' {
    assert "$(xsrc_find _dump1090)" is_file
}
@test 'more_src has _dund' {
    assert "$(xsrc_find _dund)" is_file
}
@test 'more_src has _dunstctl' {
    assert "$(xsrc_find _dunstctl)" is_file
}
@test 'more_src has _dupe-krill' {
    assert "$(xsrc_find _dupe-krill)" is_file
}
@test 'more_src has _duplicacy' {
    assert "$(xsrc_find _duplicacy)" is_file
}
@test 'more_src has _dura' {
    assert "$(xsrc_find _dura)" is_file
}
@test 'more_src has _dusage' {
    assert "$(xsrc_find _dusage)" is_file
}
@test 'more_src has _dut' {
    assert "$(xsrc_find _dut)" is_file
}
@test 'more_src has _dutree' {
    assert "$(xsrc_find _dutree)" is_file
}
@test 'more_src has _dv2dt' {
    assert "$(xsrc_find _dv2dt)" is_file
}
@test 'more_src has _dvi2bitmap' {
    assert "$(xsrc_find _dvi2bitmap)" is_file
}
@test 'more_src has _dvi2html' {
    assert "$(xsrc_find _dvi2html)" is_file
}
@test 'more_src has _dvi2tty-ng' {
    assert "$(xsrc_find _dvi2tty-ng)" is_file
}
@test 'more_src has _dvtm' {
    assert "$(xsrc_find _dvtm)" is_file
}
@test 'more_src has _dwarffortress' {
    assert "$(xsrc_find _dwarffortress)" is_file
}
@test 'more_src has _dwarfsck' {
    assert "$(xsrc_find _dwarfsck)" is_file
}
@test 'more_src has _dwarfsextract' {
    assert "$(xsrc_find _dwarfsextract)" is_file
}
@test 'more_src has _dwg2pdf' {
    assert "$(xsrc_find _dwg2pdf)" is_file
}
@test 'more_src has _dwginfo' {
    assert "$(xsrc_find _dwginfo)" is_file
}
@test 'more_src has _dwlb' {
    assert "$(xsrc_find _dwlb)" is_file
}
@test 'more_src has _dwmblocks' {
    assert "$(xsrc_find _dwmblocks)" is_file
}
@test 'more_src has _dyff' {
    assert "$(xsrc_find _dyff)" is_file
}
@test 'more_src has _dym' {
    assert "$(xsrc_find _dym)" is_file
}
@test 'more_src has _dynaconf' {
    assert "$(xsrc_find _dynaconf)" is_file
}
@test 'more_src has _dynatrace-agent' {
    assert "$(xsrc_find _dynatrace-agent)" is_file
}
@test 'more_src has _dynisland' {
    assert "$(xsrc_find _dynisland)" is_file
}
@test 'more_src has _dynomite' {
    assert "$(xsrc_find _dynomite)" is_file
}
@test 'more_src has _dzil' {
    assert "$(xsrc_find _dzil)" is_file
}
@test 'more_src has _e' {
    assert "$(xsrc_find _e)" is_file
}
@test 'more_src has _e2undel' {
    assert "$(xsrc_find _e2undel)" is_file
}
@test 'more_src has _earbuds' {
    assert "$(xsrc_find _earbuds)" is_file
}
@test 'more_src has _earlyoom' {
    assert "$(xsrc_find _earlyoom)" is_file
}
@test 'more_src has _earthly' {
    assert "$(xsrc_find _earthly)" is_file
}
@test 'more_src has _eask' {
    assert "$(xsrc_find _eask)" is_file
}
@test 'more_src has _eboard' {
    assert "$(xsrc_find _eboard)" is_file
}
@test 'more_src has _ebook-convert' {
    assert "$(xsrc_find _ebook-convert)" is_file
}
@test 'more_src has _ebook-meta' {
    assert "$(xsrc_find _ebook-meta)" is_file
}
@test 'more_src has _ec' {
    assert "$(xsrc_find _ec)" is_file
}
@test 'more_src has _ec_probe.in' {
    assert "$(xsrc_find _ec_probe.in)" is_file
}
@test 'more_src has _ecasignalview' {
    assert "$(xsrc_find _ecasignalview)" is_file
}
@test 'more_src has _ecawave' {
    assert "$(xsrc_find _ecawave)" is_file
}
@test 'more_src has _ecotokens' {
    assert "$(xsrc_find _ecotokens)" is_file
}
@test 'more_src has _ecpbram' {
    assert "$(xsrc_find _ecpbram)" is_file
}
@test 'more_src has _ecppack' {
    assert "$(xsrc_find _ecppack)" is_file
}
@test 'more_src has _ecpunpack' {
    assert "$(xsrc_find _ecpunpack)" is_file
}
@test 'more_src has _edac-ctl' {
    assert "$(xsrc_find _edac-ctl)" is_file
}
@test 'more_src has _edac-util' {
    assert "$(xsrc_find _edac-util)" is_file
}
@test 'more_src has _edactl' {
    assert "$(xsrc_find _edactl)" is_file
}
@test 'more_src has _edamdef' {
    assert "$(xsrc_find _edamdef)" is_file
}
@test 'more_src has _edamhasinput' {
    assert "$(xsrc_find _edamhasinput)" is_file
}
@test 'more_src has _edamhasoutput' {
    assert "$(xsrc_find _edamhasoutput)" is_file
}
@test 'more_src has _edamisformat' {
    assert "$(xsrc_find _edamisformat)" is_file
}
@test 'more_src has _edamisid' {
    assert "$(xsrc_find _edamisid)" is_file
}
@test 'more_src has _edamname' {
    assert "$(xsrc_find _edamname)" is_file
}
@test 'more_src has _edgedb' {
    assert "$(xsrc_find _edgedb)" is_file
}
@test 'more_src has _edgedb-server' {
    assert "$(xsrc_find _edgedb-server)" is_file
}
@test 'more_src has _edialign' {
    assert "$(xsrc_find _edialign)" is_file
}
@test 'more_src has _editorconfiger' {
    assert "$(xsrc_find _editorconfiger)" is_file
}
@test 'more_src has _editres' {
    assert "$(xsrc_find _editres)" is_file
}
@test 'more_src has _edje_decc' {
    assert "$(xsrc_find _edje_decc)" is_file
}
@test 'more_src has _edje_player' {
    assert "$(xsrc_find _edje_player)" is_file
}
@test 'more_src has _edje_recc' {
    assert "$(xsrc_find _edje_recc)" is_file
}
@test 'more_src has _edk2' {
    assert "$(xsrc_find _edk2)" is_file
}
@test 'more_src has _edk2-build' {
    assert "$(xsrc_find _edk2-build)" is_file
}
@test 'more_src has _edk2-tools' {
    assert "$(xsrc_find _edk2-tools)" is_file
}
@test 'more_src has _edtr' {
    assert "$(xsrc_find _edtr)" is_file
}
@test 'more_src has _eeschema' {
    assert "$(xsrc_find _eeschema)" is_file
}
@test 'more_src has _efetch' {
    assert "$(xsrc_find _efetch)" is_file
}
@test 'more_src has _efilter' {
    assert "$(xsrc_find _efilter)" is_file
}
@test 'more_src has _efitools' {
    assert "$(xsrc_find _efitools)" is_file
}
@test 'more_src has _efivar-tools' {
    assert "$(xsrc_find _efivar-tools)" is_file
}
@test 'more_src has _efivarfs-test' {
    assert "$(xsrc_find _efivarfs-test)" is_file
}
@test 'more_src has _egd' {
    assert "$(xsrc_find _egd)" is_file
}
@test 'more_src has _eget' {
    assert "$(xsrc_find _eget)" is_file
}
@test 'more_src has _ego' {
    assert "$(xsrc_find _ego)" is_file
}
@test 'more_src has _eigrpd' {
    assert "$(xsrc_find _eigrpd)" is_file
}
@test 'more_src has _einverted' {
    assert "$(xsrc_find _einverted)" is_file
}
@test 'more_src has _ekeyword' {
    assert "$(xsrc_find _ekeyword)" is_file
}
@test 'more_src has _eksctl' {
    assert "$(xsrc_find _eksctl)" is_file
}
@test 'more_src has _elan-init' {
    assert "$(xsrc_find _elan-init)" is_file
}
@test 'more_src has _elasticsearch-certgen' {
    assert "$(xsrc_find _elasticsearch-certgen)" is_file
}
@test 'more_src has _elasticsearch-certutil' {
    assert "$(xsrc_find _elasticsearch-certutil)" is_file
}
@test 'more_src has _elasticsearch-node' {
    assert "$(xsrc_find _elasticsearch-node)" is_file
}
@test 'more_src has _elasticsearch-service-tokens' {
    assert "$(xsrc_find _elasticsearch-service-tokens)" is_file
}
@test 'more_src has _elasticsearch-setup-passwords' {
    assert "$(xsrc_find _elasticsearch-setup-passwords)" is_file
}
@test 'more_src has _elasticsearch-syskeygen' {
    assert "$(xsrc_find _elasticsearch-syskeygen)" is_file
}
@test 'more_src has _elasticsearch-translog' {
    assert "$(xsrc_find _elasticsearch-translog)" is_file
}
@test 'more_src has _electric' {
    assert "$(xsrc_find _electric)" is_file
}
@test 'more_src has _electron-builder' {
    assert "$(xsrc_find _electron-builder)" is_file
}
@test 'more_src has _electron-forge-vscode-nix' {
    assert "$(xsrc_find _electron-forge-vscode-nix)" is_file
}
@test 'more_src has _electron-forge-vscode-win' {
    assert "$(xsrc_find _electron-forge-vscode-win)" is_file
}
@test 'more_src has _elevenlabs' {
    assert "$(xsrc_find _elevenlabs)" is_file
}
@test 'more_src has _elevenlabs-cli' {
    assert "$(xsrc_find _elevenlabs-cli)" is_file
}
@test 'more_src has _elf2nucleus' {
    assert "$(xsrc_find _elf2nucleus)" is_file
}
@test 'more_src has _elf2uf2-rs' {
    assert "$(xsrc_find _elf2uf2-rs)" is_file
}
@test 'more_src has _elilo' {
    assert "$(xsrc_find _elilo)" is_file
}
@test 'more_src has _elink' {
    assert "$(xsrc_find _elink)" is_file
}
@test 'more_src has _elles' {
    assert "$(xsrc_find _elles)" is_file
}
@test 'more_src has _elm' {
    assert "$(xsrc_find _elm)" is_file
}
@test 'more_src has _elm-new' {
    assert "$(xsrc_find _elm-new)" is_file
}
@test 'more_src has _elmerf90' {
    assert "$(xsrc_find _elmerf90)" is_file
}
@test 'more_src has _elmergrid' {
    assert "$(xsrc_find _elmergrid)" is_file
}
@test 'more_src has _elmergui' {
    assert "$(xsrc_find _elmergui)" is_file
}
@test 'more_src has _elmersolver' {
    assert "$(xsrc_find _elmersolver)" is_file
}
@test 'more_src has _elvis' {
    assert "$(xsrc_find _elvis)" is_file
}
@test 'more_src has _elvish' {
    assert "$(xsrc_find _elvish)" is_file
}
@test 'more_src has _emacs-nox' {
    assert "$(xsrc_find _emacs-nox)" is_file
}
@test 'more_src has _emacs-snapshot' {
    assert "$(xsrc_find _emacs-snapshot)" is_file
}
@test 'more_src has _emacs23' {
    assert "$(xsrc_find _emacs23)" is_file
}
@test 'more_src has _emacs24' {
    assert "$(xsrc_find _emacs24)" is_file
}
@test 'more_src has _emacs25' {
    assert "$(xsrc_find _emacs25)" is_file
}
@test 'more_src has _emacs26' {
    assert "$(xsrc_find _emacs26)" is_file
}
@test 'more_src has _emacs27' {
    assert "$(xsrc_find _emacs27)" is_file
}
@test 'more_src has _emacs28' {
    assert "$(xsrc_find _emacs28)" is_file
}
@test 'more_src has _emacs29' {
    assert "$(xsrc_find _emacs29)" is_file
}
@test 'more_src has _emacs30' {
    assert "$(xsrc_find _emacs30)" is_file
}
@test 'more_src has _embark' {
    assert "$(xsrc_find _embark)" is_file
}
@test 'more_src has _embossdata' {
    assert "$(xsrc_find _embossdata)" is_file
}
@test 'more_src has _embossversion' {
    assert "$(xsrc_find _embossversion)" is_file
}
@test 'more_src has _emcc' {
    assert "$(xsrc_find _emcc)" is_file
}
@test 'more_src has _emissary-ingress' {
    assert "$(xsrc_find _emissary-ingress)" is_file
}
@test 'more_src has _emlop' {
    assert "$(xsrc_find _emlop)" is_file
}
@test 'more_src has _emmylua_ls' {
    assert "$(xsrc_find _emmylua_ls)" is_file
}
@test 'more_src has _emojify' {
    assert "$(xsrc_find _emojify)" is_file
}
@test 'more_src has _emowse' {
    assert "$(xsrc_find _emowse)" is_file
}
@test 'more_src has _emptty' {
    assert "$(xsrc_find _emptty)" is_file
}
@test 'more_src has _enblend' {
    assert "$(xsrc_find _enblend)" is_file
}
@test 'more_src has _enc2xs' {
    assert "$(xsrc_find _enc2xs)" is_file
}
@test 'more_src has _endless-sky' {
    assert "$(xsrc_find _endless-sky)" is_file
}
@test 'more_src has _enfuse' {
    assert "$(xsrc_find _enfuse)" is_file
}
@test 'more_src has _engage' {
    assert "$(xsrc_find _engage)" is_file
}
@test 'more_src has _engine-pkcs11' {
    assert "$(xsrc_find _engine-pkcs11)" is_file
}
@test 'more_src has _engram' {
    assert "$(xsrc_find _engram)" is_file
}
@test 'more_src has _enlightenment' {
    assert "$(xsrc_find _enlightenment)" is_file
}
@test 'more_src has _enlightenment_backlight' {
    assert "$(xsrc_find _enlightenment_backlight)" is_file
}
@test 'more_src has _enlightenment_filemanager' {
    assert "$(xsrc_find _enlightenment_filemanager)" is_file
}
@test 'more_src has _enlightenment_imc' {
    assert "$(xsrc_find _enlightenment_imc)" is_file
}
@test 'more_src has _enlightenment_open' {
    assert "$(xsrc_find _enlightenment_open)" is_file
}
@test 'more_src has _enlightenment_remote' {
    assert "$(xsrc_find _enlightenment_remote)" is_file
}
@test 'more_src has _enlightenment_start' {
    assert "$(xsrc_find _enlightenment_start)" is_file
}
@test 'more_src has _enlightenment_thumb' {
    assert "$(xsrc_find _enlightenment_thumb)" is_file
}
@test 'more_src has _enseal' {
    assert "$(xsrc_find _enseal)" is_file
}
@test 'more_src has _ensembl-vep' {
    assert "$(xsrc_find _ensembl-vep)" is_file
}
@test 'more_src has _entangle' {
    assert "$(xsrc_find _entangle)" is_file
}
@test 'more_src has _entrance' {
    assert "$(xsrc_find _entrance)" is_file
}
@test 'more_src has _entret' {
    assert "$(xsrc_find _entret)" is_file
}
@test 'more_src has _entropy-broker' {
    assert "$(xsrc_find _entropy-broker)" is_file
}
@test 'more_src has _entropy-broker-client' {
    assert "$(xsrc_find _entropy-broker-client)" is_file
}
@test 'more_src has _envchain' {
    assert "$(xsrc_find _envchain)" is_file
}
@test 'more_src has _envcheck' {
    assert "$(xsrc_find _envcheck)" is_file
}
@test 'more_src has _envforge' {
    assert "$(xsrc_find _envforge)" is_file
}
@test 'more_src has _envio' {
    assert "$(xsrc_find _envio)" is_file
}
@test 'more_src has _envoke' {
    assert "$(xsrc_find _envoke)" is_file
}
@test 'more_src has _envq' {
    assert "$(xsrc_find _envq)" is_file
}
@test 'more_src has _envroll' {
    assert "$(xsrc_find _envroll)" is_file
}
@test 'more_src has _envuidgid' {
    assert "$(xsrc_find _envuidgid)" is_file
}
@test 'more_src has _envvault' {
    assert "$(xsrc_find _envvault)" is_file
}
@test 'more_src has _envy24control' {
    assert "$(xsrc_find _envy24control)" is_file
}
@test 'more_src has _eolas-util' {
    assert "$(xsrc_find _eolas-util)" is_file
}
@test 'more_src has _epestfind' {
    assert "$(xsrc_find _epestfind)" is_file
}
@test 'more_src has _epiphany-cli' {
    assert "$(xsrc_find _epiphany-cli)" is_file
}
@test 'more_src has _epoch2date' {
    assert "$(xsrc_find _epoch2date)" is_file
}
@test 'more_src has _epochal' {
    assert "$(xsrc_find _epochal)" is_file
}
@test 'more_src has _epost' {
    assert "$(xsrc_find _epost)" is_file
}
@test 'more_src has _eprimer3' {
    assert "$(xsrc_find _eprimer3)" is_file
}
@test 'more_src has _eprimer32' {
    assert "$(xsrc_find _eprimer32)" is_file
}
@test 'more_src has _eps2eps' {
    assert "$(xsrc_find _eps2eps)" is_file
}
@test 'more_src has _epsxe' {
    assert "$(xsrc_find _epsxe)" is_file
}
@test 'more_src has _epw.x' {
    assert "$(xsrc_find _epw.x)" is_file
}
@test 'more_src has _epy' {
    assert "$(xsrc_find _epy)" is_file
}
@test 'more_src has _equicktandem' {
    assert "$(xsrc_find _equicktandem)" is_file
}
@test 'more_src has _eralchemy' {
    assert "$(xsrc_find _eralchemy)" is_file
}
@test 'more_src has _erd' {
    assert "$(xsrc_find _erd)" is_file
}
@test 'more_src has _erdtree' {
    assert "$(xsrc_find _erdtree)" is_file
}
@test 'more_src has _erg' {
    assert "$(xsrc_find _erg)" is_file
}
@test 'more_src has _erlang' {
    assert "$(xsrc_find _erlang)" is_file
}
@test 'more_src has _esbuild' {
    assert "$(xsrc_find _esbuild)" is_file
}
@test 'more_src has _esc' {
    assert "$(xsrc_find _esc)" is_file
}
@test 'more_src has _esearch' {
    assert "$(xsrc_find _esearch)" is_file
}
@test 'more_src has _eskip' {
    assert "$(xsrc_find _eskip)" is_file
}
@test 'more_src has _esl-alimanip' {
    assert "$(xsrc_find _esl-alimanip)" is_file
}
@test 'more_src has _esl-alimask' {
    assert "$(xsrc_find _esl-alimask)" is_file
}
@test 'more_src has _esl-alimerge' {
    assert "$(xsrc_find _esl-alimerge)" is_file
}
@test 'more_src has _esl-alipid' {
    assert "$(xsrc_find _esl-alipid)" is_file
}
@test 'more_src has _esl-alistat' {
    assert "$(xsrc_find _esl-alistat)" is_file
}
@test 'more_src has _esl-compstruct' {
    assert "$(xsrc_find _esl-compstruct)" is_file
}
@test 'more_src has _esl-construct' {
    assert "$(xsrc_find _esl-construct)" is_file
}
@test 'more_src has _esl-mask' {
    assert "$(xsrc_find _esl-mask)" is_file
}
@test 'more_src has _esl-mixdchlet' {
    assert "$(xsrc_find _esl-mixdchlet)" is_file
}
@test 'more_src has _esl-reformat' {
    assert "$(xsrc_find _esl-reformat)" is_file
}
@test 'more_src has _esl-selectn' {
    assert "$(xsrc_find _esl-selectn)" is_file
}
@test 'more_src has _esl-seqrange' {
    assert "$(xsrc_find _esl-seqrange)" is_file
}
@test 'more_src has _esl-seqstat' {
    assert "$(xsrc_find _esl-seqstat)" is_file
}
@test 'more_src has _esl-sfetch' {
    assert "$(xsrc_find _esl-sfetch)" is_file
}
@test 'more_src has _esl-shuffle' {
    assert "$(xsrc_find _esl-shuffle)" is_file
}
@test 'more_src has _esl-translate' {
    assert "$(xsrc_find _esl-translate)" is_file
}
@test 'more_src has _eslint-config-inspector' {
    assert "$(xsrc_find _eslint-config-inspector)" is_file
}
@test 'more_src has _esp-idf' {
    assert "$(xsrc_find _esp-idf)" is_file
}
@test 'more_src has _espanso' {
    assert "$(xsrc_find _espanso)" is_file
}
@test 'more_src has _espeakup' {
    assert "$(xsrc_find _espeakup)" is_file
}
@test 'more_src has _espefuse' {
    assert "$(xsrc_find _espefuse)" is_file
}
@test 'more_src has _espflash' {
    assert "$(xsrc_find _espflash)" is_file
}
@test 'more_src has _esphome' {
    assert "$(xsrc_find _esphome)" is_file
}
@test 'more_src has _espsecure' {
    assert "$(xsrc_find _espsecure)" is_file
}
@test 'more_src has _est2genome' {
    assert "$(xsrc_find _est2genome)" is_file
}
@test 'more_src has _esummary' {
    assert "$(xsrc_find _esummary)" is_file
}
@test 'more_src has _et' {
    assert "$(xsrc_find _et)" is_file
}
@test 'more_src has _etandem' {
    assert "$(xsrc_find _etandem)" is_file
}
@test 'more_src has _etckeeper' {
    assert "$(xsrc_find _etckeeper)" is_file
}
@test 'more_src has _eternal-terminal' {
    assert "$(xsrc_find _eternal-terminal)" is_file
}
@test 'more_src has _ethminer' {
    assert "$(xsrc_find _ethminer)" is_file
}
@test 'more_src has _ets' {
    assert "$(xsrc_find _ets)" is_file
}
@test 'more_src has _ettercap-curses' {
    assert "$(xsrc_find _ettercap-curses)" is_file
}
@test 'more_src has _eugene' {
    assert "$(xsrc_find _eugene)" is_file
}
@test 'more_src has _evans' {
    assert "$(xsrc_find _evans)" is_file
}
@test 'more_src has _evemu-describe' {
    assert "$(xsrc_find _evemu-describe)" is_file
}
@test 'more_src has _evemu-event' {
    assert "$(xsrc_find _evemu-event)" is_file
}
@test 'more_src has _evemu-play' {
    assert "$(xsrc_find _evemu-play)" is_file
}
@test 'more_src has _evemu-record' {
    assert "$(xsrc_find _evemu-record)" is_file
}
@test 'more_src has _eventlircd' {
    assert "$(xsrc_find _eventlircd)" is_file
}
@test 'more_src has _evernote-backup' {
    assert "$(xsrc_find _evernote-backup)" is_file
}
@test 'more_src has _evil-winrm-py3' {
    assert "$(xsrc_find _evil-winrm-py3)" is_file
}
@test 'more_src has _evremap' {
    assert "$(xsrc_find _evremap)" is_file
}
@test 'more_src has _exaile' {
    assert "$(xsrc_find _exaile)" is_file
}
@test 'more_src has _example' {
    assert "$(xsrc_find _example)" is_file
}
@test 'more_src has _exceltex' {
    assert "$(xsrc_find _exceltex)" is_file
}
@test 'more_src has _exercism' {
    assert "$(xsrc_find _exercism)" is_file
}
@test 'more_src has _exifautotran' {
    assert "$(xsrc_find _exifautotran)" is_file
}
@test 'more_src has _exifgrep' {
    assert "$(xsrc_find _exifgrep)" is_file
}
@test 'more_src has _exifprobe' {
    assert "$(xsrc_find _exifprobe)" is_file
}
@test 'more_src has _exiftran' {
    assert "$(xsrc_find _exiftran)" is_file
}
@test 'more_src has _exim_convert4r4' {
    assert "$(xsrc_find _exim_convert4r4)" is_file
}
@test 'more_src has _exim_dumpdb' {
    assert "$(xsrc_find _exim_dumpdb)" is_file
}
@test 'more_src has _exim_fixdb' {
    assert "$(xsrc_find _exim_fixdb)" is_file
}
@test 'more_src has _exim_tidydb' {
    assert "$(xsrc_find _exim_tidydb)" is_file
}
@test 'more_src has _eximon' {
    assert "$(xsrc_find _eximon)" is_file
}
@test 'more_src has _exinext' {
    assert "$(xsrc_find _exinext)" is_file
}
@test 'more_src has _existence' {
    assert "$(xsrc_find _existence)" is_file
}
@test 'more_src has _exiwhat' {
    assert "$(xsrc_find _exiwhat)" is_file
}
@test 'more_src has _exo' {
    assert "$(xsrc_find _exo)" is_file
}
@test 'more_src has _expect' {
    assert "$(xsrc_find _expect)" is_file
}
@test 'more_src has _expenses' {
    assert "$(xsrc_find _expenses)" is_file
}
@test 'more_src has _explain-my-error' {
    assert "$(xsrc_find _explain-my-error)" is_file
}
@test 'more_src has _explainthisrepo' {
    assert "$(xsrc_find _explainthisrepo)" is_file
}
@test 'more_src has _expo-internal' {
    assert "$(xsrc_find _expo-internal)" is_file
}
@test 'more_src has _expressvpn' {
    assert "$(xsrc_find _expressvpn)" is_file
}
@test 'more_src has _ext4magic' {
    assert "$(xsrc_find _ext4magic)" is_file
}
@test 'more_src has _external-dns' {
    assert "$(xsrc_find _external-dns)" is_file
}
@test 'more_src has _external-secrets' {
    assert "$(xsrc_find _external-secrets)" is_file
}
@test 'more_src has _extlinux-update' {
    assert "$(xsrc_find _extlinux-update)" is_file
}
@test 'more_src has _extractalign' {
    assert "$(xsrc_find _extractalign)" is_file
}
@test 'more_src has _extractfeat' {
    assert "$(xsrc_find _extractfeat)" is_file
}
@test 'more_src has _extractseq' {
    assert "$(xsrc_find _extractseq)" is_file
}
@test 'more_src has _extremetuxracer' {
    assert "$(xsrc_find _extremetuxracer)" is_file
}
@test 'more_src has _ezgdal' {
    assert "$(xsrc_find _ezgdal)" is_file
}
@test 'more_src has _ezmlm' {
    assert "$(xsrc_find _ezmlm)" is_file
}
@test 'more_src has _ezmlm-archive' {
    assert "$(xsrc_find _ezmlm-archive)" is_file
}
@test 'more_src has _ezmlm-clean' {
    assert "$(xsrc_find _ezmlm-clean)" is_file
}
@test 'more_src has _ezmlm-get' {
    assert "$(xsrc_find _ezmlm-get)" is_file
}
@test 'more_src has _ezmlm-issubn' {
    assert "$(xsrc_find _ezmlm-issubn)" is_file
}
@test 'more_src has _ezmlm-list' {
    assert "$(xsrc_find _ezmlm-list)" is_file
}
@test 'more_src has _ezmlm-make' {
    assert "$(xsrc_find _ezmlm-make)" is_file
}
@test 'more_src has _ezmlm-manage' {
    assert "$(xsrc_find _ezmlm-manage)" is_file
}
@test 'more_src has _ezmlm-return' {
    assert "$(xsrc_find _ezmlm-return)" is_file
}
@test 'more_src has _ezmlm-send' {
    assert "$(xsrc_find _ezmlm-send)" is_file
}
@test 'more_src has _ezmlm-store' {
    assert "$(xsrc_find _ezmlm-store)" is_file
}
@test 'more_src has _ezmlm-sub' {
    assert "$(xsrc_find _ezmlm-sub)" is_file
}
@test 'more_src has _ezmlm-unsub' {
    assert "$(xsrc_find _ezmlm-unsub)" is_file
}
@test 'more_src has _f-f-f-find.sh' {
    assert "$(xsrc_find _f-f-f-find.sh)" is_file
}
@test 'more_src has _f2' {
    assert "$(xsrc_find _f2)" is_file
}
@test 'more_src has _f3' {
    assert "$(xsrc_find _f3)" is_file
}
@test 'more_src has _f3brew' {
    assert "$(xsrc_find _f3brew)" is_file
}
@test 'more_src has _f3d' {
    assert "$(xsrc_find _f3d)" is_file
}
@test 'more_src has _f3fix' {
    assert "$(xsrc_find _f3fix)" is_file
}
@test 'more_src has _f3probe' {
    assert "$(xsrc_find _f3probe)" is_file
}
@test 'more_src has _f3read' {
    assert "$(xsrc_find _f3read)" is_file
}
@test 'more_src has _f3write' {
    assert "$(xsrc_find _f3write)" is_file
}
@test 'more_src has _faas-cli' {
    assert "$(xsrc_find _faas-cli)" is_file
}
@test 'more_src has _faasd' {
    assert "$(xsrc_find _faasd)" is_file
}
@test 'more_src has _factorix.zsh' {
    assert "$(xsrc_find _factorix.zsh)" is_file
}
@test 'more_src has _factory' {
    assert "$(xsrc_find _factory)" is_file
}
@test 'more_src has _factory-cli' {
    assert "$(xsrc_find _factory-cli)" is_file
}
@test 'more_src has _fail2ban-client' {
    assert "$(xsrc_find _fail2ban-client)" is_file
}
@test 'more_src has _fairymax' {
    assert "$(xsrc_find _fairymax)" is_file
}
@test 'more_src has _fakedata' {
    assert "$(xsrc_find _fakedata)" is_file
}
@test 'more_src has _fal' {
    assert "$(xsrc_find _fal)" is_file
}
@test 'more_src has _falco' {
    assert "$(xsrc_find _falco)" is_file
}
@test 'more_src has _falco-driver-loader' {
    assert "$(xsrc_find _falco-driver-loader)" is_file
}
@test 'more_src has _falco-exporter' {
    assert "$(xsrc_find _falco-exporter)" is_file
}
@test 'more_src has _falconctl' {
    assert "$(xsrc_find _falconctl)" is_file
}
@test 'more_src has _falkon-cli' {
    assert "$(xsrc_find _falkon-cli)" is_file
}
@test 'more_src has _falkor' {
    assert "$(xsrc_find _falkor)" is_file
}
@test 'more_src has _fapolicyd' {
    assert "$(xsrc_find _fapolicyd)" is_file
}
@test 'more_src has _farv' {
    assert "$(xsrc_find _farv)" is_file
}
@test 'more_src has _fasm' {
    assert "$(xsrc_find _fasm)" is_file
}
@test 'more_src has _fasm2' {
    assert "$(xsrc_find _fasm2)" is_file
}
@test 'more_src has _fasmg' {
    assert "$(xsrc_find _fasmg)" is_file
}
@test 'more_src has _fast-theme' {
    assert "$(xsrc_find _fast-theme)" is_file
}
@test 'more_src has _fastanime' {
    assert "$(xsrc_find _fastanime)" is_file
}
@test 'more_src has _fastapi-cli' {
    assert "$(xsrc_find _fastapi-cli)" is_file
}
@test 'more_src has _fastbootd' {
    assert "$(xsrc_find _fastbootd)" is_file
}
@test 'more_src has _fastfetch' {
    assert "$(xsrc_find _fastfetch)" is_file
}
@test 'more_src has _fastgron' {
    assert "$(xsrc_find _fastgron)" is_file
}
@test 'more_src has _fastify-app' {
    assert "$(xsrc_find _fastify-app)" is_file
}

@test 'more_src has _fastmod' {
    assert "$(xsrc_find _fastmod)" is_file
}
@test 'more_src has _fastqc' {
    assert "$(xsrc_find _fastqc)" is_file
}
@test 'more_src has _fasttree' {
    assert "$(xsrc_find _fasttree)" is_file
}
@test 'more_src has _fasttreemp' {
    assert "$(xsrc_find _fasttreemp)" is_file
}
@test 'more_src has _fatbinary' {
    assert "$(xsrc_find _fatbinary)" is_file
}
@test 'more_src has _fatpack' {
    assert "$(xsrc_find _fatpack)" is_file
}
@test 'more_src has _fatresize' {
    assert "$(xsrc_find _fatresize)" is_file
}
@test 'more_src has _faust' {
    assert "$(xsrc_find _faust)" is_file
}
@test 'more_src has _fava' {
    assert "$(xsrc_find _fava)" is_file
}
@test 'more_src has _favico' {
    assert "$(xsrc_find _favico)" is_file
}
@test 'more_src has _fbcat' {
    assert "$(xsrc_find _fbcat)" is_file
}
@test 'more_src has _fbd' {
    assert "$(xsrc_find _fbd)" is_file
}
@test 'more_src has _fbgrab' {
    assert "$(xsrc_find _fbgrab)" is_file
}
@test 'more_src has _fblog' {
    assert "$(xsrc_find _fblog)" is_file
}
@test 'more_src has _fbreader' {
    assert "$(xsrc_find _fbreader)" is_file
}
@test 'more_src has _fbrun' {
    assert "$(xsrc_find _fbrun)" is_file
}
@test 'more_src has _fbsetbg' {
    assert "$(xsrc_find _fbsetbg)" is_file
}
@test 'more_src has _fbsetroot' {
    assert "$(xsrc_find _fbsetroot)" is_file
}
@test 'more_src has _fcitx-skk' {
    assert "$(xsrc_find _fcitx-skk)" is_file
}
@test 'more_src has _fcitx5-anthy' {
    assert "$(xsrc_find _fcitx5-anthy)" is_file
}
@test 'more_src has _fcitx5-config-qt' {
    assert "$(xsrc_find _fcitx5-config-qt)" is_file
}
@test 'more_src has _fcitx5-configtool' {
    assert "$(xsrc_find _fcitx5-configtool)" is_file
}
@test 'more_src has _fcitx5-diagnose' {
    assert "$(xsrc_find _fcitx5-diagnose)" is_file
}
@test 'more_src has _fcitx5-mozc' {
    assert "$(xsrc_find _fcitx5-mozc)" is_file
}
@test 'more_src has _fcitx5-pinyin' {
    assert "$(xsrc_find _fcitx5-pinyin)" is_file
}
@test 'more_src has _fcitx5-quickphrase-editor' {
    assert "$(xsrc_find _fcitx5-quickphrase-editor)" is_file
}
@test 'more_src has _fcitx5-rime' {
    assert "$(xsrc_find _fcitx5-rime)" is_file
}
@test 'more_src has _fcitx5-skk' {
    assert "$(xsrc_find _fcitx5-skk)" is_file
}
@test 'more_src has _fcitx5-table' {
    assert "$(xsrc_find _fcitx5-table)" is_file
}
@test 'more_src has _fcitx5-unicode' {
    assert "$(xsrc_find _fcitx5-unicode)" is_file
}
@test 'more_src has _fclones' {
    assert "$(xsrc_find _fclones)" is_file
}
@test 'more_src has _fcoeplumb' {
    assert "$(xsrc_find _fcoeplumb)" is_file
}
@test 'more_src has _fcp' {
    assert "$(xsrc_find _fcp)" is_file
}
@test 'more_src has _fdtgrep' {
    assert "$(xsrc_find _fdtgrep)" is_file
}
@test 'more_src has _featcopy' {
    assert "$(xsrc_find _featcopy)" is_file
}
@test 'more_src has _featmerge' {
    assert "$(xsrc_find _featmerge)" is_file
}
@test 'more_src has _featreport' {
    assert "$(xsrc_find _featreport)" is_file
}
@test 'more_src has _featureCounts' {
    assert "$(xsrc_find _featureCounts)" is_file
}
@test 'more_src has _featureform' {
    assert "$(xsrc_find _featureform)" is_file
}
@test 'more_src has _fence' {
    assert "$(xsrc_find _fence)" is_file
}
@test 'more_src has _fend' {
    assert "$(xsrc_find _fend)" is_file
}
@test 'more_src has _fenics' {
    assert "$(xsrc_find _fenics)" is_file
}
@test 'more_src has _fennel' {
    assert "$(xsrc_find _fennel)" is_file
}
@test 'more_src has _ferium' {
    assert "$(xsrc_find _ferium)" is_file
}
@test 'more_src has _feroxbuster' {
    assert "$(xsrc_find _feroxbuster)" is_file
}
@test 'more_src has _fetchit' {
    assert "$(xsrc_find _fetchit)" is_file
}
@test 'more_src has _fez.zsh' {
    assert "$(xsrc_find _fez.zsh)" is_file
}
@test 'more_src has _ff2mpv' {
    assert "$(xsrc_find _ff2mpv)" is_file
}
@test 'more_src has _ffcast' {
    assert "$(xsrc_find _ffcast)" is_file
}
@test 'more_src has _ffmpeg-normalize' {
    assert "$(xsrc_find _ffmpeg-normalize)" is_file
}
@test 'more_src has _ffmpeg2theora' {
    assert "$(xsrc_find _ffmpeg2theora)" is_file
}
@test 'more_src has _ffsend' {
    assert "$(xsrc_find _ffsend)" is_file
}
@test 'more_src has _ffuf' {
    assert "$(xsrc_find _ffuf)" is_file
}
@test 'more_src has _fgfs' {
    assert "$(xsrc_find _fgfs)" is_file
}
@test 'more_src has _fhex' {
    assert "$(xsrc_find _fhex)" is_file
}
@test 'more_src has _fi_info' {
    assert "$(xsrc_find _fi_info)" is_file
}
@test 'more_src has _fi_pingpong' {
    assert "$(xsrc_find _fi_pingpong)" is_file
}
@test 'more_src has _fi_strerror' {
    assert "$(xsrc_find _fi_strerror)" is_file
}
@test 'more_src has _fibertools-rs' {
    assert "$(xsrc_find _fibertools-rs)" is_file
}
@test 'more_src has _fickling' {
    assert "$(xsrc_find _fickling)" is_file
}
@test 'more_src has _fig2ps2tex' {
    assert "$(xsrc_find _fig2ps2tex)" is_file
}
@test 'more_src has _fig2sxd' {
    assert "$(xsrc_find _fig2sxd)" is_file
}
@test 'more_src has _filebot' {
    assert "$(xsrc_find _filebot)" is_file
}
@test 'more_src has _filemon' {
    assert "$(xsrc_find _filemon)" is_file
}
@test 'more_src has _filite' {
    assert "$(xsrc_find _filite)" is_file
}
@test 'more_src has _finalfrontier' {
    assert "$(xsrc_find _finalfrontier)" is_file
}
@test 'more_src has _finalfusion' {
    assert "$(xsrc_find _finalfusion)" is_file
}
@test 'more_src has _find_cruft' {
    assert "$(xsrc_find _find_cruft)" is_file
}
@test 'more_src has _findkm' {
    assert "$(xsrc_find _findkm)" is_file
}
@test 'more_src has _findomain' {
    assert "$(xsrc_find _findomain)" is_file
}
@test 'more_src has _findrule' {
    assert "$(xsrc_find _findrule)" is_file
}
@test 'more_src has _findup' {
    assert "$(xsrc_find _findup)" is_file
}
@test 'more_src has _fio' {
    assert "$(xsrc_find _fio)" is_file
}
@test 'more_src has _firebase' {
    assert "$(xsrc_find _firebase)" is_file
}
@test 'more_src has _firecracker' {
    assert "$(xsrc_find _firecracker)" is_file
}
@test 'more_src has _firecrawl' {
    assert "$(xsrc_find _firecrawl)" is_file
}
@test 'more_src has _firecrawl-cli' {
    assert "$(xsrc_find _firecrawl-cli)" is_file
}
@test 'more_src has _firefoxpwa' {
    assert "$(xsrc_find _firefoxpwa)" is_file
}
@test 'more_src has _firmware-test-suite' {
    assert "$(xsrc_find _firmware-test-suite)" is_file
}
@test 'more_src has _firmware-update' {
    assert "$(xsrc_find _firmware-update)" is_file
}
@test 'more_src has _fish-key-reader' {
    assert "$(xsrc_find _fish-key-reader)" is_file
}
@test 'more_src has _fish-pager' {
    assert "$(xsrc_find _fish-pager)" is_file
}
@test 'more_src has _fish-update-completions' {
    assert "$(xsrc_find _fish-update-completions)" is_file
}
@test 'more_src has _fisher' {
    assert "$(xsrc_find _fisher)" is_file
}
@test 'more_src has _fission' {
    assert "$(xsrc_find _fission)" is_file
}
@test 'more_src has _fjord' {
    assert "$(xsrc_find _fjord)" is_file
}
@test 'more_src has _fk.zsh' {
    assert "$(xsrc_find _fk.zsh)" is_file
}
@test 'more_src has _flake-edit' {
    assert "$(xsrc_find _flake-edit)" is_file
}
@test 'more_src has _flamegraph' {
    assert "$(xsrc_find _flamegraph)" is_file
}
@test 'more_src has _flamelens' {
    assert "$(xsrc_find _flamelens)" is_file
}
@test 'more_src has _flameshot' {
    assert "$(xsrc_find _flameshot)" is_file
}
@test 'more_src has _flare' {
    assert "$(xsrc_find _flare)" is_file
}
@test 'more_src has _flarq' {
    assert "$(xsrc_find _flarq)" is_file
}
@test 'more_src has _flashprog' {
    assert "$(xsrc_find _flashprog)" is_file
}
@test 'more_src has _flashrom-config' {
    assert "$(xsrc_find _flashrom-config)" is_file
}
@test 'more_src has _flashrom-stable' {
    assert "$(xsrc_find _flashrom-stable)" is_file
}
@test 'more_src has _flashutil' {
    assert "$(xsrc_find _flashutil)" is_file
}
@test 'more_src has _flatc' {
    assert "$(xsrc_find _flatc)" is_file
}
@test 'more_src has _flavours' {
    assert "$(xsrc_find _flavours)" is_file
}
@test 'more_src has _fldigi' {
    assert "$(xsrc_find _fldigi)" is_file
}
@test 'more_src has _fleche' {
    assert "$(xsrc_find _fleche)" is_file
}
@test 'more_src has _flet' {
    assert "$(xsrc_find _flet)" is_file
}
@test 'more_src has _flexget' {
    assert "$(xsrc_find _flexget)" is_file
}
@test 'more_src has _flight-network-planner' {
    assert "$(xsrc_find _flight-network-planner)" is_file
}
@test 'more_src has _flightgear' {
    assert "$(xsrc_find _flightgear)" is_file
}
@test 'more_src has _flintrock' {
    assert "$(xsrc_find _flintrock)" is_file
}
@test 'more_src has _flipt' {
    assert "$(xsrc_find _flipt)" is_file
}
@test 'more_src has _flit-core' {
    assert "$(xsrc_find _flit-core)" is_file
}
@test 'more_src has _flk' {
    assert "$(xsrc_find _flk)" is_file
}
@test 'more_src has _flmsg' {
    assert "$(xsrc_find _flmsg)" is_file
}
@test 'more_src has _florestad' {
    assert "$(xsrc_find _florestad)" is_file
}
@test 'more_src has _floss' {
    assert "$(xsrc_find _floss)" is_file
}
@test 'more_src has _flowd' {
    assert "$(xsrc_find _flowd)" is_file
}
@test 'more_src has _flowise' {
    assert "$(xsrc_find _flowise)" is_file
}
@test 'more_src has _flowise-cli' {
    assert "$(xsrc_find _flowise-cli)" is_file
}
@test 'more_src has _flrig' {
    assert "$(xsrc_find _flrig)" is_file
}
@test 'more_src has _fluentbit' {
    assert "$(xsrc_find _fluentbit)" is_file
}
@test 'more_src has _flumina' {
    assert "$(xsrc_find _flumina)" is_file
}
@test 'more_src has _flux' {
    assert "$(xsrc_find _flux)" is_file
}
@test 'more_src has _fluxbox-generate_menu' {
    assert "$(xsrc_find _fluxbox-generate_menu)" is_file
}
@test 'more_src has _fluxbox-remote' {
    assert "$(xsrc_find _fluxbox-remote)" is_file
}
@test 'more_src has _fluxbox-update_configs' {
    assert "$(xsrc_find _fluxbox-update_configs)" is_file
}
@test 'more_src has _fluxctl' {
    assert "$(xsrc_find _fluxctl)" is_file
}
@test 'more_src has _flwm' {
    assert "$(xsrc_find _flwm)" is_file
}
@test 'more_src has _flxify' {
    assert "$(xsrc_find _flxify)" is_file
}
@test 'more_src has _flyctl' {
    assert "$(xsrc_find _flyctl)" is_file
}
@test 'more_src has _flye' {
    assert "$(xsrc_find _flye)" is_file
}
@test 'more_src has _flyte-cli' {
    assert "$(xsrc_find _flyte-cli)" is_file
}
@test 'more_src has _flyteadmin' {
    assert "$(xsrc_find _flyteadmin)" is_file
}
@test 'more_src has _flytepropeller' {
    assert "$(xsrc_find _flytepropeller)" is_file
}
@test 'more_src has _flyway' {
    assert "$(xsrc_find _flyway)" is_file
}
@test 'more_src has _fmit' {
    assert "$(xsrc_find _fmit)" is_file
}
@test 'more_src has _fmtdump' {
    assert "$(xsrc_find _fmtdump)" is_file
}
@test 'more_src has _fnm' {
    assert "$(xsrc_find _fnm)" is_file
}
@test 'more_src has _fnott' {
    assert "$(xsrc_find _fnott)" is_file
}
@test 'more_src has _fnox' {
    assert "$(xsrc_find _fnox)" is_file
}
@test 'more_src has _foamJob' {
    assert "$(xsrc_find _foamJob)" is_file
}
@test 'more_src has _foamLog' {
    assert "$(xsrc_find _foamLog)" is_file
}
@test 'more_src has _focuswriter' {
    assert "$(xsrc_find _focuswriter)" is_file
}
@test 'more_src has _folderify' {
    assert "$(xsrc_find _folderify)" is_file
}
@test 'more_src has _fontinst' {
    assert "$(xsrc_find _fontinst)" is_file
}
@test 'more_src has _fontmatrix' {
    assert "$(xsrc_find _fontmatrix)" is_file
}
@test 'more_src has _fonttools' {
    assert "$(xsrc_find _fonttools)" is_file
}
@test 'more_src has _foomatic-cleanupdrivers' {
    assert "$(xsrc_find _foomatic-cleanupdrivers)" is_file
}
@test 'more_src has _foot' {
    assert "$(xsrc_find _foot)" is_file
}
@test 'more_src has _foreman' {
    assert "$(xsrc_find _foreman)" is_file
}
@test 'more_src has _foreman-installer' {
    assert "$(xsrc_find _foreman-installer)" is_file
}
@test 'more_src has _fork' {
    assert "$(xsrc_find _fork)" is_file
}
@test 'more_src has _forth' {
    assert "$(xsrc_find _forth)" is_file
}
@test 'more_src has _fortio' {
    assert "$(xsrc_find _fortio)" is_file
}
@test 'more_src has _fortune-kind' {
    assert "$(xsrc_find _fortune-kind)" is_file
}
@test 'more_src has _fossa' {
    assert "$(xsrc_find _fossa)" is_file
}
@test 'more_src has _fossil' {
    assert "$(xsrc_find _fossil)" is_file
}
@test 'more_src has _foxtrotgps' {
    assert "$(xsrc_find _foxtrotgps)" is_file
}
@test 'more_src has _fpm' {
    assert "$(xsrc_find _fpm)" is_file
}
@test 'more_src has _fpp' {
    assert "$(xsrc_find _fpp)" is_file
}
@test 'more_src has _fq' {
    assert "$(xsrc_find _fq)" is_file
}
@test 'more_src has _frankenphp' {
    assert "$(xsrc_find _frankenphp)" is_file
}
@test 'more_src has _freak' {
    assert "$(xsrc_find _freak)" is_file
}
@test 'more_src has _freckles' {
    assert "$(xsrc_find _freckles)" is_file
}
@test 'more_src has _freebuff' {
    assert "$(xsrc_find _freebuff)" is_file
}
@test 'more_src has _freecad-cli' {
    assert "$(xsrc_find _freecad-cli)" is_file
}
@test 'more_src has _freecad-cmd' {
    assert "$(xsrc_find _freecad-cmd)" is_file
}
@test 'more_src has _freecad-daily' {
    assert "$(xsrc_find _freecad-daily)" is_file
}
@test 'more_src has _freecadcmd' {
    assert "$(xsrc_find _freecadcmd)" is_file
}
@test 'more_src has _freecadqt' {
    assert "$(xsrc_find _freecadqt)" is_file
}
@test 'more_src has _freeciv' {
    assert "$(xsrc_find _freeciv)" is_file
}
@test 'more_src has _freeciv-client' {
    assert "$(xsrc_find _freeciv-client)" is_file
}
@test 'more_src has _freedm' {
    assert "$(xsrc_find _freedm)" is_file
}
@test 'more_src has _freedoom1' {
    assert "$(xsrc_find _freedoom1)" is_file
}
@test 'more_src has _freedoom2' {
    assert "$(xsrc_find _freedoom2)" is_file
}
@test 'more_src has _freelance' {
    assert "$(xsrc_find _freelance)" is_file
}
@test 'more_src has _freeorion' {
    assert "$(xsrc_find _freeorion)" is_file
}
@test 'more_src has _freerapid' {
    assert "$(xsrc_find _freerapid)" is_file
}
@test 'more_src has _freerdp' {
    assert "$(xsrc_find _freerdp)" is_file
}
@test 'more_src has _freeswitch' {
    assert "$(xsrc_find _freeswitch)" is_file
}
@test 'more_src has _freezer-api' {
    assert "$(xsrc_find _freezer-api)" is_file
}
@test 'more_src has _freezer-manage' {
    assert "$(xsrc_find _freezer-manage)" is_file
}
@test 'more_src has _freezer-status' {
    assert "$(xsrc_find _freezer-status)" is_file
}
@test 'more_src has _freshclam-config' {
    assert "$(xsrc_find _freshclam-config)" is_file
}
@test 'more_src has _freshclam-cron' {
    assert "$(xsrc_find _freshclam-cron)" is_file
}
@test 'more_src has _frets-on-fire' {
    assert "$(xsrc_find _frets-on-fire)" is_file
}
@test 'more_src has _frg' {
    assert "$(xsrc_find _frg)" is_file
}
@test 'more_src has _fricas' {
    assert "$(xsrc_find _fricas)" is_file
}
@test 'more_src has _frontail' {
    assert "$(xsrc_find _frontail)" is_file
}
@test 'more_src has _frontend' {
    assert "$(xsrc_find _frontend)" is_file
}
@test 'more_src has _frozen-bubble' {
    assert "$(xsrc_find _frozen-bubble)" is_file
}
@test 'more_src has _frum' {
    assert "$(xsrc_find _frum)" is_file
}
@test 'more_src has _fs-uae' {
    assert "$(xsrc_find _fs-uae)" is_file
}
@test 'more_src has _fs-uae-launcher' {
    assert "$(xsrc_find _fs-uae-launcher)" is_file
}
@test 'more_src has _fsck.btrfs' {
    assert "$(xsrc_find _fsck.btrfs)" is_file
}
@test 'more_src has _fselect' {
    assert "$(xsrc_find _fselect)" is_file
}
@test 'more_src has _fstar.exe' {
    assert "$(xsrc_find _fstar.exe)" is_file
}
@test 'more_src has _fsverity' {
    assert "$(xsrc_find _fsverity)" is_file
}
@test 'more_src has _fswebcam' {
    assert "$(xsrc_find _fswebcam)" is_file
}
@test 'more_src has _ftdv' {
    assert "$(xsrc_find _ftdv)" is_file
}
@test 'more_src has _fteqw' {
    assert "$(xsrc_find _fteqw)" is_file
}
@test 'more_src has _fuck' {
    assert "$(xsrc_find _fuck)" is_file
}
@test 'more_src has _fulla' {
    assert "$(xsrc_find _fulla)" is_file
}
@test 'more_src has _func' {
    assert "$(xsrc_find _func)" is_file
}
@test 'more_src has _funchelp' {
    assert "$(xsrc_find _funchelp)" is_file
}
@test 'more_src has _funzip' {
    assert "$(xsrc_find _funzip)" is_file
}
@test 'more_src has _fuzzel' {
    assert "$(xsrc_find _fuzzel)" is_file
}
@test 'more_src has _fuzznuc' {
    assert "$(xsrc_find _fuzznuc)" is_file
}
@test 'more_src has _fuzzpro' {
    assert "$(xsrc_find _fuzzpro)" is_file
}
@test 'more_src has _fuzztran' {
    assert "$(xsrc_find _fuzztran)" is_file
}
@test 'more_src has _fvm' {
    assert "$(xsrc_find _fvm)" is_file
}
@test 'more_src has _fvwm' {
    assert "$(xsrc_find _fvwm)" is_file
}
@test 'more_src has _fwbuilder' {
    assert "$(xsrc_find _fwbuilder)" is_file
}
@test 'more_src has _fwupd-cli' {
    assert "$(xsrc_find _fwupd-cli)" is_file
}
@test 'more_src has _fwupd-helpers' {
    assert "$(xsrc_find _fwupd-helpers)" is_file
}
@test 'more_src has _fwupd-refresh' {
    assert "$(xsrc_find _fwupd-refresh)" is_file
}
@test 'more_src has _fwupd-update' {
    assert "$(xsrc_find _fwupd-update)" is_file
}
@test 'more_src has _fwupdoffline' {
    assert "$(xsrc_find _fwupdoffline)" is_file
}
@test 'more_src has _fx' {
    assert "$(xsrc_find _fx)" is_file
}
@test 'more_src has _fxc' {
    assert "$(xsrc_find _fxc)" is_file
}
@test 'more_src has _fxconv' {
    assert "$(xsrc_find _fxconv)" is_file
}
@test 'more_src has _fxread' {
    assert "$(xsrc_find _fxread)" is_file
}
@test 'more_src has _fxwrite' {
    assert "$(xsrc_find _fxwrite)" is_file
}
@test 'more_src has _fzpac' {
    assert "$(xsrc_find _fzpac)" is_file
}
@test 'more_src has _fzy' {
    assert "$(xsrc_find _fzy)" is_file
}
@test 'more_src has _g-cpan' {
    assert "$(xsrc_find _g-cpan)" is_file
}
@test 'more_src has _g.zsh' {
    assert "$(xsrc_find _g.zsh)" is_file
}
@test 'more_src has _gallery-dl' {
    assert "$(xsrc_find _gallery-dl)" is_file
}
@test 'more_src has _galley' {
    assert "$(xsrc_find _galley)" is_file
}
@test 'more_src has _gambit' {
    assert "$(xsrc_find _gambit)" is_file
}
@test 'more_src has _gammaray' {
    assert "$(xsrc_find _gammaray)" is_file
}
@test 'more_src has _gammastep' {
    assert "$(xsrc_find _gammastep)" is_file
}
@test 'more_src has _ganesha-grace' {
    assert "$(xsrc_find _ganesha-grace)" is_file
}
@test 'more_src has _ganesha-rados-grace' {
    assert "$(xsrc_find _ganesha-rados-grace)" is_file
}
@test 'more_src has _ganesha.nfsd' {
    assert "$(xsrc_find _ganesha.nfsd)" is_file
}
@test 'more_src has _gap' {
    assert "$(xsrc_find _gap)" is_file
}
@test 'more_src has _gappletviewer' {
    assert "$(xsrc_find _gappletviewer)" is_file
}
@test 'more_src has _gardenctl' {
    assert "$(xsrc_find _gardenctl)" is_file
}
@test 'more_src has _gargoyle' {
    assert "$(xsrc_find _gargoyle)" is_file
}
@test 'more_src has _garnet-cli' {
    assert "$(xsrc_find _garnet-cli)" is_file
}
@test 'more_src has _garnier' {
    assert "$(xsrc_find _garnier)" is_file
}
@test 'more_src has _gasnetrun_ibv' {
    assert "$(xsrc_find _gasnetrun_ibv)" is_file
}
@test 'more_src has _gasnetrun_mpi' {
    assert "$(xsrc_find _gasnetrun_mpi)" is_file
}
@test 'more_src has _gasnetrun_smp' {
    assert "$(xsrc_find _gasnetrun_smp)" is_file
}
@test 'more_src has _gat' {
    assert "$(xsrc_find _gat)" is_file
}
@test 'more_src has _gatel' {
    assert "$(xsrc_find _gatel)" is_file
}
@test 'more_src has _gateway-go' {
    assert "$(xsrc_find _gateway-go)" is_file
}
@test 'more_src has _gatk' {
    assert "$(xsrc_find _gatk)" is_file
}
@test 'more_src has _gatk4' {
    assert "$(xsrc_find _gatk4)" is_file
}
@test 'more_src has _gatsby' {
    assert "$(xsrc_find _gatsby)" is_file
}
@test 'more_src has _gau' {
    assert "$(xsrc_find _gau)" is_file
}
@test 'more_src has _gauche' {
    assert "$(xsrc_find _gauche)" is_file
}
@test 'more_src has _gb' {
    assert "$(xsrc_find _gb)" is_file
}
@test 'more_src has _gbox' {
    assert "$(xsrc_find _gbox)" is_file
}
@test 'more_src has _gbrainy' {
    assert "$(xsrc_find _gbrainy)" is_file
}
@test 'more_src has _gcalccmd' {
    assert "$(xsrc_find _gcalccmd)" is_file
}
@test 'more_src has _gcc-config' {
    assert "$(xsrc_find _gcc-config)" is_file
}
@test 'more_src has _gclone' {
    assert "$(xsrc_find _gclone)" is_file
}
@test 'more_src has _gcloud-crc32c' {
    assert "$(xsrc_find _gcloud-crc32c)" is_file
}
@test 'more_src has _gcompris-qt' {
    assert "$(xsrc_find _gcompris-qt)" is_file
}
@test 'more_src has _gcsfuse' {
    assert "$(xsrc_find _gcsfuse)" is_file
}
@test 'more_src has _gdallocationinfo' {
    assert "$(xsrc_find _gdallocationinfo)" is_file
}
@test 'more_src has _gdaltindex' {
    assert "$(xsrc_find _gdaltindex)" is_file
}
@test 'more_src has _gdb-multiarch' {
    assert "$(xsrc_find _gdb-multiarch)" is_file
}
@test 'more_src has _gdbgui' {
    assert "$(xsrc_find _gdbgui)" is_file
}
@test 'more_src has _gdkpixbuf-pixdata' {
    assert "$(xsrc_find _gdkpixbuf-pixdata)" is_file
}
@test 'more_src has _gdkpixbuf-print-mime-types' {
    assert "$(xsrc_find _gdkpixbuf-print-mime-types)" is_file
}
@test 'more_src has _gdkpixbuf-query-loaders' {
    assert "$(xsrc_find _gdkpixbuf-query-loaders)" is_file
}
@test 'more_src has _gdkpixbuf-thumbnailer' {
    assert "$(xsrc_find _gdkpixbuf-thumbnailer)" is_file
}
@test 'more_src has _gebug' {
    assert "$(xsrc_find _gebug)" is_file
}
@test 'more_src has _gec' {
    assert "$(xsrc_find _gec)" is_file
}
@test 'more_src has _geda' {
    assert "$(xsrc_find _geda)" is_file
}
@test 'more_src has _geecee' {
    assert "$(xsrc_find _geecee)" is_file
}
@test 'more_src has _geeknote' {
    assert "$(xsrc_find _geeknote)" is_file
}
@test 'more_src has _gemini' {
    assert "$(xsrc_find _gemini)" is_file
}
@test 'more_src has _gemini-cli' {
    assert "$(xsrc_find _gemini-cli)" is_file
}
@test 'more_src has _gemrb' {
    assert "$(xsrc_find _gemrb)" is_file
}
@test 'more_src has _gen' {
    assert "$(xsrc_find _gen)" is_file
}
@test 'more_src has _genact' {
    assert "$(xsrc_find _genact)" is_file
}
@test 'more_src has _generator_spec' {
    assert "$(xsrc_find _generator_spec)" is_file
}
@test 'more_src has _genie' {
    assert "$(xsrc_find _genie)" is_file
}
@test 'more_src has _genkernel' {
    assert "$(xsrc_find _genkernel)" is_file
}
@test 'more_src has _genkey' {
    assert "$(xsrc_find _genkey)" is_file
}
@test 'more_src has _genlop' {
    assert "$(xsrc_find _genlop)" is_file
}
@test 'more_src has _genseusers' {
    assert "$(xsrc_find _genseusers)" is_file
}
@test 'more_src has _genson' {
    assert "$(xsrc_find _genson)" is_file
}
@test 'more_src has _geocode' {
    assert "$(xsrc_find _geocode)" is_file
}
@test 'more_src has _geogebra' {
    assert "$(xsrc_find _geogebra)" is_file
}
@test 'more_src has _geonkick' {
    assert "$(xsrc_find _geonkick)" is_file
}
@test 'more_src has _geos-config' {
    assert "$(xsrc_find _geos-config)" is_file
}
@test 'more_src has _geoserver' {
    assert "$(xsrc_find _geoserver)" is_file
}
@test 'more_src has _gerbil' {
    assert "$(xsrc_find _gerbil)" is_file
}
@test 'more_src has _get-repo' {
    assert "$(xsrc_find _get-repo)" is_file
}
@test 'more_src has _getdns_query' {
    assert "$(xsrc_find _getdns_query)" is_file
}
@test 'more_src has _getorf' {
    assert "$(xsrc_find _getorf)" is_file
}
@test 'more_src has _getraw' {
    assert "$(xsrc_find _getraw)" is_file
}
@test 'more_src has _gf' {
    assert "$(xsrc_find _gf)" is_file
}
@test 'more_src has _gfal-cat' {
    assert "$(xsrc_find _gfal-cat)" is_file
}
@test 'more_src has _gfal-copy' {
    assert "$(xsrc_find _gfal-copy)" is_file
}
@test 'more_src has _gfal-ls' {
    assert "$(xsrc_find _gfal-ls)" is_file
}
@test 'more_src has _gfal-mkdir' {
    assert "$(xsrc_find _gfal-mkdir)" is_file
}
@test 'more_src has _gfal-rename' {
    assert "$(xsrc_find _gfal-rename)" is_file
}
@test 'more_src has _gfal-rm' {
    assert "$(xsrc_find _gfal-rm)" is_file
}
@test 'more_src has _gfal-rmdir' {
    assert "$(xsrc_find _gfal-rmdir)" is_file
}
@test 'more_src has _gfal-stat' {
    assert "$(xsrc_find _gfal-stat)" is_file
}
@test 'more_src has _gfid2path' {
    assert "$(xsrc_find _gfid2path)" is_file
}
@test 'more_src has _gh-copilot' {
    assert "$(xsrc_find _gh-copilot)" is_file
}
@test 'more_src has _gh-dash' {
    assert "$(xsrc_find _gh-dash)" is_file
}
@test 'more_src has _gh-todo' {
    assert "$(xsrc_find _gh-todo)" is_file
}
@test 'more_src has _ghatm' {
    assert "$(xsrc_find _ghatm)" is_file
}
@test 'more_src has _ghauri' {
    assert "$(xsrc_find _ghauri)" is_file
}
@test 'more_src has _ghb' {
    assert "$(xsrc_find _ghb)" is_file
}
@test 'more_src has _ghcup' {
    assert "$(xsrc_find _ghcup)" is_file
}
@test 'more_src has _ghorg' {
    assert "$(xsrc_find _ghorg)" is_file
}
@test 'more_src has _ghost-inspector' {
    assert "$(xsrc_find _ghost-inspector)" is_file
}
@test 'more_src has _ghostty' {
    assert "$(xsrc_find _ghostty)" is_file
}
@test 'more_src has _ghostunnel' {
    assert "$(xsrc_find _ghostunnel)" is_file
}
@test 'more_src has _ghq' {
    assert "$(xsrc_find _ghq)" is_file
}
@test 'more_src has _giac' {
    assert "$(xsrc_find _giac)" is_file
}
@test 'more_src has _gimp-test-clipboard' {
    assert "$(xsrc_find _gimp-test-clipboard)" is_file
}
@test 'more_src has _ginsh' {
    assert "$(xsrc_find _ginsh)" is_file
}
@test 'more_src has _gist-cache-rs' {
    assert "$(xsrc_find _gist-cache-rs)" is_file
}
@test 'more_src has _git-absorb' {
    assert "$(xsrc_find _git-absorb)" is_file
}
@test 'more_src has _git-ai' {
    assert "$(xsrc_find _git-ai)" is_file
}
@test 'more_src has _git-branchless' {
    assert "$(xsrc_find _git-branchless)" is_file
}
@test 'more_src has _git-changelog' {
    assert "$(xsrc_find _git-changelog)" is_file
}
@test 'more_src has _git-cliff' {
    assert "$(xsrc_find _git-cliff)" is_file
}
@test 'more_src has _git-credential-gcloud' {
    assert "$(xsrc_find _git-credential-gcloud)" is_file
}
@test 'more_src has _git-crypt' {
    assert "$(xsrc_find _git-crypt)" is_file
}
@test 'more_src has _git-fame' {
    assert "$(xsrc_find _git-fame)" is_file
}
@test 'more_src has _git-filter-repo' {
    assert "$(xsrc_find _git-filter-repo)" is_file
}
@test 'more_src has _git-fuzzy' {
    assert "$(xsrc_find _git-fuzzy)" is_file
}
@test 'more_src has _git-gamble' {
    assert "$(xsrc_find _git-gamble)" is_file
}
@test 'more_src has _git-gh' {
    assert "$(xsrc_find _git-gh)" is_file
}
@test 'more_src has _git-gone' {
    assert "$(xsrc_find _git-gone)" is_file
}
@test 'more_src has _git-gr' {
    assert "$(xsrc_find _git-gr)" is_file
}
@test 'more_src has _git-grab' {
    assert "$(xsrc_find _git-grab)" is_file
}
@test 'more_src has _git-hub-browse' {
    assert "$(xsrc_find _git-hub-browse)" is_file
}
@test 'more_src has _git-hub-shorten-url' {
    assert "$(xsrc_find _git-hub-shorten-url)" is_file
}
@test 'more_src has _git-identity' {
    assert "$(xsrc_find _git-identity)" is_file
}
@test 'more_src has _git-info' {
    assert "$(xsrc_find _git-info)" is_file
}
@test 'more_src has _git-interactive-rebase-tool' {
    assert "$(xsrc_find _git-interactive-rebase-tool)" is_file
}
@test 'more_src has _git-issue' {
    assert "$(xsrc_find _git-issue)" is_file
}
@test 'more_src has _git-journal' {
    assert "$(xsrc_find _git-journal)" is_file
}
@test 'more_src has _git-lfs' {
    assert "$(xsrc_find _git-lfs)" is_file
}
@test 'more_src has _git-link' {
    assert "$(xsrc_find _git-link)" is_file
}
@test 'more_src has _git-machete' {
    assert "$(xsrc_find _git-machete)" is_file
}
@test 'more_src has _git-modified-branches.sh' {
    assert "$(xsrc_find _git-modified-branches.sh)" is_file
}
@test 'more_src has _git-nomad' {
    assert "$(xsrc_find _git-nomad)" is_file
}
@test 'more_src has _git-open' {
    assert "$(xsrc_find _git-open)" is_file
}
@test 'more_src has _git-prole' {
    assert "$(xsrc_find _git-prole)" is_file
}
@test 'more_src has _git-rec' {
    assert "$(xsrc_find _git-rec)" is_file
}
@test 'more_src has _git-recent' {
    assert "$(xsrc_find _git-recent)" is_file
}
@test 'more_src has _git-router' {
    assert "$(xsrc_find _git-router)" is_file
}
@test 'more_src has _git-secret' {
    assert "$(xsrc_find _git-secret)" is_file
}
@test 'more_src has _git-sizer' {
    assert "$(xsrc_find _git-sizer)" is_file
}
@test 'more_src has _git-smash' {
    assert "$(xsrc_find _git-smash)" is_file
}
@test 'more_src has _git-standup' {
    assert "$(xsrc_find _git-standup)" is_file
}
@test 'more_src has _git-stats' {
    assert "$(xsrc_find _git-stats)" is_file
}
@test 'more_src has _git-statuses' {
    assert "$(xsrc_find _git-statuses)" is_file
}
@test 'more_src has _git-submodule-move' {
    assert "$(xsrc_find _git-submodule-move)" is_file
}
@test 'more_src has _git-submodule-remove' {
    assert "$(xsrc_find _git-submodule-remove)" is_file
}
@test 'more_src has _git-team' {
    assert "$(xsrc_find _git-team)" is_file
}
@test 'more_src has _git-town' {
    assert "$(xsrc_find _git-town)" is_file
}
@test 'more_src has _git-trim' {
    assert "$(xsrc_find _git-trim)" is_file
}
@test 'more_src has _git-who' {
    assert "$(xsrc_find _git-who)" is_file
}
@test 'more_src has _git-wt' {
    assert "$(xsrc_find _git-wt)" is_file
}
@test 'more_src has _git-wt-feature-branch' {
    assert "$(xsrc_find _git-wt-feature-branch)" is_file
}
@test 'more_src has _git-wt-review' {
    assert "$(xsrc_find _git-wt-review)" is_file
}
@test 'more_src has _gitai' {
    assert "$(xsrc_find _gitai)" is_file
}
@test 'more_src has _gitbatch' {
    assert "$(xsrc_find _gitbatch)" is_file
}
@test 'more_src has _gitbcheckout' {
    assert "$(xsrc_find _gitbcheckout)" is_file
}
@test 'more_src has _gitea' {
    assert "$(xsrc_find _gitea)" is_file
}
@test 'more_src has _gitlab' {
    assert "$(xsrc_find _gitlab)" is_file
}
@test 'more_src has _gitlab-runner' {
    assert "$(xsrc_find _gitlab-runner)" is_file
}
@test 'more_src has _gitleaks' {
    assert "$(xsrc_find _gitleaks)" is_file
}
@test 'more_src has _gitlint' {
    assert "$(xsrc_find _gitlint)" is_file
}
@test 'more_src has _gitmoji' {
    assert "$(xsrc_find _gitmoji)" is_file
}
@test 'more_src has _gitsub' {
    assert "$(xsrc_find _gitsub)" is_file
}
@test 'more_src has _gitto' {
    assert "$(xsrc_find _gitto)" is_file
}
@test 'more_src has _gitu' {
    assert "$(xsrc_find _gitu)" is_file
}
@test 'more_src has _gitui' {
    assert "$(xsrc_find _gitui)" is_file
}
@test 'more_src has _gitwatch' {
    assert "$(xsrc_find _gitwatch)" is_file
}
@test 'more_src has _gix' {
    assert "$(xsrc_find _gix)" is_file
}
@test 'more_src has _gjar' {
    assert "$(xsrc_find _gjar)" is_file
}
@test 'more_src has _gjavah' {
    assert "$(xsrc_find _gjavah)" is_file
}
@test 'more_src has _gke-gcloud-auth-plugin' {
    assert "$(xsrc_find _gke-gcloud-auth-plugin)" is_file
}
@test 'more_src has _gkrellm' {
    assert "$(xsrc_find _gkrellm)" is_file
}
@test 'more_src has _glab' {
    assert "$(xsrc_find _glab)" is_file
}
@test 'more_src has _glance-api' {
    assert "$(xsrc_find _glance-api)" is_file
}
@test 'more_src has _glance-cache-cleaner' {
    assert "$(xsrc_find _glance-cache-cleaner)" is_file
}
@test 'more_src has _glance-cache-manage' {
    assert "$(xsrc_find _glance-cache-manage)" is_file
}
@test 'more_src has _glance-cache-prefetcher' {
    assert "$(xsrc_find _glance-cache-prefetcher)" is_file
}
@test 'more_src has _glance-cache-pruner' {
    assert "$(xsrc_find _glance-cache-pruner)" is_file
}
@test 'more_src has _glance-control' {
    assert "$(xsrc_find _glance-control)" is_file
}
@test 'more_src has _glance-manage' {
    assert "$(xsrc_find _glance-manage)" is_file
}
@test 'more_src has _glaurung' {
    assert "$(xsrc_find _glaurung)" is_file
}
@test 'more_src has _glf' {
    assert "$(xsrc_find _glf)" is_file
}
@test 'more_src has _glfsheal' {
    assert "$(xsrc_find _glfsheal)" is_file
}
@test 'more_src has _glftpd' {
    assert "$(xsrc_find _glftpd)" is_file
}
@test 'more_src has _glide' {
    assert "$(xsrc_find _glide)" is_file
}
@test 'more_src has _glider' {
    assert "$(xsrc_find _glider)" is_file
}
@test 'more_src has _glmark2' {
    assert "$(xsrc_find _glmark2)" is_file
}
@test 'more_src has _globus' {
    assert "$(xsrc_find _globus)" is_file
}
@test 'more_src has _globus-url-copy' {
    assert "$(xsrc_find _globus-url-copy)" is_file
}
@test 'more_src has _glow' {
    assert "$(xsrc_find _glow)" is_file
}
@test 'more_src has _glslang' {
    assert "$(xsrc_find _glslang)" is_file
}
@test 'more_src has _glulx' {
    assert "$(xsrc_find _glulx)" is_file
}
@test 'more_src has _glum' {
    assert "$(xsrc_find _glum)" is_file
}
@test 'more_src has _glusterd' {
    assert "$(xsrc_find _glusterd)" is_file
}
@test 'more_src has _gmic' {
    assert "$(xsrc_find _gmic)" is_file
}
@test 'more_src has _gmic-qt' {
    assert "$(xsrc_find _gmic-qt)" is_file
}
@test 'more_src has _gmusicbrowser' {
    assert "$(xsrc_find _gmusicbrowser)" is_file
}
@test 'more_src has _gmx' {
    assert "$(xsrc_find _gmx)" is_file
}
@test 'more_src has _gmx_d' {
    assert "$(xsrc_find _gmx_d)" is_file
}
@test 'more_src has _gnatbind' {
    assert "$(xsrc_find _gnatbind)" is_file
}
@test 'more_src has _gnatchop' {
    assert "$(xsrc_find _gnatchop)" is_file
}
@test 'more_src has _gnatclean' {
    assert "$(xsrc_find _gnatclean)" is_file
}
@test 'more_src has _gnatdoc' {
    assert "$(xsrc_find _gnatdoc)" is_file
}
@test 'more_src has _gnatfind' {
    assert "$(xsrc_find _gnatfind)" is_file
}
@test 'more_src has _gnative2ascii' {
    assert "$(xsrc_find _gnative2ascii)" is_file
}
@test 'more_src has _gnatkr' {
    assert "$(xsrc_find _gnatkr)" is_file
}
@test 'more_src has _gnatlink' {
    assert "$(xsrc_find _gnatlink)" is_file
}
@test 'more_src has _gnatls' {
    assert "$(xsrc_find _gnatls)" is_file
}
@test 'more_src has _gnatmake' {
    assert "$(xsrc_find _gnatmake)" is_file
}
@test 'more_src has _gnatmem' {
    assert "$(xsrc_find _gnatmem)" is_file
}
@test 'more_src has _gnatname' {
    assert "$(xsrc_find _gnatname)" is_file
}
@test 'more_src has _gnatprep' {
    assert "$(xsrc_find _gnatprep)" is_file
}
@test 'more_src has _gnatxref' {
    assert "$(xsrc_find _gnatxref)" is_file
}
@test 'more_src has _gnome-boxes' {
    assert "$(xsrc_find _gnome-boxes)" is_file
}
@test 'more_src has _gnome-builder' {
    assert "$(xsrc_find _gnome-builder)" is_file
}
@test 'more_src has _gnome-disk-utility' {
    assert "$(xsrc_find _gnome-disk-utility)" is_file
}
@test 'more_src has _gnome-extensions-cli' {
    assert "$(xsrc_find _gnome-extensions-cli)" is_file
}
@test 'more_src has _gnome-five-or-more' {
    assert "$(xsrc_find _gnome-five-or-more)" is_file
}
@test 'more_src has _gnome-iagno' {
    assert "$(xsrc_find _gnome-iagno)" is_file
}
@test 'more_src has _gnome-mpv' {
    assert "$(xsrc_find _gnome-mpv)" is_file
}
@test 'more_src has _gnome-packagekit' {
    assert "$(xsrc_find _gnome-packagekit)" is_file
}
@test 'more_src has _gnome-quadrapassel' {
    assert "$(xsrc_find _gnome-quadrapassel)" is_file
}
@test 'more_src has _gnome-screenrecorder' {
    assert "$(xsrc_find _gnome-screenrecorder)" is_file
}
@test 'more_src has _gnome-screensaver' {
    assert "$(xsrc_find _gnome-screensaver)" is_file
}
@test 'more_src has _gnome-tali' {
    assert "$(xsrc_find _gnome-tali)" is_file
}
@test 'more_src has _gnome-terminal-server' {
    assert "$(xsrc_find _gnome-terminal-server)" is_file
}
@test 'more_src has _gnt-cluster' {
    assert "$(xsrc_find _gnt-cluster)" is_file
}
@test 'more_src has _gnt-instance' {
    assert "$(xsrc_find _gnt-instance)" is_file
}
@test 'more_src has _gnt-job' {
    assert "$(xsrc_find _gnt-job)" is_file
}
@test 'more_src has _gnt-node' {
    assert "$(xsrc_find _gnt-node)" is_file
}
@test 'more_src has _gnubackgammon' {
    assert "$(xsrc_find _gnubackgammon)" is_file
}
@test 'more_src has _gnubg' {
    assert "$(xsrc_find _gnubg)" is_file
}
@test 'more_src has _gnucap' {
    assert "$(xsrc_find _gnucap)" is_file
}
@test 'more_src has _gnugo' {
    assert "$(xsrc_find _gnugo)" is_file
}
@test 'more_src has _gnumeric' {
    assert "$(xsrc_find _gnumeric)" is_file
}
@test 'more_src has _gnuplotmkpov' {
    assert "$(xsrc_find _gnuplotmkpov)" is_file
}
@test 'more_src has _gnurl' {
    assert "$(xsrc_find _gnurl)" is_file
}
@test 'more_src has _gnushogi' {
    assert "$(xsrc_find _gnushogi)" is_file
}
@test 'more_src has _gnvm' {
    assert "$(xsrc_find _gnvm)" is_file
}
@test 'more_src has _go-blueprint' {
    assert "$(xsrc_find _go-blueprint)" is_file
}
@test 'more_src has _go-callvis' {
    assert "$(xsrc_find _go-callvis)" is_file
}
@test 'more_src has _go-jsonnet' {
    assert "$(xsrc_find _go-jsonnet)" is_file
}
@test 'more_src has _go-langserver' {
    assert "$(xsrc_find _go-langserver)" is_file
}
@test 'more_src has _go-librespot' {
    assert "$(xsrc_find _go-librespot)" is_file
}
@test 'more_src has _go-musicfox' {
    assert "$(xsrc_find _go-musicfox)" is_file
}
@test 'more_src has _go-swagger' {
    assert "$(xsrc_find _go-swagger)" is_file
}
@test 'more_src has _go-task' {
    assert "$(xsrc_find _go-task)" is_file
}
@test 'more_src has _go-torch' {
    assert "$(xsrc_find _go-torch)" is_file
}
@test 'more_src has _go_windapsearch' {
    assert "$(xsrc_find _go_windapsearch)" is_file
}
@test 'more_src has _goa-daemon' {
    assert "$(xsrc_find _goa-daemon)" is_file
}
@test 'more_src has _goaccess' {
    assert "$(xsrc_find _goaccess)" is_file
}
@test 'more_src has _goapp' {
    assert "$(xsrc_find _goapp)" is_file
}
@test 'more_src has _goawk' {
    assert "$(xsrc_find _goawk)" is_file
}
@test 'more_src has _gobgpd' {
    assert "$(xsrc_find _gobgpd)" is_file
}
@test 'more_src has _gobrew' {
    assert "$(xsrc_find _gobrew)" is_file
}
@test 'more_src has _gocatcli' {
    assert "$(xsrc_find _gocatcli)" is_file
}
@test 'more_src has _gocc' {
    assert "$(xsrc_find _gocc)" is_file
}
@test 'more_src has _gocode' {
    assert "$(xsrc_find _gocode)" is_file
}
@test 'more_src has _goconfig' {
    assert "$(xsrc_find _goconfig)" is_file
}
@test 'more_src has _goconvey' {
    assert "$(xsrc_find _goconvey)" is_file
}
@test 'more_src has _gocov' {
    assert "$(xsrc_find _gocov)" is_file
}
@test 'more_src has _gocr' {
    assert "$(xsrc_find _gocr)" is_file
}
@test 'more_src has _gocritic' {
    assert "$(xsrc_find _gocritic)" is_file
}
@test 'more_src has _godef' {
    assert "$(xsrc_find _godef)" is_file
}
@test 'more_src has _godep' {
    assert "$(xsrc_find _godep)" is_file
}
@test 'more_src has _godog' {
    assert "$(xsrc_find _godog)" is_file
}
@test 'more_src has _godot' {
    assert "$(xsrc_find _godot)" is_file
}
@test 'more_src has _goenv' {
    assert "$(xsrc_find _goenv)" is_file
}
@test 'more_src has _gogrep' {
    assert "$(xsrc_find _gogrep)" is_file
}
@test 'more_src has _gojq' {
    assert "$(xsrc_find _gojq)" is_file
}
@test 'more_src has _gojson' {
    assert "$(xsrc_find _gojson)" is_file
}
@test 'more_src has _golab' {
    assert "$(xsrc_find _golab)" is_file
}
@test 'more_src has _golang' {
    assert "$(xsrc_find _golang)" is_file
}
@test 'more_src has _golang-migrate' {
    assert "$(xsrc_find _golang-migrate)" is_file
}
@test 'more_src has _golangci-lint' {
    assert "$(xsrc_find _golangci-lint)" is_file
}
@test 'more_src has _goldendict' {
    assert "$(xsrc_find _goldendict)" is_file
}
@test 'more_src has _golines' {
    assert "$(xsrc_find _golines)" is_file
}
@test 'more_src has _golint' {
    assert "$(xsrc_find _golint)" is_file
}
@test 'more_src has _gom' {
    assert "$(xsrc_find _gom)" is_file
}
@test 'more_src has _gometalinter' {
    assert "$(xsrc_find _gometalinter)" is_file
}
@test 'more_src has _gomu' {
    assert "$(xsrc_find _gomu)" is_file
}
@test 'more_src has _goname' {
    assert "$(xsrc_find _goname)" is_file
}
@test 'more_src has _gonzo' {
    assert "$(xsrc_find _gonzo)" is_file
}
@test 'more_src has _google' {
    assert "$(xsrc_find _google)" is_file
}
@test 'more_src has _googler' {
    assert "$(xsrc_find _googler)" is_file
}
@test 'more_src has _goose' {
    assert "$(xsrc_find _goose)" is_file
}
@test 'more_src has _gooseberry' {
    assert "$(xsrc_find _gooseberry)" is_file
}
@test 'more_src has _gopackages' {
    assert "$(xsrc_find _gopackages)" is_file
}
@test 'more_src has _gopass' {
    assert "$(xsrc_find _gopass)" is_file
}
@test 'more_src has _gopass-jsonapi' {
    assert "$(xsrc_find _gopass-jsonapi)" is_file
}
@test 'more_src has _gopls' {
    assert "$(xsrc_find _gopls)" is_file
}
@test 'more_src has _goravis' {
    assert "$(xsrc_find _goravis)" is_file
}
@test 'more_src has _goreleaser' {
    assert "$(xsrc_find _goreleaser)" is_file
}
@test 'more_src has _goreman' {
    assert "$(xsrc_find _goreman)" is_file
}
@test 'more_src has _gorename' {
    assert "$(xsrc_find _gorename)" is_file
}
@test 'more_src has _gosec' {
    assert "$(xsrc_find _gosec)" is_file
}
@test 'more_src has _gosmee' {
    assert "$(xsrc_find _gosmee)" is_file
}
@test 'more_src has _gosmore' {
    assert "$(xsrc_find _gosmore)" is_file
}
@test 'more_src has _goss' {
    assert "$(xsrc_find _goss)" is_file
}
@test 'more_src has _gost' {
    assert "$(xsrc_find _gost)" is_file
}
@test 'more_src has _gosumcheck' {
    assert "$(xsrc_find _gosumcheck)" is_file
}
@test 'more_src has _gotestfmt' {
    assert "$(xsrc_find _gotestfmt)" is_file
}
@test 'more_src has _gotests' {
    assert "$(xsrc_find _gotests)" is_file
}
@test 'more_src has _gotestsum' {
    assert "$(xsrc_find _gotestsum)" is_file
}
@test 'more_src has _goto' {
    assert "$(xsrc_find _goto)" is_file
}
@test 'more_src has _gotty' {
    assert "$(xsrc_find _gotty)" is_file
}
@test 'more_src has _goup' {
    assert "$(xsrc_find _goup)" is_file
}
@test 'more_src has _gource' {
    assert "$(xsrc_find _gource)" is_file
}
@test 'more_src has _govctl' {
    assert "$(xsrc_find _govctl)" is_file
}
@test 'more_src has _goverview' {
    assert "$(xsrc_find _goverview)" is_file
}
@test 'more_src has _govulncheck' {
    assert "$(xsrc_find _govulncheck)" is_file
}
@test 'more_src has _goweight' {
    assert "$(xsrc_find _goweight)" is_file
}
@test 'more_src has _goxlr-client' {
    assert "$(xsrc_find _goxlr-client)" is_file
}
@test 'more_src has _goxlr-daemon' {
    assert "$(xsrc_find _goxlr-daemon)" is_file
}
@test 'more_src has _goyacc' {
    assert "$(xsrc_find _goyacc)" is_file
}
@test 'more_src has _gp2c-run' {
    assert "$(xsrc_find _gp2c-run)" is_file
}
@test 'more_src has _gpac' {
    assert "$(xsrc_find _gpac)" is_file
}
@test 'more_src has _gpg-sq' {
    assert "$(xsrc_find _gpg-sq)" is_file
}
@test 'more_src has _gpgv-sq' {
    assert "$(xsrc_find _gpgv-sq)" is_file
}
@test 'more_src has _gprbuild' {
    assert "$(xsrc_find _gprbuild)" is_file
}
@test 'more_src has _gprclean' {
    assert "$(xsrc_find _gprclean)" is_file
}
@test 'more_src has _gpredict' {
    assert "$(xsrc_find _gpredict)" is_file
}
@test 'more_src has _gprinstall' {
    assert "$(xsrc_find _gprinstall)" is_file
}
@test 'more_src has _gprof2dot' {
    assert "$(xsrc_find _gprof2dot)" is_file
}
@test 'more_src has _gpsbabel' {
    assert "$(xsrc_find _gpsbabel)" is_file
}
@test 'more_src has _gpsctl' {
    assert "$(xsrc_find _gpsctl)" is_file
}
@test 'more_src has _gpsd' {
    assert "$(xsrc_find _gpsd)" is_file
}
@test 'more_src has _gpsmon' {
    assert "$(xsrc_find _gpsmon)" is_file
}
@test 'more_src has _gpspipe' {
    assert "$(xsrc_find _gpspipe)" is_file
}
@test 'more_src has _gpt' {
    assert "$(xsrc_find _gpt)" is_file
}
@test 'more_src has _gpt-engineer' {
    assert "$(xsrc_find _gpt-engineer)" is_file
}
@test 'more_src has _gpt-pilot' {
    assert "$(xsrc_find _gpt-pilot)" is_file
}
@test 'more_src has _gptcache_server' {
    assert "$(xsrc_find _gptcache_server)" is_file
}
@test 'more_src has _gptcommit' {
    assert "$(xsrc_find _gptcommit)" is_file
}
@test 'more_src has _gpu-feature-discovery' {
    assert "$(xsrc_find _gpu-feature-discovery)" is_file
}
@test 'more_src has _gpu-screen-recorder' {
    assert "$(xsrc_find _gpu-screen-recorder)" is_file
}
@test 'more_src has _gql-cli' {
    assert "$(xsrc_find _gql-cli)" is_file
}
@test 'more_src has _gql-gen' {
    assert "$(xsrc_find _gql-gen)" is_file
}
@test 'more_src has _gr' {
    assert "$(xsrc_find _gr)" is_file
}
@test 'more_src has _grafana-agent-operator' {
    assert "$(xsrc_find _grafana-agent-operator)" is_file
}
@test 'more_src has _grafana-agentctl' {
    assert "$(xsrc_find _grafana-agentctl)" is_file
}
@test 'more_src has _grafana-cli' {
    assert "$(xsrc_find _grafana-cli)" is_file
}
@test 'more_src has _grafana-image-renderer' {
    assert "$(xsrc_find _grafana-image-renderer)" is_file
}
@test 'more_src has _grafatui' {
    assert "$(xsrc_find _grafatui)" is_file
}
@test 'more_src has _granatier' {
    assert "$(xsrc_find _granatier)" is_file
}
@test 'more_src has _granian' {
    assert "$(xsrc_find _granian)" is_file
}
@test 'more_src has _granted' {
    assert "$(xsrc_find _granted)" is_file
}
@test 'more_src has _graph' {
    assert "$(xsrc_find _graph)" is_file
}
@test 'more_src has _graphql-code-generator' {
    assert "$(xsrc_find _graphql-code-generator)" is_file
}
@test 'more_src has _graphql-codegen-cjs' {
    assert "$(xsrc_find _graphql-codegen-cjs)" is_file
}
@test 'more_src has _graphql-codegen-esm' {
    assert "$(xsrc_find _graphql-codegen-esm)" is_file
}
@test 'more_src has _graylog-ctl' {
    assert "$(xsrc_find _graylog-ctl)" is_file
}
@test 'more_src has _graylog-sidecar' {
    assert "$(xsrc_find _graylog-sidecar)" is_file
}
@test 'more_src has _grcat' {
    assert "$(xsrc_find _grcat)" is_file
}
@test 'more_src has _greenmail' {
    assert "$(xsrc_find _greenmail)" is_file
}
@test 'more_src has _gremlin' {
    assert "$(xsrc_find _gremlin)" is_file
}
@test 'more_src has _greptile' {
    assert "$(xsrc_find _greptile)" is_file
}
@test 'more_src has _grex' {
    assert "$(xsrc_find _grex)" is_file
}
@test 'more_src has _greylistd' {
    assert "$(xsrc_find _greylistd)" is_file
}
@test 'more_src has _griffe' {
    assert "$(xsrc_find _griffe)" is_file
}
@test 'more_src has _grimaur.zsh' {
    assert "$(xsrc_find _grimaur.zsh)" is_file
}
@test 'more_src has _grin' {
    assert "$(xsrc_find _grin)" is_file
}
@test 'more_src has _grind' {
    assert "$(xsrc_find _grind)" is_file
}
@test 'more_src has _gritty' {
    assert "$(xsrc_find _gritty)" is_file
}
@test 'more_src has _grml-debootstrap' {
    assert "$(xsrc_find _grml-debootstrap)" is_file
}
@test 'more_src has _grml-wallpaper' {
    assert "$(xsrc_find _grml-wallpaper)" is_file
}
@test 'more_src has _grok' {
    assert "$(xsrc_find _grok)" is_file
}
@test 'more_src has _gromacs' {
    assert "$(xsrc_find _gromacs)" is_file
}
@test 'more_src has _gron' {
    assert "$(xsrc_find _gron)" is_file
}
@test 'more_src has _groonga-query-log-analyzer' {
    assert "$(xsrc_find _groonga-query-log-analyzer)" is_file
}
@test 'more_src has _groonga-suggest-httpd' {
    assert "$(xsrc_find _groonga-suggest-httpd)" is_file
}
@test 'more_src has _groonga-suggest-learner' {
    assert "$(xsrc_find _groonga-suggest-learner)" is_file
}
@test 'more_src has _grov' {
    assert "$(xsrc_find _grov)" is_file
}
@test 'more_src has _grpc_cli' {
    assert "$(xsrc_find _grpc_cli)" is_file
}
@test 'more_src has _grpcui' {
    assert "$(xsrc_find _grpcui)" is_file
}
@test 'more_src has _grpcurl' {
    assert "$(xsrc_find _grpcurl)" is_file
}
@test 'more_src has _grr' {
    assert "$(xsrc_find _grr)" is_file
}
@test 'more_src has _grsync' {
    assert "$(xsrc_find _grsync)" is_file
}
@test 'more_src has _grub-customizer' {
    assert "$(xsrc_find _grub-customizer)" is_file
}
@test 'more_src has _grub-menulst2cfg' {
    assert "$(xsrc_find _grub-menulst2cfg)" is_file
}
@test 'more_src has _grub-ofpathname' {
    assert "$(xsrc_find _grub-ofpathname)" is_file
}
@test 'more_src has _grub-protect' {
    assert "$(xsrc_find _grub-protect)" is_file
}
@test 'more_src has _grub-sparc64-setup' {
    assert "$(xsrc_find _grub-sparc64-setup)" is_file
}
@test 'more_src has _gruyere' {
    assert "$(xsrc_find _gruyere)" is_file
}
@test 'more_src has _grype' {
    assert "$(xsrc_find _grype)" is_file
}
@test 'more_src has _gsan' {
    assert "$(xsrc_find _gsan)" is_file
}
@test 'more_src has _gscan2pdf' {
    assert "$(xsrc_find _gscan2pdf)" is_file
}
@test 'more_src has _gschem' {
    assert "$(xsrc_find _gschem)" is_file
}
@test 'more_src has _gst' {
    assert "$(xsrc_find _gst)" is_file
}
@test 'more_src has _gtick' {
    assert "$(xsrc_find _gtick)" is_file
}
@test 'more_src has _gtk-recordmydesktop' {
    assert "$(xsrc_find _gtk-recordmydesktop)" is_file
}
@test 'more_src has _gtklp' {
    assert "$(xsrc_find _gtklp)" is_file
}
@test 'more_src has _gtklp-cli' {
    assert "$(xsrc_find _gtklp-cli)" is_file
}
@test 'more_src has _gtklp-utils' {
    assert "$(xsrc_find _gtklp-utils)" is_file
}
@test 'more_src has _gtklpr' {
    assert "$(xsrc_find _gtklpr)" is_file
}
@test 'more_src has _gtkterm' {
    assert "$(xsrc_find _gtkterm)" is_file
}
@test 'more_src has _gtop' {
    assert "$(xsrc_find _gtop)" is_file
}
@test 'more_src has _guacenc' {
    assert "$(xsrc_find _guacenc)" is_file
}
@test 'more_src has _guayadeque' {
    assert "$(xsrc_find _guayadeque)" is_file
}
@test 'more_src has _guild' {
    assert "$(xsrc_find _guild)" is_file
}
@test 'more_src has _guitarix' {
    assert "$(xsrc_find _guitarix)" is_file
}
@test 'more_src has _guix' {
    assert "$(xsrc_find _guix)" is_file
}
@test 'more_src has _gummi' {
    assert "$(xsrc_find _gummi)" is_file
}
@test 'more_src has _gummiboot' {
    assert "$(xsrc_find _gummiboot)" is_file
}
@test 'more_src has _guru' {
    assert "$(xsrc_find _guru)" is_file
}
@test 'more_src has _gut' {
    assert "$(xsrc_find _gut)" is_file
}
@test 'more_src has _gvedit' {
    assert "$(xsrc_find _gvedit)" is_file
}
@test 'more_src has _gvt' {
    assert "$(xsrc_find _gvt)" is_file
}
@test 'more_src has _gwin' {
    assert "$(xsrc_find _gwin)" is_file
}
@test 'more_src has _gwt' {
    assert "$(xsrc_find _gwt)" is_file
}
@test 'more_src has _gwtx' {
    assert "$(xsrc_find _gwtx)" is_file
}
@test 'more_src has _gzrt' {
    assert "$(xsrc_find _gzrt)" is_file
}
@test 'more_src has _h2o' {
    assert "$(xsrc_find _h2o)" is_file
}
@test 'more_src has _h2o-3' {
    assert "$(xsrc_find _h2o-3)" is_file
}
@test 'more_src has _hackrf_info' {
    assert "$(xsrc_find _hackrf_info)" is_file
}
@test 'more_src has _hadolint' {
    assert "$(xsrc_find _hadolint)" is_file
}
@test 'more_src has _hakrawler' {
    assert "$(xsrc_find _hakrawler)" is_file
}
@test 'more_src has _haku' {
    assert "$(xsrc_find _haku)" is_file
}
@test 'more_src has _hal' {
    assert "$(xsrc_find _hal)" is_file
}
@test 'more_src has _halloy' {
    assert "$(xsrc_find _halloy)" is_file
}
@test 'more_src has _halmos' {
    assert "$(xsrc_find _halmos)" is_file
}
@test 'more_src has _halp' {
    assert "$(xsrc_find _halp)" is_file
}
@test 'more_src has _hammer' {
    assert "$(xsrc_find _hammer)" is_file
}
@test 'more_src has _handbrake' {
    assert "$(xsrc_find _handbrake)" is_file
}
@test 'more_src has _handlr' {
    assert "$(xsrc_find _handlr)" is_file
}
@test 'more_src has _hanzi-sort' {
    assert "$(xsrc_find _hanzi-sort)" is_file
}
@test 'more_src has _hap' {
    assert "$(xsrc_find _hap)" is_file
}
@test 'more_src has _happy' {
    assert "$(xsrc_find _happy)" is_file
}
@test 'more_src has _harlequin' {
    assert "$(xsrc_find _harlequin)" is_file
}
@test 'more_src has _harper' {
    assert "$(xsrc_find _harper)" is_file
}
@test 'more_src has _harper-cli' {
    assert "$(xsrc_find _harper-cli)" is_file
}
@test 'more_src has _harsh' {
    assert "$(xsrc_find _harsh)" is_file
}
@test 'more_src has _haskell-language-server-wrapper' {
    assert "$(xsrc_find _haskell-language-server-wrapper)" is_file
}
@test 'more_src has _hass' {
    assert "$(xsrc_find _hass)" is_file
}
@test 'more_src has _hass-cli' {
    assert "$(xsrc_find _hass-cli)" is_file
}
@test 'more_src has _hatari' {
    assert "$(xsrc_find _hatari)" is_file
}
@test 'more_src has _hatch' {
    assert "$(xsrc_find _hatch)" is_file
}
@test 'more_src has _hatchet' {
    assert "$(xsrc_find _hatchet)" is_file
}
@test 'more_src has _hatchling' {
    assert "$(xsrc_find _hatchling)" is_file
}
@test 'more_src has _hatop' {
    assert "$(xsrc_find _hatop)" is_file
}
@test 'more_src has _hawk' {
    assert "$(xsrc_find _hawk)" is_file
}
@test 'more_src has _haxe' {
    assert "$(xsrc_find _haxe)" is_file
}
@test 'more_src has _hayabusa' {
    assert "$(xsrc_find _hayabusa)" is_file
}
@test 'more_src has _hayhooks' {
    assert "$(xsrc_find _hayhooks)" is_file
}
@test 'more_src has _hbal' {
    assert "$(xsrc_find _hbal)" is_file
}
@test 'more_src has _hc' {
    assert "$(xsrc_find _hc)" is_file
}
@test 'more_src has _hck' {
    assert "$(xsrc_find _hck)" is_file
}
@test 'more_src has _hcl2json' {
    assert "$(xsrc_find _hcl2json)" is_file
}
@test 'more_src has _hcloud' {
    assert "$(xsrc_find _hcloud)" is_file
}
@test 'more_src has _headscale' {
    assert "$(xsrc_find _headscale)" is_file
}
@test 'more_src has _heaptrack' {
    assert "$(xsrc_find _heaptrack)" is_file
}
@test 'more_src has _heaptrack-print' {
    assert "$(xsrc_find _heaptrack-print)" is_file
}
@test 'more_src has _heat-api' {
    assert "$(xsrc_find _heat-api)" is_file
}
@test 'more_src has _heat-api-cfn' {
    assert "$(xsrc_find _heat-api-cfn)" is_file
}
@test 'more_src has _heat-api-cloudwatch' {
    assert "$(xsrc_find _heat-api-cloudwatch)" is_file
}
@test 'more_src has _heat-db-setup' {
    assert "$(xsrc_find _heat-db-setup)" is_file
}
@test 'more_src has _heat-engine' {
    assert "$(xsrc_find _heat-engine)" is_file
}
@test 'more_src has _heat-manage' {
    assert "$(xsrc_find _heat-manage)" is_file
}
@test 'more_src has _heat-status' {
    assert "$(xsrc_find _heat-status)" is_file
}
@test 'more_src has _heco' {
    assert "$(xsrc_find _heco)" is_file
}
@test 'more_src has _hedgewars' {
    assert "$(xsrc_find _hedgewars)" is_file
}
@test 'more_src has _heimdall-frontend' {
    assert "$(xsrc_find _heimdall-frontend)" is_file
}
@test 'more_src has _helix' {
    assert "$(xsrc_find _helix)" is_file
}
@test 'more_src has _helixturnhelix' {
    assert "$(xsrc_find _helixturnhelix)" is_file
}
@test 'more_src has _helm-operator' {
    assert "$(xsrc_find _helm-operator)" is_file
}
@test 'more_src has _helmfile' {
    assert "$(xsrc_find _helmfile)" is_file
}
@test 'more_src has _helmsman' {
    assert "$(xsrc_find _helmsman)" is_file
}
@test 'more_src has _helvum' {
    assert "$(xsrc_find _helvum)" is_file
}
@test 'more_src has _hemli' {
    assert "$(xsrc_find _hemli)" is_file
}
@test 'more_src has _hermit' {
    assert "$(xsrc_find _hermit)" is_file
}
@test 'more_src has _heroku' {
    assert "$(xsrc_find _heroku)" is_file
}
@test 'more_src has _hetzner-kube' {
    assert "$(xsrc_find _hetzner-kube)" is_file
}
@test 'more_src has _hex2bin' {
    assert "$(xsrc_find _hex2bin)" is_file
}
@test 'more_src has _hexapoda' {
    assert "$(xsrc_find _hexapoda)" is_file
}
@test 'more_src has _hexchat-cli' {
    assert "$(xsrc_find _hexchat-cli)" is_file
}
@test 'more_src has _hexcurse' {
    assert "$(xsrc_find _hexcurse)" is_file
}
@test 'more_src has _hexer' {
    assert "$(xsrc_find _hexer)" is_file
}
@test 'more_src has _hexter' {
    assert "$(xsrc_find _hexter)" is_file
}
@test 'more_src has _hey' {
    assert "$(xsrc_find _hey)" is_file
}
@test 'more_src has _hgview' {
    assert "$(xsrc_find _hgview)" is_file
}
@test 'more_src has _hidutil' {
    assert "$(xsrc_find _hidutil)" is_file
}
@test 'more_src has _hifiasm' {
    assert "$(xsrc_find _hifiasm)" is_file
}
@test 'more_src has _hijack' {
    assert "$(xsrc_find _hijack)" is_file
}
@test 'more_src has _hilbish' {
    assert "$(xsrc_find _hilbish)" is_file
}
@test 'more_src has _himalaya' {
    assert "$(xsrc_find _himalaya)" is_file
}
@test 'more_src has _hipify-clang' {
    assert "$(xsrc_find _hipify-clang)" is_file
}
@test 'more_src has _hipify-perl' {
    assert "$(xsrc_find _hipify-perl)" is_file
}
@test 'more_src has _hiracli' {
    assert "$(xsrc_find _hiracli)" is_file
}
@test 'more_src has _hisat2' {
    assert "$(xsrc_find _hisat2)" is_file
}
@test 'more_src has _hisiflash' {
    assert "$(xsrc_find _hisiflash)" is_file
}
@test 'more_src has _hitt' {
    assert "$(xsrc_find _hitt)" is_file
}
@test 'more_src has _hivemind' {
    assert "$(xsrc_find _hivemind)" is_file
}
@test 'more_src has _hjwasm' {
    assert "$(xsrc_find _hjwasm)" is_file
}
@test 'more_src has _hk' {
    assert "$(xsrc_find _hk)" is_file
}
@test 'more_src has _hmmalign' {
    assert "$(xsrc_find _hmmalign)" is_file
}
@test 'more_src has _hmmbuild' {
    assert "$(xsrc_find _hmmbuild)" is_file
}
@test 'more_src has _hmmpress' {
    assert "$(xsrc_find _hmmpress)" is_file
}
@test 'more_src has _hmmscan' {
    assert "$(xsrc_find _hmmscan)" is_file
}
@test 'more_src has _hmmsearch' {
    assert "$(xsrc_find _hmmsearch)" is_file
}
@test 'more_src has _hmoment' {
    assert "$(xsrc_find _hmoment)" is_file
}
@test 'more_src has _hni' {
    assert "$(xsrc_find _hni)" is_file
}
@test 'more_src has _hoard' {
    assert "$(xsrc_find _hoard)" is_file
}
@test 'more_src has _hoaxshell' {
    assert "$(xsrc_find _hoaxshell)" is_file
}
@test 'more_src has _holdon' {
    assert "$(xsrc_find _holdon)" is_file
}
@test 'more_src has _holo-build' {
    assert "$(xsrc_find _holo-build)" is_file
}
@test 'more_src has _homeassistant-cli' {
    assert "$(xsrc_find _homeassistant-cli)" is_file
}
@test 'more_src has _homelabctl' {
    assert "$(xsrc_find _homelabctl)" is_file
}
@test 'more_src has _homemanager' {
    assert "$(xsrc_find _homemanager)" is_file
}
@test 'more_src has _homestead' {
    assert "$(xsrc_find _homestead)" is_file
}
@test 'more_src has _honcho' {
    assert "$(xsrc_find _honcho)" is_file
}
@test 'more_src has _honeycomb-cli' {
    assert "$(xsrc_find _honeycomb-cli)" is_file
}
@test 'more_src has _hooklistener' {
    assert "$(xsrc_find _hooklistener)" is_file
}
@test 'more_src has _hopsworks-mcp' {
    assert "$(xsrc_find _hopsworks-mcp)" is_file
}
@test 'more_src has _hostctl' {
    assert "$(xsrc_find _hostctl)" is_file
}
@test 'more_src has _hostess' {
    assert "$(xsrc_find _hostess)" is_file
}
@test 'more_src has _hostinfo' {
    assert "$(xsrc_find _hostinfo)" is_file
}
@test 'more_src has _hostmux' {
    assert "$(xsrc_find _hostmux)" is_file
}
@test 'more_src has _hothasktags' {
    assert "$(xsrc_find _hothasktags)" is_file
}
@test 'more_src has _hoverfly' {
    assert "$(xsrc_find _hoverfly)" is_file
}
@test 'more_src has _howl' {
    assert "$(xsrc_find _howl)" is_file
}
@test 'more_src has _hp-fab' {
    assert "$(xsrc_find _hp-fab)" is_file
}
@test 'more_src has _hp-fax' {
    assert "$(xsrc_find _hp-fax)" is_file
}
@test 'more_src has _hp-faxsetup' {
    assert "$(xsrc_find _hp-faxsetup)" is_file
}
@test 'more_src has _hp-makecopies' {
    assert "$(xsrc_find _hp-makecopies)" is_file
}
@test 'more_src has _hp-mkuri' {
    assert "$(xsrc_find _hp-mkuri)" is_file
}
@test 'more_src has _hp-print' {
    assert "$(xsrc_find _hp-print)" is_file
}
@test 'more_src has _hp-sendfax' {
    assert "$(xsrc_find _hp-sendfax)" is_file
}
@test 'more_src has _hp-systray' {
    assert "$(xsrc_find _hp-systray)" is_file
}
@test 'more_src has _hp-toolbox' {
    assert "$(xsrc_find _hp-toolbox)" is_file
}
@test 'more_src has _hp-uninstall' {
    assert "$(xsrc_find _hp-uninstall)" is_file
}
@test 'more_src has _hp-unload' {
    assert "$(xsrc_find _hp-unload)" is_file
}
@test 'more_src has _hp-upgrade' {
    assert "$(xsrc_find _hp-upgrade)" is_file
}
@test 'more_src has _hp-wificonfig' {
    assert "$(xsrc_find _hp-wificonfig)" is_file
}
@test 'more_src has _hpacucli' {
    assert "$(xsrc_find _hpacucli)" is_file
}
@test 'more_src has _hpc-haddock' {
    assert "$(xsrc_find _hpc-haddock)" is_file
}
@test 'more_src has _hpssacli' {
    assert "$(xsrc_find _hpssacli)" is_file
}
@test 'more_src has _hpssaducli' {
    assert "$(xsrc_find _hpssaducli)" is_file
}
@test 'more_src has _hroller' {
    assert "$(xsrc_find _hroller)" is_file
}
@test 'more_src has _htmlq' {
    assert "$(xsrc_find _htmlq)" is_file
}
@test 'more_src has _httm' {
    assert "$(xsrc_find _httm)" is_file
}
@test 'more_src has _http-server' {
    assert "$(xsrc_find _http-server)" is_file
}
@test 'more_src has _httpdirfs' {
    assert "$(xsrc_find _httpdirfs)" is_file
}
@test 'more_src has _httping' {
    assert "$(xsrc_find _httping)" is_file
}
@test 'more_src has _httpstat' {
    assert "$(xsrc_find _httpstat)" is_file
}
@test 'more_src has _httptap' {
    assert "$(xsrc_find _httptap)" is_file
}
@test 'more_src has _httptunnel' {
    assert "$(xsrc_find _httptunnel)" is_file
}
@test 'more_src has _hubble' {
    assert "$(xsrc_find _hubble)" is_file
}
@test 'more_src has _hubble-relay' {
    assert "$(xsrc_find _hubble-relay)" is_file
}
@test 'more_src has _hugin' {
    assert "$(xsrc_find _hugin)" is_file
}
@test 'more_src has _hugin-cli' {
    assert "$(xsrc_find _hugin-cli)" is_file
}
@test 'more_src has _hugin_executor' {
    assert "$(xsrc_find _hugin_executor)" is_file
}
@test 'more_src has _hugin_hdrmerge' {
    assert "$(xsrc_find _hugin_hdrmerge)" is_file
}
@test 'more_src has _hugin_stitch_project' {
    assert "$(xsrc_find _hugin_stitch_project)" is_file
}
@test 'more_src has _huh' {
    assert "$(xsrc_find _huh)" is_file
}
@test 'more_src has _humanize' {
    assert "$(xsrc_find _humanize)" is_file
}
@test 'more_src has _humble-cli' {
    assert "$(xsrc_find _humble-cli)" is_file
}
@test 'more_src has _huniq' {
    assert "$(xsrc_find _huniq)" is_file
}
@test 'more_src has _hurl' {
    assert "$(xsrc_find _hurl)" is_file
}
@test 'more_src has _hurlfmt' {
    assert "$(xsrc_find _hurlfmt)" is_file
}
@test 'more_src has _hwatch' {
    assert "$(xsrc_find _hwatch)" is_file
}
@test 'more_src has _hx' {
    assert "$(xsrc_find _hx)" is_file
}
@test 'more_src has _hyalo' {
    assert "$(xsrc_find _hyalo)" is_file
}
@test 'more_src has _hyde-shell' {
    assert "$(xsrc_find _hyde-shell)" is_file
}
@test 'more_src has _hydra-check' {
    assert "$(xsrc_find _hydra-check)" is_file
}
@test 'more_src has _hydra_persist' {
    assert "$(xsrc_find _hydra_persist)" is_file
}
@test 'more_src has _hydra_pmi_proxy' {
    assert "$(xsrc_find _hydra_pmi_proxy)" is_file
}
@test 'more_src has _hydrogen' {
    assert "$(xsrc_find _hydrogen)" is_file
}
@test 'more_src has _hydroxide' {
    assert "$(xsrc_find _hydroxide)" is_file
}
@test 'more_src has _hyperdu' {
    assert "$(xsrc_find _hyperdu)" is_file
}
@test 'more_src has _hyperglass' {
    assert "$(xsrc_find _hyperglass)" is_file
}
@test 'more_src has _hyperrogue' {
    assert "$(xsrc_find _hyperrogue)" is_file
}
@test 'more_src has _hypnotoad' {
    assert "$(xsrc_find _hypnotoad)" is_file
}
@test 'more_src has _hypothesis-client' {
    assert "$(xsrc_find _hypothesis-client)" is_file
}
@test 'more_src has _hyprdim' {
    assert "$(xsrc_find _hyprdim)" is_file
}
@test 'more_src has _hyprland-workspaces-tui' {
    assert "$(xsrc_find _hyprland-workspaces-tui)" is_file
}
@test 'more_src has _hyprnome' {
    assert "$(xsrc_find _hyprnome)" is_file
}
@test 'more_src has _hyx' {
    assert "$(xsrc_find _hyx)" is_file
}
@test 'more_src has _hz' {
    assert "$(xsrc_find _hz)" is_file
}
@test 'more_src has _i2pd' {
    assert "$(xsrc_find _i2pd)" is_file
}
@test 'more_src has _i2prouter' {
    assert "$(xsrc_find _i2prouter)" is_file
}
@test 'more_src has _i3-config-wizard' {
    assert "$(xsrc_find _i3-config-wizard)" is_file
}
@test 'more_src has _i3-dump-log' {
    assert "$(xsrc_find _i3-dump-log)" is_file
}
@test 'more_src has _i3-sensible-editor' {
    assert "$(xsrc_find _i3-sensible-editor)" is_file
}
@test 'more_src has _i3-sensible-pager' {
    assert "$(xsrc_find _i3-sensible-pager)" is_file
}
@test 'more_src has _i3-sensible-terminal' {
    assert "$(xsrc_find _i3-sensible-terminal)" is_file
}
@test 'more_src has _iCoreMgr' {
    assert "$(xsrc_find _iCoreMgr)" is_file
}
@test 'more_src has _iaito' {
    assert "$(xsrc_find _iaito)" is_file
}
@test 'more_src has _iamb' {
    assert "$(xsrc_find _iamb)" is_file
}
@test 'more_src has _iat' {
    assert "$(xsrc_find _iat)" is_file
}
@test 'more_src has _ibazel' {
    assert "$(xsrc_find _ibazel)" is_file
}
@test 'more_src has _ibcheckerrors' {
    assert "$(xsrc_find _ibcheckerrors)" is_file
}
@test 'more_src has _ibcheckerrs' {
    assert "$(xsrc_find _ibcheckerrs)" is_file
}
@test 'more_src has _ibchecknet' {
    assert "$(xsrc_find _ibchecknet)" is_file
}
@test 'more_src has _ibchecknode' {
    assert "$(xsrc_find _ibchecknode)" is_file
}
@test 'more_src has _ibcheckport' {
    assert "$(xsrc_find _ibcheckport)" is_file
}
@test 'more_src has _ibcheckportstate' {
    assert "$(xsrc_find _ibcheckportstate)" is_file
}
@test 'more_src has _ibcheckportwidth' {
    assert "$(xsrc_find _ibcheckportwidth)" is_file
}
@test 'more_src has _ibcheckstate' {
    assert "$(xsrc_find _ibcheckstate)" is_file
}
@test 'more_src has _ibcheckwidth' {
    assert "$(xsrc_find _ibcheckwidth)" is_file
}
@test 'more_src has _ibhca_self_test' {
    assert "$(xsrc_find _ibhca_self_test)" is_file
}
@test 'more_src has _ibmgtsim' {
    assert "$(xsrc_find _ibmgtsim)" is_file
}
@test 'more_src has _ibsim' {
    assert "$(xsrc_find _ibsim)" is_file
}
@test 'more_src has _ibus-anthy' {
    assert "$(xsrc_find _ibus-anthy)" is_file
}
@test 'more_src has _ibus-pinyin' {
    assert "$(xsrc_find _ibus-pinyin)" is_file
}
@test 'more_src has _icdiff' {
    assert "$(xsrc_find _icdiff)" is_file
}
@test 'more_src has _icebox' {
    assert "$(xsrc_find _icebox)" is_file
}
@test 'more_src has _icebram' {
    assert "$(xsrc_find _icebram)" is_file
}
@test 'more_src has _icedove' {
    assert "$(xsrc_find _icedove)" is_file
}
@test 'more_src has _icedtea7' {
    assert "$(xsrc_find _icedtea7)" is_file
}
@test 'more_src has _icepack' {
    assert "$(xsrc_find _icepack)" is_file
}
@test 'more_src has _iceprog' {
    assert "$(xsrc_find _iceprog)" is_file
}
@test 'more_src has _iceunpack' {
    assert "$(xsrc_find _iceunpack)" is_file
}
@test 'more_src has _icewm-toolbar' {
    assert "$(xsrc_find _icewm-toolbar)" is_file
}
@test 'more_src has _icewmhint' {
    assert "$(xsrc_find _icewmhint)" is_file
}
@test 'more_src has _icingadb' {
    assert "$(xsrc_find _icingadb)" is_file
}
@test 'more_src has _icingaweb2' {
    assert "$(xsrc_find _icingaweb2)" is_file
}
@test 'more_src has _icoFoam' {
    assert "$(xsrc_find _icoFoam)" is_file
}
@test 'more_src has _id3tool' {
    assert "$(xsrc_find _id3tool)" is_file
}
@test 'more_src has _idea' {
    assert "$(xsrc_find _idea)" is_file
}
@test 'more_src has _idme' {
    assert "$(xsrc_find _idme)" is_file
}
@test 'more_src has _idrac-cli' {
    assert "$(xsrc_find _idrac-cli)" is_file
}
@test 'more_src has _idracadm' {
    assert "$(xsrc_find _idracadm)" is_file
}
@test 'more_src has _idracadm7' {
    assert "$(xsrc_find _idracadm7)" is_file
}
@test 'more_src has _idris2' {
    assert "$(xsrc_find _idris2)" is_file
}
@test 'more_src has _idx' {
    assert "$(xsrc_find _idx)" is_file
}
@test 'more_src has _iep' {
    assert "$(xsrc_find _iep)" is_file
}
@test 'more_src has _ignore.zsh' {
    assert "$(xsrc_find _ignore.zsh)" is_file
}
@test 'more_src has _iio-niri' {
    assert "$(xsrc_find _iio-niri)" is_file
}
@test 'more_src has _ijq' {
    assert "$(xsrc_find _ijq)" is_file
}
@test 'more_src has _imageworsener' {
    assert "$(xsrc_find _imageworsener)" is_file
}
@test 'more_src has _imapbackup' {
    assert "$(xsrc_find _imapbackup)" is_file
}
@test 'more_src has _imaptest' {
    assert "$(xsrc_find _imaptest)" is_file
}
@test 'more_src has _imaxima' {
    assert "$(xsrc_find _imaxima)" is_file
}
@test 'more_src has _imessage' {
    assert "$(xsrc_find _imessage)" is_file
}
@test 'more_src has _img2pdf' {
    assert "$(xsrc_find _img2pdf)" is_file
}
@test 'more_src has _img2simg' {
    assert "$(xsrc_find _img2simg)" is_file
}
@test 'more_src has _imgcat' {
    assert "$(xsrc_find _imgcat)" is_file
}
@test 'more_src has _imgp' {
    assert "$(xsrc_find _imgp)" is_file
}
@test 'more_src has _impacket-Get-GPPPassword' {
    assert "$(xsrc_find _impacket-Get-GPPPassword)" is_file
}
@test 'more_src has _impacket-GetADUsers' {
    assert "$(xsrc_find _impacket-GetADUsers)" is_file
}
@test 'more_src has _impacket-addcomputer' {
    assert "$(xsrc_find _impacket-addcomputer)" is_file
}
@test 'more_src has _impacket-atexec' {
    assert "$(xsrc_find _impacket-atexec)" is_file
}
@test 'more_src has _impacket-dpapi' {
    assert "$(xsrc_find _impacket-dpapi)" is_file
}
@test 'more_src has _impacket-findDelegation' {
    assert "$(xsrc_find _impacket-findDelegation)" is_file
}
@test 'more_src has _impacket-getNPUsers' {
    assert "$(xsrc_find _impacket-getNPUsers)" is_file
}
@test 'more_src has _impacket-getST' {
    assert "$(xsrc_find _impacket-getST)" is_file
}
@test 'more_src has _impacket-getuserspns' {
    assert "$(xsrc_find _impacket-getuserspns)" is_file
}
@test 'more_src has _impacket-goldenpac' {
    assert "$(xsrc_find _impacket-goldenpac)" is_file
}
@test 'more_src has _impacket-karmaSMB' {
    assert "$(xsrc_find _impacket-karmaSMB)" is_file
}
@test 'more_src has _impacket-keylistattack' {
    assert "$(xsrc_find _impacket-keylistattack)" is_file
}
@test 'more_src has _impacket-kintercept' {
    assert "$(xsrc_find _impacket-kintercept)" is_file
}
@test 'more_src has _impacket-lookupsid' {
    assert "$(xsrc_find _impacket-lookupsid)" is_file
}
@test 'more_src has _impacket-machine_role' {
    assert "$(xsrc_find _impacket-machine_role)" is_file
}
@test 'more_src has _impacket-mimikatz' {
    assert "$(xsrc_find _impacket-mimikatz)" is_file
}
@test 'more_src has _impacket-mssqlclient' {
    assert "$(xsrc_find _impacket-mssqlclient)" is_file
}
@test 'more_src has _impacket-mssqlinstance' {
    assert "$(xsrc_find _impacket-mssqlinstance)" is_file
}
@test 'more_src has _impacket-nmapAnswerMachine' {
    assert "$(xsrc_find _impacket-nmapAnswerMachine)" is_file
}
@test 'more_src has _impacket-ntlmrelayx' {
    assert "$(xsrc_find _impacket-ntlmrelayx)" is_file
}
@test 'more_src has _impacket-owneredit' {
    assert "$(xsrc_find _impacket-owneredit)" is_file
}
@test 'more_src has _impacket-ping' {
    assert "$(xsrc_find _impacket-ping)" is_file
}
@test 'more_src has _impacket-ping6' {
    assert "$(xsrc_find _impacket-ping6)" is_file
}
@test 'more_src has _impacket-rdp_check' {
    assert "$(xsrc_find _impacket-rdp_check)" is_file
}
@test 'more_src has _impacket-secretsdump' {
    assert "$(xsrc_find _impacket-secretsdump)" is_file
}
@test 'more_src has _impacket-secretsdump-py' {
    assert "$(xsrc_find _impacket-secretsdump-py)" is_file
}
@test 'more_src has _impacket-smbexec' {
    assert "$(xsrc_find _impacket-smbexec)" is_file
}
@test 'more_src has _impacket-smbserver' {
    assert "$(xsrc_find _impacket-smbserver)" is_file
}
@test 'more_src has _impacket-sniffer' {
    assert "$(xsrc_find _impacket-sniffer)" is_file
}
@test 'more_src has _impacket-split' {
    assert "$(xsrc_find _impacket-split)" is_file
}
@test 'more_src has _impacket-ticketconverter' {
    assert "$(xsrc_find _impacket-ticketconverter)" is_file
}
@test 'more_src has _impacket-ticketer' {
    assert "$(xsrc_find _impacket-ticketer)" is_file
}
@test 'more_src has _impacket-tstool' {
    assert "$(xsrc_find _impacket-tstool)" is_file
}
@test 'more_src has _impacket-wmipersist' {
    assert "$(xsrc_find _impacket-wmipersist)" is_file
}
@test 'more_src has _impala' {
    assert "$(xsrc_find _impala)" is_file
}
@test 'more_src has _implicit-hie' {
    assert "$(xsrc_find _implicit-hie)" is_file
}
@test 'more_src has _imv' {
    assert "$(xsrc_find _imv)" is_file
}
@test 'more_src has _in2csv' {
    assert "$(xsrc_find _in2csv)" is_file
}
@test 'more_src has _in3.sh' {
    assert "$(xsrc_find _in3.sh)" is_file
}
@test 'more_src has _incrond' {
    assert "$(xsrc_find _incrond)" is_file
}
@test 'more_src has _incus' {
    assert "$(xsrc_find _incus)" is_file
}
@test 'more_src has _incusbox' {
    assert "$(xsrc_find _incusbox)" is_file
}
@test 'more_src has _infat' {
    assert "$(xsrc_find _infat)" is_file
}
@test 'more_src has _infisical' {
    assert "$(xsrc_find _infisical)" is_file
}
@test 'more_src has _influx' {
    assert "$(xsrc_find _influx)" is_file
}
@test 'more_src has _influxd' {
    assert "$(xsrc_find _influxd)" is_file
}
@test 'more_src has _influxd-ctl' {
    assert "$(xsrc_find _influxd-ctl)" is_file
}
@test 'more_src has _influxd-data' {
    assert "$(xsrc_find _influxd-data)" is_file
}
@test 'more_src has _influxd-meta' {
    assert "$(xsrc_find _influxd-meta)" is_file
}
@test 'more_src has _infoalign' {
    assert "$(xsrc_find _infoalign)" is_file
}
@test 'more_src has _inform' {
    assert "$(xsrc_find _inform)" is_file
}
@test 'more_src has _inform6' {
    assert "$(xsrc_find _inform6)" is_file
}
@test 'more_src has _inform7' {
    assert "$(xsrc_find _inform7)" is_file
}
@test 'more_src has _infracost' {
    assert "$(xsrc_find _infracost)" is_file
}
@test 'more_src has _infratoolbox' {
    assert "$(xsrc_find _infratoolbox)" is_file
}
@test 'more_src has _inkview' {
    assert "$(xsrc_find _inkview)" is_file
}
@test 'more_src has _inlyne' {
    assert "$(xsrc_find _inlyne)" is_file
}
@test 'more_src has _innernet' {
    assert "$(xsrc_find _innernet)" is_file
}
@test 'more_src has _innernet-server' {
    assert "$(xsrc_find _innernet-server)" is_file
}
@test 'more_src has _innernet-server.completions' {
    assert "$(xsrc_find _innernet-server.completions)" is_file
}
@test 'more_src has _innoextract' {
    assert "$(xsrc_find _innoextract)" is_file
}
@test 'more_src has _inotifywait' {
    assert "$(xsrc_find _inotifywait)" is_file
}
@test 'more_src has _inotifywatch' {
    assert "$(xsrc_find _inotifywatch)" is_file
}
@test 'more_src has _inox' {
    assert "$(xsrc_find _inox)" is_file
}
@test 'more_src has _inputlirc' {
    assert "$(xsrc_find _inputlirc)" is_file
}
@test 'more_src has _inso' {
    assert "$(xsrc_find _inso)" is_file
}
@test 'more_src has _inspect' {
    assert "$(xsrc_find _inspect)" is_file
}
@test 'more_src has _inspector-bin' {
    assert "$(xsrc_find _inspector-bin)" is_file
}
@test 'more_src has _inspircd' {
    assert "$(xsrc_find _inspircd)" is_file
}
@test 'more_src has _instancer' {
    assert "$(xsrc_find _instancer)" is_file
}
@test 'more_src has _instmodsh' {
    assert "$(xsrc_find _instmodsh)" is_file
}
@test 'more_src has _instructor' {
    assert "$(xsrc_find _instructor)" is_file
}
@test 'more_src has _instructor-cli' {
    assert "$(xsrc_find _instructor-cli)" is_file
}
@test 'more_src has _integrit' {
    assert "$(xsrc_find _integrit)" is_file
}
@test 'more_src has _intel-cmt-cat' {
    assert "$(xsrc_find _intel-cmt-cat)" is_file
}
@test 'more_src has _intel-fw-tools' {
    assert "$(xsrc_find _intel-fw-tools)" is_file
}
@test 'more_src has _intel_gpu_frequency' {
    assert "$(xsrc_find _intel_gpu_frequency)" is_file
}
@test 'more_src has _interactsh-client' {
    assert "$(xsrc_find _interactsh-client)" is_file
}
@test 'more_src has _invoice' {
    assert "$(xsrc_find _invoice)" is_file
}
@test 'more_src has _ioctl' {
    assert "$(xsrc_find _ioctl)" is_file
}
@test 'more_src has _ion' {
    assert "$(xsrc_find _ion)" is_file
}
@test 'more_src has _ioping' {
    assert "$(xsrc_find _ioping)" is_file
}
@test 'more_src has _iortcw' {
    assert "$(xsrc_find _iortcw)" is_file
}
@test 'more_src has _ipa-acme-manage' {
    assert "$(xsrc_find _ipa-acme-manage)" is_file
}
@test 'more_src has _ipa-adtrust-install' {
    assert "$(xsrc_find _ipa-adtrust-install)" is_file
}
@test 'more_src has _ipa-advise' {
    assert "$(xsrc_find _ipa-advise)" is_file
}
@test 'more_src has _ipa-backup' {
    assert "$(xsrc_find _ipa-backup)" is_file
}
@test 'more_src has _ipa-ca-install' {
    assert "$(xsrc_find _ipa-ca-install)" is_file
}
@test 'more_src has _ipa-cacert-manage' {
    assert "$(xsrc_find _ipa-cacert-manage)" is_file
}
@test 'more_src has _ipa-certupdate' {
    assert "$(xsrc_find _ipa-certupdate)" is_file
}
@test 'more_src has _ipa-client-automount' {
    assert "$(xsrc_find _ipa-client-automount)" is_file
}
@test 'more_src has _ipa-compat-manage' {
    assert "$(xsrc_find _ipa-compat-manage)" is_file
}
@test 'more_src has _ipa-csr-gen' {
    assert "$(xsrc_find _ipa-csr-gen)" is_file
}
@test 'more_src has _ipa-csreplica-manage' {
    assert "$(xsrc_find _ipa-csreplica-manage)" is_file
}
@test 'more_src has _ipa-dns-install' {
    assert "$(xsrc_find _ipa-dns-install)" is_file
}
@test 'more_src has _ipa-kra-install' {
    assert "$(xsrc_find _ipa-kra-install)" is_file
}
@test 'more_src has _ipa-ldap-updater' {
    assert "$(xsrc_find _ipa-ldap-updater)" is_file
}
@test 'more_src has _ipa-managed-entries' {
    assert "$(xsrc_find _ipa-managed-entries)" is_file
}
@test 'more_src has _ipa-nis-manage' {
    assert "$(xsrc_find _ipa-nis-manage)" is_file
}
@test 'more_src has _ipa-otpd' {
    assert "$(xsrc_find _ipa-otpd)" is_file
}
@test 'more_src has _ipa-otptoken-import' {
    assert "$(xsrc_find _ipa-otptoken-import)" is_file
}
@test 'more_src has _ipa-pki-retrieve-key' {
    assert "$(xsrc_find _ipa-pki-retrieve-key)" is_file
}
@test 'more_src has _ipa-pkinit-manage' {
    assert "$(xsrc_find _ipa-pkinit-manage)" is_file
}
@test 'more_src has _ipa-pwd-extop' {
    assert "$(xsrc_find _ipa-pwd-extop)" is_file
}
@test 'more_src has _ipa-pwd-extop-manage' {
    assert "$(xsrc_find _ipa-pwd-extop-manage)" is_file
}
@test 'more_src has _ipa-replica-conncheck' {
    assert "$(xsrc_find _ipa-replica-conncheck)" is_file
}
@test 'more_src has _ipa-replica-install' {
    assert "$(xsrc_find _ipa-replica-install)" is_file
}
@test 'more_src has _ipa-replica-manage' {
    assert "$(xsrc_find _ipa-replica-manage)" is_file
}
@test 'more_src has _ipa-replica-prepare' {
    assert "$(xsrc_find _ipa-replica-prepare)" is_file
}
@test 'more_src has _ipa-restore' {
    assert "$(xsrc_find _ipa-restore)" is_file
}
@test 'more_src has _ipa-server-certinstall' {
    assert "$(xsrc_find _ipa-server-certinstall)" is_file
}
@test 'more_src has _ipa-server-upgrade' {
    assert "$(xsrc_find _ipa-server-upgrade)" is_file
}
@test 'more_src has _ipa-trust-add' {
    assert "$(xsrc_find _ipa-trust-add)" is_file
}
@test 'more_src has _ipa-trust-del' {
    assert "$(xsrc_find _ipa-trust-del)" is_file
}
@test 'more_src has _ipa-trust-mod' {
    assert "$(xsrc_find _ipa-trust-mod)" is_file
}
@test 'more_src has _ipa-winsync-migrate' {
    assert "$(xsrc_find _ipa-winsync-migrate)" is_file
}
@test 'more_src has _ipam' {
    assert "$(xsrc_find _ipam)" is_file
}
@test 'more_src has _ipcalc-ng' {
    assert "$(xsrc_find _ipcalc-ng)" is_file
}
@test 'more_src has _ipcheck' {
    assert "$(xsrc_find _ipcheck)" is_file
}
@test 'more_src has _ipconfig' {
    assert "$(xsrc_find _ipconfig)" is_file
}
@test 'more_src has _ipdb' {
    assert "$(xsrc_find _ipdb)" is_file
}
@test 'more_src has _ipdbpp' {
    assert "$(xsrc_find _ipdbpp)" is_file
}
@test 'more_src has _ipfwadm' {
    assert "$(xsrc_find _ipfwadm)" is_file
}
@test 'more_src has _ipinfo-cli' {
    assert "$(xsrc_find _ipinfo-cli)" is_file
}
@test 'more_src has _ipmi-time-sync' {
    assert "$(xsrc_find _ipmi-time-sync)" is_file
}
@test 'more_src has _ipmi-watchdog' {
    assert "$(xsrc_find _ipmi-watchdog)" is_file
}
@test 'more_src has _ippdiscover' {
    assert "$(xsrc_find _ippdiscover)" is_file
}
@test 'more_src has _ippproxy' {
    assert "$(xsrc_find _ippproxy)" is_file
}
@test 'more_src has _ippregfile' {
    assert "$(xsrc_find _ippregfile)" is_file
}
@test 'more_src has _iprofiler' {
    assert "$(xsrc_find _iprofiler)" is_file
}
@test 'more_src has _ipsec-charon' {
    assert "$(xsrc_find _ipsec-charon)" is_file
}
@test 'more_src has _ipsec-iked' {
    assert "$(xsrc_find _ipsec-iked)" is_file
}
@test 'more_src has _ipsec-iked-ctl' {
    assert "$(xsrc_find _ipsec-iked-ctl)" is_file
}
@test 'more_src has _ipsw' {
    assert "$(xsrc_find _ipsw)" is_file
}
@test 'more_src has _iptcedit' {
    assert "$(xsrc_find _iptcedit)" is_file
}
@test 'more_src has _ipvsadm' {
    assert "$(xsrc_find _ipvsadm)" is_file
}
@test 'more_src has _iqtree' {
    assert "$(xsrc_find _iqtree)" is_file
}
@test 'more_src has _iqtree2' {
    assert "$(xsrc_find _iqtree2)" is_file
}
@test 'more_src has _ircat' {
    assert "$(xsrc_find _ircat)" is_file
}
@test 'more_src has _iredis' {
    assert "$(xsrc_find _iredis)" is_file
}
@test 'more_src has _irexec' {
    assert "$(xsrc_find _irexec)" is_file
}
@test 'more_src has _iris' {
    assert "$(xsrc_find _iris)" is_file
}
@test 'more_src has _ironic-api' {
    assert "$(xsrc_find _ironic-api)" is_file
}
@test 'more_src has _ironic-conductor' {
    assert "$(xsrc_find _ironic-conductor)" is_file
}
@test 'more_src has _ironic-dbsync' {
    assert "$(xsrc_find _ironic-dbsync)" is_file
}
@test 'more_src has _ironic-rootwrap' {
    assert "$(xsrc_find _ironic-rootwrap)" is_file
}
@test 'more_src has _ironic-status' {
    assert "$(xsrc_find _ironic-status)" is_file
}
@test 'more_src has _irrecord' {
    assert "$(xsrc_find _irrecord)" is_file
}
@test 'more_src has _irsend' {
    assert "$(xsrc_find _irsend)" is_file
}
@test 'more_src has _irw' {
    assert "$(xsrc_find _irw)" is_file
}
@test 'more_src has _isic' {
    assert "$(xsrc_find _isic)" is_file
}
@test 'more_src has _isisd' {
    assert "$(xsrc_find _isisd)" is_file
}
@test 'more_src has _isolinux' {
    assert "$(xsrc_find _isolinux)" is_file
}
@test 'more_src has _issw' {
    assert "$(xsrc_find _issw)" is_file
}
@test 'more_src has _istiod' {
    assert "$(xsrc_find _istiod)" is_file
}
@test 'more_src has _ito' {
    assert "$(xsrc_find _ito)" is_file
}
@test 'more_src has _iwt' {
    assert "$(xsrc_find _iwt)" is_file
}
@test 'more_src has _j4-dmenu-desktop' {
    assert "$(xsrc_find _j4-dmenu-desktop)" is_file
}
@test 'more_src has _jack-mixer' {
    assert "$(xsrc_find _jack-mixer)" is_file
}
@test 'more_src has _jack_bufsize' {
    assert "$(xsrc_find _jack_bufsize)" is_file
}
@test 'more_src has _jack_capture' {
    assert "$(xsrc_find _jack_capture)" is_file
}
@test 'more_src has _jack_control' {
    assert "$(xsrc_find _jack_control)" is_file
}
@test 'more_src has _jack_evmon' {
    assert "$(xsrc_find _jack_evmon)" is_file
}
@test 'more_src has _jack_freewheel' {
    assert "$(xsrc_find _jack_freewheel)" is_file
}
@test 'more_src has _jack_iodelay' {
    assert "$(xsrc_find _jack_iodelay)" is_file
}
@test 'more_src has _jack_midiseq' {
    assert "$(xsrc_find _jack_midiseq)" is_file
}
@test 'more_src has _jack_midisine' {
    assert "$(xsrc_find _jack_midisine)" is_file
}
@test 'more_src has _jack_mixer' {
    assert "$(xsrc_find _jack_mixer)" is_file
}
@test 'more_src has _jack_monitor_client' {
    assert "$(xsrc_find _jack_monitor_client)" is_file
}
@test 'more_src has _jack_mp3rec' {
    assert "$(xsrc_find _jack_mp3rec)" is_file
}
@test 'more_src has _jack_rec' {
    assert "$(xsrc_find _jack_rec)" is_file
}
@test 'more_src has _jack_samplerate' {
    assert "$(xsrc_find _jack_samplerate)" is_file
}
@test 'more_src has _jack_server_control' {
    assert "$(xsrc_find _jack_server_control)" is_file
}
@test 'more_src has _jack_session_notify' {
    assert "$(xsrc_find _jack_session_notify)" is_file
}
@test 'more_src has _jack_showtime' {
    assert "$(xsrc_find _jack_showtime)" is_file
}
@test 'more_src has _jack_simple_client' {
    assert "$(xsrc_find _jack_simple_client)" is_file
}
@test 'more_src has _jack_simple_session_client' {
    assert "$(xsrc_find _jack_simple_session_client)" is_file
}
@test 'more_src has _jack_thru' {
    assert "$(xsrc_find _jack_thru)" is_file
}
@test 'more_src has _jack_transport' {
    assert "$(xsrc_find _jack_transport)" is_file
}
@test 'more_src has _jack_unload' {
    assert "$(xsrc_find _jack_unload)" is_file
}
@test 'more_src has _jack_zombie' {
    assert "$(xsrc_find _jack_zombie)" is_file
}
@test 'more_src has _jackctl' {
    assert "$(xsrc_find _jackctl)" is_file
}
@test 'more_src has _jackdbus' {
    assert "$(xsrc_find _jackdbus)" is_file
}
@test 'more_src has _jackdmp' {
    assert "$(xsrc_find _jackdmp)" is_file
}
@test 'more_src has _jackhmmer' {
    assert "$(xsrc_find _jackhmmer)" is_file
}
@test 'more_src has _jackmeter' {
    assert "$(xsrc_find _jackmeter)" is_file
}
@test 'more_src has _jackmix' {
    assert "$(xsrc_find _jackmix)" is_file
}
@test 'more_src has _jackrack' {
    assert "$(xsrc_find _jackrack)" is_file
}
@test 'more_src has _jaeger' {
    assert "$(xsrc_find _jaeger)" is_file
}
@test 'more_src has _jaeger-operator' {
    assert "$(xsrc_find _jaeger-operator)" is_file
}
@test 'more_src has _jailer' {
    assert "$(xsrc_find _jailer)" is_file
}
@test 'more_src has _jailing' {
    assert "$(xsrc_find _jailing)" is_file
}
@test 'more_src has _jailkit' {
    assert "$(xsrc_find _jailkit)" is_file
}
@test 'more_src has _jamf' {
    assert "$(xsrc_find _jamf)" is_file
}
@test 'more_src has _jamin' {
    assert "$(xsrc_find _jamin)" is_file
}
@test 'more_src has _janet' {
    assert "$(xsrc_find _janet)" is_file
}
@test 'more_src has _janitor' {
    assert "$(xsrc_find _janitor)" is_file
}
@test 'more_src has _janusgraph' {
    assert "$(xsrc_find _janusgraph)" is_file
}
@test 'more_src has _jaq' {
    assert "$(xsrc_find _jaq)" is_file
}
@test 'more_src has _javacc' {
    assert "$(xsrc_find _javacc)" is_file
}
@test 'more_src has _jay' {
    assert "$(xsrc_find _jay)" is_file
}
@test 'more_src has _jc' {
    assert "$(xsrc_find _jc)" is_file
}
@test 'more_src has _jcli' {
    assert "$(xsrc_find _jcli)" is_file
}
@test 'more_src has _jd' {
    assert "$(xsrc_find _jd)" is_file
}
@test 'more_src has _jdnssec-dstool' {
    assert "$(xsrc_find _jdnssec-dstool)" is_file
}
@test 'more_src has _jdupes' {
    assert "$(xsrc_find _jdupes)" is_file
}
@test 'more_src has _jello' {
    assert "$(xsrc_find _jello)" is_file
}
@test 'more_src has _jenkinsfile-runner' {
    assert "$(xsrc_find _jenkinsfile-runner)" is_file
}
@test 'more_src has _jenv' {
    assert "$(xsrc_find _jenv)" is_file
}
@test 'more_src has _jetti' {
    assert "$(xsrc_find _jetti)" is_file
}
@test 'more_src has _jf' {
    assert "$(xsrc_find _jf)" is_file
}
@test 'more_src has _jfr' {
    assert "$(xsrc_find _jfr)" is_file
}
@test 'more_src has _jfrog' {
    assert "$(xsrc_find _jfrog)" is_file
}
@test 'more_src has _jg' {
    assert "$(xsrc_find _jg)" is_file
}
@test 'more_src has _jhsdb' {
    assert "$(xsrc_find _jhsdb)" is_file
}
@test 'more_src has _jid' {
    assert "$(xsrc_find _jid)" is_file
}
@test 'more_src has _jikes' {
    assert "$(xsrc_find _jikes)" is_file
}
@test 'more_src has _jina' {
    assert "$(xsrc_find _jina)" is_file
}
@test 'more_src has _jira' {
    assert "$(xsrc_find _jira)" is_file
}
@test 'more_src has _jiracli' {
    assert "$(xsrc_find _jiracli)" is_file
}
@test 'more_src has _jj' {
    assert "$(xsrc_find _jj)" is_file
}
@test 'more_src has _jj-fzf' {
    assert "$(xsrc_find _jj-fzf)" is_file
}
@test 'more_src has _jless' {
    assert "$(xsrc_find _jless)" is_file
}
@test 'more_src has _jlpm' {
    assert "$(xsrc_find _jlpm)" is_file
}
@test 'more_src has _jmp' {
    assert "$(xsrc_find _jmp)" is_file
}
@test 'more_src has _jnativescan' {
    assert "$(xsrc_find _jnativescan)" is_file
}
@test 'more_src has _jnv' {
    assert "$(xsrc_find _jnv)" is_file
}
@test 'more_src has _jo' {
    assert "$(xsrc_find _jo)" is_file
}
@test 'more_src has _jobber' {
    assert "$(xsrc_find _jobber)" is_file
}
@test 'more_src has _joker' {
    assert "$(xsrc_find _joker)" is_file
}
@test 'more_src has _jormungandr' {
    assert "$(xsrc_find _jormungandr)" is_file
}
@test 'more_src has _joshuto' {
    assert "$(xsrc_find _joshuto)" is_file
}
@test 'more_src has _josm' {
    assert "$(xsrc_find _josm)" is_file
}
@test 'more_src has _joy' {
    assert "$(xsrc_find _joy)" is_file
}
@test 'more_src has _joyserver' {
    assert "$(xsrc_find _joyserver)" is_file
}
@test 'more_src has _joystick-test' {
    assert "$(xsrc_find _joystick-test)" is_file
}
@test 'more_src has _jp2a' {
    assert "$(xsrc_find _jp2a)" is_file
}
@test 'more_src has _jpackager' {
    assert "$(xsrc_find _jpackager)" is_file
}
@test 'more_src has _jpegoptim' {
    assert "$(xsrc_find _jpegoptim)" is_file
}
@test 'more_src has _jpegrescan' {
    assert "$(xsrc_find _jpegrescan)" is_file
}
@test 'more_src has _jpm' {
    assert "$(xsrc_find _jpm)" is_file
}
@test 'more_src has _jql' {
    assert "$(xsrc_find _jql)" is_file
}
@test 'more_src has _jqp' {
    assert "$(xsrc_find _jqp)" is_file
}
@test 'more_src has _jruby' {
    assert "$(xsrc_find _jruby)" is_file
}
@test 'more_src has _jsforce' {
    assert "$(xsrc_find _jsforce)" is_file
}
@test 'more_src has _jsforce-deploy' {
    assert "$(xsrc_find _jsforce-deploy)" is_file
}
@test 'more_src has _jsforce-retrieve' {
    assert "$(xsrc_find _jsforce-retrieve)" is_file
}
@test 'more_src has _json2parquet' {
    assert "$(xsrc_find _json2parquet)" is_file
}
@test 'more_src has _json2struct' {
    assert "$(xsrc_find _json2struct)" is_file
}
@test 'more_src has _jsonlint' {
    assert "$(xsrc_find _jsonlint)" is_file
}
@test 'more_src has _jsonnet' {
    assert "$(xsrc_find _jsonnet)" is_file
}
@test 'more_src has _jstest-gtk' {
    assert "$(xsrc_find _jstest-gtk)" is_file
}
@test 'more_src has _jtbl' {
    assert "$(xsrc_find _jtbl)" is_file
}
@test 'more_src has _jtool' {
    assert "$(xsrc_find _jtool)" is_file
}
@test 'more_src has _jtool2' {
    assert "$(xsrc_find _jtool2)" is_file
}
@test 'more_src has _jubaconv' {
    assert "$(xsrc_find _jubaconv)" is_file
}
@test 'more_src has _jubaseries' {
    assert "$(xsrc_find _jubaseries)" is_file
}
@test 'more_src has _judgeval' {
    assert "$(xsrc_find _judgeval)" is_file
}
@test 'more_src has _juju' {
    assert "$(xsrc_find _juju)" is_file
}
@test 'more_src has _juju-run' {
    assert "$(xsrc_find _juju-run)" is_file
}
@test 'more_src has _jules' {
    assert "$(xsrc_find _jules)" is_file
}
@test 'more_src has _juliac' {
    assert "$(xsrc_find _juliac)" is_file
}
@test 'more_src has _juliaup' {
    assert "$(xsrc_find _juliaup)" is_file
}
@test 'more_src has _jump' {
    assert "$(xsrc_find _jump)" is_file
}
@test 'more_src has _jupyter-console' {
    assert "$(xsrc_find _jupyter-console)" is_file
}
@test 'more_src has _jupyter-events' {
    assert "$(xsrc_find _jupyter-events)" is_file
}
@test 'more_src has _jupyter-kernelspec' {
    assert "$(xsrc_find _jupyter-kernelspec)" is_file
}
@test 'more_src has _jupyter-lab' {
    assert "$(xsrc_find _jupyter-lab)" is_file
}
@test 'more_src has _jupyter-labextension' {
    assert "$(xsrc_find _jupyter-labextension)" is_file
}
@test 'more_src has _jupyter-o2' {
    assert "$(xsrc_find _jupyter-o2)" is_file
}
@test 'more_src has _jupyter-qtconsole' {
    assert "$(xsrc_find _jupyter-qtconsole)" is_file
}
@test 'more_src has _jupyter-troubleshoot' {
    assert "$(xsrc_find _jupyter-troubleshoot)" is_file
}
@test 'more_src has _just' {
    assert "$(xsrc_find _just)" is_file
}
@test 'more_src has _jux-keygen' {
    assert "$(xsrc_find _jux-keygen)" is_file
}
@test 'more_src has _jvc' {
    assert "$(xsrc_find _jvc)" is_file
}
@test 'more_src has _jwasm' {
    assert "$(xsrc_find _jwasm)" is_file
}
@test 'more_src has _jwebserver' {
    assert "$(xsrc_find _jwebserver)" is_file
}
@test 'more_src has _jwm' {
    assert "$(xsrc_find _jwm)" is_file
}
@test 'more_src has _jwt' {
    assert "$(xsrc_find _jwt)" is_file
}
@test 'more_src has _jwt-term' {
    assert "$(xsrc_find _jwt-term)" is_file
}
@test 'more_src has _jython' {
    assert "$(xsrc_find _jython)" is_file
}
@test 'more_src has _k0s' {
    assert "$(xsrc_find _k0s)" is_file
}
@test 'more_src has _k3d' {
    assert "$(xsrc_find _k3d)" is_file
}
@test 'more_src has _k3sup' {
    assert "$(xsrc_find _k3sup)" is_file
}
@test 'more_src has _k5srvutil' {
    assert "$(xsrc_find _k5srvutil)" is_file
}
@test 'more_src has _k6' {
    assert "$(xsrc_find _k6)" is_file
}
@test 'more_src has _k8s-device-plugin' {
    assert "$(xsrc_find _k8s-device-plugin)" is_file
}
@test 'more_src has _k8sgpt' {
    assert "$(xsrc_find _k8sgpt)" is_file
}
@test 'more_src has _k9s' {
    assert "$(xsrc_find _k9s)" is_file
}
@test 'more_src has _kabu' {
    assert "$(xsrc_find _kabu)" is_file
}
@test 'more_src has _kactivities5' {
    assert "$(xsrc_find _kactivities5)" is_file
}
@test 'more_src has _kaffeine' {
    assert "$(xsrc_find _kaffeine)" is_file
}
@test 'more_src has _kafka-acls' {
    assert "$(xsrc_find _kafka-acls)" is_file
}
@test 'more_src has _kafka-broker-api-versions' {
    assert "$(xsrc_find _kafka-broker-api-versions)" is_file
}
@test 'more_src has _kafka-client-metrics' {
    assert "$(xsrc_find _kafka-client-metrics)" is_file
}
@test 'more_src has _kafka-cluster' {
    assert "$(xsrc_find _kafka-cluster)" is_file
}
@test 'more_src has _kafka-configs' {
    assert "$(xsrc_find _kafka-configs)" is_file
}
@test 'more_src has _kafka-console-consumer' {
    assert "$(xsrc_find _kafka-console-consumer)" is_file
}
@test 'more_src has _kafka-console-producer' {
    assert "$(xsrc_find _kafka-console-producer)" is_file
}
@test 'more_src has _kafka-console-share-consumer' {
    assert "$(xsrc_find _kafka-console-share-consumer)" is_file
}
@test 'more_src has _kafka-consumer-groups' {
    assert "$(xsrc_find _kafka-consumer-groups)" is_file
}
@test 'more_src has _kafka-consumer-perf-test' {
    assert "$(xsrc_find _kafka-consumer-perf-test)" is_file
}
@test 'more_src has _kafka-delegation-tokens' {
    assert "$(xsrc_find _kafka-delegation-tokens)" is_file
}
@test 'more_src has _kafka-delete-records' {
    assert "$(xsrc_find _kafka-delete-records)" is_file
}
@test 'more_src has _kafka-dump-log' {
    assert "$(xsrc_find _kafka-dump-log)" is_file
}
@test 'more_src has _kafka-e2e-latency' {
    assert "$(xsrc_find _kafka-e2e-latency)" is_file
}
@test 'more_src has _kafka-features' {
    assert "$(xsrc_find _kafka-features)" is_file
}
@test 'more_src has _kafka-get-offsets' {
    assert "$(xsrc_find _kafka-get-offsets)" is_file
}
@test 'more_src has _kafka-groups' {
    assert "$(xsrc_find _kafka-groups)" is_file
}
@test 'more_src has _kafka-jmx' {
    assert "$(xsrc_find _kafka-jmx)" is_file
}
@test 'more_src has _kafka-leader-election' {
    assert "$(xsrc_find _kafka-leader-election)" is_file
}
@test 'more_src has _kafka-log-dirs' {
    assert "$(xsrc_find _kafka-log-dirs)" is_file
}
@test 'more_src has _kafka-metadata-quorum' {
    assert "$(xsrc_find _kafka-metadata-quorum)" is_file
}
@test 'more_src has _kafka-metadata-shell' {
    assert "$(xsrc_find _kafka-metadata-shell)" is_file
}
@test 'more_src has _kafka-producer-perf-test' {
    assert "$(xsrc_find _kafka-producer-perf-test)" is_file
}
@test 'more_src has _kafka-reassign-partitions' {
    assert "$(xsrc_find _kafka-reassign-partitions)" is_file
}
@test 'more_src has _kafka-replica-verification' {
    assert "$(xsrc_find _kafka-replica-verification)" is_file
}
@test 'more_src has _kafka-run-class' {
    assert "$(xsrc_find _kafka-run-class)" is_file
}
@test 'more_src has _kafka-server-start' {
    assert "$(xsrc_find _kafka-server-start)" is_file
}
@test 'more_src has _kafka-server-stop' {
    assert "$(xsrc_find _kafka-server-stop)" is_file
}
@test 'more_src has _kafka-share-consumer-perf-test' {
    assert "$(xsrc_find _kafka-share-consumer-perf-test)" is_file
}
@test 'more_src has _kafka-share-groups' {
    assert "$(xsrc_find _kafka-share-groups)" is_file
}
@test 'more_src has _kafka-storage' {
    assert "$(xsrc_find _kafka-storage)" is_file
}
@test 'more_src has _kafka-streams-application-reset' {
    assert "$(xsrc_find _kafka-streams-application-reset)" is_file
}
@test 'more_src has _kafka-streams-groups' {
    assert "$(xsrc_find _kafka-streams-groups)" is_file
}
@test 'more_src has _kafka-topics' {
    assert "$(xsrc_find _kafka-topics)" is_file
}
@test 'more_src has _kafka-transactions' {
    assert "$(xsrc_find _kafka-transactions)" is_file
}
@test 'more_src has _kafka-verifiable-consumer' {
    assert "$(xsrc_find _kafka-verifiable-consumer)" is_file
}
@test 'more_src has _kafka-verifiable-producer' {
    assert "$(xsrc_find _kafka-verifiable-producer)" is_file
}
@test 'more_src has _kafka-verifiable-share-consumer' {
    assert "$(xsrc_find _kafka-verifiable-share-consumer)" is_file
}
@test 'more_src has _kail' {
    assert "$(xsrc_find _kail)" is_file
}
@test 'more_src has _kak-tree-sitter' {
    assert "$(xsrc_find _kak-tree-sitter)" is_file
}
@test 'more_src has _kalker' {
    assert "$(xsrc_find _kalker)" is_file
}
@test 'more_src has _kalliope' {
    assert "$(xsrc_find _kalliope)" is_file
}
@test 'more_src has _kalzium' {
    assert "$(xsrc_find _kalzium)" is_file
}
@test 'more_src has _kamailio' {
    assert "$(xsrc_find _kamailio)" is_file
}
@test 'more_src has _kamal' {
    assert "$(xsrc_find _kamal)" is_file
}
@test 'more_src has _kanagram' {
    assert "$(xsrc_find _kanagram)" is_file
}
@test 'more_src has _kanata' {
    assert "$(xsrc_find _kanata)" is_file
}
@test 'more_src has _kandle' {
    assert "$(xsrc_find _kandle)" is_file
}
@test 'more_src has _kanidm' {
    assert "$(xsrc_find _kanidm)" is_file
}
@test 'more_src has _kaniko' {
    assert "$(xsrc_find _kaniko)" is_file
}
@test 'more_src has _kanjipad' {
    assert "$(xsrc_find _kanjipad)" is_file
}
@test 'more_src has _kapitan' {
    assert "$(xsrc_find _kapitan)" is_file
}
@test 'more_src has _kapp' {
    assert "$(xsrc_find _kapp)" is_file
}
@test 'more_src has _kapp-controller' {
    assert "$(xsrc_find _kapp-controller)" is_file
}
@test 'more_src has _kapptemplate' {
    assert "$(xsrc_find _kapptemplate)" is_file
}
@test 'more_src has _kapt' {
    assert "$(xsrc_find _kapt)" is_file
}
@test 'more_src has _karabiner_cli' {
    assert "$(xsrc_find _karabiner_cli)" is_file
}
@test 'more_src has _kargo' {
    assert "$(xsrc_find _kargo)" is_file
}
@test 'more_src has _karmada-agent' {
    assert "$(xsrc_find _karmada-agent)" is_file
}
@test 'more_src has _karmada-aggregated-apiserver' {
    assert "$(xsrc_find _karmada-aggregated-apiserver)" is_file
}
@test 'more_src has _karmada-controller-manager' {
    assert "$(xsrc_find _karmada-controller-manager)" is_file
}
@test 'more_src has _karmada-descheduler' {
    assert "$(xsrc_find _karmada-descheduler)" is_file
}
@test 'more_src has _karmada-metrics-adapter' {
    assert "$(xsrc_find _karmada-metrics-adapter)" is_file
}
@test 'more_src has _karmada-scheduler' {
    assert "$(xsrc_find _karmada-scheduler)" is_file
}
@test 'more_src has _karmada-search' {
    assert "$(xsrc_find _karmada-search)" is_file
}
@test 'more_src has _karmada-webhook' {
    assert "$(xsrc_find _karmada-webhook)" is_file
}
@test 'more_src has _karn' {
    assert "$(xsrc_find _karn)" is_file
}
@test 'more_src has _karpor' {
    assert "$(xsrc_find _karpor)" is_file
}
@test 'more_src has _karporctl' {
    assert "$(xsrc_find _karporctl)" is_file
}
@test 'more_src has _kasetto' {
    assert "$(xsrc_find _kasetto)" is_file
}
@test 'more_src has _kaskade' {
    assert "$(xsrc_find _kaskade)" is_file
}
@test 'more_src has _kasumi' {
    assert "$(xsrc_find _kasumi)" is_file
}
@test 'more_src has _kata' {
    assert "$(xsrc_find _kata)" is_file
}
@test 'more_src has _kata-collect-data' {
    assert "$(xsrc_find _kata-collect-data)" is_file
}
@test 'more_src has _kata-monitor' {
    assert "$(xsrc_find _kata-monitor)" is_file
}
@test 'more_src has _katago' {
    assert "$(xsrc_find _katago)" is_file
}
@test 'more_src has _katana' {
    assert "$(xsrc_find _katana)" is_file
}
@test 'more_src has _kati' {
    assert "$(xsrc_find _kati)" is_file
}
@test 'more_src has _kazam' {
    assert "$(xsrc_find _kazam)" is_file
}
@test 'more_src has _kbluetoothd' {
    assert "$(xsrc_find _kbluetoothd)" is_file
}
@test 'more_src has _kbookmarkmerger' {
    assert "$(xsrc_find _kbookmarkmerger)" is_file
}
@test 'more_src has _kbounce' {
    assert "$(xsrc_find _kbounce)" is_file
}
@test 'more_src has _kbreakout' {
    assert "$(xsrc_find _kbreakout)" is_file
}
@test 'more_src has _kbruch' {
    assert "$(xsrc_find _kbruch)" is_file
}
@test 'more_src has _kbs2' {
    assert "$(xsrc_find _kbs2)" is_file
}
@test 'more_src has _kcadm' {
    assert "$(xsrc_find _kcadm)" is_file
}
@test 'more_src has _kcalc' {
    assert "$(xsrc_find _kcalc)" is_file
}
@test 'more_src has _kcat' {
    assert "$(xsrc_find _kcat)" is_file
}
@test 'more_src has _kcharselect' {
    assert "$(xsrc_find _kcharselect)" is_file
}
@test 'more_src has _kcl' {
    assert "$(xsrc_find _kcl)" is_file
}
@test 'more_src has _kclock' {
    assert "$(xsrc_find _kclock)" is_file
}
@test 'more_src has _kconf' {
    assert "$(xsrc_find _kconf)" is_file
}
@test 'more_src has _kd' {
    assert "$(xsrc_find _kd)" is_file
}
@test 'more_src has _kdash' {
    assert "$(xsrc_find _kdash)" is_file
}
@test 'more_src has _kdb' {
    assert "$(xsrc_find _kdb)" is_file
}
@test 'more_src has _kdbx' {
    assert "$(xsrc_find _kdbx)" is_file
}
@test 'more_src has _kded6' {
    assert "$(xsrc_find _kded6)" is_file
}
@test 'more_src has _kdeinit6' {
    assert "$(xsrc_find _kdeinit6)" is_file
}
@test 'more_src has _kdenlive' {
    assert "$(xsrc_find _kdenlive)" is_file
}
@test 'more_src has _kdesudo' {
    assert "$(xsrc_find _kdesudo)" is_file
}
@test 'more_src has _kdesvn' {
    assert "$(xsrc_find _kdesvn)" is_file
}
@test 'more_src has _kdevelop' {
    assert "$(xsrc_find _kdevelop)" is_file
}
@test 'more_src has _kdex' {
    assert "$(xsrc_find _kdex)" is_file
}
@test 'more_src has _kdialog' {
    assert "$(xsrc_find _kdialog)" is_file
}
@test 'more_src has _kdiamond' {
    assert "$(xsrc_find _kdiamond)" is_file
}
@test 'more_src has _kdig' {
    assert "$(xsrc_find _kdig)" is_file
}
@test 'more_src has _kdlfmt' {
    assert "$(xsrc_find _kdlfmt)" is_file
}
@test 'more_src has _kdp-scout' {
    assert "$(xsrc_find _kdp-scout)" is_file
}
@test 'more_src has _kdv' {
    assert "$(xsrc_find _kdv)" is_file
}
@test 'more_src has _kea-admin' {
    assert "$(xsrc_find _kea-admin)" is_file
}
@test 'more_src has _kea-ctrl-agent' {
    assert "$(xsrc_find _kea-ctrl-agent)" is_file
}
@test 'more_src has _kea-dhcp-ddns' {
    assert "$(xsrc_find _kea-dhcp-ddns)" is_file
}
@test 'more_src has _kea-dhcp4' {
    assert "$(xsrc_find _kea-dhcp4)" is_file
}
@test 'more_src has _kea-dhcp6' {
    assert "$(xsrc_find _kea-dhcp6)" is_file
}
@test 'more_src has _kea-lfc' {
    assert "$(xsrc_find _kea-lfc)" is_file
}
@test 'more_src has _kea-netconf' {
    assert "$(xsrc_find _kea-netconf)" is_file
}
@test 'more_src has _kea-shell' {
    assert "$(xsrc_find _kea-shell)" is_file
}
@test 'more_src has _keactrl' {
    assert "$(xsrc_find _keactrl)" is_file
}
@test 'more_src has _keda' {
    assert "$(xsrc_find _keda)" is_file
}
@test 'more_src has _keditbookmarks' {
    assert "$(xsrc_find _keditbookmarks)" is_file
}
@test 'more_src has _kedro-cli' {
    assert "$(xsrc_find _kedro-cli)" is_file
}
@test 'more_src has _keepass' {
    assert "$(xsrc_find _keepass)" is_file
}
@test 'more_src has _keepass2' {
    assert "$(xsrc_find _keepass2)" is_file
}
@test 'more_src has _keploy' {
    assert "$(xsrc_find _keploy)" is_file
}
@test 'more_src has _kermit' {
    assert "$(xsrc_find _kermit)" is_file
}
@test 'more_src has _kernelshark' {
    assert "$(xsrc_find _kernelshark)" is_file
}
@test 'more_src has _ketchup' {
    assert "$(xsrc_find _ketchup)" is_file
}
@test 'more_src has _keurocalc' {
    assert "$(xsrc_find _keurocalc)" is_file
}
@test 'more_src has _kexec-tools' {
    assert "$(xsrc_find _kexec-tools)" is_file
}
@test 'more_src has _keybase' {
    assert "$(xsrc_find _keybase)" is_file
}
@test 'more_src has _keydb-benchmark' {
    assert "$(xsrc_find _keydb-benchmark)" is_file
}
@test 'more_src has _keydb-check-aof' {
    assert "$(xsrc_find _keydb-check-aof)" is_file
}
@test 'more_src has _keydb-check-rdb' {
    assert "$(xsrc_find _keydb-check-rdb)" is_file
}
@test 'more_src has _keydb-sentinel' {
    assert "$(xsrc_find _keydb-sentinel)" is_file
}
@test 'more_src has _keyscope' {
    assert "$(xsrc_find _keyscope)" is_file
}
@test 'more_src has _keysmith' {
    assert "$(xsrc_find _keysmith)" is_file
}
@test 'more_src has _keystone-manage' {
    assert "$(xsrc_find _keystone-manage)" is_file
}
@test 'more_src has _keystone-status' {
    assert "$(xsrc_find _keystone-status)" is_file
}
@test 'more_src has _keystone-wsgi-admin' {
    assert "$(xsrc_find _keystone-wsgi-admin)" is_file
}
@test 'more_src has _keystone-wsgi-public' {
    assert "$(xsrc_find _keystone-wsgi-public)" is_file
}
@test 'more_src has _keytool' {
    assert "$(xsrc_find _keytool)" is_file
}
@test 'more_src has _kfilebox' {
    assert "$(xsrc_find _kfilebox)" is_file
}
@test 'more_src has _kfind' {
    assert "$(xsrc_find _kfind)" is_file
}
@test 'more_src has _kfontview' {
    assert "$(xsrc_find _kfontview)" is_file
}
@test 'more_src has _kfp-cli' {
    assert "$(xsrc_find _kfp-cli)" is_file
}
@test 'more_src has _kg' {
    assert "$(xsrc_find _kg)" is_file
}
@test 'more_src has _kgeography' {
    assert "$(xsrc_find _kgeography)" is_file
}
@test 'more_src has _kget' {
    assert "$(xsrc_find _kget)" is_file
}
@test 'more_src has _kglobalaccel5' {
    assert "$(xsrc_find _kglobalaccel5)" is_file
}
@test 'more_src has _kgoldrunner' {
    assert "$(xsrc_find _kgoldrunner)" is_file
}
@test 'more_src has _kgomore' {
    assert "$(xsrc_find _kgomore)" is_file
}
@test 'more_src has _kgpg' {
    assert "$(xsrc_find _kgpg)" is_file
}
@test 'more_src has _kgx' {
    assert "$(xsrc_find _kgx)" is_file
}
@test 'more_src has _khal' {
    assert "$(xsrc_find _khal)" is_file
}
@test 'more_src has _khangman' {
    assert "$(xsrc_find _khangman)" is_file
}
@test 'more_src has _khaos' {
    assert "$(xsrc_find _khaos)" is_file
}
@test 'more_src has _khelpcenter' {
    assert "$(xsrc_find _khelpcenter)" is_file
}
@test 'more_src has _kiali' {
    assert "$(xsrc_find _kiali)" is_file
}
@test 'more_src has _kiali-operator' {
    assert "$(xsrc_find _kiali-operator)" is_file
}
@test 'more_src has _kicad' {
    assert "$(xsrc_find _kicad)" is_file
}
@test 'more_src has _kicad-cli-nightly' {
    assert "$(xsrc_find _kicad-cli-nightly)" is_file
}
@test 'more_src has _kickpass' {
    assert "$(xsrc_find _kickpass)" is_file
}
@test 'more_src has _kickstart' {
    assert "$(xsrc_find _kickstart)" is_file
}
@test 'more_src has _kicost' {
    assert "$(xsrc_find _kicost)" is_file
}
@test 'more_src has _kig' {
    assert "$(xsrc_find _kig)" is_file
}
@test 'more_src has _kile' {
    assert "$(xsrc_find _kile)" is_file
}
@test 'more_src has _killbots' {
    assert "$(xsrc_find _killbots)" is_file
}
@test 'more_src has _killport' {
    assert "$(xsrc_find _killport)" is_file
}
@test 'more_src has _kilo' {
    assert "$(xsrc_find _kilo)" is_file
}
@test 'more_src has _kilocode' {
    assert "$(xsrc_find _kilocode)" is_file
}
@test 'more_src has _kin' {
    assert "$(xsrc_find _kin)" is_file
}
@test 'more_src has _kind' {
    assert "$(xsrc_find _kind)" is_file
}
@test 'more_src has _kindlegen' {
    assert "$(xsrc_find _kindlegen)" is_file
}
@test 'more_src has _kine' {
    assert "$(xsrc_find _kine)" is_file
}
@test 'more_src has _king-phisher' {
    assert "$(xsrc_find _king-phisher)" is_file
}
@test 'more_src has _kio-fuse' {
    assert "$(xsrc_find _kio-fuse)" is_file
}
@test 'more_src has _kion' {
    assert "$(xsrc_find _kion)" is_file
}
@test 'more_src has _kiota' {
    assert "$(xsrc_find _kiota)" is_file
}
@test 'more_src has _kioworker' {
    assert "$(xsrc_find _kioworker)" is_file
}
@test 'more_src has _kirimase' {
    assert "$(xsrc_find _kirimase)" is_file
}
@test 'more_src has _kirograph' {
    assert "$(xsrc_find _kirograph)" is_file
}
@test 'more_src has _kirox' {
    assert "$(xsrc_find _kirox)" is_file
}
@test 'more_src has _kitty' {
    assert "$(xsrc_find _kitty)" is_file
}
@test 'more_src has _kjc' {
    assert "$(xsrc_find _kjc)" is_file
}
@test 'more_src has _kjournal' {
    assert "$(xsrc_find _kjournal)" is_file
}
@test 'more_src has _kjsembed' {
    assert "$(xsrc_find _kjsembed)" is_file
}
@test 'more_src has _kjumpingcube' {
    assert "$(xsrc_find _kjumpingcube)" is_file
}
@test 'more_src has _klef' {
    assert "$(xsrc_find _klef)" is_file
}
@test 'more_src has _kleopatra' {
    assert "$(xsrc_find _kleopatra)" is_file
}
@test 'more_src has _klines' {
    assert "$(xsrc_find _klines)" is_file
}
@test 'more_src has _klippy' {
    assert "$(xsrc_find _klippy)" is_file
}
@test 'more_src has _klotski' {
    assert "$(xsrc_find _klotski)" is_file
}
@test 'more_src has _kluctl' {
    assert "$(xsrc_find _kluctl)" is_file
}
@test 'more_src has _km' {
    assert "$(xsrc_find _km)" is_file
}
@test 'more_src has _kmag' {
    assert "$(xsrc_find _kmag)" is_file
}
@test 'more_src has _kmines' {
    assert "$(xsrc_find _kmines)" is_file
}
@test 'more_src has _kmix' {
    assert "$(xsrc_find _kmix)" is_file
}
@test 'more_src has _kmplayer' {
    assert "$(xsrc_find _kmplayer)" is_file
}
@test 'more_src has _kmymoney' {
    assert "$(xsrc_find _kmymoney)" is_file
}
@test 'more_src has _kn' {
    assert "$(xsrc_find _kn)" is_file
}
@test 'more_src has _kn-quickstart' {
    assert "$(xsrc_find _kn-quickstart)" is_file
}
@test 'more_src has _knetwalk' {
    assert "$(xsrc_find _knetwalk)" is_file
}
@test 'more_src has _knife' {
    assert "$(xsrc_find _knife)" is_file
}
@test 'more_src has _knights' {
    assert "$(xsrc_find _knights)" is_file
}
@test 'more_src has _knip-bun' {
    assert "$(xsrc_find _knip-bun)" is_file
}
@test 'more_src has _knot' {
    assert "$(xsrc_find _knot)" is_file
}
@test 'more_src has _knsec3hash' {
    assert "$(xsrc_find _knsec3hash)" is_file
}
@test 'more_src has _ko' {
    assert "$(xsrc_find _ko)" is_file
}
@test 'more_src has _kode' {
    assert "$(xsrc_find _kode)" is_file
}
@test 'more_src has _kode-acp' {
    assert "$(xsrc_find _kode-acp)" is_file
}
@test 'more_src has _kollision' {
    assert "$(xsrc_find _kollision)" is_file
}
@test 'more_src has _kolourpaint' {
    assert "$(xsrc_find _kolourpaint)" is_file
}
@test 'more_src has _komac' {
    assert "$(xsrc_find _komac)" is_file
}
@test 'more_src has _kommit' {
    assert "$(xsrc_find _kommit)" is_file
}
@test 'more_src has _komodo' {
    assert "$(xsrc_find _komodo)" is_file
}
@test 'more_src has _kompare' {
    assert "$(xsrc_find _kompare)" is_file
}
@test 'more_src has _kompose' {
    assert "$(xsrc_find _kompose)" is_file
}
@test 'more_src has _kondo' {
    assert "$(xsrc_find _kondo)" is_file
}
@test 'more_src has _konfig' {
    assert "$(xsrc_find _konfig)" is_file
}
@test 'more_src has _kong-operator' {
    assert "$(xsrc_find _kong-operator)" is_file
}
@test 'more_src has _konquest' {
    assert "$(xsrc_find _konquest)" is_file
}
@test 'more_src has _konsole5' {
    assert "$(xsrc_find _konsole5)" is_file
}
@test 'more_src has _konversation' {
    assert "$(xsrc_find _konversation)" is_file
}
@test 'more_src has _kool' {
    assert "$(xsrc_find _kool)" is_file
}
@test 'more_src has _kopia' {
    assert "$(xsrc_find _kopia)" is_file
}
@test 'more_src has _kopium' {
    assert "$(xsrc_find _kopium)" is_file
}
@test 'more_src has _kops' {
    assert "$(xsrc_find _kops)" is_file
}
@test 'more_src has _koreader' {
    assert "$(xsrc_find _koreader)" is_file
}
@test 'more_src has _korrect' {
    assert "$(xsrc_find _korrect)" is_file
}
@test 'more_src has _kotlinc' {
    assert "$(xsrc_find _kotlinc)" is_file
}
@test 'more_src has _kotlinc-js' {
    assert "$(xsrc_find _kotlinc-js)" is_file
}
@test 'more_src has _kotlinc-jvm' {
    assert "$(xsrc_find _kotlinc-jvm)" is_file
}
@test 'more_src has _kpackagetool6' {
    assert "$(xsrc_find _kpackagetool6)" is_file
}
@test 'more_src has _kpasswd' {
    assert "$(xsrc_find _kpasswd)" is_file
}
@test 'more_src has _kpat' {
    assert "$(xsrc_find _kpat)" is_file
}
@test 'more_src has _kphotoalbum' {
    assert "$(xsrc_find _kphotoalbum)" is_file
}
@test 'more_src has _kphotoalbum-cli' {
    assert "$(xsrc_find _kphotoalbum-cli)" is_file
}
@test 'more_src has _kplayer' {
    assert "$(xsrc_find _kplayer)" is_file
}
@test 'more_src has _kpt' {
    assert "$(xsrc_find _kpt)" is_file
}
@test 'more_src has _kqml' {
    assert "$(xsrc_find _kqml)" is_file
}
@test 'more_src has _krabby' {
    assert "$(xsrc_find _krabby)" is_file
}
@test 'more_src has _kramdown-rfc' {
    assert "$(xsrc_find _kramdown-rfc)" is_file
}
@test 'more_src has _krane' {
    assert "$(xsrc_find _krane)" is_file
}
@test 'more_src has _krb5-send-pr' {
    assert "$(xsrc_find _krb5-send-pr)" is_file
}
@test 'more_src has _krb5kdc' {
    assert "$(xsrc_find _krb5kdc)" is_file
}
@test 'more_src has _krdc' {
    assert "$(xsrc_find _krdc)" is_file
}
@test 'more_src has _krename' {
    assert "$(xsrc_find _krename)" is_file
}
@test 'more_src has _kresctl' {
    assert "$(xsrc_find _kresctl)" is_file
}
@test 'more_src has _kreversi' {
    assert "$(xsrc_find _kreversi)" is_file
}
@test 'more_src has _krew' {
    assert "$(xsrc_find _krew)" is_file
}
@test 'more_src has _krfb' {
    assert "$(xsrc_find _krfb)" is_file
}
@test 'more_src has _krfb-virtualmonitor' {
    assert "$(xsrc_find _krfb-virtualmonitor)" is_file
}
@test 'more_src has _krita' {
    assert "$(xsrc_find _krita)" is_file
}
@test 'more_src has _kroki' {
    assert "$(xsrc_find _kroki)" is_file
}
@test 'more_src has _krollover' {
    assert "$(xsrc_find _krollover)" is_file
}
@test 'more_src has _krtadm' {
    assert "$(xsrc_find _krtadm)" is_file
}
@test 'more_src has _krtfs' {
    assert "$(xsrc_find _krtfs)" is_file
}
@test 'more_src has _kruler' {
    assert "$(xsrc_find _kruler)" is_file
}
@test 'more_src has _krunner' {
    assert "$(xsrc_find _krunner)" is_file
}
@test 'more_src has _krunner5' {
    assert "$(xsrc_find _krunner5)" is_file
}
@test 'more_src has _krunner6' {
    assert "$(xsrc_find _krunner6)" is_file
}
@test 'more_src has _kscreen-doctor' {
    assert "$(xsrc_find _kscreen-doctor)" is_file
}
@test 'more_src has _kscreenlocker_greet' {
    assert "$(xsrc_find _kscreenlocker_greet)" is_file
}
@test 'more_src has _kshisen' {
    assert "$(xsrc_find _kshisen)" is_file
}
@test 'more_src has _ksmtuned' {
    assert "$(xsrc_find _ksmtuned)" is_file
}
@test 'more_src has _ksnapshot' {
    assert "$(xsrc_find _ksnapshot)" is_file
}
@test 'more_src has _ksquares' {
    assert "$(xsrc_find _ksquares)" is_file
}
@test 'more_src has _kst' {
    assert "$(xsrc_find _kst)" is_file
}
@test 'more_src has _kstars' {
    assert "$(xsrc_find _kstars)" is_file
}
@test 'more_src has _ksudoku' {
    assert "$(xsrc_find _ksudoku)" is_file
}
@test 'more_src has _ksysguard' {
    assert "$(xsrc_find _ksysguard)" is_file
}
@test 'more_src has _ksysguard5' {
    assert "$(xsrc_find _ksysguard5)" is_file
}
@test 'more_src has _ksysguardd' {
    assert "$(xsrc_find _ksysguardd)" is_file
}
@test 'more_src has _ksystemlog' {
    assert "$(xsrc_find _ksystemlog)" is_file
}
@test 'more_src has _kt' {
    assert "$(xsrc_find _kt)" is_file
}
@test 'more_src has _kteatime' {
    assert "$(xsrc_find _kteatime)" is_file
}
@test 'more_src has _kto' {
    assert "$(xsrc_find _kto)" is_file
}
@test 'more_src has _ktouch' {
    assert "$(xsrc_find _ktouch)" is_file
}
@test 'more_src has _ktsctl' {
    assert "$(xsrc_find _ktsctl)" is_file
}
@test 'more_src has _kube-apiserver' {
    assert "$(xsrc_find _kube-apiserver)" is_file
}
@test 'more_src has _kube-controller-manager' {
    assert "$(xsrc_find _kube-controller-manager)" is_file
}
@test 'more_src has _kube-linter' {
    assert "$(xsrc_find _kube-linter)" is_file
}
@test 'more_src has _kube-proxy' {
    assert "$(xsrc_find _kube-proxy)" is_file
}
@test 'more_src has _kube-scheduler' {
    assert "$(xsrc_find _kube-scheduler)" is_file
}
@test 'more_src has _kube-score' {
    assert "$(xsrc_find _kube-score)" is_file
}
@test 'more_src has _kube-state-metrics' {
    assert "$(xsrc_find _kube-state-metrics)" is_file
}
@test 'more_src has _kubebuilder' {
    assert "$(xsrc_find _kubebuilder)" is_file
}
@test 'more_src has _kubecm' {
    assert "$(xsrc_find _kubecm)" is_file
}
@test 'more_src has _kubecolor' {
    assert "$(xsrc_find _kubecolor)" is_file
}
@test 'more_src has _kubeconform' {
    assert "$(xsrc_find _kubeconform)" is_file
}
@test 'more_src has _kubectl-cloud-shell' {
    assert "$(xsrc_find _kubectl-cloud-shell)" is_file
}
@test 'more_src has _kubectl-neat' {
    assert "$(xsrc_find _kubectl-neat)" is_file
}
@test 'more_src has _kubectx' {
    assert "$(xsrc_find _kubectx)" is_file
}
@test 'more_src has _kubefwd' {
    assert "$(xsrc_find _kubefwd)" is_file
}
@test 'more_src has _kubens' {
    assert "$(xsrc_find _kubens)" is_file
}
@test 'more_src has _kubent' {
    assert "$(xsrc_find _kubent)" is_file
}
@test 'more_src has _kubescape' {
    assert "$(xsrc_find _kubescape)" is_file
}
@test 'more_src has _kubeseal' {
    assert "$(xsrc_find _kubeseal)" is_file
}
@test 'more_src has _kubeshark' {
    assert "$(xsrc_find _kubeshark)" is_file
}
@test 'more_src has _kubetail' {
    assert "$(xsrc_find _kubetail)" is_file
}
@test 'more_src has _kubetest' {
    assert "$(xsrc_find _kubetest)" is_file
}
@test 'more_src has _kubeval' {
    assert "$(xsrc_find _kubeval)" is_file
}
@test 'more_src has _kubevela' {
    assert "$(xsrc_find _kubevela)" is_file
}
@test 'more_src has _kubevpn' {
    assert "$(xsrc_find _kubevpn)" is_file
}
@test 'more_src has _kubie' {
    assert "$(xsrc_find _kubie)" is_file
}
@test 'more_src has _kubiscan' {
    assert "$(xsrc_find _kubiscan)" is_file
}
@test 'more_src has _kuiviewer' {
    assert "$(xsrc_find _kuiviewer)" is_file
}
@test 'more_src has _kuryr-cni' {
    assert "$(xsrc_find _kuryr-cni)" is_file
}
@test 'more_src has _kuryr-controller' {
    assert "$(xsrc_find _kuryr-controller)" is_file
}
@test 'more_src has _kuryr-daemon' {
    assert "$(xsrc_find _kuryr-daemon)" is_file
}
@test 'more_src has _kuryr-server' {
    assert "$(xsrc_find _kuryr-server)" is_file
}
@test 'more_src has _kustomize' {
    assert "$(xsrc_find _kustomize)" is_file
}
@test 'more_src has _kuzco' {
    assert "$(xsrc_find _kuzco)" is_file
}
@test 'more_src has _kvkbd' {
    assert "$(xsrc_find _kvkbd)" is_file
}
@test 'more_src has _kwalletd6' {
    assert "$(xsrc_find _kwalletd6)" is_file
}
@test 'more_src has _kwalletmanager' {
    assert "$(xsrc_find _kwalletmanager)" is_file
}
@test 'more_src has _kwalletmanager5' {
    assert "$(xsrc_find _kwalletmanager5)" is_file
}
@test 'more_src has _kwave' {
    assert "$(xsrc_find _kwave)" is_file
}
@test 'more_src has _kwctl' {
    assert "$(xsrc_find _kwctl)" is_file
}
@test 'more_src has _kwriteconfig6' {
    assert "$(xsrc_find _kwriteconfig6)" is_file
}
@test 'more_src has _kyverno' {
    assert "$(xsrc_find _kyverno)" is_file
}
@test 'more_src has _kzonecheck' {
    assert "$(xsrc_find _kzonecheck)" is_file
}
@test 'more_src has _l2test' {
    assert "$(xsrc_find _l2test)" is_file
}
@test 'more_src has _labwc-greet' {
    assert "$(xsrc_find _labwc-greet)" is_file
}
@test 'more_src has _labwc-tweaks' {
    assert "$(xsrc_find _labwc-tweaks)" is_file
}
@test 'more_src has _lacheck' {
    assert "$(xsrc_find _lacheck)" is_file
}
@test 'more_src has _lacy' {
    assert "$(xsrc_find _lacy)" is_file
}
@test 'more_src has _lammps' {
    assert "$(xsrc_find _lammps)" is_file
}
@test 'more_src has _lance' {
    assert "$(xsrc_find _lance)" is_file
}
@test 'more_src has _landing-portal-api.sh' {
    assert "$(xsrc_find _landing-portal-api.sh)" is_file
}
@test 'more_src has _langchain-cli' {
    assert "$(xsrc_find _langchain-cli)" is_file
}
@test 'more_src has _langcodec' {
    assert "$(xsrc_find _langcodec)" is_file
}
@test 'more_src has _langfuse' {
    assert "$(xsrc_find _langfuse)" is_file
}
@test 'more_src has _langfuse-cli' {
    assert "$(xsrc_find _langfuse-cli)" is_file
}
@test 'more_src has _langgraph' {
    assert "$(xsrc_find _langgraph)" is_file
}
@test 'more_src has _langgraph-cli' {
    assert "$(xsrc_find _langgraph-cli)" is_file
}
@test 'more_src has _langgraphjs' {
    assert "$(xsrc_find _langgraphjs)" is_file
}
@test 'more_src has _langsmith' {
    assert "$(xsrc_find _langsmith)" is_file
}
@test 'more_src has _langsmith-cli' {
    assert "$(xsrc_find _langsmith-cli)" is_file
}
@test 'more_src has _langtest' {
    assert "$(xsrc_find _langtest)" is_file
}
@test 'more_src has _language_codes' {
    assert "$(xsrc_find _language_codes)" is_file
}
@test 'more_src has _langwatch' {
    assert "$(xsrc_find _langwatch)" is_file
}
@test 'more_src has _larakit' {
    assert "$(xsrc_find _larakit)" is_file
}
@test 'more_src has _latexfileversion' {
    assert "$(xsrc_find _latexfileversion)" is_file
}
@test 'more_src has _latexindent' {
    assert "$(xsrc_find _latexindent)" is_file
}
@test 'more_src has _latitude' {
    assert "$(xsrc_find _latitude)" is_file
}
@test 'more_src has _lattice' {
    assert "$(xsrc_find _lattice)" is_file
}
@test 'more_src has _layman' {
    assert "$(xsrc_find _layman)" is_file
}
@test 'more_src has _lazarus' {
    assert "$(xsrc_find _lazarus)" is_file
}
@test 'more_src has _lazbuild' {
    assert "$(xsrc_find _lazbuild)" is_file
}
@test 'more_src has _laze' {
    assert "$(xsrc_find _laze)" is_file
}
@test 'more_src has _lazydocker' {
    assert "$(xsrc_find _lazydocker)" is_file
}
@test 'more_src has _lazyjournal' {
    assert "$(xsrc_find _lazyjournal)" is_file
}
@test 'more_src has _lazysql' {
    assert "$(xsrc_find _lazysql)" is_file
}
@test 'more_src has _lazyworktree' {
    assert "$(xsrc_find _lazyworktree)" is_file
}
@test 'more_src has _lbzcat' {
    assert "$(xsrc_find _lbzcat)" is_file
}
@test 'more_src has _lc0' {
    assert "$(xsrc_find _lc0)" is_file
}
@test 'more_src has _lcdproc' {
    assert "$(xsrc_find _lcdproc)" is_file
}
@test 'more_src has _lcdshow' {
    assert "$(xsrc_find _lcdshow)" is_file
}
@test 'more_src has _lcdtest' {
    assert "$(xsrc_find _lcdtest)" is_file
}
@test 'more_src has _lctl' {
    assert "$(xsrc_find _lctl)" is_file
}
@test 'more_src has _ldid' {
    assert "$(xsrc_find _ldid)" is_file
}
@test 'more_src has _ldns-chaos' {
    assert "$(xsrc_find _ldns-chaos)" is_file
}
@test 'more_src has _ldns-host' {
    assert "$(xsrc_find _ldns-host)" is_file
}
@test 'more_src has _ldns-mx' {
    assert "$(xsrc_find _ldns-mx)" is_file
}
@test 'more_src has _ldns-rrsig' {
    assert "$(xsrc_find _ldns-rrsig)" is_file
}
@test 'more_src has _ldns-secret' {
    assert "$(xsrc_find _ldns-secret)" is_file
}
@test 'more_src has _ldns-update' {
    assert "$(xsrc_find _ldns-update)" is_file
}
@test 'more_src has _ldns-version' {
    assert "$(xsrc_find _ldns-version)" is_file
}
@test 'more_src has _ldoc' {
    assert "$(xsrc_find _ldoc)" is_file
}
@test 'more_src has _ldpd' {
    assert "$(xsrc_find _ldpd)" is_file
}
@test 'more_src has _leaf' {
    assert "$(xsrc_find _leaf)" is_file
}
@test 'more_src has _lean3' {
    assert "$(xsrc_find _lean3)" is_file
}
@test 'more_src has _leave' {
    assert "$(xsrc_find _leave)" is_file
}
@test 'more_src has _ledger' {
    assert "$(xsrc_find _ledger)" is_file
}
@test 'more_src has _leela-chess-zero' {
    assert "$(xsrc_find _leela-chess-zero)" is_file
}
@test 'more_src has _leela-zero' {
    assert "$(xsrc_find _leela-zero)" is_file
}
@test 'more_src has _leeloo' {
    assert "$(xsrc_find _leeloo)" is_file
}
@test 'more_src has _lefthook' {
    assert "$(xsrc_find _lefthook)" is_file
}
@test 'more_src has _legba' {
    assert "$(xsrc_find _legba)" is_file
}
@test 'more_src has _lego' {
    assert "$(xsrc_find _lego)" is_file
}
@test 'more_src has _lemma' {
    assert "$(xsrc_find _lemma)" is_file
}
@test 'more_src has _lemmeknow' {
    assert "$(xsrc_find _lemmeknow)" is_file
}
@test 'more_src has _lemmy-help' {
    assert "$(xsrc_find _lemmy-help)" is_file
}
@test 'more_src has _leo-editor' {
    assert "$(xsrc_find _leo-editor)" is_file
}
@test 'more_src has _lerna' {
    assert "$(xsrc_find _lerna)" is_file
}
@test 'more_src has _lessfile' {
    assert "$(xsrc_find _lessfile)" is_file
}
@test 'more_src has _lesspipe' {
    assert "$(xsrc_find _lesspipe)" is_file
}
@test 'more_src has _letta' {
    assert "$(xsrc_find _letta)" is_file
}
@test 'more_src has _levant' {
    assert "$(xsrc_find _levant)" is_file
}
@test 'more_src has _levee' {
    assert "$(xsrc_find _levee)" is_file
}
@test 'more_src has _lf' {
    assert "$(xsrc_find _lf)" is_file
}
@test 'more_src has _lfs' {
    assert "$(xsrc_find _lfs)" is_file
}
@test 'more_src has _lguest' {
    assert "$(xsrc_find _lguest)" is_file
}
@test 'more_src has _lhci' {
    assert "$(xsrc_find _lhci)" is_file
}
@test 'more_src has _libcacard-tool' {
    assert "$(xsrc_find _libcacard-tool)" is_file
}
@test 'more_src has _libcamera-hello' {
    assert "$(xsrc_find _libcamera-hello)" is_file
}
@test 'more_src has _libcamera-still' {
    assert "$(xsrc_find _libcamera-still)" is_file
}
@test 'more_src has _libcamera-vid' {
    assert "$(xsrc_find _libcamera-vid)" is_file
}
@test 'more_src has _libfido2' {
    assert "$(xsrc_find _libfido2)" is_file
}
@test 'more_src has _libgen-cli' {
    assert "$(xsrc_find _libgen-cli)" is_file
}
@test 'more_src has _libinput-measure' {
    assert "$(xsrc_find _libinput-measure)" is_file
}
@test 'more_src has _libinput-quirks' {
    assert "$(xsrc_find _libinput-quirks)" is_file
}
@test 'more_src has _libinput-test' {
    assert "$(xsrc_find _libinput-test)" is_file
}
@test 'more_src has _librecad' {
    assert "$(xsrc_find _librecad)" is_file
}
@test 'more_src has _libreport-cli' {
    assert "$(xsrc_find _libreport-cli)" is_file
}
@test 'more_src has _librespot' {
    assert "$(xsrc_find _librespot)" is_file
}
@test 'more_src has _libreswan' {
    assert "$(xsrc_find _libreswan)" is_file
}
@test 'more_src has _librewolf' {
    assert "$(xsrc_find _librewolf)" is_file
}
@test 'more_src has _libvirt-guests' {
    assert "$(xsrc_find _libvirt-guests)" is_file
}
@test 'more_src has _license' {
    assert "$(xsrc_find _license)" is_file
}
@test 'more_src has _licensecheck' {
    assert "$(xsrc_find _licensecheck)" is_file
}
@test 'more_src has _liftbridge' {
    assert "$(xsrc_find _liftbridge)" is_file
}
@test 'more_src has _liftctl' {
    assert "$(xsrc_find _liftctl)" is_file
}
@test 'more_src has _lightgbm' {
    assert "$(xsrc_find _lightgbm)" is_file
}
@test 'more_src has _lightningstream' {
    assert "$(xsrc_find _lightningstream)" is_file
}
@test 'more_src has _lightworks' {
    assert "$(xsrc_find _lightworks)" is_file
}
@test 'more_src has _likec4' {
    assert "$(xsrc_find _likec4)" is_file
}
@test 'more_src has _lilo' {
    assert "$(xsrc_find _lilo)" is_file
}
@test 'more_src has _lima' {
    assert "$(xsrc_find _lima)" is_file
}
@test 'more_src has _lindna' {
    assert "$(xsrc_find _lindna)" is_file
}
@test 'more_src has _linefind' {
    assert "$(xsrc_find _linefind)" is_file
}
@test 'more_src has _linguist' {
    assert "$(xsrc_find _linguist)" is_file
}
@test 'more_src has _linkcheck' {
    assert "$(xsrc_find _linkcheck)" is_file
}
@test 'more_src has _linkerd' {
    assert "$(xsrc_find _linkerd)" is_file
}
@test 'more_src has _linkerd-destination' {
    assert "$(xsrc_find _linkerd-destination)" is_file
}
@test 'more_src has _linkerd-identity' {
    assert "$(xsrc_find _linkerd-identity)" is_file
}
@test 'more_src has _linkerd-policy' {
    assert "$(xsrc_find _linkerd-policy)" is_file
}
@test 'more_src has _linkerd-proxy' {
    assert "$(xsrc_find _linkerd-proxy)" is_file
}
@test 'more_src has _linkerd-proxy-init' {
    assert "$(xsrc_find _linkerd-proxy-init)" is_file
}
@test 'more_src has _lintspec' {
    assert "$(xsrc_find _lintspec)" is_file
}
@test 'more_src has _linuxdeploy' {
    assert "$(xsrc_find _linuxdeploy)" is_file
}
@test 'more_src has _linuxkit' {
    assert "$(xsrc_find _linuxkit)" is_file
}
@test 'more_src has _linuxsampler' {
    assert "$(xsrc_find _linuxsampler)" is_file
}
@test 'more_src has _liquidwar' {
    assert "$(xsrc_find _liquidwar)" is_file
}
@test 'more_src has _liquidwar6' {
    assert "$(xsrc_find _liquidwar6)" is_file
}
@test 'more_src has _lircmd' {
    assert "$(xsrc_find _lircmd)" is_file
}
@test 'more_src has _lircrcd' {
    assert "$(xsrc_find _lircrcd)" is_file
}
@test 'more_src has _listadmin' {
    assert "$(xsrc_find _listadmin)" is_file
}
@test 'more_src has _listenbrainz-mpd' {
    assert "$(xsrc_find _listenbrainz-mpd)" is_file
}
@test 'more_src has _listor' {
    assert "$(xsrc_find _listor)" is_file
}
@test 'more_src has _litecli' {
    assert "$(xsrc_find _litecli)" is_file
}
@test 'more_src has _litellm' {
    assert "$(xsrc_find _litellm)" is_file
}
@test 'more_src has _litellm-cli' {
    assert "$(xsrc_find _litellm-cli)" is_file
}
@test 'more_src has _litellm-proxy' {
    assert "$(xsrc_find _litellm-proxy)" is_file
}
@test 'more_src has _litestream' {
    assert "$(xsrc_find _litestream)" is_file
}
@test 'more_src has _litmus' {
    assert "$(xsrc_find _litmus)" is_file
}
@test 'more_src has _little_boxes' {
    assert "$(xsrc_find _little_boxes)" is_file
}
@test 'more_src has _live-server' {
    assert "$(xsrc_find _live-server)" is_file
}
@test 'more_src has _llama' {
    assert "$(xsrc_find _llama)" is_file
}
@test 'more_src has _llama-cpp-server' {
    assert "$(xsrc_find _llama-cpp-server)" is_file
}
@test 'more_src has _llama-gguf-split' {
    assert "$(xsrc_find _llama-gguf-split)" is_file
}
@test 'more_src has _llama-stack' {
    assert "$(xsrc_find _llama-stack)" is_file
}
@test 'more_src has _llama-tokenize' {
    assert "$(xsrc_find _llama-tokenize)" is_file
}
@test 'more_src has _llamafactory-cli' {
    assert "$(xsrc_find _llamafactory-cli)" is_file
}
@test 'more_src has _lldb-server' {
    assert "$(xsrc_find _lldb-server)" is_file
}
@test 'more_src has _lldpcli' {
    assert "$(xsrc_find _lldpcli)" is_file
}
@test 'more_src has _lldpd' {
    assert "$(xsrc_find _lldpd)" is_file
}
@test 'more_src has _llm' {
    assert "$(xsrc_find _llm)" is_file
}
@test 'more_src has _llverdev' {
    assert "$(xsrc_find _llverdev)" is_file
}
@test 'more_src has _lmms' {
    assert "$(xsrc_find _lmms)" is_file
}
@test 'more_src has _lmnr' {
    assert "$(xsrc_find _lmnr)" is_file
}
@test 'more_src has _lmp' {
    assert "$(xsrc_find _lmp)" is_file
}
@test 'more_src has _lms' {
    assert "$(xsrc_find _lms)" is_file
}
@test 'more_src has _lnav' {
    assert "$(xsrc_find _lnav)" is_file
}
@test 'more_src has _loc' {
    assert "$(xsrc_find _loc)" is_file
}
@test 'more_src has _local-ai' {
    assert "$(xsrc_find _local-ai)" is_file
}
@test 'more_src has _localias' {
    assert "$(xsrc_find _localias)" is_file
}
@test 'more_src has _localstack' {
    assert "$(xsrc_find _localstack)" is_file
}
@test 'more_src has _lockbook' {
    assert "$(xsrc_find _lockbook)" is_file
}
@test 'more_src has _locust' {
    assert "$(xsrc_find _locust)" is_file
}
@test 'more_src has _logcli' {
    assert "$(xsrc_find _logcli)" is_file
}
@test 'more_src has _logseq' {
    assert "$(xsrc_find _logseq)" is_file
}
@test 'more_src has _logstash' {
    assert "$(xsrc_find _logstash)" is_file
}
@test 'more_src has _lokinet' {
    assert "$(xsrc_find _lokinet)" is_file
}
@test 'more_src has _loksh' {
    assert "$(xsrc_find _loksh)" is_file
}
@test 'more_src has _loofi' {
    assert "$(xsrc_find _loofi)" is_file
}
@test 'more_src has _lookup' {
    assert "$(xsrc_find _lookup)" is_file
}
@test 'more_src has _loom' {
    assert "$(xsrc_find _loom)" is_file
}
@test 'more_src has _lore' {
    assert "$(xsrc_find _lore)" is_file
}
@test 'more_src has _lossless-cut' {
    assert "$(xsrc_find _lossless-cut)" is_file
}
@test 'more_src has _love' {
    assert "$(xsrc_find _love)" is_file
}
@test 'more_src has _lowdown' {
    assert "$(xsrc_find _lowdown)" is_file
}
@test 'more_src has _lpass' {
    assert "$(xsrc_find _lpass)" is_file
}
@test 'more_src has _lrunzip' {
    assert "$(xsrc_find _lrunzip)" is_file
}
@test 'more_src has _lrzip' {
    assert "$(xsrc_find _lrzip)" is_file
}
@test 'more_src has _lsadmin' {
    assert "$(xsrc_find _lsadmin)" is_file
}
@test 'more_src has _lsarchive' {
    assert "$(xsrc_find _lsarchive)" is_file
}
@test 'more_src has _lsd' {
    assert "$(xsrc_find _lsd)" is_file
}
@test 'more_src has _lshosts' {
    assert "$(xsrc_find _lshosts)" is_file
}
@test 'more_src has _lshw-gtk' {
    assert "$(xsrc_find _lshw-gtk)" is_file
}
@test 'more_src has _lsinfo' {
    assert "$(xsrc_find _lsinfo)" is_file
}
@test 'more_src has _lsix' {
    assert "$(xsrc_find _lsix)" is_file
}
@test 'more_src has _lsload' {
    assert "$(xsrc_find _lsload)" is_file
}
@test 'more_src has _lsm' {
    assert "$(xsrc_find _lsm)" is_file
}
@test 'more_src has _lsmake' {
    assert "$(xsrc_find _lsmake)" is_file
}
@test 'more_src has _lspasswd' {
    assert "$(xsrc_find _lspasswd)" is_file
}
@test 'more_src has _lsplace' {
    assert "$(xsrc_find _lsplace)" is_file
}
@test 'more_src has _lspmux' {
    assert "$(xsrc_find _lspmux)" is_file
}
@test 'more_src has _lsvfs' {
    assert "$(xsrc_find _lsvfs)" is_file
}
@test 'more_src has _lsyncd' {
    assert "$(xsrc_find _lsyncd)" is_file
}
@test 'more_src has _ltex-ls' {
    assert "$(xsrc_find _ltex-ls)" is_file
}
@test 'more_src has _ltrs' {
    assert "$(xsrc_find _ltrs)" is_file
}
@test 'more_src has _luacheck' {
    assert "$(xsrc_find _luacheck)" is_file
}
@test 'more_src has _luanti' {
    assert "$(xsrc_find _luanti)" is_file
}
@test 'more_src has _luckybackup' {
    assert "$(xsrc_find _luckybackup)" is_file
}
@test 'more_src has _luksmeta' {
    assert "$(xsrc_find _luksmeta)" is_file
}
@test 'more_src has _lumos' {
    assert "$(xsrc_find _lumos)" is_file
}
@test 'more_src has _lunar' {
    assert "$(xsrc_find _lunar)" is_file
}
@test 'more_src has _lutgen' {
    assert "$(xsrc_find _lutgen)" is_file
}
@test 'more_src has _lvm_dump' {
    assert "$(xsrc_find _lvm_dump)" is_file
}
@test 'more_src has _lvmdbus' {
    assert "$(xsrc_find _lvmdbus)" is_file
}
@test 'more_src has _lvmlockctl' {
    assert "$(xsrc_find _lvmlockctl)" is_file
}
@test 'more_src has _lvmlockd' {
    assert "$(xsrc_find _lvmlockd)" is_file
}
@test 'more_src has _lvmsadc' {
    assert "$(xsrc_find _lvmsadc)" is_file
}
@test 'more_src has _lx' {
    assert "$(xsrc_find _lx)" is_file
}
@test 'more_src has _lxmenu-data' {
    assert "$(xsrc_find _lxmenu-data)" is_file
}
@test 'more_src has _lxpolkit' {
    assert "$(xsrc_find _lxpolkit)" is_file
}
@test 'more_src has _lxqt-about' {
    assert "$(xsrc_find _lxqt-about)" is_file
}
@test 'more_src has _lxqt-archiver' {
    assert "$(xsrc_find _lxqt-archiver)" is_file
}
@test 'more_src has _lxqt-config' {
    assert "$(xsrc_find _lxqt-config)" is_file
}
@test 'more_src has _lxqt-config-appearance' {
    assert "$(xsrc_find _lxqt-config-appearance)" is_file
}
@test 'more_src has _lxqt-config-brightness' {
    assert "$(xsrc_find _lxqt-config-brightness)" is_file
}
@test 'more_src has _lxqt-config-cursor' {
    assert "$(xsrc_find _lxqt-config-cursor)" is_file
}
@test 'more_src has _lxqt-config-file-associations' {
    assert "$(xsrc_find _lxqt-config-file-associations)" is_file
}
@test 'more_src has _lxqt-config-globalkeyshortcuts' {
    assert "$(xsrc_find _lxqt-config-globalkeyshortcuts)" is_file
}
@test 'more_src has _lxqt-config-input' {
    assert "$(xsrc_find _lxqt-config-input)" is_file
}
@test 'more_src has _lxqt-config-locale' {
    assert "$(xsrc_find _lxqt-config-locale)" is_file
}
@test 'more_src has _lxqt-config-monitor' {
    assert "$(xsrc_find _lxqt-config-monitor)" is_file
}
@test 'more_src has _lxqt-config-notificationd' {
    assert "$(xsrc_find _lxqt-config-notificationd)" is_file
}
@test 'more_src has _lxqt-config-randr' {
    assert "$(xsrc_find _lxqt-config-randr)" is_file
}
@test 'more_src has _lxqt-confupdate' {
    assert "$(xsrc_find _lxqt-confupdate)" is_file
}
@test 'more_src has _lxqt-leave' {
    assert "$(xsrc_find _lxqt-leave)" is_file
}
@test 'more_src has _lxqt-lockscreen' {
    assert "$(xsrc_find _lxqt-lockscreen)" is_file
}
@test 'more_src has _lxqt-notificationd' {
    assert "$(xsrc_find _lxqt-notificationd)" is_file
}
@test 'more_src has _lxqt-openssh-askpass' {
    assert "$(xsrc_find _lxqt-openssh-askpass)" is_file
}
@test 'more_src has _lxqt-panel' {
    assert "$(xsrc_find _lxqt-panel)" is_file
}
@test 'more_src has _lxqt-pcmanfm' {
    assert "$(xsrc_find _lxqt-pcmanfm)" is_file
}
@test 'more_src has _lxqt-policykit-agent' {
    assert "$(xsrc_find _lxqt-policykit-agent)" is_file
}
@test 'more_src has _lxqt-powermanagement' {
    assert "$(xsrc_find _lxqt-powermanagement)" is_file
}
@test 'more_src has _lxqt-runner' {
    assert "$(xsrc_find _lxqt-runner)" is_file
}
@test 'more_src has _lxqt-session' {
    assert "$(xsrc_find _lxqt-session)" is_file
}
@test 'more_src has _lxqt-sudo' {
    assert "$(xsrc_find _lxqt-sudo)" is_file
}
@test 'more_src has _lxqt-trayman' {
    assert "$(xsrc_find _lxqt-trayman)" is_file
}
@test 'more_src has _lxqt-wallet' {
    assert "$(xsrc_find _lxqt-wallet)" is_file
}
@test 'more_src has _lxrandr' {
    assert "$(xsrc_find _lxrandr)" is_file
}
@test 'more_src has _lxsession-edit' {
    assert "$(xsrc_find _lxsession-edit)" is_file
}
@test 'more_src has _lxshortcut' {
    assert "$(xsrc_find _lxshortcut)" is_file
}
@test 'more_src has _lxsplit' {
    assert "$(xsrc_find _lxsplit)" is_file
}
@test 'more_src has _lxsudo' {
    assert "$(xsrc_find _lxsudo)" is_file
}
@test 'more_src has _ly-fu' {
    assert "$(xsrc_find _ly-fu)" is_file
}
@test 'more_src has _lychee' {
    assert "$(xsrc_find _lychee)" is_file
}
@test 'more_src has _lyx' {
    assert "$(xsrc_find _lyx)" is_file
}
@test 'more_src has _lzbench' {
    assert "$(xsrc_find _lzbench)" is_file
}
@test 'more_src has _lzfse' {
    assert "$(xsrc_find _lzfse)" is_file
}
@test 'more_src has _lzip' {
    assert "$(xsrc_find _lzip)" is_file
}
@test 'more_src has _lzmainfo' {
    assert "$(xsrc_find _lzmainfo)" is_file
}
@test 'more_src has _lzmore' {
    assert "$(xsrc_find _lzmore)" is_file
}
@test 'more_src has _mGBA' {
    assert "$(xsrc_find _mGBA)" is_file
}
@test 'more_src has _maa' {
    assert "$(xsrc_find _maa)" is_file
}
@test 'more_src has _maas' {
    assert "$(xsrc_find _maas)" is_file
}
@test 'more_src has _maas-cli' {
    assert "$(xsrc_find _maas-cli)" is_file
}
@test 'more_src has _maas-rack-controller' {
    assert "$(xsrc_find _maas-rack-controller)" is_file
}
@test 'more_src has _maas-region-controller' {
    assert "$(xsrc_find _maas-region-controller)" is_file
}
@test 'more_src has _maas-syslog' {
    assert "$(xsrc_find _maas-syslog)" is_file
}
@test 'more_src has _maas-test-db' {
    assert "$(xsrc_find _maas-test-db)" is_file
}
@test 'more_src has _mac' {
    assert "$(xsrc_find _mac)" is_file
}
@test 'more_src has _macchina' {
    assert "$(xsrc_find _macchina)" is_file
}
@test 'more_src has _machine' {
    assert "$(xsrc_find _machine)" is_file
}
@test 'more_src has _mackup' {
    assert "$(xsrc_find _mackup)" is_file
}
@test 'more_src has _macmon' {
    assert "$(xsrc_find _macmon)" is_file
}
@test 'more_src has _mado' {
    assert "$(xsrc_find _mado)" is_file
}
@test 'more_src has _mafft' {
    assert "$(xsrc_find _mafft)" is_file
}
@test 'more_src has _mage' {
    assert "$(xsrc_find _mage)" is_file
}
@test 'more_src has _magic' {
    assert "$(xsrc_find _magic)" is_file
}
@test 'more_src has _magic-vlsi' {
    assert "$(xsrc_find _magic-vlsi)" is_file
}
@test 'more_src has _magick' {
    assert "$(xsrc_find _magick)" is_file
}
@test 'more_src has _magnum-api' {
    assert "$(xsrc_find _magnum-api)" is_file
}
@test 'more_src has _magnum-conductor' {
    assert "$(xsrc_find _magnum-conductor)" is_file
}
@test 'more_src has _magnum-status' {
    assert "$(xsrc_find _magnum-status)" is_file
}
@test 'more_src has _magnus' {
    assert "$(xsrc_find _magnus)" is_file
}
@test 'more_src has _mago' {
    assert "$(xsrc_find _mago)" is_file
}
@test 'more_src has _mailcatcher' {
    assert "$(xsrc_find _mailcatcher)" is_file
}
@test 'more_src has _maildirlock' {
    assert "$(xsrc_find _maildirlock)" is_file
}
@test 'more_src has _maildirmake' {
    assert "$(xsrc_find _maildirmake)" is_file
}
@test 'more_src has _maildirsync' {
    assert "$(xsrc_find _maildirsync)" is_file
}
@test 'more_src has _mailfilter' {
    assert "$(xsrc_find _mailfilter)" is_file
}
@test 'more_src has _mailgraph' {
    assert "$(xsrc_find _mailgraph)" is_file
}
@test 'more_src has _mailman3' {
    assert "$(xsrc_find _mailman3)" is_file
}
@test 'more_src has _mailpile' {
    assert "$(xsrc_find _mailpile)" is_file
}
@test 'more_src has _mailpile-cli' {
    assert "$(xsrc_find _mailpile-cli)" is_file
}
@test 'more_src has _mailpit' {
    assert "$(xsrc_find _mailpit)" is_file
}
@test 'more_src has _mailwrapper' {
    assert "$(xsrc_find _mailwrapper)" is_file
}
@test 'more_src has _makebin' {
    assert "$(xsrc_find _makebin)" is_file
}
@test 'more_src has _makeblastdb' {
    assert "$(xsrc_find _makeblastdb)" is_file
}
@test 'more_src has _makempx' {
    assert "$(xsrc_find _makempx)" is_file
}
@test 'more_src has _makenucseq' {
    assert "$(xsrc_find _makenucseq)" is_file
}
@test 'more_src has _makepasswd' {
    assert "$(xsrc_find _makepasswd)" is_file
}
@test 'more_src has _makeprotseq' {
    assert "$(xsrc_find _makeprotseq)" is_file
}
@test 'more_src has _mako-toggle' {
    assert "$(xsrc_find _mako-toggle)" is_file
}
@test 'more_src has _mako-utils' {
    assert "$(xsrc_find _mako-utils)" is_file
}
@test 'more_src has _mamba' {
    assert "$(xsrc_find _mamba)" is_file
}
@test 'more_src has _manage.sh' {
    assert "$(xsrc_find _manage.sh)" is_file
}
@test 'more_src has _mand_manp' {
    assert "$(xsrc_find _mand_manp)" is_file
}
@test 'more_src has _mani' {
    assert "$(xsrc_find _mani)" is_file
}
@test 'more_src has _manifest-tool' {
    assert "$(xsrc_find _manifest-tool)" is_file
}
@test 'more_src has _manila-api' {
    assert "$(xsrc_find _manila-api)" is_file
}
@test 'more_src has _manila-data' {
    assert "$(xsrc_find _manila-data)" is_file
}
@test 'more_src has _manila-manage' {
    assert "$(xsrc_find _manila-manage)" is_file
}
@test 'more_src has _manila-rootwrap' {
    assert "$(xsrc_find _manila-rootwrap)" is_file
}
@test 'more_src has _manila-scheduler' {
    assert "$(xsrc_find _manila-scheduler)" is_file
}
@test 'more_src has _manila-share' {
    assert "$(xsrc_find _manila-share)" is_file
}
@test 'more_src has _manila-status' {
    assert "$(xsrc_find _manila-status)" is_file
}
@test 'more_src has _manta' {
    assert "$(xsrc_find _manta)" is_file
}
@test 'more_src has _mapcidr' {
    assert "$(xsrc_find _mapcidr)" is_file
}
@test 'more_src has _mapnik' {
    assert "$(xsrc_find _mapnik)" is_file
}
@test 'more_src has _mapsoft' {
    assert "$(xsrc_find _mapsoft)" is_file
}
@test 'more_src has _marble' {
    assert "$(xsrc_find _marble)" is_file
}
@test 'more_src has _marcel' {
    assert "$(xsrc_find _marcel)" is_file
}
@test 'more_src has _mariadb-fix-extensions' {
    assert "$(xsrc_find _mariadb-fix-extensions)" is_file
}
@test 'more_src has _mariadb-service-convert' {
    assert "$(xsrc_find _mariadb-service-convert)" is_file
}
@test 'more_src has _mariadbd' {
    assert "$(xsrc_find _mariadbd)" is_file
}
@test 'more_src has _markdown-extract' {
    assert "$(xsrc_find _markdown-extract)" is_file
}
@test 'more_src has _markdown2' {
    assert "$(xsrc_find _markdown2)" is_file
}
@test 'more_src has _markdown2tex' {
    assert "$(xsrc_find _markdown2tex)" is_file
}
@test 'more_src has _markdownlint' {
    assert "$(xsrc_find _markdownlint)" is_file
}
@test 'more_src has _marked' {
    assert "$(xsrc_find _marked)" is_file
}
@test 'more_src has _marked-cli' {
    assert "$(xsrc_find _marked-cli)" is_file
}
@test 'more_src has _marketplace' {
    assert "$(xsrc_find _marketplace)" is_file
}
@test 'more_src has _marp' {
    assert "$(xsrc_find _marp)" is_file
}
@test 'more_src has _marqo' {
    assert "$(xsrc_find _marqo)" is_file
}
@test 'more_src has _marscan' {
    assert "$(xsrc_find _marscan)" is_file
}
@test 'more_src has _marsshooter' {
    assert "$(xsrc_find _marsshooter)" is_file
}
@test 'more_src has _marun' {
    assert "$(xsrc_find _marun)" is_file
}
@test 'more_src has _marvin' {
    assert "$(xsrc_find _marvin)" is_file
}
@test 'more_src has _mas' {
    assert "$(xsrc_find _mas)" is_file
}
@test 'more_src has _masakari-api' {
    assert "$(xsrc_find _masakari-api)" is_file
}
@test 'more_src has _masakari-engine' {
    assert "$(xsrc_find _masakari-engine)" is_file
}
@test 'more_src has _masakari-manage' {
    assert "$(xsrc_find _masakari-manage)" is_file
}
@test 'more_src has _masakari-monitors' {
    assert "$(xsrc_find _masakari-monitors)" is_file
}
@test 'more_src has _masakari-status' {
    assert "$(xsrc_find _masakari-status)" is_file
}
@test 'more_src has _maskfeat' {
    assert "$(xsrc_find _maskfeat)" is_file
}
@test 'more_src has _maskseq' {
    assert "$(xsrc_find _maskseq)" is_file
}
@test 'more_src has _masm32' {
    assert "$(xsrc_find _masm32)" is_file
}
@test 'more_src has _massren' {
    assert "$(xsrc_find _massren)" is_file
}
@test 'more_src has _mastra' {
    assert "$(xsrc_find _mastra)" is_file
}
@test 'more_src has _matcher' {
    assert "$(xsrc_find _matcher)" is_file
}
@test 'more_src has _mate-disk-image-mounter' {
    assert "$(xsrc_find _mate-disk-image-mounter)" is_file
}
@test 'more_src has _mate-disk-utility' {
    assert "$(xsrc_find _mate-disk-utility)" is_file
}
@test 'more_src has _mate-display-properties' {
    assert "$(xsrc_find _mate-display-properties)" is_file
}
@test 'more_src has _mate-notification-properties' {
    assert "$(xsrc_find _mate-notification-properties)" is_file
}
@test 'more_src has _mate-session-manager' {
    assert "$(xsrc_find _mate-session-manager)" is_file
}
@test 'more_src has _mate-sound-recorder' {
    assert "$(xsrc_find _mate-sound-recorder)" is_file
}
@test 'more_src has _matedialog' {
    assert "$(xsrc_find _matedialog)" is_file
}
@test 'more_src has _mathomatic' {
    assert "$(xsrc_find _mathomatic)" is_file
}
@test 'more_src has _mathsat' {
    assert "$(xsrc_find _mathsat)" is_file
}
@test 'more_src has _mathu' {
    assert "$(xsrc_find _mathu)" is_file
}
@test 'more_src has _maturin' {
    assert "$(xsrc_find _maturin)" is_file
}
@test 'more_src has _maude' {
    assert "$(xsrc_find _maude)" is_file
}
@test 'more_src has _maxima' {
    assert "$(xsrc_find _maxima)" is_file
}
@test 'more_src has _maxima-help' {
    assert "$(xsrc_find _maxima-help)" is_file
}
@test 'more_src has _maxima-jupyter' {
    assert "$(xsrc_find _maxima-jupyter)" is_file
}
@test 'more_src has _mb-util' {
    assert "$(xsrc_find _mb-util)" is_file
}
@test 'more_src has _mbake' {
    assert "$(xsrc_find _mbake)" is_file
}
@test 'more_src has _mbsync' {
    assert "$(xsrc_find _mbsync)" is_file
}
@test 'more_src has _mcap' {
    assert "$(xsrc_find _mcap)" is_file
}
@test 'more_src has _mcelog-cli' {
    assert "$(xsrc_find _mcelog-cli)" is_file
}
@test 'more_src has _mcelog-config' {
    assert "$(xsrc_find _mcelog-config)" is_file
}
@test 'more_src has _mcfly' {
    assert "$(xsrc_find _mcfly)" is_file
}
@test 'more_src has _mcp-agent' {
    assert "$(xsrc_find _mcp-agent)" is_file
}
@test 'more_src has _mcp-hub' {
    assert "$(xsrc_find _mcp-hub)" is_file
}
@test 'more_src has _mcp-scanner' {
    assert "$(xsrc_find _mcp-scanner)" is_file
}
@test 'more_src has _mcp-server-browserbase' {
    assert "$(xsrc_find _mcp-server-browserbase)" is_file
}
@test 'more_src has _mcp-server-cloudflare' {
    assert "$(xsrc_find _mcp-server-cloudflare)" is_file
}
@test 'more_src has _mcphub' {
    assert "$(xsrc_find _mcphub)" is_file
}
@test 'more_src has _mcporter' {
    assert "$(xsrc_find _mcporter)" is_file
}
@test 'more_src has _mcrepo' {
    assert "$(xsrc_find _mcrepo)" is_file
}
@test 'more_src has _md-toc' {
    assert "$(xsrc_find _md-toc)" is_file
}
@test 'more_src has _md2gslides' {
    assert "$(xsrc_find _md2gslides)" is_file
}
@test 'more_src has _mdbook' {
    assert "$(xsrc_find _mdbook)" is_file
}
@test 'more_src has _mdcat' {
    assert "$(xsrc_find _mdcat)" is_file
}
@test 'more_src has _mdeck' {
    assert "$(xsrc_find _mdeck)" is_file
}
@test 'more_src has _mdformat' {
    assert "$(xsrc_find _mdformat)" is_file
}
@test 'more_src has _mdl' {
    assert "$(xsrc_find _mdl)" is_file
}
@test 'more_src has _mdp' {
    assert "$(xsrc_find _mdp)" is_file
}
@test 'more_src has _mdsf' {
    assert "$(xsrc_find _mdsf)" is_file
}
@test 'more_src has _mdsh' {
    assert "$(xsrc_find _mdsh)" is_file
}
@test 'more_src has _mdtoc' {
    assert "$(xsrc_find _mdtoc)" is_file
}
@test 'more_src has _mdtraj' {
    assert "$(xsrc_find _mdtraj)" is_file
}
@test 'more_src has _mdtsql' {
    assert "$(xsrc_find _mdtsql)" is_file
}
@test 'more_src has _mdv' {
    assert "$(xsrc_find _mdv)" is_file
}
@test 'more_src has _mediafilesegmenter' {
    assert "$(xsrc_find _mediafilesegmenter)" is_file
}
@test 'more_src has _mediainfo' {
    assert "$(xsrc_find _mediainfo)" is_file
}
@test 'more_src has _mediastreamsegmenter' {
    assert "$(xsrc_find _mediastreamsegmenter)" is_file
}
@test 'more_src has _mediastreamvalidator' {
    assert "$(xsrc_find _mediastreamvalidator)" is_file
}
@test 'more_src has _mediasubtitlesegmenter' {
    assert "$(xsrc_find _mediasubtitlesegmenter)" is_file
}
@test 'more_src has _mednaffe' {
    assert "$(xsrc_find _mednaffe)" is_file
}
@test 'more_src has _meek-client' {
    assert "$(xsrc_find _meek-client)" is_file
}
@test 'more_src has _meek-server' {
    assert "$(xsrc_find _meek-server)" is_file
}
@test 'more_src has _megacheck' {
    assert "$(xsrc_find _megacheck)" is_file
}
@test 'more_src has _megacli' {
    assert "$(xsrc_find _megacli)" is_file
}
@test 'more_src has _megaclisas-status' {
    assert "$(xsrc_find _megaclisas-status)" is_file
}
@test 'more_src has _megaglest' {
    assert "$(xsrc_find _megaglest)" is_file
}
@test 'more_src has _megamerger' {
    assert "$(xsrc_find _megamerger)" is_file
}
@test 'more_src has _megamgr' {
    assert "$(xsrc_find _megamgr)" is_file
}
@test 'more_src has _megaraid-cli' {
    assert "$(xsrc_find _megaraid-cli)" is_file
}
@test 'more_src has _meilisearch' {
    assert "$(xsrc_find _meilisearch)" is_file
}
@test 'more_src has _melange' {
    assert "$(xsrc_find _melange)" is_file
}
@test 'more_src has _melonds' {
    assert "$(xsrc_find _melonds)" is_file
}
@test 'more_src has _melt' {
    assert "$(xsrc_find _melt)" is_file
}
@test 'more_src has _mem0' {
    assert "$(xsrc_find _mem0)" is_file
}
@test 'more_src has _mem0-cli' {
    assert "$(xsrc_find _mem0-cli)" is_file
}
@test 'more_src has _memcached-cli' {
    assert "$(xsrc_find _memcached-cli)" is_file
}
@test 'more_src has _memcached-debug' {
    assert "$(xsrc_find _memcached-debug)" is_file
}
@test 'more_src has _memstat' {
    assert "$(xsrc_find _memstat)" is_file
}
@test 'more_src has _memtest' {
    assert "$(xsrc_find _memtest)" is_file
}
@test 'more_src has _memtest86' {
    assert "$(xsrc_find _memtest86)" is_file
}
@test 'more_src has _memtester' {
    assert "$(xsrc_find _memtester)" is_file
}
@test 'more_src has _memtier_benchmark' {
    assert "$(xsrc_find _memtier_benchmark)" is_file
}
@test 'more_src has _mend' {
    assert "$(xsrc_find _mend)" is_file
}
@test 'more_src has _mender-artifact' {
    assert "$(xsrc_find _mender-artifact)" is_file
}
@test 'more_src has _menhir' {
    assert "$(xsrc_find _menhir)" is_file
}
@test 'more_src has _mentat' {
    assert "$(xsrc_find _mentat)" is_file
}
@test 'more_src has _menyoki' {
    assert "$(xsrc_find _menyoki)" is_file
}
@test 'more_src has _mercury' {
    assert "$(xsrc_find _mercury)" is_file
}
@test 'more_src has _merger' {
    assert "$(xsrc_find _merger)" is_file
}
@test 'more_src has _mergiraf' {
    assert "$(xsrc_find _mergiraf)" is_file
}
@test 'more_src has _meriadoc' {
    assert "$(xsrc_find _meriadoc)" is_file
}
@test 'more_src has _merkaartor' {
    assert "$(xsrc_find _merkaartor)" is_file
}
@test 'more_src has _merlin' {
    assert "$(xsrc_find _merlin)" is_file
}
@test 'more_src has _meshlab' {
    assert "$(xsrc_find _meshlab)" is_file
}
@test 'more_src has _metacam' {
    assert "$(xsrc_find _metacam)" is_file
}
@test 'more_src has _metadata-extractor' {
    assert "$(xsrc_find _metadata-extractor)" is_file
}
@test 'more_src has _metaflow-cli' {
    assert "$(xsrc_find _metaflow-cli)" is_file
}
@test 'more_src has _metagpt' {
    assert "$(xsrc_find _metagpt)" is_file
}
@test 'more_src has _metapac' {
    assert "$(xsrc_find _metapac)" is_file
}
@test 'more_src has _meterbridge' {
    assert "$(xsrc_find _meterbridge)" is_file
}
@test 'more_src has _mfsappendchunks' {
    assert "$(xsrc_find _mfsappendchunks)" is_file
}
@test 'more_src has _mfscgiserv' {
    assert "$(xsrc_find _mfscgiserv)" is_file
}
@test 'more_src has _mfschunkserver' {
    assert "$(xsrc_find _mfschunkserver)" is_file
}
@test 'more_src has _mfschunkstat' {
    assert "$(xsrc_find _mfschunkstat)" is_file
}
@test 'more_src has _mfsdeleattr' {
    assert "$(xsrc_find _mfsdeleattr)" is_file
}
@test 'more_src has _mfsdirinfo' {
    assert "$(xsrc_find _mfsdirinfo)" is_file
}
@test 'more_src has _mfsfileinfo' {
    assert "$(xsrc_find _mfsfileinfo)" is_file
}
@test 'more_src has _mfsfilerepair' {
    assert "$(xsrc_find _mfsfilerepair)" is_file
}
@test 'more_src has _mfsgeteattr' {
    assert "$(xsrc_find _mfsgeteattr)" is_file
}
@test 'more_src has _mfsgetgoal' {
    assert "$(xsrc_find _mfsgetgoal)" is_file
}
@test 'more_src has _mfsgettrashtime' {
    assert "$(xsrc_find _mfsgettrashtime)" is_file
}
@test 'more_src has _mfsmakesnapshot' {
    assert "$(xsrc_find _mfsmakesnapshot)" is_file
}
@test 'more_src has _mfsmaster' {
    assert "$(xsrc_find _mfsmaster)" is_file
}
@test 'more_src has _mfsmetadump' {
    assert "$(xsrc_find _mfsmetadump)" is_file
}
@test 'more_src has _mfsmetalogger' {
    assert "$(xsrc_find _mfsmetalogger)" is_file
}
@test 'more_src has _mfsmetarestore' {
    assert "$(xsrc_find _mfsmetarestore)" is_file
}
@test 'more_src has _mfsmount' {
    assert "$(xsrc_find _mfsmount)" is_file
}
@test 'more_src has _mfsrgetgoal' {
    assert "$(xsrc_find _mfsrgetgoal)" is_file
}
@test 'more_src has _mfsrsetgoal' {
    assert "$(xsrc_find _mfsrsetgoal)" is_file
}
@test 'more_src has _mfsseteattr' {
    assert "$(xsrc_find _mfsseteattr)" is_file
}
@test 'more_src has _mfssetgoal' {
    assert "$(xsrc_find _mfssetgoal)" is_file
}
@test 'more_src has _mfssettrashtime' {
    assert "$(xsrc_find _mfssettrashtime)" is_file
}
@test 'more_src has _mgba-qt' {
    assert "$(xsrc_find _mgba-qt)" is_file
}
@test 'more_src has _mgba-sdl' {
    assert "$(xsrc_find _mgba-sdl)" is_file
}
@test 'more_src has _mgit' {
    assert "$(xsrc_find _mgit)" is_file
}
@test 'more_src has _mgt' {
    assert "$(xsrc_find _mgt)" is_file
}
@test 'more_src has _mhddfs' {
    assert "$(xsrc_find _mhddfs)" is_file
}
@test 'more_src has _mhfix' {
    assert "$(xsrc_find _mhfix)" is_file
}
@test 'more_src has _mhonarc' {
    assert "$(xsrc_find _mhonarc)" is_file
}
@test 'more_src has _mhost' {
    assert "$(xsrc_find _mhost)" is_file
}
@test 'more_src has _mhwaveedit' {
    assert "$(xsrc_find _mhwaveedit)" is_file
}
@test 'more_src has _micro' {
    assert "$(xsrc_find _micro)" is_file
}
@test 'more_src has _microk8s' {
    assert "$(xsrc_find _microk8s)" is_file
}
@test 'more_src has _micromamba' {
    assert "$(xsrc_find _micromamba)" is_file
}
@test 'more_src has _microplane' {
    assert "$(xsrc_find _microplane)" is_file
}
@test 'more_src has _migrate' {
    assert "$(xsrc_find _migrate)" is_file
}
@test 'more_src has _mill' {
    assert "$(xsrc_find _mill)" is_file
}
@test 'more_src has _milla' {
    assert "$(xsrc_find _milla)" is_file
}
@test 'more_src has _miller' {
    assert "$(xsrc_find _miller)" is_file
}
@test 'more_src has _milter-greylist' {
    assert "$(xsrc_find _milter-greylist)" is_file
}
@test 'more_src has _milter-manager' {
    assert "$(xsrc_find _milter-manager)" is_file
}
@test 'more_src has _milter-regex' {
    assert "$(xsrc_find _milter-regex)" is_file
}
@test 'more_src has _milvus-cli' {
    assert "$(xsrc_find _milvus-cli)" is_file
}
@test 'more_src has _milvus_cli' {
    assert "$(xsrc_find _milvus_cli)" is_file
}
@test 'more_src has _mimedefang' {
    assert "$(xsrc_find _mimedefang)" is_file
}
@test 'more_src has _mimir-tool' {
    assert "$(xsrc_find _mimir-tool)" is_file
}
@test 'more_src has _minecraft-launcher' {
    assert "$(xsrc_find _minecraft-launcher)" is_file
}
@test 'more_src has _minetest' {
    assert "$(xsrc_find _minetest)" is_file
}
@test 'more_src has _minetest-server' {
    assert "$(xsrc_find _minetest-server)" is_file
}
@test 'more_src has _mini' {
    assert "$(xsrc_find _mini)" is_file
}
@test 'more_src has _miniflux' {
    assert "$(xsrc_find _miniflux)" is_file
}
@test 'more_src has _minify-html' {
    assert "$(xsrc_find _minify-html)" is_file
}
@test 'more_src has _minify-js' {
    assert "$(xsrc_find _minify-js)" is_file
}
@test 'more_src has _minijail0' {
    assert "$(xsrc_find _minijail0)" is_file
}
@test 'more_src has _minijinja' {
    assert "$(xsrc_find _minijinja)" is_file
}
@test 'more_src has _minikube' {
    assert "$(xsrc_find _minikube)" is_file
}
@test 'more_src has _minil' {
    assert "$(xsrc_find _minil)" is_file
}
@test 'more_src has _minio' {
    assert "$(xsrc_find _minio)" is_file
}
@test 'more_src has _miniserve' {
    assert "$(xsrc_find _miniserve)" is_file
}
@test 'more_src has _minisign' {
    assert "$(xsrc_find _minisign)" is_file
}
@test 'more_src has _mino' {
    assert "$(xsrc_find _mino)" is_file
}
@test 'more_src has _mirage' {
    assert "$(xsrc_find _mirage)" is_file
}
@test 'more_src has _mise' {
    assert "$(xsrc_find _mise)" is_file
}
@test 'more_src has _mispipe' {
    assert "$(xsrc_find _mispipe)" is_file
}
@test 'more_src has _mistral-api' {
    assert "$(xsrc_find _mistral-api)" is_file
}
@test 'more_src has _mistral-cli' {
    assert "$(xsrc_find _mistral-cli)" is_file
}
@test 'more_src has _mistral-db-manage' {
    assert "$(xsrc_find _mistral-db-manage)" is_file
}
@test 'more_src has _mistral-engine' {
    assert "$(xsrc_find _mistral-engine)" is_file
}
@test 'more_src has _mistral-event-engine' {
    assert "$(xsrc_find _mistral-event-engine)" is_file
}
@test 'more_src has _mistral-executor' {
    assert "$(xsrc_find _mistral-executor)" is_file
}
@test 'more_src has _mistral-notifier' {
    assert "$(xsrc_find _mistral-notifier)" is_file
}
@test 'more_src has _mistral-server' {
    assert "$(xsrc_find _mistral-server)" is_file
}
@test 'more_src has _mitmproxy' {
    assert "$(xsrc_find _mitmproxy)" is_file
}
@test 'more_src has _mitra' {
    assert "$(xsrc_find _mitra)" is_file
}
@test 'more_src has _mitsuba' {
    assert "$(xsrc_find _mitsuba)" is_file
}
@test 'more_src has _mixbus' {
    assert "$(xsrc_find _mixbus)" is_file
}
@test 'more_src has _mixbus32c' {
    assert "$(xsrc_find _mixbus32c)" is_file
}
@test 'more_src has _mixxx' {
    assert "$(xsrc_find _mixxx)" is_file
}
@test 'more_src has _mizar' {
    assert "$(xsrc_find _mizar)" is_file
}
@test 'more_src has _mk' {
    assert "$(xsrc_find _mk)" is_file
}
@test 'more_src has _mkbitmap' {
    assert "$(xsrc_find _mkbitmap)" is_file
}
@test 'more_src has _mkboot' {
    assert "$(xsrc_find _mkboot)" is_file
}
@test 'more_src has _mkbootfs' {
    assert "$(xsrc_find _mkbootfs)" is_file
}
@test 'more_src has _mkcert' {
    assert "$(xsrc_find _mkcert)" is_file
}
@test 'more_src has _mkcramfs' {
    assert "$(xsrc_find _mkcramfs)" is_file
}
@test 'more_src has _mkdcd' {
    assert "$(xsrc_find _mkdcd)" is_file
}
@test 'more_src has _mkdocs' {
    assert "$(xsrc_find _mkdocs)" is_file
}
@test 'more_src has _mkdocstrings' {
    assert "$(xsrc_find _mkdocstrings)" is_file
}
@test 'more_src has _mkdtboimg' {
    assert "$(xsrc_find _mkdtboimg)" is_file
}
@test 'more_src has _mkdwarfs' {
    assert "$(xsrc_find _mkdwarfs)" is_file
}
@test 'more_src has _mkfs.lustre' {
    assert "$(xsrc_find _mkfs.lustre)" is_file
}
@test 'more_src has _mkgmap' {
    assert "$(xsrc_find _mkgmap)" is_file
}
@test 'more_src has _mkosi' {
    assert "$(xsrc_find _mkosi)" is_file
}
@test 'more_src has _mkrepo' {
    assert "$(xsrc_find _mkrepo)" is_file
}
@test 'more_src has _mksdcard' {
    assert "$(xsrc_find _mksdcard)" is_file
}
@test 'more_src has _mkvirtualenv' {
    assert "$(xsrc_find _mkvirtualenv)" is_file
}
@test 'more_src has _mldonkey-server' {
    assert "$(xsrc_find _mldonkey-server)" is_file
}
@test 'more_src has _mlir_opt' {
    assert "$(xsrc_find _mlir_opt)" is_file
}
@test 'more_src has _mlr' {
    assert "$(xsrc_find _mlr)" is_file
}
@test 'more_src has _mlx' {
    assert "$(xsrc_find _mlx)" is_file
}
@test 'more_src has _mlx_lm' {
    assert "$(xsrc_find _mlx_lm)" is_file
}
@test 'more_src has _mlx_lm.convert' {
    assert "$(xsrc_find _mlx_lm.convert)" is_file
}
@test 'more_src has _mlx_lm.generate' {
    assert "$(xsrc_find _mlx_lm.generate)" is_file
}
@test 'more_src has _mlx_lm.lora' {
    assert "$(xsrc_find _mlx_lm.lora)" is_file
}
@test 'more_src has _mlxconfig' {
    assert "$(xsrc_find _mlxconfig)" is_file
}
@test 'more_src has _mlxfwmanager' {
    assert "$(xsrc_find _mlxfwmanager)" is_file
}
@test 'more_src has _mlxfwreset' {
    assert "$(xsrc_find _mlxfwreset)" is_file
}
@test 'more_src has _mlxlink' {
    assert "$(xsrc_find _mlxlink)" is_file
}
@test 'more_src has _mlxprivhost' {
    assert "$(xsrc_find _mlxprivhost)" is_file
}
@test 'more_src has _mlxqos' {
    assert "$(xsrc_find _mlxqos)" is_file
}
@test 'more_src has _mlxreg' {
    assert "$(xsrc_find _mlxreg)" is_file
}
@test 'more_src has _mlxuptime' {
    assert "$(xsrc_find _mlxuptime)" is_file
}
@test 'more_src has _mm' {
    assert "$(xsrc_find _mm)" is_file
}
@test 'more_src has _mma' {
    assert "$(xsrc_find _mma)" is_file
}
@test 'more_src has _mmtc' {
    assert "$(xsrc_find _mmtc)" is_file
}
@test 'more_src has _mmv' {
    assert "$(xsrc_find _mmv)" is_file
}
@test 'more_src has _mob' {
    assert "$(xsrc_find _mob)" is_file
}
@test 'more_src has _mobiledevice' {
    assert "$(xsrc_find _mobiledevice)" is_file
}
@test 'more_src has _mobrowser' {
    assert "$(xsrc_find _mobrowser)" is_file
}
@test 'more_src has _mockgen' {
    assert "$(xsrc_find _mockgen)" is_file
}
@test 'more_src has _mockpit' {
    assert "$(xsrc_find _mockpit)" is_file
}
@test 'more_src has _mod_md' {
    assert "$(xsrc_find _mod_md)" is_file
}
@test 'more_src has _mod_wsgi-express' {
    assert "$(xsrc_find _mod_wsgi-express)" is_file
}
@test 'more_src has _modd' {
    assert "$(xsrc_find _modd)" is_file
}
@test 'more_src has _mode2' {
    assert "$(xsrc_find _mode2)" is_file
}
@test 'more_src has _modelmesh' {
    assert "$(xsrc_find _modelmesh)" is_file
}
@test 'more_src has _modprobed-db' {
    assert "$(xsrc_find _modprobed-db)" is_file
}
@test 'more_src has _mods' {
    assert "$(xsrc_find _mods)" is_file
}
@test 'more_src has _mokvar' {
    assert "$(xsrc_find _mokvar)" is_file
}
@test 'more_src has _mold' {
    assert "$(xsrc_find _mold)" is_file
}
@test 'more_src has _mole' {
    assert "$(xsrc_find _mole)" is_file
}
@test 'more_src has _molecule' {
    assert "$(xsrc_find _molecule)" is_file
}
@test 'more_src has _mommy' {
    assert "$(xsrc_find _mommy)" is_file
}
@test 'more_src has _momorph' {
    assert "$(xsrc_find _momorph)" is_file
}
@test 'more_src has _mon.zsh' {
    assert "$(xsrc_find _mon.zsh)" is_file
}
@test 'more_src has _monasca-agent-forwarder' {
    assert "$(xsrc_find _monasca-agent-forwarder)" is_file
}
@test 'more_src has _monasca-api' {
    assert "$(xsrc_find _monasca-api)" is_file
}
@test 'more_src has _monasca-collector' {
    assert "$(xsrc_find _monasca-collector)" is_file
}
@test 'more_src has _monasca-notification' {
    assert "$(xsrc_find _monasca-notification)" is_file
}
@test 'more_src has _monasca-persister' {
    assert "$(xsrc_find _monasca-persister)" is_file
}
@test 'more_src has _monasca-statsd' {
    assert "$(xsrc_find _monasca-statsd)" is_file
}
@test 'more_src has _monasca-thresh' {
    assert "$(xsrc_find _monasca-thresh)" is_file
}
@test 'more_src has _monero-blockchain-ancestry' {
    assert "$(xsrc_find _monero-blockchain-ancestry)" is_file
}
@test 'more_src has _monero-blockchain-depth' {
    assert "$(xsrc_find _monero-blockchain-depth)" is_file
}
@test 'more_src has _monero-blockchain-export' {
    assert "$(xsrc_find _monero-blockchain-export)" is_file
}
@test 'more_src has _monero-blockchain-import' {
    assert "$(xsrc_find _monero-blockchain-import)" is_file
}
@test 'more_src has _monero-blockchain-mark-spent-outputs' {
    assert "$(xsrc_find _monero-blockchain-mark-spent-outputs)" is_file
}
@test 'more_src has _monero-blockchain-prune' {
    assert "$(xsrc_find _monero-blockchain-prune)" is_file
}
@test 'more_src has _monero-blockchain-prune-known-spent-data' {
    assert "$(xsrc_find _monero-blockchain-prune-known-spent-data)" is_file
}
@test 'more_src has _monero-blockchain-stats' {
    assert "$(xsrc_find _monero-blockchain-stats)" is_file
}
@test 'more_src has _monero-blockchain-usage' {
    assert "$(xsrc_find _monero-blockchain-usage)" is_file
}
@test 'more_src has _monero-gen-ssl-cert' {
    assert "$(xsrc_find _monero-gen-ssl-cert)" is_file
}
@test 'more_src has _monero-gen-trusted-multisig' {
    assert "$(xsrc_find _monero-gen-trusted-multisig)" is_file
}
@test 'more_src has _monero-wallet-cli' {
    assert "$(xsrc_find _monero-wallet-cli)" is_file
}
@test 'more_src has _monero-wallet-rpc' {
    assert "$(xsrc_find _monero-wallet-rpc)" is_file
}
@test 'more_src has _monerod' {
    assert "$(xsrc_find _monerod)" is_file
}
@test 'more_src has _mongocompass' {
    assert "$(xsrc_find _mongocompass)" is_file
}
@test 'more_src has _mongocryptd' {
    assert "$(xsrc_find _mongocryptd)" is_file
}
@test 'more_src has _mongokerberos' {
    assert "$(xsrc_find _mongokerberos)" is_file
}
@test 'more_src has _mongoldap' {
    assert "$(xsrc_find _mongoldap)" is_file
}
@test 'more_src has _monit' {
    assert "$(xsrc_find _monit)" is_file
}
@test 'more_src has _monolith' {
    assert "$(xsrc_find _monolith)" is_file
}
@test 'more_src has _moon' {
    assert "$(xsrc_find _moon)" is_file
}
@test 'more_src has _moonline' {
    assert "$(xsrc_find _moonline)" is_file
}
@test 'more_src has _moonraker' {
    assert "$(xsrc_find _moonraker)" is_file
}
@test 'more_src has _moonrepo' {
    assert "$(xsrc_find _moonrepo)" is_file
}
@test 'more_src has _moonup' {
    assert "$(xsrc_find _moonup)" is_file
}
@test 'more_src has _moonx' {
    assert "$(xsrc_find _moonx)" is_file
}
@test 'more_src has _moosex-app-zsh' {
    assert "$(xsrc_find _moosex-app-zsh)" is_file
}
@test 'more_src has _moosh' {
    assert "$(xsrc_find _moosh)" is_file
}
@test 'more_src has _mopac' {
    assert "$(xsrc_find _mopac)" is_file
}
@test 'more_src has _morbo' {
    assert "$(xsrc_find _morbo)" is_file
}
@test 'more_src has _morgenlichtctl' {
    assert "$(xsrc_find _morgenlichtctl)" is_file
}
@test 'more_src has _moria' {
    assert "$(xsrc_find _moria)" is_file
}
@test 'more_src has _morie' {
    assert "$(xsrc_find _morie)" is_file
}
@test 'more_src has _morituri' {
    assert "$(xsrc_find _morituri)" is_file
}
@test 'more_src has _morph' {
    assert "$(xsrc_find _morph)" is_file
}
@test 'more_src has _morph-agent' {
    assert "$(xsrc_find _morph-agent)" is_file
}
@test 'more_src has _morph-cli' {
    assert "$(xsrc_find _morph-cli)" is_file
}
@test 'more_src has _morph-mcp' {
    assert "$(xsrc_find _morph-mcp)" is_file
}
@test 'more_src has _morph-setup' {
    assert "$(xsrc_find _morph-setup)" is_file
}
@test 'more_src has _morphmcp' {
    assert "$(xsrc_find _morphmcp)" is_file
}
@test 'more_src has _mosdepth' {
    assert "$(xsrc_find _mosdepth)" is_file
}
@test 'more_src has _moserial' {
    assert "$(xsrc_find _moserial)" is_file
}
@test 'more_src has _mosquitto_pub' {
    assert "$(xsrc_find _mosquitto_pub)" is_file
}
@test 'more_src has _mosquitto_rr' {
    assert "$(xsrc_find _mosquitto_rr)" is_file
}
@test 'more_src has _mosquitto_sub' {
    assert "$(xsrc_find _mosquitto_sub)" is_file
}
@test 'more_src has _mount.lustre' {
    assert "$(xsrc_find _mount.lustre)" is_file
}
@test 'more_src has _mountebank' {
    assert "$(xsrc_find _mountebank)" is_file
}
@test 'more_src has _movim' {
    assert "$(xsrc_find _movim)" is_file
}
@test 'more_src has _mozc-tool' {
    assert "$(xsrc_find _mozc-tool)" is_file
}
@test 'more_src has _mp3unicode' {
    assert "$(xsrc_find _mp3unicode)" is_file
}
@test 'more_src has _mpd-mpris' {
    assert "$(xsrc_find _mpd-mpris)" is_file
}
@test 'more_src has _mpdcleanup' {
    assert "$(xsrc_find _mpdcleanup)" is_file
}
@test 'more_src has _mpdcron' {
    assert "$(xsrc_find _mpdcron)" is_file
}
@test 'more_src has _mpdkilljob' {
    assert "$(xsrc_find _mpdkilljob)" is_file
}
@test 'more_src has _mpdlistjobs' {
    assert "$(xsrc_find _mpdlistjobs)" is_file
}
@test 'more_src has _mpdringtest' {
    assert "$(xsrc_find _mpdringtest)" is_file
}
@test 'more_src has _mpdscribble' {
    assert "$(xsrc_find _mpdscribble)" is_file
}
@test 'more_src has _mpdsigjob' {
    assert "$(xsrc_find _mpdsigjob)" is_file
}
@test 'more_src has _mpdtrace' {
    assert "$(xsrc_find _mpdtrace)" is_file
}
@test 'more_src has _mpdviz' {
    assert "$(xsrc_find _mpdviz)" is_file
}
@test 'more_src has _mpfshell' {
    assert "$(xsrc_find _mpfshell)" is_file
}
@test 'more_src has _mpicc-mpich' {
    assert "$(xsrc_find _mpicc-mpich)" is_file
}
@test 'more_src has _mpicc-openmpi' {
    assert "$(xsrc_find _mpicc-openmpi)" is_file
}
@test 'more_src has _mpiexec.mpich' {
    assert "$(xsrc_find _mpiexec.mpich)" is_file
}
@test 'more_src has _mpiexec.ompi' {
    assert "$(xsrc_find _mpiexec.ompi)" is_file
}
@test 'more_src has _mpifc' {
    assert "$(xsrc_find _mpifc)" is_file
}
@test 'more_src has _mpirun-mpich' {
    assert "$(xsrc_find _mpirun-mpich)" is_file
}
@test 'more_src has _mpirun-ompi' {
    assert "$(xsrc_find _mpirun-ompi)" is_file
}
@test 'more_src has _mppdec' {
    assert "$(xsrc_find _mppdec)" is_file
}
@test 'more_src has _mppenc' {
    assert "$(xsrc_find _mppenc)" is_file
}
@test 'more_src has _mprime' {
    assert "$(xsrc_find _mprime)" is_file
}
@test 'more_src has _mprocs' {
    assert "$(xsrc_find _mprocs)" is_file
}
@test 'more_src has _mpv' {
    assert "$(xsrc_find _mpv)" is_file
}
@test 'more_src has _mrbayes' {
    assert "$(xsrc_find _mrbayes)" is_file
}
@test 'more_src has _msbar' {
    assert "$(xsrc_find _msbar)" is_file
}
@test 'more_src has _mscore3' {
    assert "$(xsrc_find _mscore3)" is_file
}
@test 'more_src has _mscore4' {
    assert "$(xsrc_find _mscore4)" is_file
}
@test 'more_src has _mshowfat' {
    assert "$(xsrc_find _mshowfat)" is_file
}
@test 'more_src has _mst' {
    assert "$(xsrc_find _mst)" is_file
}
@test 'more_src has _mstconfig' {
    assert "$(xsrc_find _mstconfig)" is_file
}
@test 'more_src has _mstflint' {
    assert "$(xsrc_find _mstflint)" is_file
}
@test 'more_src has _mstfwmanager' {
    assert "$(xsrc_find _mstfwmanager)" is_file
}
@test 'more_src has _mstprivhost' {
    assert "$(xsrc_find _mstprivhost)" is_file
}
@test 'more_src has _mstregdump' {
    assert "$(xsrc_find _mstregdump)" is_file
}
@test 'more_src has _mstvpd' {
    assert "$(xsrc_find _mstvpd)" is_file
}
@test 'more_src has _msunpack' {
    assert "$(xsrc_find _msunpack)" is_file
}
@test 'more_src has _msync' {
    assert "$(xsrc_find _msync)" is_file
}
@test 'more_src has _mtpaint' {
    assert "$(xsrc_find _mtpaint)" is_file
}
@test 'more_src has _mtr-packet' {
    assert "$(xsrc_find _mtr-packet)" is_file
}
@test 'more_src has _mturk' {
    assert "$(xsrc_find _mturk)" is_file
}
@test 'more_src has _muesli' {
    assert "$(xsrc_find _muesli)" is_file
}
@test 'more_src has _muesli-cli' {
    assert "$(xsrc_find _muesli-cli)" is_file
}
@test 'more_src has _muffet' {
    assert "$(xsrc_find _muffet)" is_file
}
@test 'more_src has _mugit' {
    assert "$(xsrc_find _mugit)" is_file
}
@test 'more_src has _mullvad' {
    assert "$(xsrc_find _mullvad)" is_file
}
@test 'more_src has _multilog' {
    assert "$(xsrc_find _multilog)" is_file
}
@test 'more_src has _multipass' {
    assert "$(xsrc_find _multipass)" is_file
}
@test 'more_src has _multiqc' {
    assert "$(xsrc_find _multiqc)" is_file
}
@test 'more_src has _multirust' {
    assert "$(xsrc_find _multirust)" is_file
}
@test 'more_src has _multitail' {
    assert "$(xsrc_find _multitail)" is_file
}
@test 'more_src has _multus-cni' {
    assert "$(xsrc_find _multus-cni)" is_file
}
@test 'more_src has _multus-daemon' {
    assert "$(xsrc_find _multus-daemon)" is_file
}
@test 'more_src has _munin-async' {
    assert "$(xsrc_find _munin-async)" is_file
}
@test 'more_src has _munin-asyncd' {
    assert "$(xsrc_find _munin-asyncd)" is_file
}
@test 'more_src has _munin-collect' {
    assert "$(xsrc_find _munin-collect)" is_file
}
@test 'more_src has _munin-mkconfig' {
    assert "$(xsrc_find _munin-mkconfig)" is_file
}
@test 'more_src has _munin-run' {
    assert "$(xsrc_find _munin-run)" is_file
}
@test 'more_src has _muon' {
    assert "$(xsrc_find _muon)" is_file
}
@test 'more_src has _mupad' {
    assert "$(xsrc_find _mupad)" is_file
}
@test 'more_src has _mupdate' {
    assert "$(xsrc_find _mupdate)" is_file
}
@test 'more_src has _mupdf-gl' {
    assert "$(xsrc_find _mupdf-gl)" is_file
}
@test 'more_src has _mupen64plus' {
    assert "$(xsrc_find _mupen64plus)" is_file
}
@test 'more_src has _murano-api' {
    assert "$(xsrc_find _murano-api)" is_file
}
@test 'more_src has _murano-cf-api' {
    assert "$(xsrc_find _murano-cf-api)" is_file
}
@test 'more_src has _murano-engine' {
    assert "$(xsrc_find _murano-engine)" is_file
}
@test 'more_src has _murano-manage' {
    assert "$(xsrc_find _murano-manage)" is_file
}
@test 'more_src has _murano-status' {
    assert "$(xsrc_find _murano-status)" is_file
}
@test 'more_src has _murano-test-runner' {
    assert "$(xsrc_find _murano-test-runner)" is_file
}
@test 'more_src has _murex' {
    assert "$(xsrc_find _murex)" is_file
}
@test 'more_src has _murk' {
    assert "$(xsrc_find _murk)" is_file
}
@test 'more_src has _muscle3' {
    assert "$(xsrc_find _muscle3)" is_file
}
@test 'more_src has _muscle5' {
    assert "$(xsrc_find _muscle5)" is_file
}
@test 'more_src has _muse' {
    assert "$(xsrc_find _muse)" is_file
}
@test 'more_src has _musescore' {
    assert "$(xsrc_find _musescore)" is_file
}
@test 'more_src has _musescore-manager' {
    assert "$(xsrc_find _musescore-manager)" is_file
}
@test 'more_src has _mutagen' {
    assert "$(xsrc_find _mutagen)" is_file
}
@test 'more_src has _mutect2' {
    assert "$(xsrc_find _mutect2)" is_file
}
@test 'more_src has _mutt-wizard' {
    assert "$(xsrc_find _mutt-wizard)" is_file
}
@test 'more_src has _mutt-wizard.zsh' {
    assert "$(xsrc_find _mutt-wizard.zsh)" is_file
}
@test 'more_src has _muxi' {
    assert "$(xsrc_find _muxi)" is_file
}
@test 'more_src has _muxx' {
    assert "$(xsrc_find _muxx)" is_file
}
@test 'more_src has _mwcontam' {
    assert "$(xsrc_find _mwcontam)" is_file
}
@test 'more_src has _mwfilter' {
    assert "$(xsrc_find _mwfilter)" is_file
}
@test 'more_src has _mwm' {
    assert "$(xsrc_find _mwm)" is_file
}
@test 'more_src has _mxl.zsh' {
    assert "$(xsrc_find _mxl.zsh)" is_file
}
@test 'more_src has _my_cheat.sh' {
    assert "$(xsrc_find _my_cheat.sh)" is_file
}
@test 'more_src has _mypy' {
    assert "$(xsrc_find _mypy)" is_file
}
@test 'more_src has _mysql-router' {
    assert "$(xsrc_find _mysql-router)" is_file
}
@test 'more_src has _mysql-router-bootstrap' {
    assert "$(xsrc_find _mysql-router-bootstrap)" is_file
}
@test 'more_src has _mysql-router-passwd' {
    assert "$(xsrc_find _mysql-router-passwd)" is_file
}
@test 'more_src has _mysql-shell' {
    assert "$(xsrc_find _mysql-shell)" is_file
}
@test 'more_src has _mysql2sqlite' {
    assert "$(xsrc_find _mysql2sqlite)" is_file
}
@test 'more_src has _mythbackend' {
    assert "$(xsrc_find _mythbackend)" is_file
}
@test 'more_src has _mythccextractor' {
    assert "$(xsrc_find _mythccextractor)" is_file
}
@test 'more_src has _mythcommflag' {
    assert "$(xsrc_find _mythcommflag)" is_file
}
@test 'more_src has _mythffmpeg' {
    assert "$(xsrc_find _mythffmpeg)" is_file
}
@test 'more_src has _mythfilldatabase' {
    assert "$(xsrc_find _mythfilldatabase)" is_file
}
@test 'more_src has _mythfrontend' {
    assert "$(xsrc_find _mythfrontend)" is_file
}
@test 'more_src has _mythic' {
    assert "$(xsrc_find _mythic)" is_file
}
@test 'more_src has _mythipxe' {
    assert "$(xsrc_find _mythipxe)" is_file
}
@test 'more_src has _mythlcdserver' {
    assert "$(xsrc_find _mythlcdserver)" is_file
}
@test 'more_src has _mythlogserver' {
    assert "$(xsrc_find _mythlogserver)" is_file
}
@test 'more_src has _mythmetadatalookup' {
    assert "$(xsrc_find _mythmetadatalookup)" is_file
}
@test 'more_src has _mythpreviewgen' {
    assert "$(xsrc_find _mythpreviewgen)" is_file
}
@test 'more_src has _mythreplex' {
    assert "$(xsrc_find _mythreplex)" is_file
}
@test 'more_src has _mythscreenwizard' {
    assert "$(xsrc_find _mythscreenwizard)" is_file
}
@test 'more_src has _mythshutdown' {
    assert "$(xsrc_find _mythshutdown)" is_file
}
@test 'more_src has _mythstoragegroup' {
    assert "$(xsrc_find _mythstoragegroup)" is_file
}
@test 'more_src has _mythtranscode' {
    assert "$(xsrc_find _mythtranscode)" is_file
}
@test 'more_src has _mythtv-setup' {
    assert "$(xsrc_find _mythtv-setup)" is_file
}
@test 'more_src has _mythutil' {
    assert "$(xsrc_find _mythutil)" is_file
}
@test 'more_src has _mythwelcome' {
    assert "$(xsrc_find _mythwelcome)" is_file
}
@test 'more_src has _n-kill' {
    assert "$(xsrc_find _n-kill)" is_file
}
@test 'more_src has _n8n' {
    assert "$(xsrc_find _n8n)" is_file
}
@test 'more_src has _n8n-cli' {
    assert "$(xsrc_find _n8n-cli)" is_file
}
@test 'more_src has _n8nc' {
    assert "$(xsrc_find _n8nc)" is_file
}
@test 'more_src has _naabu' {
    assert "$(xsrc_find _naabu)" is_file
}
@test 'more_src has _nag' {
    assert "$(xsrc_find _nag)" is_file
}
@test 'more_src has _nagiosgraph' {
    assert "$(xsrc_find _nagiosgraph)" is_file
}
@test 'more_src has _nai' {
    assert "$(xsrc_find _nai)" is_file
}
@test 'more_src has _namaka' {
    assert "$(xsrc_find _namaka)" is_file
}
@test 'more_src has _namd2' {
    assert "$(xsrc_find _namd2)" is_file
}
@test 'more_src has _namdcuda' {
    assert "$(xsrc_find _namdcuda)" is_file
}
@test 'more_src has _name-that-hash' {
    assert "$(xsrc_find _name-that-hash)" is_file
}
@test 'more_src has _namecheap' {
    assert "$(xsrc_find _namecheap)" is_file
}
@test 'more_src has _nap' {
    assert "$(xsrc_find _nap)" is_file
}
@test 'more_src has _nar' {
    assert "$(xsrc_find _nar)" is_file
}
@test 'more_src has _natron' {
    assert "$(xsrc_find _natron)" is_file
}
@test 'more_src has _nats' {
    assert "$(xsrc_find _nats)" is_file
}
@test 'more_src has _nats-pub' {
    assert "$(xsrc_find _nats-pub)" is_file
}
@test 'more_src has _nats-sub' {
    assert "$(xsrc_find _nats-sub)" is_file
}
@test 'more_src has _nats-top' {
    assert "$(xsrc_find _nats-top)" is_file
}
@test 'more_src has _navi' {
    assert "$(xsrc_find _navi)" is_file
}
@test 'more_src has _navidrome' {
    assert "$(xsrc_find _navidrome)" is_file
}
@test 'more_src has _nb' {
    assert "$(xsrc_find _nb)" is_file
}
@test 'more_src has _nbcli' {
    assert "$(xsrc_find _nbcli)" is_file
}
@test 'more_src has _nbd-server' {
    assert "$(xsrc_find _nbd-server)" is_file
}
@test 'more_src has _nbdiff' {
    assert "$(xsrc_find _nbdiff)" is_file
}
@test 'more_src has _nbfc.in' {
    assert "$(xsrc_find _nbfc.in)" is_file
}
@test 'more_src has _nbfc_service.in' {
    assert "$(xsrc_find _nbfc_service.in)" is_file
}
@test 'more_src has _nbmerge' {
    assert "$(xsrc_find _nbmerge)" is_file
}
@test 'more_src has _nbtscan-unixwiz' {
    assert "$(xsrc_find _nbtscan-unixwiz)" is_file
}
@test 'more_src has _nc2parquet' {
    assert "$(xsrc_find _nc2parquet)" is_file
}
@test 'more_src has _ncftpbatch' {
    assert "$(xsrc_find _ncftpbatch)" is_file
}
@test 'more_src has _ncm2mp3' {
    assert "$(xsrc_find _ncm2mp3)" is_file
}
@test 'more_src has _ncspot' {
    assert "$(xsrc_find _ncspot)" is_file
}
@test 'more_src has _ndu' {
    assert "$(xsrc_find _ndu)" is_file
}
@test 'more_src has _neatcli' {
    assert "$(xsrc_find _neatcli)" is_file
}
@test 'more_src has _nebula' {
    assert "$(xsrc_find _nebula)" is_file
}
@test 'more_src has _necpp' {
    assert "$(xsrc_find _necpp)" is_file
}
@test 'more_src has _needleall' {
    assert "$(xsrc_find _needleall)" is_file
}
@test 'more_src has _nem2-cli' {
    assert "$(xsrc_find _nem2-cli)" is_file
}
@test 'more_src has _nemesis' {
    assert "$(xsrc_find _nemesis)" is_file
}
@test 'more_src has _nemiver' {
    assert "$(xsrc_find _nemiver)" is_file
}
@test 'more_src has _nemo-autorun-software' {
    assert "$(xsrc_find _nemo-autorun-software)" is_file
}
@test 'more_src has _nemo-preview' {
    assert "$(xsrc_find _nemo-preview)" is_file
}
@test 'more_src has _nemoguardrails' {
    assert "$(xsrc_find _nemoguardrails)" is_file
}
@test 'more_src has _nemu' {
    assert "$(xsrc_find _nemu)" is_file
}
@test 'more_src has _neocmakelsp' {
    assert "$(xsrc_find _neocmakelsp)" is_file
}
@test 'more_src has _neofetch' {
    assert "$(xsrc_find _neofetch)" is_file
}
@test 'more_src has _neomutt' {
    assert "$(xsrc_find _neomutt)" is_file
}
@test 'more_src has _neosync' {
    assert "$(xsrc_find _neosync)" is_file
}
@test 'more_src has _neovide' {
    assert "$(xsrc_find _neovide)" is_file
}
@test 'more_src has _neovim-qt' {
    assert "$(xsrc_find _neovim-qt)" is_file
}
@test 'more_src has _neptune' {
    assert "$(xsrc_find _neptune)" is_file
}
@test 'more_src has _nerdctl' {
    assert "$(xsrc_find _nerdctl)" is_file
}
@test 'more_src has _nerdfonts' {
    assert "$(xsrc_find _nerdfonts)" is_file
}
@test 'more_src has _neroAacDec' {
    assert "$(xsrc_find _neroAacDec)" is_file
}
@test 'more_src has _neroAacEnc' {
    assert "$(xsrc_find _neroAacEnc)" is_file
}
@test 'more_src has _neroAacTag' {
    assert "$(xsrc_find _neroAacTag)" is_file
}
@test 'more_src has _nest-cli' {
    assert "$(xsrc_find _nest-cli)" is_file
}
@test 'more_src has _nestopia' {
    assert "$(xsrc_find _nestopia)" is_file
}
@test 'more_src has _nestopia-ue' {
    assert "$(xsrc_find _nestopia-ue)" is_file
}
@test 'more_src has _netbird' {
    assert "$(xsrc_find _netbird)" is_file
}
@test 'more_src has _netcat-openbsd' {
    assert "$(xsrc_find _netcat-openbsd)" is_file
}
@test 'more_src has _netcat-traditional' {
    assert "$(xsrc_find _netcat-traditional)" is_file
}
@test 'more_src has _netdata' {
    assert "$(xsrc_find _netdata)" is_file
}
@test 'more_src has _netfilter-persistent' {
    assert "$(xsrc_find _netfilter-persistent)" is_file
}
@test 'more_src has _netgen' {
    assert "$(xsrc_find _netgen)" is_file
}
@test 'more_src has _netmaker' {
    assert "$(xsrc_find _netmaker)" is_file
}
@test 'more_src has _neutron-db-manage' {
    assert "$(xsrc_find _neutron-db-manage)" is_file
}
@test 'more_src has _neutron-dhcp-agent' {
    assert "$(xsrc_find _neutron-dhcp-agent)" is_file
}
@test 'more_src has _neutron-l3-agent' {
    assert "$(xsrc_find _neutron-l3-agent)" is_file
}
@test 'more_src has _neutron-linuxbridge-agent' {
    assert "$(xsrc_find _neutron-linuxbridge-agent)" is_file
}
@test 'more_src has _neutron-metadata-agent' {
    assert "$(xsrc_find _neutron-metadata-agent)" is_file
}
@test 'more_src has _neutron-openvswitch-agent' {
    assert "$(xsrc_find _neutron-openvswitch-agent)" is_file
}
@test 'more_src has _neutron-sanity-check' {
    assert "$(xsrc_find _neutron-sanity-check)" is_file
}
@test 'more_src has _neutron-server' {
    assert "$(xsrc_find _neutron-server)" is_file
}
@test 'more_src has _neverball' {
    assert "$(xsrc_find _neverball)" is_file
}
@test 'more_src has _neverest' {
    assert "$(xsrc_find _neverest)" is_file
}
@test 'more_src has _neverputt' {
    assert "$(xsrc_find _neverputt)" is_file
}
@test 'more_src has _newcpgreport' {
    assert "$(xsrc_find _newcpgreport)" is_file
}
@test 'more_src has _newcpgseek' {
    assert "$(xsrc_find _newcpgseek)" is_file
}
@test 'more_src has _newgidmap' {
    assert "$(xsrc_find _newgidmap)" is_file
}
@test 'more_src has _newlisp' {
    assert "$(xsrc_find _newlisp)" is_file
}
@test 'more_src has _newman' {
    assert "$(xsrc_find _newman)" is_file
}
@test 'more_src has _newrelic-license-manager' {
    assert "$(xsrc_find _newrelic-license-manager)" is_file
}
@test 'more_src has _newsbeuter' {
    assert "$(xsrc_find _newsbeuter)" is_file
}
@test 'more_src has _newsboat' {
    assert "$(xsrc_find _newsboat)" is_file
}
@test 'more_src has _newseq' {
    assert "$(xsrc_find _newseq)" is_file
}
@test 'more_src has _newuidmap' {
    assert "$(xsrc_find _newuidmap)" is_file
}
@test 'more_src has _nextonic' {
    assert "$(xsrc_find _nextonic)" is_file
}
@test 'more_src has _nexuiz' {
    assert "$(xsrc_find _nexuiz)" is_file
}
@test 'more_src has _nexus' {
    assert "$(xsrc_find _nexus)" is_file
}
@test 'more_src has _nfpm' {
    assert "$(xsrc_find _nfpm)" is_file
}
@test 'more_src has _nfs-ganesha' {
    assert "$(xsrc_find _nfs-ganesha)" is_file
}
@test 'more_src has _nfsen' {
    assert "$(xsrc_find _nfsen)" is_file
}
@test 'more_src has _nftables' {
    assert "$(xsrc_find _nftables)" is_file
}
@test 'more_src has _nfutils' {
    assert "$(xsrc_find _nfutils)" is_file
}
@test 'more_src has _nginx-ingress' {
    assert "$(xsrc_find _nginx-ingress)" is_file
}
@test 'more_src has _ngircd' {
    assert "$(xsrc_find _ngircd)" is_file
}
@test 'more_src has _nheko' {
    assert "$(xsrc_find _nheko)" is_file
}
@test 'more_src has _nhmmer' {
    assert "$(xsrc_find _nhmmer)" is_file
}
@test 'more_src has _nhmmscan' {
    assert "$(xsrc_find _nhmmscan)" is_file
}
@test 'more_src has _nhost' {
    assert "$(xsrc_find _nhost)" is_file
}
@test 'more_src has _nhrpd' {
    assert "$(xsrc_find _nhrpd)" is_file
}
@test 'more_src has _nia' {
    assert "$(xsrc_find _nia)" is_file
}
@test 'more_src has _nia-wizard' {
    assert "$(xsrc_find _nia-wizard)" is_file
}
@test 'more_src has _nicole.compdef.zsh' {
    assert "$(xsrc_find _nicole.compdef.zsh)" is_file
}
@test 'more_src has _nifi-cli' {
    assert "$(xsrc_find _nifi-cli)" is_file
}
@test 'more_src has _nikto2' {
    assert "$(xsrc_find _nikto2)" is_file
}
@test 'more_src has _nil' {
    assert "$(xsrc_find _nil)" is_file
}
@test 'more_src has _nimbus_beacon_node' {
    assert "$(xsrc_find _nimbus_beacon_node)" is_file
}
@test 'more_src has _nitrocli' {
    assert "$(xsrc_find _nitrocli)" is_file
}
@test 'more_src has _nitrogen' {
    assert "$(xsrc_find _nitrogen)" is_file
}
@test 'more_src has _nitropy' {
    assert "$(xsrc_find _nitropy)" is_file
}
@test 'more_src has _nix' {
    assert "$(xsrc_find _nix)" is_file
}
@test 'more_src has _nix-build' {
    assert "$(xsrc_find _nix-build)" is_file
}
@test 'more_src has _nix-diff' {
    assert "$(xsrc_find _nix-diff)" is_file
}
@test 'more_src has _nix-env' {
    assert "$(xsrc_find _nix-env)" is_file
}
@test 'more_src has _nix-forecast' {
    assert "$(xsrc_find _nix-forecast)" is_file
}
@test 'more_src has _nix-install-package' {
    assert "$(xsrc_find _nix-install-package)" is_file
}
@test 'more_src has _nix-locate' {
    assert "$(xsrc_find _nix-locate)" is_file
}
@test 'more_src has _nix-prefetch-completion' {
    assert "$(xsrc_find _nix-prefetch-completion)" is_file
}
@test 'more_src has _nix-push' {
    assert "$(xsrc_find _nix-push)" is_file
}
@test 'more_src has _nix-review' {
    assert "$(xsrc_find _nix-review)" is_file
}
@test 'more_src has _nix-shell' {
    assert "$(xsrc_find _nix-shell)" is_file
}
@test 'more_src has _nix-store' {
    assert "$(xsrc_find _nix-store)" is_file
}
@test 'more_src has _nix-sweep' {
    assert "$(xsrc_find _nix-sweep)" is_file
}
@test 'more_src has _nix-template' {
    assert "$(xsrc_find _nix-template)" is_file
}
@test 'more_src has _nix-tree' {
    assert "$(xsrc_find _nix-tree)" is_file
}
@test 'more_src has _nix-weather' {
    assert "$(xsrc_find _nix-weather)" is_file
}
@test 'more_src has _nixci' {
    assert "$(xsrc_find _nixci)" is_file
}
@test 'more_src has _nixd' {
    assert "$(xsrc_find _nixd)" is_file
}
@test 'more_src has _nixfmt' {
    assert "$(xsrc_find _nixfmt)" is_file
}
@test 'more_src has _nixops' {
    assert "$(xsrc_find _nixops)" is_file
}
@test 'more_src has _nixos-build-vms' {
    assert "$(xsrc_find _nixos-build-vms)" is_file
}
@test 'more_src has _nixos-container' {
    assert "$(xsrc_find _nixos-container)" is_file
}
@test 'more_src has _nixos-generate-config' {
    assert "$(xsrc_find _nixos-generate-config)" is_file
}
@test 'more_src has _nixos-install' {
    assert "$(xsrc_find _nixos-install)" is_file
}
@test 'more_src has _nixos-option' {
    assert "$(xsrc_find _nixos-option)" is_file
}
@test 'more_src has _nixos-rebuild' {
    assert "$(xsrc_find _nixos-rebuild)" is_file
}
@test 'more_src has _nixos-version' {
    assert "$(xsrc_find _nixos-version)" is_file
}
@test 'more_src has _nixpacks' {
    assert "$(xsrc_find _nixpacks)" is_file
}
@test 'more_src has _nixpkgs-review' {
    assert "$(xsrc_find _nixpkgs-review)" is_file
}
@test 'more_src has _nmake' {
    assert "$(xsrc_find _nmake)" is_file
}
@test 'more_src has _nodeenv' {
    assert "$(xsrc_find _nodeenv)" is_file
}
@test 'more_src has _nodenv' {
    assert "$(xsrc_find _nodenv)" is_file
}
@test 'more_src has _nodetool' {
    assert "$(xsrc_find _nodetool)" is_file
}
@test 'more_src has _nodeup' {
    assert "$(xsrc_find _nodeup)" is_file
}
@test 'more_src has _nohtml' {
    assert "$(xsrc_find _nohtml)" is_file
}
@test 'more_src has _noip2' {
    assert "$(xsrc_find _noip2)" is_file
}
@test 'more_src has _nom-build' {
    assert "$(xsrc_find _nom-build)" is_file
}
@test 'more_src has _nom-shell' {
    assert "$(xsrc_find _nom-shell)" is_file
}
@test 'more_src has _nomad' {
    assert "$(xsrc_find _nomad)" is_file
}
@test 'more_src has _non-mixer' {
    assert "$(xsrc_find _non-mixer)" is_file
}
@test 'more_src has _non-sequencer' {
    assert "$(xsrc_find _non-sequencer)" is_file
}
@test 'more_src has _nona' {
    assert "$(xsrc_find _nona)" is_file
}
@test 'more_src has _nono' {
    assert "$(xsrc_find _nono)" is_file
}
@test 'more_src has _nordnet' {
    assert "$(xsrc_find _nordnet)" is_file
}
@test 'more_src has _noremoteglob' {
    assert "$(xsrc_find _noremoteglob)" is_file
}
@test 'more_src has _noreturn' {
    assert "$(xsrc_find _noreturn)" is_file
}
@test 'more_src has _nospace' {
    assert "$(xsrc_find _nospace)" is_file
}
@test 'more_src has _nosy' {
    assert "$(xsrc_find _nosy)" is_file
}
@test 'more_src has _notab' {
    assert "$(xsrc_find _notab)" is_file
}
@test 'more_src has _notation' {
    assert "$(xsrc_find _notation)" is_file
}
@test 'more_src has _notecase' {
    assert "$(xsrc_find _notecase)" is_file
}
@test 'more_src has _noti' {
    assert "$(xsrc_find _noti)" is_file
}
@test 'more_src has _notifiers' {
    assert "$(xsrc_find _notifiers)" is_file
}
@test 'more_src has _notmuch' {
    assert "$(xsrc_find _notmuch)" is_file
}
@test 'more_src has _notmuch-mailmover' {
    assert "$(xsrc_find _notmuch-mailmover)" is_file
}
@test 'more_src has _notmuch-mutt' {
    assert "$(xsrc_find _notmuch-mutt)" is_file
}
@test 'more_src has _notseq' {
    assert "$(xsrc_find _notseq)" is_file
}
@test 'more_src has _nova-api' {
    assert "$(xsrc_find _nova-api)" is_file
}
@test 'more_src has _nova-compute' {
    assert "$(xsrc_find _nova-compute)" is_file
}
@test 'more_src has _nova-conductor' {
    assert "$(xsrc_find _nova-conductor)" is_file
}
@test 'more_src has _nova-manage' {
    assert "$(xsrc_find _nova-manage)" is_file
}
@test 'more_src has _nova-novncproxy' {
    assert "$(xsrc_find _nova-novncproxy)" is_file
}
@test 'more_src has _nova-rootwrap' {
    assert "$(xsrc_find _nova-rootwrap)" is_file
}
@test 'more_src has _nova-scheduler' {
    assert "$(xsrc_find _nova-scheduler)" is_file
}
@test 'more_src has _nova-serialproxy' {
    assert "$(xsrc_find _nova-serialproxy)" is_file
}
@test 'more_src has _nova-spicehtml5proxy' {
    assert "$(xsrc_find _nova-spicehtml5proxy)" is_file
}
@test 'more_src has _nova-status' {
    assert "$(xsrc_find _nova-status)" is_file
}
@test 'more_src has _novalyn' {
    assert "$(xsrc_find _novalyn)" is_file
}
@test 'more_src has _novops' {
    assert "$(xsrc_find _novops)" is_file
}
@test 'more_src has _nox' {
    assert "$(xsrc_find _nox)" is_file
}
@test 'more_src has _np-audit' {
    assert "$(xsrc_find _np-audit)" is_file
}
@test 'more_src has _npa' {
    assert "$(xsrc_find _npa)" is_file
}
@test 'more_src has _npingler' {
    assert "$(xsrc_find _npingler)" is_file
}
@test 'more_src has _npm-trust' {
    assert "$(xsrc_find _npm-trust)" is_file
}
@test 'more_src has _npxnetlify' {
    assert "$(xsrc_find _npxnetlify)" is_file
}
@test 'more_src has _nri-discovery' {
    assert "$(xsrc_find _nri-discovery)" is_file
}
@test 'more_src has _nri-docker' {
    assert "$(xsrc_find _nri-docker)" is_file
}
@test 'more_src has _nri-flex' {
    assert "$(xsrc_find _nri-flex)" is_file
}
@test 'more_src has _nri-kubernetes' {
    assert "$(xsrc_find _nri-kubernetes)" is_file
}
@test 'more_src has _nri-prometheus' {
    assert "$(xsrc_find _nri-prometheus)" is_file
}
@test 'more_src has _nrich' {
    assert "$(xsrc_find _nrich)" is_file
}
@test 'more_src has _nsc' {
    assert "$(xsrc_find _nsc)" is_file
}
@test 'more_src has _nsd-checkzone' {
    assert "$(xsrc_find _nsd-checkzone)" is_file
}
@test 'more_src has _nsd-control-setup' {
    assert "$(xsrc_find _nsd-control-setup)" is_file
}
@test 'more_src has _nsd-zonec' {
    assert "$(xsrc_find _nsd-zonec)" is_file
}
@test 'more_src has _nsight-systems' {
    assert "$(xsrc_find _nsight-systems)" is_file
}
@test 'more_src has _nss-cert-import' {
    assert "$(xsrc_find _nss-cert-import)" is_file
}
@test 'more_src has _nss-list-trust-records' {
    assert "$(xsrc_find _nss-list-trust-records)" is_file
}
@test 'more_src has _nss-policy-check' {
    assert "$(xsrc_find _nss-policy-check)" is_file
}
@test 'more_src has _nsst' {
    assert "$(xsrc_find _nsst)" is_file
}
@test 'more_src has _nsys' {
    assert "$(xsrc_find _nsys)" is_file
}
@test 'more_src has _nt' {
    assert "$(xsrc_find _nt)" is_file
}
@test 'more_src has _ntfy' {
    assert "$(xsrc_find _ntfy)" is_file
}
@test 'more_src has _nthseq' {
    assert "$(xsrc_find _nthseq)" is_file
}
@test 'more_src has _nthseqset' {
    assert "$(xsrc_find _nthseqset)" is_file
}
@test 'more_src has _ntlmrelayx' {
    assert "$(xsrc_find _ntlmrelayx)" is_file
}
@test 'more_src has _ntopng' {
    assert "$(xsrc_find _ntopng)" is_file
}
@test 'more_src has _ntpdate-debian' {
    assert "$(xsrc_find _ntpdate-debian)" is_file
}
@test 'more_src has _ntpdate-utils' {
    assert "$(xsrc_find _ntpdate-utils)" is_file
}
@test 'more_src has _ntpdig' {
    assert "$(xsrc_find _ntpdig)" is_file
}
@test 'more_src has _ntpkeygen' {
    assert "$(xsrc_find _ntpkeygen)" is_file
}
@test 'more_src has _ntpstat' {
    assert "$(xsrc_find _ntpstat)" is_file
}
@test 'more_src has _nuclei' {
    assert "$(xsrc_find _nuclei)" is_file
}
@test 'more_src has _nuget' {
    assert "$(xsrc_find _nuget)" is_file
}
@test 'more_src has _numbat' {
    assert "$(xsrc_find _numbat)" is_file
}
@test 'more_src has _nun' {
    assert "$(xsrc_find _nun)" is_file
}
@test 'more_src has _nurl' {
    assert "$(xsrc_find _nurl)" is_file
}
@test 'more_src has _nushell' {
    assert "$(xsrc_find _nushell)" is_file
}
@test 'more_src has _nut-monitor' {
    assert "$(xsrc_find _nut-monitor)" is_file
}
@test 'more_src has _nutch' {
    assert "$(xsrc_find _nutch)" is_file
}
@test 'more_src has _nuv' {
    assert "$(xsrc_find _nuv)" is_file
}
@test 'more_src has _nuxi-ng' {
    assert "$(xsrc_find _nuxi-ng)" is_file
}
@test 'more_src has _nuxt-cli' {
    assert "$(xsrc_find _nuxt-cli)" is_file
}
@test 'more_src has _nv-fabricmanager' {
    assert "$(xsrc_find _nv-fabricmanager)" is_file
}
@test 'more_src has _nv-nsight-cu-cli' {
    assert "$(xsrc_find _nv-nsight-cu-cli)" is_file
}
@test 'more_src has _nvautoflash' {
    assert "$(xsrc_find _nvautoflash)" is_file
}
@test 'more_src has _nvbootflash' {
    assert "$(xsrc_find _nvbootflash)" is_file
}
@test 'more_src has _nvc++' {
    assert "$(xsrc_find _nvc++)" is_file
}
@test 'more_src has _nvdisasm' {
    assert "$(xsrc_find _nvdisasm)" is_file
}
@test 'more_src has _nvflash' {
    assert "$(xsrc_find _nvflash)" is_file
}
@test 'more_src has _nvfortran' {
    assert "$(xsrc_find _nvfortran)" is_file
}
@test 'more_src has _nvgetdtb' {
    assert "$(xsrc_find _nvgetdtb)" is_file
}
@test 'more_src has _nvidia-bug-report' {
    assert "$(xsrc_find _nvidia-bug-report)" is_file
}
@test 'more_src has _nvidia-container-cli' {
    assert "$(xsrc_find _nvidia-container-cli)" is_file
}
@test 'more_src has _nvidia-ctk' {
    assert "$(xsrc_find _nvidia-ctk)" is_file
}
@test 'more_src has _nvidia-cuda-mps-control' {
    assert "$(xsrc_find _nvidia-cuda-mps-control)" is_file
}
@test 'more_src has _nvidia-cuda-mps-server' {
    assert "$(xsrc_find _nvidia-cuda-mps-server)" is_file
}
@test 'more_src has _nvidia-debugdump' {
    assert "$(xsrc_find _nvidia-debugdump)" is_file
}
@test 'more_src has _nvidia-detect' {
    assert "$(xsrc_find _nvidia-detect)" is_file
}
@test 'more_src has _nvidia-detector' {
    assert "$(xsrc_find _nvidia-detector)" is_file
}
@test 'more_src has _nvidia-device-plugin' {
    assert "$(xsrc_find _nvidia-device-plugin)" is_file
}
@test 'more_src has _nvidia-docker' {
    assert "$(xsrc_find _nvidia-docker)" is_file
}
@test 'more_src has _nvidia-driver' {
    assert "$(xsrc_find _nvidia-driver)" is_file
}
@test 'more_src has _nvidia-installer' {
    assert "$(xsrc_find _nvidia-installer)" is_file
}
@test 'more_src has _nvidia-modprobe' {
    assert "$(xsrc_find _nvidia-modprobe)" is_file
}
@test 'more_src has _nvidia-persistenced' {
    assert "$(xsrc_find _nvidia-persistenced)" is_file
}
@test 'more_src has _nvidia-powerd' {
    assert "$(xsrc_find _nvidia-powerd)" is_file
}
@test 'more_src has _nvidia-settings' {
    assert "$(xsrc_find _nvidia-settings)" is_file
}
@test 'more_src has _nvidia-uninstall' {
    assert "$(xsrc_find _nvidia-uninstall)" is_file
}
@test 'more_src has _nvidia-vbiosflash' {
    assert "$(xsrc_find _nvidia-vbiosflash)" is_file
}
@test 'more_src has _nvidia-xconfig' {
    assert "$(xsrc_find _nvidia-xconfig)" is_file
}
@test 'more_src has _nvim' {
    assert "$(xsrc_find _nvim)" is_file
}
@test 'more_src has _nvimpager' {
    assert "$(xsrc_find _nvimpager)" is_file
}
@test 'more_src has _nvimx' {
    assert "$(xsrc_find _nvimx)" is_file
}
@test 'more_src has _nvlc' {
    assert "$(xsrc_find _nvlc)" is_file
}
@test 'more_src has _nvlink' {
    assert "$(xsrc_find _nvlink)" is_file
}
@test 'more_src has _nvme' {
    assert "$(xsrc_find _nvme)" is_file
}
@test 'more_src has _nvprof' {
    assert "$(xsrc_find _nvprof)" is_file
}
@test 'more_src has _nvprune' {
    assert "$(xsrc_find _nvprune)" is_file
}
@test 'more_src has _nvs' {
    assert "$(xsrc_find _nvs)" is_file
}
@test 'more_src has _nvtboot' {
    assert "$(xsrc_find _nvtboot)" is_file
}
@test 'more_src has _nvvp' {
    assert "$(xsrc_find _nvvp)" is_file
}
@test 'more_src has _nw' {
    assert "$(xsrc_find _nw)" is_file
}
@test 'more_src has _nwchem' {
    assert "$(xsrc_find _nwchem)" is_file
}
@test 'more_src has _nwg-launchers' {
    assert "$(xsrc_find _nwg-launchers)" is_file
}
@test 'more_src has _nwg-shell' {
    assert "$(xsrc_find _nwg-shell)" is_file
}
@test 'more_src has _nx-cloud' {
    assert "$(xsrc_find _nx-cloud)" is_file
}
@test 'more_src has _nxterm' {
    assert "$(xsrc_find _nxterm)" is_file
}
@test 'more_src has _o2' {
    assert "$(xsrc_find _o2)" is_file
}
@test 'more_src has _oag' {
    assert "$(xsrc_find _oag)" is_file
}
@test 'more_src has _oapi-codegen' {
    assert "$(xsrc_find _oapi-codegen)" is_file
}
@test 'more_src has _oathtool' {
    assert "$(xsrc_find _oathtool)" is_file
}
@test 'more_src has _obabel' {
    assert "$(xsrc_find _obabel)" is_file
}
@test 'more_src has _obconf' {
    assert "$(xsrc_find _obconf)" is_file
}
@test 'more_src has _obconf-qt' {
    assert "$(xsrc_find _obconf-qt)" is_file
}
@test 'more_src has _obex_test' {
    assert "$(xsrc_find _obex_test)" is_file
}
@test 'more_src has _obexd' {
    assert "$(xsrc_find _obexd)" is_file
}
@test 'more_src has _obexpushd' {
    assert "$(xsrc_find _obexpushd)" is_file
}
@test 'more_src has _obfsproxy' {
    assert "$(xsrc_find _obfsproxy)" is_file
}
@test 'more_src has _obfuskit' {
    assert "$(xsrc_find _obfuskit)" is_file
}
@test 'more_src has _objconv' {
    assert "$(xsrc_find _objconv)" is_file
}
@test 'more_src has _obmenu' {
    assert "$(xsrc_find _obmenu)" is_file
}
@test 'more_src has _obnam' {
    assert "$(xsrc_find _obnam)" is_file
}
@test 'more_src has _obs' {
    assert "$(xsrc_find _obs)" is_file
}
@test 'more_src has _obs-websocket' {
    assert "$(xsrc_find _obs-websocket)" is_file
}
@test 'more_src has _oc' {
    assert "$(xsrc_find _oc)" is_file
}
@test 'more_src has _oc-stats' {
    assert "$(xsrc_find _oc-stats)" is_file
}
@test 'more_src has _ocaml-top' {
    assert "$(xsrc_find _ocaml-top)" is_file
}
@test 'more_src has _ocamlfind' {
    assert "$(xsrc_find _ocamlfind)" is_file
}
@test 'more_src has _ocamlformat' {
    assert "$(xsrc_find _ocamlformat)" is_file
}
@test 'more_src has _ocamlsp' {
    assert "$(xsrc_find _ocamlsp)" is_file
}
@test 'more_src has _ocelot' {
    assert "$(xsrc_find _ocelot)" is_file
}
@test 'more_src has _oci' {
    assert "$(xsrc_find _oci)" is_file
}
@test 'more_src has _ocp-browser' {
    assert "$(xsrc_find _ocp-browser)" is_file
}
@test 'more_src has _ocp-build' {
    assert "$(xsrc_find _ocp-build)" is_file
}
@test 'more_src has _ocp-indent' {
    assert "$(xsrc_find _ocp-indent)" is_file
}
@test 'more_src has _ocrad' {
    assert "$(xsrc_find _ocrad)" is_file
}
@test 'more_src has _ocrmypdf' {
    assert "$(xsrc_find _ocrmypdf)" is_file
}
@test 'more_src has _ocropy' {
    assert "$(xsrc_find _ocropy)" is_file
}
@test 'more_src has _ocserv-client' {
    assert "$(xsrc_find _ocserv-client)" is_file
}
@test 'more_src has _ocserv-fwd' {
    assert "$(xsrc_find _ocserv-fwd)" is_file
}
@test 'more_src has _oct' {
    assert "$(xsrc_find _oct)" is_file
}
@test 'more_src has _octave' {
    assert "$(xsrc_find _octave)" is_file
}
@test 'more_src has _octave-cli' {
    assert "$(xsrc_find _octave-cli)" is_file
}
@test 'more_src has _octavia-api' {
    assert "$(xsrc_find _octavia-api)" is_file
}
@test 'more_src has _octavia-driver-agent' {
    assert "$(xsrc_find _octavia-driver-agent)" is_file
}
@test 'more_src has _octavia-health-manager' {
    assert "$(xsrc_find _octavia-health-manager)" is_file
}
@test 'more_src has _octavia-housekeeping' {
    assert "$(xsrc_find _octavia-housekeeping)" is_file
}
@test 'more_src has _octavia-worker' {
    assert "$(xsrc_find _octavia-worker)" is_file
}
@test 'more_src has _octez-manager' {
    assert "$(xsrc_find _octez-manager)" is_file
}
@test 'more_src has _ocw' {
    assert "$(xsrc_find _ocw)" is_file
}
@test 'more_src has _oddcomp' {
    assert "$(xsrc_find _oddcomp)" is_file
}
@test 'more_src has _oddjob' {
    assert "$(xsrc_find _oddjob)" is_file
}
@test 'more_src has _odhcp6c' {
    assert "$(xsrc_find _odhcp6c)" is_file
}
@test 'more_src has _odhcpd' {
    assert "$(xsrc_find _odhcpd)" is_file
}
@test 'more_src has _ods-control' {
    assert "$(xsrc_find _ods-control)" is_file
}
@test 'more_src has _ods-enforcer' {
    assert "$(xsrc_find _ods-enforcer)" is_file
}
@test 'more_src has _ods-ksmutil' {
    assert "$(xsrc_find _ods-ksmutil)" is_file
}
@test 'more_src has _ods-signer' {
    assert "$(xsrc_find _ods-signer)" is_file
}
@test 'more_src has _ofelia' {
    assert "$(xsrc_find _ofelia)" is_file
}
@test 'more_src has _ofono' {
    assert "$(xsrc_find _ofono)" is_file
}
@test 'more_src has _ogit.sh' {
    assert "$(xsrc_find _ogit.sh)" is_file
}
@test 'more_src has _oha' {
    assert "$(xsrc_find _oha)" is_file
}
@test 'more_src has _ohcli' {
    assert "$(xsrc_find _ohcli)" is_file
}
@test 'more_src has _ohdear-cli' {
    assert "$(xsrc_find _ohdear-cli)" is_file
}
@test 'more_src has _ohrun' {
    assert "$(xsrc_find _ohrun)" is_file
}
@test 'more_src has _oidc' {
    assert "$(xsrc_find _oidc)" is_file
}
@test 'more_src has _oil' {
    assert "$(xsrc_find _oil)" is_file
}
@test 'more_src has _oils-for-unix' {
    assert "$(xsrc_find _oils-for-unix)" is_file
}
@test 'more_src has _ojph_compress' {
    assert "$(xsrc_find _ojph_compress)" is_file
}
@test 'more_src has _ojph_expand' {
    assert "$(xsrc_find _ojph_expand)" is_file
}
@test 'more_src has _okteta' {
    assert "$(xsrc_find _okteta)" is_file
}
@test 'more_src has _olaf' {
    assert "$(xsrc_find _olaf)" is_file
}
@test 'more_src has _olive-editor' {
    assert "$(xsrc_find _olive-editor)" is_file
}
@test 'more_src has _ollama' {
    assert "$(xsrc_find _ollama)" is_file
}
@test 'more_src has _ollama-cli' {
    assert "$(xsrc_find _ollama-cli)" is_file
}
@test 'more_src has _om' {
    assert "$(xsrc_find _om)" is_file
}
@test 'more_src has _omega' {
    assert "$(xsrc_find _omega)" is_file
}
@test 'more_src has _omf' {
    assert "$(xsrc_find _omf)" is_file
}
@test 'more_src has _omni-agent' {
    assert "$(xsrc_find _omni-agent)" is_file
}
@test 'more_src has _omnisharp' {
    assert "$(xsrc_find _omnisharp)" is_file
}
@test 'more_src has _ompi-checkpoint' {
    assert "$(xsrc_find _ompi-checkpoint)" is_file
}
@test 'more_src has _ompi-iof' {
    assert "$(xsrc_find _ompi-iof)" is_file
}
@test 'more_src has _ompi-ps' {
    assert "$(xsrc_find _ompi-ps)" is_file
}
@test 'more_src has _ompi-restart' {
    assert "$(xsrc_find _ompi-restart)" is_file
}
@test 'more_src has _ompi-top' {
    assert "$(xsrc_find _ompi-top)" is_file
}
@test 'more_src has _omshell' {
    assert "$(xsrc_find _omshell)" is_file
}
@test 'more_src has _omx' {
    assert "$(xsrc_find _omx)" is_file
}
@test 'more_src has _ondir' {
    assert "$(xsrc_find _ondir)" is_file
}
@test 'more_src has _oneagent' {
    assert "$(xsrc_find _oneagent)" is_file
}
@test 'more_src has _oneagentctl' {
    assert "$(xsrc_find _oneagentctl)" is_file
}
@test 'more_src has _onedrive' {
    assert "$(xsrc_find _onedrive)" is_file
}
@test 'more_src has _onefetch' {
    assert "$(xsrc_find _onefetch)" is_file
}
@test 'more_src has _onionshare-cli' {
    assert "$(xsrc_find _onionshare-cli)" is_file
}
@test 'more_src has _onmetal-image' {
    assert "$(xsrc_find _onmetal-image)" is_file
}
@test 'more_src has _onnx-graphsurgeon' {
    assert "$(xsrc_find _onnx-graphsurgeon)" is_file
}
@test 'more_src has _onnxsim' {
    assert "$(xsrc_find _onnxsim)" is_file
}
@test 'more_src has _oomplay' {
    assert "$(xsrc_find _oomplay)" is_file
}
@test 'more_src has _op' {
    assert "$(xsrc_find _op)" is_file
}
@test 'more_src has _opa' {
    assert "$(xsrc_find _opa)" is_file
}
@test 'more_src has _open-next' {
    assert "$(xsrc_find _open-next)" is_file
}
@test 'more_src has _openai' {
    assert "$(xsrc_find _openai)" is_file
}
@test 'more_src has _openai-cli' {
    assert "$(xsrc_find _openai-cli)" is_file
}
@test 'more_src has _openapi-generator' {
    assert "$(xsrc_find _openapi-generator)" is_file
}
@test 'more_src has _openapi-python-client' {
    assert "$(xsrc_find _openapi-python-client)" is_file
}
@test 'more_src has _openapi-spec-validator' {
    assert "$(xsrc_find _openapi-spec-validator)" is_file
}
@test 'more_src has _openarena' {
    assert "$(xsrc_find _openarena)" is_file
}
@test 'more_src has _openbox-gnome-session' {
    assert "$(xsrc_find _openbox-gnome-session)" is_file
}
@test 'more_src has _openbox-kde-session' {
    assert "$(xsrc_find _openbox-kde-session)" is_file
}
@test 'more_src has _openbox-session' {
    assert "$(xsrc_find _openbox-session)" is_file
}
@test 'more_src has _openbox-xdg-autostart' {
    assert "$(xsrc_find _openbox-xdg-autostart)" is_file
}
@test 'more_src has _openchrome' {
    assert "$(xsrc_find _openchrome)" is_file
}
@test 'more_src has _openchrome-mcp' {
    assert "$(xsrc_find _openchrome-mcp)" is_file
}
@test 'more_src has _opencode-cli' {
    assert "$(xsrc_find _opencode-cli)" is_file
}
@test 'more_src has _openct' {
    assert "$(xsrc_find _openct)" is_file
}
@test 'more_src has _openct-tool' {
    assert "$(xsrc_find _openct-tool)" is_file
}
@test 'more_src has _opendiff' {
    assert "$(xsrc_find _opendiff)" is_file
}
@test 'more_src has _opendkim' {
    assert "$(xsrc_find _opendkim)" is_file
}
@test 'more_src has _opendkim-genkey' {
    assert "$(xsrc_find _opendkim-genkey)" is_file
}
@test 'more_src has _opendkim-genzone' {
    assert "$(xsrc_find _opendkim-genzone)" is_file
}
@test 'more_src has _opendkim-importstats' {
    assert "$(xsrc_find _opendkim-importstats)" is_file
}
@test 'more_src has _opendkim-keygen' {
    assert "$(xsrc_find _opendkim-keygen)" is_file
}
@test 'more_src has _opendkim-stats' {
    assert "$(xsrc_find _opendkim-stats)" is_file
}
@test 'more_src has _opendkim-testadsp' {
    assert "$(xsrc_find _opendkim-testadsp)" is_file
}
@test 'more_src has _opendkim-testkey' {
    assert "$(xsrc_find _opendkim-testkey)" is_file
}
@test 'more_src has _opendkim-testmsg' {
    assert "$(xsrc_find _opendkim-testmsg)" is_file
}
@test 'more_src has _opendkim-testssp' {
    assert "$(xsrc_find _opendkim-testssp)" is_file
}
@test 'more_src has _opendmarc' {
    assert "$(xsrc_find _opendmarc)" is_file
}
@test 'more_src has _opendmarc-tools' {
    assert "$(xsrc_find _opendmarc-tools)" is_file
}
@test 'more_src has _openfaas' {
    assert "$(xsrc_find _openfaas)" is_file
}
@test 'more_src has _openfang' {
    assert "$(xsrc_find _openfang)" is_file
}
@test 'more_src has _openhands' {
    assert "$(xsrc_find _openhands)" is_file
}
@test 'more_src has _openhands-cli' {
    assert "$(xsrc_find _openhands-cli)" is_file
}
@test 'more_src has _openhpi-clients' {
    assert "$(xsrc_find _openhpi-clients)" is_file
}
@test 'more_src has _openhpi-utils' {
    assert "$(xsrc_find _openhpi-utils)" is_file
}
@test 'more_src has _openl2tp' {
    assert "$(xsrc_find _openl2tp)" is_file
}
@test 'more_src has _openl2tpd' {
    assert "$(xsrc_find _openl2tpd)" is_file
}
@test 'more_src has _openlit-instrument' {
    assert "$(xsrc_find _openlit-instrument)" is_file
}
@test 'more_src has _openmeteo' {
    assert "$(xsrc_find _openmeteo)" is_file
}
@test 'more_src has _openmm' {
    assert "$(xsrc_find _openmm)" is_file
}
@test 'more_src has _openmw' {
    assert "$(xsrc_find _openmw)" is_file
}
@test 'more_src has _openobserve' {
    assert "$(xsrc_find _openobserve)" is_file
}
@test 'more_src has _openocd' {
    assert "$(xsrc_find _openocd)" is_file
}
@test 'more_src has _openpgp-card-admin' {
    assert "$(xsrc_find _openpgp-card-admin)" is_file
}
@test 'more_src has _openpgp-card-tool' {
    assert "$(xsrc_find _openpgp-card-tool)" is_file
}
@test 'more_src has _openra' {
    assert "$(xsrc_find _openra)" is_file
}
@test 'more_src has _openrct2' {
    assert "$(xsrc_find _openrct2)" is_file
}
@test 'more_src has _openring' {
    assert "$(xsrc_find _openring)" is_file
}
@test 'more_src has _openscad' {
    assert "$(xsrc_find _openscad)" is_file
}
@test 'more_src has _opensearch-cli' {
    assert "$(xsrc_find _opensearch-cli)" is_file
}
@test 'more_src has _opensearch-keystore' {
    assert "$(xsrc_find _opensearch-keystore)" is_file
}
@test 'more_src has _opensearch-perf-tool' {
    assert "$(xsrc_find _opensearch-perf-tool)" is_file
}
@test 'more_src has _opensearch-plugin' {
    assert "$(xsrc_find _opensearch-plugin)" is_file
}
@test 'more_src has _openshot' {
    assert "$(xsrc_find _openshot)" is_file
}
@test 'more_src has _opensips' {
    assert "$(xsrc_find _opensips)" is_file
}
@test 'more_src has _opensm' {
    assert "$(xsrc_find _opensm)" is_file
}
@test 'more_src has _opensmtpd' {
    assert "$(xsrc_find _opensmtpd)" is_file
}
@test 'more_src has _openspec' {
    assert "$(xsrc_find _openspec)" is_file
}
@test 'more_src has _openswarm' {
    assert "$(xsrc_find _openswarm)" is_file
}
@test 'more_src has _opentelemetry-bootstrap' {
    assert "$(xsrc_find _opentelemetry-bootstrap)" is_file
}
@test 'more_src has _opentelemetry-collector' {
    assert "$(xsrc_find _opentelemetry-collector)" is_file
}
@test 'more_src has _opentelemetry-collector-contrib' {
    assert "$(xsrc_find _opentelemetry-collector-contrib)" is_file
}
@test 'more_src has _opentelemetry-instrument' {
    assert "$(xsrc_find _opentelemetry-instrument)" is_file
}
@test 'more_src has _opentofu' {
    assert "$(xsrc_find _opentofu)" is_file
}
@test 'more_src has _openttd' {
    assert "$(xsrc_find _openttd)" is_file
}
@test 'more_src has _opentuicli' {
    assert "$(xsrc_find _opentuicli)" is_file
}
@test 'more_src has _openvsp' {
    assert "$(xsrc_find _openvsp)" is_file
}
@test 'more_src has _openvsp-connect' {
    assert "$(xsrc_find _openvsp-connect)" is_file
}
@test 'more_src has _openvsp-helper' {
    assert "$(xsrc_find _openvsp-helper)" is_file
}
@test 'more_src has _openzeppelin' {
    assert "$(xsrc_find _openzeppelin)" is_file
}
@test 'more_src has _openzeppelin-contracts-migrate-imports' {
    assert "$(xsrc_find _openzeppelin-contracts-migrate-imports)" is_file
}
@test 'more_src has _operant' {
    assert "$(xsrc_find _operant)" is_file
}
@test 'more_src has _operator-courier' {
    assert "$(xsrc_find _operator-courier)" is_file
}
@test 'more_src has _operator-registry' {
    assert "$(xsrc_find _operator-registry)" is_file
}
@test 'more_src has _operator-sdk' {
    assert "$(xsrc_find _operator-sdk)" is_file
}
@test 'more_src has _opik' {
    assert "$(xsrc_find _opik)" is_file
}
@test 'more_src has _opm' {
    assert "$(xsrc_find _opm)" is_file
}
@test 'more_src has _opswd' {
    assert "$(xsrc_find _opswd)" is_file
}
@test 'more_src has _optic' {
    assert "$(xsrc_find _optic)" is_file
}
@test 'more_src has _optimum-cli' {
    assert "$(xsrc_find _optimum-cli)" is_file
}
@test 'more_src has _optimus-manager' {
    assert "$(xsrc_find _optimus-manager)" is_file
}
@test 'more_src has _optipng' {
    assert "$(xsrc_find _optipng)" is_file
}
@test 'more_src has _opusgain' {
    assert "$(xsrc_find _opusgain)" is_file
}
@test 'more_src has _opustags' {
    assert "$(xsrc_find _opustags)" is_file
}
@test 'more_src has _oqs-openssl' {
    assert "$(xsrc_find _oqs-openssl)" is_file
}
@test 'more_src has _oqtopus' {
    assert "$(xsrc_find _oqtopus)" is_file
}
@test 'more_src has _oramalama' {
    assert "$(xsrc_find _oramalama)" is_file
}
@test 'more_src has _oras' {
    assert "$(xsrc_find _oras)" is_file
}
@test 'more_src has _orchestrate' {
    assert "$(xsrc_find _orchestrate)" is_file
}
@test 'more_src has _orchestrate.sh' {
    assert "$(xsrc_find _orchestrate.sh)" is_file
}
@test 'more_src has _orte-ps' {
    assert "$(xsrc_find _orte-ps)" is_file
}
@test 'more_src has _osh' {
    assert "$(xsrc_find _osh)" is_file
}
@test 'more_src has _oshcc' {
    assert "$(xsrc_find _oshcc)" is_file
}
@test 'more_src has _oshfort' {
    assert "$(xsrc_find _oshfort)" is_file
}
@test 'more_src has _osmconvert' {
    assert "$(xsrc_find _osmconvert)" is_file
}
@test 'more_src has _osmfilter' {
    assert "$(xsrc_find _osmfilter)" is_file
}
@test 'more_src has _osmium-tool' {
    assert "$(xsrc_find _osmium-tool)" is_file
}
@test 'more_src has _osmo' {
    assert "$(xsrc_find _osmo)" is_file
}
@test 'more_src has _osmosis' {
    assert "$(xsrc_find _osmosis)" is_file
}
@test 'more_src has _osmtest' {
    assert "$(xsrc_find _osmtest)" is_file
}
@test 'more_src has _osmupdate' {
    assert "$(xsrc_find _osmupdate)" is_file
}
@test 'more_src has _ospf6d' {
    assert "$(xsrc_find _ospf6d)" is_file
}
@test 'more_src has _ospfd' {
    assert "$(xsrc_find _ospfd)" is_file
}
@test 'more_src has _osquery' {
    assert "$(xsrc_find _osquery)" is_file
}
@test 'more_src has _osqueryctl' {
    assert "$(xsrc_find _osqueryctl)" is_file
}
@test 'more_src has _osqueryi' {
    assert "$(xsrc_find _osqueryi)" is_file
}
@test 'more_src has _ossec-agent' {
    assert "$(xsrc_find _ossec-agent)" is_file
}
@test 'more_src has _ossec-agent-auth' {
    assert "$(xsrc_find _ossec-agent-auth)" is_file
}
@test 'more_src has _ossec-control' {
    assert "$(xsrc_find _ossec-control)" is_file
}
@test 'more_src has _ossec-logtest' {
    assert "$(xsrc_find _ossec-logtest)" is_file
}
@test 'more_src has _ossec-makelists' {
    assert "$(xsrc_find _ossec-makelists)" is_file
}
@test 'more_src has _ossec-regex' {
    assert "$(xsrc_find _ossec-regex)" is_file
}
@test 'more_src has _osv-scanner' {
    assert "$(xsrc_find _osv-scanner)" is_file
}
@test 'more_src has _otel-cli' {
    assert "$(xsrc_find _otel-cli)" is_file
}
@test 'more_src has _ots' {
    assert "$(xsrc_find _ots)" is_file
}
@test 'more_src has _otterdog' {
    assert "$(xsrc_find _otterdog)" is_file
}
@test 'more_src has _ouch' {
    assert "$(xsrc_find _ouch)" is_file
}
@test 'more_src has _ov' {
    assert "$(xsrc_find _ov)" is_file
}
@test 'more_src has _overmind' {
    assert "$(xsrc_find _overmind)" is_file
}
@test 'more_src has _ovirt-engine-cli' {
    assert "$(xsrc_find _ovirt-engine-cli)" is_file
}
@test 'more_src has _ovito' {
    assert "$(xsrc_find _ovito)" is_file
}
@test 'more_src has _ow' {
    assert "$(xsrc_find _ow)" is_file
}
@test 'more_src has _owasp-zap' {
    assert "$(xsrc_find _owasp-zap)" is_file
}
@test 'more_src has _owmods' {
    assert "$(xsrc_find _owmods)" is_file
}
@test 'more_src has _oxenstored' {
    assert "$(xsrc_find _oxenstored)" is_file
}
@test 'more_src has _oxipng' {
    assert "$(xsrc_find _oxipng)" is_file
}
@test 'more_src has _oxlint' {
    assert "$(xsrc_find _oxlint)" is_file
}
@test 'more_src has _oxo-call' {
    assert "$(xsrc_find _oxo-call)" is_file
}
@test 'more_src has _oxo-flow' {
    assert "$(xsrc_find _oxo-flow)" is_file
}
@test 'more_src has _oz' {
    assert "$(xsrc_find _oz)" is_file
}
@test 'more_src has _p11tool-cli' {
    assert "$(xsrc_find _p11tool-cli)" is_file
}
@test 'more_src has _pSX' {
    assert "$(xsrc_find _pSX)" is_file
}
@test 'more_src has _paccapability' {
    assert "$(xsrc_find _paccapability)" is_file
}
@test 'more_src has _paccheck' {
    assert "$(xsrc_find _paccheck)" is_file
}
@test 'more_src has _pacconf' {
    assert "$(xsrc_find _pacconf)" is_file
}
@test 'more_src has _pace' {
    assert "$(xsrc_find _pace)" is_file
}
@test 'more_src has _pacemaker' {
    assert "$(xsrc_find _pacemaker)" is_file
}
@test 'more_src has _pacemaker-attrd' {
    assert "$(xsrc_find _pacemaker-attrd)" is_file
}
@test 'more_src has _pacemaker-based' {
    assert "$(xsrc_find _pacemaker-based)" is_file
}
@test 'more_src has _pacemaker-controld' {
    assert "$(xsrc_find _pacemaker-controld)" is_file
}
@test 'more_src has _pacemaker-execd' {
    assert "$(xsrc_find _pacemaker-execd)" is_file
}
@test 'more_src has _pacemaker-fenced' {
    assert "$(xsrc_find _pacemaker-fenced)" is_file
}
@test 'more_src has _pacemaker-remoted' {
    assert "$(xsrc_find _pacemaker-remoted)" is_file
}
@test 'more_src has _pacemaker-schedulerd' {
    assert "$(xsrc_find _pacemaker-schedulerd)" is_file
}
@test 'more_src has _pacfile' {
    assert "$(xsrc_find _pacfile)" is_file
}
@test 'more_src has _pacgraph' {
    assert "$(xsrc_find _pacgraph)" is_file
}
@test 'more_src has _pacinfo' {
    assert "$(xsrc_find _pacinfo)" is_file
}
@test 'more_src has _pacini' {
    assert "$(xsrc_find _pacini)" is_file
}
@test 'more_src has _packagekitd' {
    assert "$(xsrc_find _packagekitd)" is_file
}
@test 'more_src has _packcc' {
    assert "$(xsrc_find _packcc)" is_file
}
@test 'more_src has _packemon' {
    assert "$(xsrc_find _packemon)" is_file
}
@test 'more_src has _packer' {
    assert "$(xsrc_find _packer)" is_file
}
@test 'more_src has _packihx' {
    assert "$(xsrc_find _packihx)" is_file
}
@test 'more_src has _paclock' {
    assert "$(xsrc_find _paclock)" is_file
}
@test 'more_src has _paclog' {
    assert "$(xsrc_find _paclog)" is_file
}
@test 'more_src has _paco' {
    assert "$(xsrc_find _paco)" is_file
}
@test 'more_src has _pacrepairdb' {
    assert "$(xsrc_find _pacrepairdb)" is_file
}
@test 'more_src has _pacrepairfile' {
    assert "$(xsrc_find _pacrepairfile)" is_file
}
@test 'more_src has _pacreport' {
    assert "$(xsrc_find _pacreport)" is_file
}
@test 'more_src has _pacsift' {
    assert "$(xsrc_find _pacsift)" is_file
}
@test 'more_src has _pacsync' {
    assert "$(xsrc_find _pacsync)" is_file
}
@test 'more_src has _pactrans' {
    assert "$(xsrc_find _pactrans)" is_file
}
@test 'more_src has _padrino' {
    assert "$(xsrc_find _padrino)" is_file
}
@test 'more_src has _pagefind' {
    assert "$(xsrc_find _pagefind)" is_file
}
@test 'more_src has _pagesize' {
    assert "$(xsrc_find _pagesize)" is_file
}
@test 'more_src has _pai' {
    assert "$(xsrc_find _pai)" is_file
}
@test 'more_src has _paint' {
    assert "$(xsrc_find _paint)" is_file
}
@test 'more_src has _paka' {
    assert "$(xsrc_find _paka)" is_file
}
@test 'more_src has _palapeli' {
    assert "$(xsrc_find _palapeli)" is_file
}
@test 'more_src has _palindrome' {
    assert "$(xsrc_find _palindrome)" is_file
}
@test 'more_src has _paludis' {
    assert "$(xsrc_find _paludis)" is_file
}
@test 'more_src has _pamac' {
    assert "$(xsrc_find _pamac)" is_file
}
@test 'more_src has _pamac-cli' {
    assert "$(xsrc_find _pamac-cli)" is_file
}
@test 'more_src has _pamac-manager' {
    assert "$(xsrc_find _pamac-manager)" is_file
}
@test 'more_src has _pamixer' {
    assert "$(xsrc_find _pamixer)" is_file
}
@test 'more_src has _pamtester' {
    assert "$(xsrc_find _pamtester)" is_file
}
@test 'more_src has _pamu2fcfg' {
    assert "$(xsrc_find _pamu2fcfg)" is_file
}
@test 'more_src has _panache' {
    assert "$(xsrc_find _panache)" is_file
}
@test 'more_src has _pand' {
    assert "$(xsrc_find _pand)" is_file
}
@test 'more_src has _panel' {
    assert "$(xsrc_find _panel)" is_file
}
@test 'more_src has _panko-api' {
    assert "$(xsrc_find _panko-api)" is_file
}
@test 'more_src has _panko-expirer' {
    assert "$(xsrc_find _panko-expirer)" is_file
}
@test 'more_src has _panoglview' {
    assert "$(xsrc_find _panoglview)" is_file
}
@test 'more_src has _pantheon-files' {
    assert "$(xsrc_find _pantheon-files)" is_file
}
@test 'more_src has _pantheon-photos' {
    assert "$(xsrc_find _pantheon-photos)" is_file
}
@test 'more_src has _pantheon-terminal' {
    assert "$(xsrc_find _pantheon-terminal)" is_file
}
@test 'more_src has _pants' {
    assert "$(xsrc_find _pants)" is_file
}
@test 'more_src has _paperless' {
    assert "$(xsrc_find _paperless)" is_file
}
@test 'more_src has _papermill' {
    assert "$(xsrc_find _papermill)" is_file
}
@test 'more_src has _paperwork' {
    assert "$(xsrc_find _paperwork)" is_file
}
@test 'more_src has _papirus-folders' {
    assert "$(xsrc_find _papirus-folders)" is_file
}
@test 'more_src has _paprefs' {
    assert "$(xsrc_find _paprefs)" is_file
}
@test 'more_src has _paraFoam' {
    assert "$(xsrc_find _paraFoam)" is_file
}
@test 'more_src has _paraview' {
    assert "$(xsrc_find _paraview)" is_file
}
@test 'more_src has _parcel' {
    assert "$(xsrc_find _parcel)" is_file
}
@test 'more_src has _pari-gp' {
    assert "$(xsrc_find _pari-gp)" is_file
}
@test 'more_src has _parmed' {
    assert "$(xsrc_find _parmed)" is_file
}
@test 'more_src has _paros' {
    assert "$(xsrc_find _paros)" is_file
}
@test 'more_src has _parquet2json' {
    assert "$(xsrc_find _parquet2json)" is_file
}
@test 'more_src has _partclone' {
    assert "$(xsrc_find _partclone)" is_file
}
@test 'more_src has _partsbox' {
    assert "$(xsrc_find _partsbox)" is_file
}
@test 'more_src has _paru' {
    assert "$(xsrc_find _paru)" is_file
}
@test 'more_src has _pass-otp' {
    assert "$(xsrc_find _pass-otp)" is_file
}
@test 'more_src has _pass-rotate' {
    assert "$(xsrc_find _pass-rotate)" is_file
}
@test 'more_src has _pass-tomb' {
    assert "$(xsrc_find _pass-tomb)" is_file
}
@test 'more_src has _pass-update' {
    assert "$(xsrc_find _pass-update)" is_file
}
@test 'more_src has _passage' {
    assert "$(xsrc_find _passage)" is_file
}
@test 'more_src has _passenger-config' {
    assert "$(xsrc_find _passenger-config)" is_file
}
@test 'more_src has _passenger-install-apache2-module' {
    assert "$(xsrc_find _passenger-install-apache2-module)" is_file
}
@test 'more_src has _passenger-status' {
    assert "$(xsrc_find _passenger-status)" is_file
}
@test 'more_src has _passhash' {
    assert "$(xsrc_find _passhash)" is_file
}
@test 'more_src has _passphrase' {
    assert "$(xsrc_find _passphrase)" is_file
}
@test 'more_src has _passx' {
    assert "$(xsrc_find _passx)" is_file
}
@test 'more_src has _pastel' {
    assert "$(xsrc_find _pastel)" is_file
}
@test 'more_src has _pasteseq' {
    assert "$(xsrc_find _pasteseq)" is_file
}
@test 'more_src has _pasystray' {
    assert "$(xsrc_find _pasystray)" is_file
}
@test 'more_src has _patchage' {
    assert "$(xsrc_find _patchage)" is_file
}
@test 'more_src has _patchelf' {
    assert "$(xsrc_find _patchelf)" is_file
}
@test 'more_src has _pathd' {
    assert "$(xsrc_find _pathd)" is_file
}
@test 'more_src has _patmatdb' {
    assert "$(xsrc_find _patmatdb)" is_file
}
@test 'more_src has _patmatmotifs' {
    assert "$(xsrc_find _patmatmotifs)" is_file
}
@test 'more_src has _patool' {
    assert "$(xsrc_find _patool)" is_file
}
@test 'more_src has _pavumeter' {
    assert "$(xsrc_find _pavumeter)" is_file
}
@test 'more_src has _payload_dumper' {
    assert "$(xsrc_find _payload_dumper)" is_file
}
@test 'more_src has _pazi' {
    assert "$(xsrc_find _pazi)" is_file
}
@test 'more_src has _pbase' {
    assert "$(xsrc_find _pbase)" is_file
}
@test 'more_src has _pbs_iff' {
    assert "$(xsrc_find _pbs_iff)" is_file
}
@test 'more_src has _pbs_mom' {
    assert "$(xsrc_find _pbs_mom)" is_file
}
@test 'more_src has _pbs_sched' {
    assert "$(xsrc_find _pbs_sched)" is_file
}
@test 'more_src has _pbs_server' {
    assert "$(xsrc_find _pbs_server)" is_file
}
@test 'more_src has _pbs_tclsh' {
    assert "$(xsrc_find _pbs_tclsh)" is_file
}
@test 'more_src has _pbsdsh' {
    assert "$(xsrc_find _pbsdsh)" is_file
}
@test 'more_src has _pbsnodes' {
    assert "$(xsrc_find _pbsnodes)" is_file
}
@test 'more_src has _pbzip2' {
    assert "$(xsrc_find _pbzip2)" is_file
}
@test 'more_src has _pcb' {
    assert "$(xsrc_find _pcb)" is_file
}
@test 'more_src has _pcb-rnd' {
    assert "$(xsrc_find _pcb-rnd)" is_file
}
@test 'more_src has _pcb2gcode' {
    assert "$(xsrc_find _pcb2gcode)" is_file
}
@test 'more_src has _pcbnew' {
    assert "$(xsrc_find _pcbnew)" is_file
}
@test 'more_src has _pcm-iio' {
    assert "$(xsrc_find _pcm-iio)" is_file
}
@test 'more_src has _pcm-memory' {
    assert "$(xsrc_find _pcm-memory)" is_file
}
@test 'more_src has _pcm-msr' {
    assert "$(xsrc_find _pcm-msr)" is_file
}
@test 'more_src has _pcm-numa' {
    assert "$(xsrc_find _pcm-numa)" is_file
}
@test 'more_src has _pcm-pcie' {
    assert "$(xsrc_find _pcm-pcie)" is_file
}
@test 'more_src has _pcm-power' {
    assert "$(xsrc_find _pcm-power)" is_file
}
@test 'more_src has _pcm-raw' {
    assert "$(xsrc_find _pcm-raw)" is_file
}
@test 'more_src has _pcm-tsx' {
    assert "$(xsrc_find _pcm-tsx)" is_file
}
@test 'more_src has _pcorelist' {
    assert "$(xsrc_find _pcorelist)" is_file
}
@test 'more_src has _pcp-atop' {
    assert "$(xsrc_find _pcp-atop)" is_file
}
@test 'more_src has _pcp-iostat' {
    assert "$(xsrc_find _pcp-iostat)" is_file
}
@test 'more_src has _pcp-ipcs' {
    assert "$(xsrc_find _pcp-ipcs)" is_file
}
@test 'more_src has _pcp-mpstat' {
    assert "$(xsrc_find _pcp-mpstat)" is_file
}
@test 'more_src has _pcp-pidstat' {
    assert "$(xsrc_find _pcp-pidstat)" is_file
}
@test 'more_src has _pcp-summary' {
    assert "$(xsrc_find _pcp-summary)" is_file
}
@test 'more_src has _pcp-uptime' {
    assert "$(xsrc_find _pcp-uptime)" is_file
}
@test 'more_src has _pcp-vmstat' {
    assert "$(xsrc_find _pcp-vmstat)" is_file
}
@test 'more_src has _pcp_attach_node' {
    assert "$(xsrc_find _pcp_attach_node)" is_file
}
@test 'more_src has _pcp_detach_node' {
    assert "$(xsrc_find _pcp_detach_node)" is_file
}
@test 'more_src has _pcp_health_check_stats' {
    assert "$(xsrc_find _pcp_health_check_stats)" is_file
}
@test 'more_src has _pcp_node_count' {
    assert "$(xsrc_find _pcp_node_count)" is_file
}
@test 'more_src has _pcp_node_info' {
    assert "$(xsrc_find _pcp_node_info)" is_file
}
@test 'more_src has _pcp_pool_status' {
    assert "$(xsrc_find _pcp_pool_status)" is_file
}
@test 'more_src has _pcp_proc_count' {
    assert "$(xsrc_find _pcp_proc_count)" is_file
}
@test 'more_src has _pcp_proc_info' {
    assert "$(xsrc_find _pcp_proc_info)" is_file
}
@test 'more_src has _pcp_promote_node' {
    assert "$(xsrc_find _pcp_promote_node)" is_file
}
@test 'more_src has _pcp_recovery_node' {
    assert "$(xsrc_find _pcp_recovery_node)" is_file
}
@test 'more_src has _pcp_reload_config' {
    assert "$(xsrc_find _pcp_reload_config)" is_file
}
@test 'more_src has _pcp_stop_pgpool' {
    assert "$(xsrc_find _pcp_stop_pgpool)" is_file
}
@test 'more_src has _pcp_watchdog_info' {
    assert "$(xsrc_find _pcp_watchdog_info)" is_file
}
@test 'more_src has _pcsc-spy' {
    assert "$(xsrc_find _pcsc-spy)" is_file
}
@test 'more_src has _pcsc-tools' {
    assert "$(xsrc_find _pcsc-tools)" is_file
}
@test 'more_src has _pd-ctl' {
    assert "$(xsrc_find _pd-ctl)" is_file
}
@test 'more_src has _pd-gui' {
    assert "$(xsrc_find _pd-gui)" is_file
}
@test 'more_src has _pdd' {
    assert "$(xsrc_find _pdd)" is_file
}
@test 'more_src has _pdfgrep' {
    assert "$(xsrc_find _pdfgrep)" is_file
}
@test 'more_src has _pdfpc' {
    assert "$(xsrc_find _pdfpc)" is_file
}
@test 'more_src has _pdfsam' {
    assert "$(xsrc_find _pdfsam)" is_file
}
@test 'more_src has _pdfshow' {
    assert "$(xsrc_find _pdfshow)" is_file
}
@test 'more_src has _pdm' {
    assert "$(xsrc_find _pdm)" is_file
}
@test 'more_src has _pdns-control' {
    assert "$(xsrc_find _pdns-control)" is_file
}
@test 'more_src has _pdns-doh' {
    assert "$(xsrc_find _pdns-doh)" is_file
}
@test 'more_src has _pdns-server' {
    assert "$(xsrc_find _pdns-server)" is_file
}
@test 'more_src has _pebble-tool' {
    assert "$(xsrc_find _pebble-tool)" is_file
}
@test 'more_src has _peek' {
    assert "$(xsrc_find _peek)" is_file
}
@test 'more_src has _pekwm' {
    assert "$(xsrc_find _pekwm)" is_file
}
@test 'more_src has _pen' {
    assert "$(xsrc_find _pen)" is_file
}
@test 'more_src has _pencil' {
    assert "$(xsrc_find _pencil)" is_file
}
@test 'more_src has _pencil2d' {
    assert "$(xsrc_find _pencil2d)" is_file
}
@test 'more_src has _penelope' {
    assert "$(xsrc_find _penelope)" is_file
}
@test 'more_src has _pepcoil' {
    assert "$(xsrc_find _pepcoil)" is_file
}
@test 'more_src has _pepdigest' {
    assert "$(xsrc_find _pepdigest)" is_file
}
@test 'more_src has _pepinfo' {
    assert "$(xsrc_find _pepinfo)" is_file
}
@test 'more_src has _pepnet' {
    assert "$(xsrc_find _pepnet)" is_file
}
@test 'more_src has _pepstats' {
    assert "$(xsrc_find _pepstats)" is_file
}
@test 'more_src has _pepwheel' {
    assert "$(xsrc_find _pepwheel)" is_file
}
@test 'more_src has _pepwindow' {
    assert "$(xsrc_find _pepwindow)" is_file
}
@test 'more_src has _perc' {
    assert "$(xsrc_find _perc)" is_file
}
@test 'more_src has _perccli' {
    assert "$(xsrc_find _perccli)" is_file
}
@test 'more_src has _perccli64' {
    assert "$(xsrc_find _perccli64)" is_file
}
@test 'more_src has _percy' {
    assert "$(xsrc_find _percy)" is_file
}
@test 'more_src has _perl-build' {
    assert "$(xsrc_find _perl-build)" is_file
}
@test 'more_src has _perl-cleaner' {
    assert "$(xsrc_find _perl-cleaner)" is_file
}
@test 'more_src has _perlbal' {
    assert "$(xsrc_find _perlbal)" is_file
}
@test 'more_src has _permify' {
    assert "$(xsrc_find _permify)" is_file
}
@test 'more_src has _perplexity-cli' {
    assert "$(xsrc_find _perplexity-cli)" is_file
}
@test 'more_src has _pesign' {
    assert "$(xsrc_find _pesign)" is_file
}
@test 'more_src has _pet' {
    assert "$(xsrc_find _pet)" is_file
}
@test 'more_src has _petcat' {
    assert "$(xsrc_find _petcat)" is_file
}
@test 'more_src has _peth.zsh' {
    assert "$(xsrc_find _peth.zsh)" is_file
}
@test 'more_src has _pfetch' {
    assert "$(xsrc_find _pfetch)" is_file
}
@test 'more_src has _pflogsumm' {
    assert "$(xsrc_find _pflogsumm)" is_file
}
@test 'more_src has _pforth' {
    assert "$(xsrc_find _pforth)" is_file
}
@test 'more_src has _pfqueue' {
    assert "$(xsrc_find _pfqueue)" is_file
}
@test 'more_src has _pg_combinebackup' {
    assert "$(xsrc_find _pg_combinebackup)" is_file
}
@test 'more_src has _pg_createsubscriber' {
    assert "$(xsrc_find _pg_createsubscriber)" is_file
}
@test 'more_src has _pg_filedump' {
    assert "$(xsrc_find _pg_filedump)" is_file
}
@test 'more_src has _pg_visibility' {
    assert "$(xsrc_find _pg_visibility)" is_file
}
@test 'more_src has _pg_walsummary' {
    assert "$(xsrc_find _pg_walsummary)" is_file
}
@test 'more_src has _pgbadger' {
    assert "$(xsrc_find _pgbadger)" is_file
}
@test 'more_src has _pgbouncer' {
    assert "$(xsrc_find _pgbouncer)" is_file
}
@test 'more_src has _pgcompacttable' {
    assert "$(xsrc_find _pgcompacttable)" is_file
}
@test 'more_src has _pgcopydb' {
    assert "$(xsrc_find _pgcopydb)" is_file
}
@test 'more_src has _pget' {
    assert "$(xsrc_find _pget)" is_file
}
@test 'more_src has _pghoard' {
    assert "$(xsrc_find _pghoard)" is_file
}
@test 'more_src has _pgloader' {
    assert "$(xsrc_find _pgloader)" is_file
}
@test 'more_src has _pglogical_create_subscriber' {
    assert "$(xsrc_find _pglogical_create_subscriber)" is_file
}
@test 'more_src has _pgmoneta' {
    assert "$(xsrc_find _pgmoneta)" is_file
}
@test 'more_src has _pgsql_utils' {
    assert "$(xsrc_find _pgsql_utils)" is_file
}
@test 'more_src has _pgstats' {
    assert "$(xsrc_find _pgstats)" is_file
}
@test 'more_src has _pgwatch2' {
    assert "$(xsrc_find _pgwatch2)" is_file
}
@test 'more_src has _pgxc_ctl' {
    assert "$(xsrc_find _pgxc_ctl)" is_file
}
@test 'more_src has _ph' {
    assert "$(xsrc_find _ph)" is_file
}
@test 'more_src has _ph.x' {
    assert "$(xsrc_find _ph.x)" is_file
}
@test 'more_src has _phabfive' {
    assert "$(xsrc_find _phabfive)" is_file
}
@test 'more_src has _phalanx' {
    assert "$(xsrc_find _phalanx)" is_file
}
@test 'more_src has _phi' {
    assert "$(xsrc_find _phi)" is_file
}
@test 'more_src has _phidata' {
    assert "$(xsrc_find _phidata)" is_file
}
@test 'more_src has _phidata-cli' {
    assert "$(xsrc_find _phidata-cli)" is_file
}
@test 'more_src has _philipstv' {
    assert "$(xsrc_find _philipstv)" is_file
}
@test 'more_src has _phmmer' {
    assert "$(xsrc_find _phmmer)" is_file
}
@test 'more_src has _phoc' {
    assert "$(xsrc_find _phoc)" is_file
}
@test 'more_src has _phockup' {
    assert "$(xsrc_find _phockup)" is_file
}
@test 'more_src has _phoenix' {
    assert "$(xsrc_find _phoenix)" is_file
}
@test 'more_src has _phonebook' {
    assert "$(xsrc_find _phonebook)" is_file
}
@test 'more_src has _phonegap' {
    assert "$(xsrc_find _phonegap)" is_file
}
@test 'more_src has _phosh' {
    assert "$(xsrc_find _phosh)" is_file
}
@test 'more_src has _photofilmstrip' {
    assert "$(xsrc_find _photofilmstrip)" is_file
}
@test 'more_src has _photoflow' {
    assert "$(xsrc_find _photoflow)" is_file
}
@test 'more_src has _photoprism' {
    assert "$(xsrc_find _photoprism)" is_file
}
@test 'more_src has _php-fpm_exporter' {
    assert "$(xsrc_find _php-fpm_exporter)" is_file
}
@test 'more_src has _phpass' {
    assert "$(xsrc_find _phpass)" is_file
}
@test 'more_src has _phpcbf' {
    assert "$(xsrc_find _phpcbf)" is_file
}
@test 'more_src has _phpcs' {
    assert "$(xsrc_find _phpcs)" is_file
}
@test 'more_src has _phpmd' {
    assert "$(xsrc_find _phpmd)" is_file
}
@test 'more_src has _phpstan' {
    assert "$(xsrc_find _phpstan)" is_file
}
@test 'more_src has _phpstorm' {
    assert "$(xsrc_find _phpstorm)" is_file
}
@test 'more_src has _phraze' {
    assert "$(xsrc_find _phraze)" is_file
}
@test 'more_src has _phyllotaxis' {
    assert "$(xsrc_find _phyllotaxis)" is_file
}
@test 'more_src has _piactl' {
    assert "$(xsrc_find _piactl)" is_file
}
@test 'more_src has _pianobooster' {
    assert "$(xsrc_find _pianobooster)" is_file
}
@test 'more_src has _pianoteq' {
    assert "$(xsrc_find _pianoteq)" is_file
}
@test 'more_src has _pic2tikz' {
    assert "$(xsrc_find _pic2tikz)" is_file
}
@test 'more_src has _picard-tools' {
    assert "$(xsrc_find _picard-tools)" is_file
}
@test 'more_src has _picocrypt' {
    assert "$(xsrc_find _picocrypt)" is_file
}
@test 'more_src has _picolisp' {
    assert "$(xsrc_find _picolisp)" is_file
}
@test 'more_src has _picom-trans' {
    assert "$(xsrc_find _picom-trans)" is_file
}
@test 'more_src has _picoprobe' {
    assert "$(xsrc_find _picoprobe)" is_file
}
@test 'more_src has _picview' {
    assert "$(xsrc_find _picview)" is_file
}
@test 'more_src has _pidge' {
    assert "$(xsrc_find _pidge)" is_file
}
@test 'more_src has _pidgin' {
    assert "$(xsrc_find _pidgin)" is_file
}
@test 'more_src has _pidgin-otr' {
    assert "$(xsrc_find _pidgin-otr)" is_file
}
@test 'more_src has _pie' {
    assert "$(xsrc_find _pie)" is_file
}
@test 'more_src has _pihole' {
    assert "$(xsrc_find _pihole)" is_file
}
@test 'more_src has _pika-backup' {
    assert "$(xsrc_find _pika-backup)" is_file
}
@test 'more_src has _pilot-agent' {
    assert "$(xsrc_find _pilot-agent)" is_file
}
@test 'more_src has _pilot-discovery' {
    assert "$(xsrc_find _pilot-discovery)" is_file
}
@test 'more_src has _pim6d' {
    assert "$(xsrc_find _pim6d)" is_file
}
@test 'more_src has _pimd' {
    assert "$(xsrc_find _pimd)" is_file
}
@test 'more_src has _pimpd2' {
    assert "$(xsrc_find _pimpd2)" is_file
}
@test 'more_src has _pimsync' {
    assert "$(xsrc_find _pimsync)" is_file
}
@test 'more_src has _pince' {
    assert "$(xsrc_find _pince)" is_file
}
@test 'more_src has _pinot' {
    assert "$(xsrc_find _pinot)" is_file
}
@test 'more_src has _pinprick' {
    assert "$(xsrc_find _pinprick)" is_file
}
@test 'more_src has _pint' {
    assert "$(xsrc_find _pint)" is_file
}
@test 'more_src has _pinta' {
    assert "$(xsrc_find _pinta)" is_file
}
@test 'more_src has _pioneer' {
    assert "$(xsrc_find _pioneer)" is_file
}
@test 'more_src has _pip-audit' {
    assert "$(xsrc_find _pip-audit)" is_file
}
@test 'more_src has _pip-autoremove' {
    assert "$(xsrc_find _pip-autoremove)" is_file
}
@test 'more_src has _pip-check' {
    assert "$(xsrc_find _pip-check)" is_file
}
@test 'more_src has _pip-date' {
    assert "$(xsrc_find _pip-date)" is_file
}
@test 'more_src has _pipdeptree' {
    assert "$(xsrc_find _pipdeptree)" is_file
}
@test 'more_src has _pipenv' {
    assert "$(xsrc_find _pipenv)" is_file
}
@test 'more_src has _pipgrip' {
    assert "$(xsrc_find _pipgrip)" is_file
}
@test 'more_src has _pipx' {
    assert "$(xsrc_find _pipx)" is_file
}
@test 'more_src has _pistol' {
    assert "$(xsrc_find _pistol)" is_file
}
@test 'more_src has _pithos' {
    assert "$(xsrc_find _pithos)" is_file
}
@test 'more_src has _pixa' {
    assert "$(xsrc_find _pixa)" is_file
}
@test 'more_src has _pixforge' {
    assert "$(xsrc_find _pixforge)" is_file
}
@test 'more_src has _pixi' {
    assert "$(xsrc_find _pixi)" is_file
}
@test 'more_src has _pixlet' {
    assert "$(xsrc_find _pixlet)" is_file
}
@test 'more_src has _pixterm' {
    assert "$(xsrc_find _pixterm)" is_file
}
@test 'more_src has _pixz' {
    assert "$(xsrc_find _pixz)" is_file
}
@test 'more_src has _pk4' {
    assert "$(xsrc_find _pk4)" is_file
}
@test 'more_src has _pkf' {
    assert "$(xsrc_find _pkf)" is_file
}
@test 'more_src has _pkgbuild' {
    assert "$(xsrc_find _pkgbuild)" is_file
}
@test 'more_src has _pki' {
    assert "$(xsrc_find _pki)" is_file
}
@test 'more_src has _pki-healthcheck' {
    assert "$(xsrc_find _pki-healthcheck)" is_file
}
@test 'more_src has _pki-server' {
    assert "$(xsrc_find _pki-server)" is_file
}
@test 'more_src has _pkidestroy' {
    assert "$(xsrc_find _pkidestroy)" is_file
}
@test 'more_src has _pkimanage' {
    assert "$(xsrc_find _pkimanage)" is_file
}
@test 'more_src has _pkispawn' {
    assert "$(xsrc_find _pkispawn)" is_file
}
@test 'more_src has _pkl' {
    assert "$(xsrc_find _pkl)" is_file
}
@test 'more_src has _pl2pm' {
    assert "$(xsrc_find _pl2pm)" is_file
}
@test 'more_src has _placement-api' {
    assert "$(xsrc_find _placement-api)" is_file
}
@test 'more_src has _placement-manage' {
    assert "$(xsrc_find _placement-manage)" is_file
}
@test 'more_src has _placement-status' {
    assert "$(xsrc_find _placement-status)" is_file
}
@test 'more_src has _plackup' {
    assert "$(xsrc_find _plackup)" is_file
}
@test 'more_src has _plantuml' {
    assert "$(xsrc_find _plantuml)" is_file
}
@test 'more_src has _planus' {
    assert "$(xsrc_find _planus)" is_file
}
@test 'more_src has _plasmashell' {
    assert "$(xsrc_find _plasmashell)" is_file
}
@test 'more_src has _plasmoidviewer' {
    assert "$(xsrc_find _plasmoidviewer)" is_file
}
@test 'more_src has _play-cli' {
    assert "$(xsrc_find _play-cli)" is_file
}
@test 'more_src has _play-on-linux' {
    assert "$(xsrc_find _play-on-linux)" is_file
}
@test 'more_src has _playerctld' {
    assert "$(xsrc_find _playerctld)" is_file
}
@test 'more_src has _playwright-cli' {
    assert "$(xsrc_find _playwright-cli)" is_file
}
@test 'more_src has _playwright-mcp' {
    assert "$(xsrc_find _playwright-mcp)" is_file
}
@test 'more_src has _playwright-mcp-server' {
    assert "$(xsrc_find _playwright-mcp-server)" is_file
}
@test 'more_src has _please' {
    assert "$(xsrc_find _please)" is_file
}
@test 'more_src has _please-cli' {
    assert "$(xsrc_find _please-cli)" is_file
}
@test 'more_src has _plex' {
    assert "$(xsrc_find _plex)" is_file
}
@test 'more_src has _plextraktsync' {
    assert "$(xsrc_find _plextraktsync)" is_file
}
@test 'more_src has _plforge' {
    assert "$(xsrc_find _plforge)" is_file
}
@test 'more_src has _plink2' {
    assert "$(xsrc_find _plink2)" is_file
}
@test 'more_src has _plotcon' {
    assert "$(xsrc_find _plotcon)" is_file
}
@test 'more_src has _ploticus' {
    assert "$(xsrc_find _ploticus)" is_file
}
@test 'more_src has _plotorf' {
    assert "$(xsrc_find _plotorf)" is_file
}
@test 'more_src has _plow' {
    assert "$(xsrc_find _plow)" is_file
}
@test 'more_src has _pls' {
    assert "$(xsrc_find _pls)" is_file
}
@test 'more_src has _pluto' {
    assert "$(xsrc_find _pluto)" is_file
}
@test 'more_src has _plymouth-create-initrd' {
    assert "$(xsrc_find _plymouth-create-initrd)" is_file
}
@test 'more_src has _plymouth-list-fonts' {
    assert "$(xsrc_find _plymouth-list-fonts)" is_file
}
@test 'more_src has _plyr' {
    assert "$(xsrc_find _plyr)" is_file
}
@test 'more_src has _plyx' {
    assert "$(xsrc_find _plyx)" is_file
}
@test 'more_src has _plzip' {
    assert "$(xsrc_find _plzip)" is_file
}
@test 'more_src has _pm-action' {
    assert "$(xsrc_find _pm-action)" is_file
}
@test 'more_src has _pm-pmu' {
    assert "$(xsrc_find _pm-pmu)" is_file
}
@test 'more_src has _pm2' {
    assert "$(xsrc_find _pm2)" is_file
}
@test 'more_src has _pmacct' {
    assert "$(xsrc_find _pmacct)" is_file
}
@test 'more_src has _pmcd' {
    assert "$(xsrc_find _pmcd)" is_file
}
@test 'more_src has _pmemd' {
    assert "$(xsrc_find _pmemd)" is_file
}
@test 'more_src has _pmset' {
    assert "$(xsrc_find _pmset)" is_file
}
@test 'more_src has _pmsync' {
    assert "$(xsrc_find _pmsync)" is_file
}
@test 'more_src has _pmwebd' {
    assert "$(xsrc_find _pmwebd)" is_file
}
@test 'more_src has _pngquant' {
    assert "$(xsrc_find _pngquant)" is_file
}
@test 'more_src has _pnmixer' {
    assert "$(xsrc_find _pnmixer)" is_file
}
@test 'more_src has _pnpm' {
    assert "$(xsrc_find _pnpm)" is_file
}
@test 'more_src has _pocket-tts' {
    assert "$(xsrc_find _pocket-tts)" is_file
}
@test 'more_src has _podcast-archiver' {
    assert "$(xsrc_find _podcast-archiver)" is_file
}
@test 'more_src has _podfeed' {
    assert "$(xsrc_find _podfeed)" is_file
}
@test 'more_src has _podget' {
    assert "$(xsrc_find _podget)" is_file
}
@test 'more_src has _podlet' {
    assert "$(xsrc_find _podlet)" is_file
}
@test 'more_src has _podman' {
    assert "$(xsrc_find _podman)" is_file
}
@test 'more_src has _podman-compose' {
    assert "$(xsrc_find _podman-compose)" is_file
}
@test 'more_src has _podman-mac-helper' {
    assert "$(xsrc_find _podman-mac-helper)" is_file
}
@test 'more_src has _podman-tui' {
    assert "$(xsrc_find _podman-tui)" is_file
}
@test 'more_src has _podracer' {
    assert "$(xsrc_find _podracer)" is_file
}
@test 'more_src has _pointfree' {
    assert "$(xsrc_find _pointfree)" is_file
}
@test 'more_src has _pointful' {
    assert "$(xsrc_find _pointful)" is_file
}
@test 'more_src has _pokeget' {
    assert "$(xsrc_find _pokeget)" is_file
}
@test 'more_src has _polari' {
    assert "$(xsrc_find _polari)" is_file
}
@test 'more_src has _polaris' {
    assert "$(xsrc_find _polaris)" is_file
}
@test 'more_src has _polca.sh' {
    assert "$(xsrc_find _polca.sh)" is_file
}
@test 'more_src has _poldek' {
    assert "$(xsrc_find _poldek)" is_file
}
@test 'more_src has _policy_sentry' {
    assert "$(xsrc_find _policy_sentry)" is_file
}
@test 'more_src has _policyd' {
    assert "$(xsrc_find _policyd)" is_file
}
@test 'more_src has _policyd-greylist' {
    assert "$(xsrc_find _policyd-greylist)" is_file
}
@test 'more_src has _policyd-spf' {
    assert "$(xsrc_find _policyd-spf)" is_file
}
@test 'more_src has _policyd-weight' {
    assert "$(xsrc_find _policyd-weight)" is_file
}
@test 'more_src has _polkit' {
    assert "$(xsrc_find _polkit)" is_file
}
@test 'more_src has _polkit-kde-authentication-agent-1' {
    assert "$(xsrc_find _polkit-kde-authentication-agent-1)" is_file
}
@test 'more_src has _polkit-mate' {
    assert "$(xsrc_find _polkit-mate)" is_file
}
@test 'more_src has _polydot' {
    assert "$(xsrc_find _polydot)" is_file
}
@test 'more_src has _polyfile' {
    assert "$(xsrc_find _polyfile)" is_file
}
@test 'more_src has _polygraphy' {
    assert "$(xsrc_find _polygraphy)" is_file
}
@test 'more_src has _polymake' {
    assert "$(xsrc_find _polymake)" is_file
}
@test 'more_src has _polyml' {
    assert "$(xsrc_find _polyml)" is_file
}
@test 'more_src has _pomodoro' {
    assert "$(xsrc_find _pomodoro)" is_file
}
@test 'more_src has _pomsky' {
    assert "$(xsrc_find _pomsky)" is_file
}
@test 'more_src has _ponder' {
    assert "$(xsrc_find _ponder)" is_file
}
@test 'more_src has _popeye' {
    assert "$(xsrc_find _popeye)" is_file
}
@test 'more_src has _porg' {
    assert "$(xsrc_find _porg)" is_file
}
@test 'more_src has _port-daddy' {
    assert "$(xsrc_find _port-daddy)" is_file
}
@test 'more_src has _portablemc' {
    assert "$(xsrc_find _portablemc)" is_file
}
@test 'more_src has _portage_utils' {
    assert "$(xsrc_find _portage_utils)" is_file
}
@test 'more_src has _porter' {
    assert "$(xsrc_find _porter)" is_file
}
@test 'more_src has _portkey_ai' {
    assert "$(xsrc_find _portkey_ai)" is_file
}
@test 'more_src has _portmap' {
    assert "$(xsrc_find _portmap)" is_file
}
@test 'more_src has _portpester' {
    assert "$(xsrc_find _portpester)" is_file
}
@test 'more_src has _posh' {
    assert "$(xsrc_find _posh)" is_file
}
@test 'more_src has _postfix-policyd-spf-perl' {
    assert "$(xsrc_find _postfix-policyd-spf-perl)" is_file
}
@test 'more_src has _postfwd' {
    assert "$(xsrc_find _postfwd)" is_file
}
@test 'more_src has _postgis' {
    assert "$(xsrc_find _postgis)" is_file
}
@test 'more_src has _postgrey' {
    assert "$(xsrc_find _postgrey)" is_file
}
@test 'more_src has _posthog-cli' {
    assert "$(xsrc_find _posthog-cli)" is_file
}
@test 'more_src has _posting' {
    assert "$(xsrc_find _posting)" is_file
}
@test 'more_src has _postscreen' {
    assert "$(xsrc_find _postscreen)" is_file
}
@test 'more_src has _postsrsd' {
    assert "$(xsrc_find _postsrsd)" is_file
}
@test 'more_src has _poule' {
    assert "$(xsrc_find _poule)" is_file
}
@test 'more_src has _pound' {
    assert "$(xsrc_find _pound)" is_file
}
@test 'more_src has _povray' {
    assert "$(xsrc_find _povray)" is_file
}
@test 'more_src has _povray37' {
    assert "$(xsrc_find _povray37)" is_file
}
@test 'more_src has _powder' {
    assert "$(xsrc_find _powder)" is_file
}
@test 'more_src has _powercap-info' {
    assert "$(xsrc_find _powercap-info)" is_file
}
@test 'more_src has _powify' {
    assert "$(xsrc_find _powify)" is_file
}
@test 'more_src has _ppdb' {
    assert "$(xsrc_find _ppdb)" is_file
}
@test 'more_src has _pppd' {
    assert "$(xsrc_find _pppd)" is_file
}
@test 'more_src has _ppthtml' {
    assert "$(xsrc_find _ppthtml)" is_file
}
@test 'more_src has _pq' {
    assert "$(xsrc_find _pq)" is_file
}
@test 'more_src has _pqrs' {
    assert "$(xsrc_find _pqrs)" is_file
}
@test 'more_src has _pqsign' {
    assert "$(xsrc_find _pqsign)" is_file
}
@test 'more_src has _pr-agent' {
    assert "$(xsrc_find _pr-agent)" is_file
}
@test 'more_src has _pra' {
    assert "$(xsrc_find _pra)" is_file
}
@test 'more_src has _praisonai' {
    assert "$(xsrc_find _praisonai)" is_file
}
@test 'more_src has _praisonai-call' {
    assert "$(xsrc_find _praisonai-call)" is_file
}
@test 'more_src has _prance' {
    assert "$(xsrc_find _prance)" is_file
}
@test 'more_src has _pre-commit' {
    assert "$(xsrc_find _pre-commit)" is_file
}
@test 'more_src has _predibase' {
    assert "$(xsrc_find _predibase)" is_file
}
@test 'more_src has _predibase-cli' {
    assert "$(xsrc_find _predibase-cli)" is_file
}
@test 'more_src has _preg' {
    assert "$(xsrc_find _preg)" is_file
}
@test 'more_src has _premake4' {
    assert "$(xsrc_find _premake4)" is_file
}
@test 'more_src has _premake5' {
    assert "$(xsrc_find _premake5)" is_file
}
@test 'more_src has _prep' {
    assert "$(xsrc_find _prep)" is_file
}
@test 'more_src has _presenterm' {
    assert "$(xsrc_find _presenterm)" is_file
}
@test 'more_src has _preserves-tool' {
    assert "$(xsrc_find _preserves-tool)" is_file
}
@test 'more_src has _prettyping' {
    assert "$(xsrc_find _prettyping)" is_file
}
@test 'more_src has _prettyplot' {
    assert "$(xsrc_find _prettyplot)" is_file
}
@test 'more_src has _prettyseq' {
    assert "$(xsrc_find _prettyseq)" is_file
}
@test 'more_src has _prime95' {
    assert "$(xsrc_find _prime95)" is_file
}
@test 'more_src has _primer3' {
    assert "$(xsrc_find _primer3)" is_file
}
@test 'more_src has _primer3_core' {
    assert "$(xsrc_find _primer3_core)" is_file
}
@test 'more_src has _primer3_masker' {
    assert "$(xsrc_find _primer3_masker)" is_file
}
@test 'more_src has _primersearch' {
    assert "$(xsrc_find _primersearch)" is_file
}
@test 'more_src has _prince' {
    assert "$(xsrc_find _prince)" is_file
}
@test 'more_src has _printjob' {
    assert "$(xsrc_find _printjob)" is_file
}
@test 'more_src has _printsextract' {
    assert "$(xsrc_find _printsextract)" is_file
}
@test 'more_src has _prisma' {
    assert "$(xsrc_find _prisma)" is_file
}
@test 'more_src has _prm' {
    assert "$(xsrc_find _prm)" is_file
}
@test 'more_src has _proc' {
    assert "$(xsrc_find _proc)" is_file
}
@test 'more_src has _process-compose' {
    assert "$(xsrc_find _process-compose)" is_file
}
@test 'more_src has _procexp' {
    assert "$(xsrc_find _procexp)" is_file
}
@test 'more_src has _procs' {
    assert "$(xsrc_find _procs)" is_file
}
@test 'more_src has _procscope' {
    assert "$(xsrc_find _procscope)" is_file
}
@test 'more_src has _productbuild' {
    assert "$(xsrc_find _productbuild)" is_file
}
@test 'more_src has _productsign' {
    assert "$(xsrc_find _productsign)" is_file
}
@test 'more_src has _profit' {
    assert "$(xsrc_find _profit)" is_file
}
@test 'more_src has _proftpd-init' {
    assert "$(xsrc_find _proftpd-init)" is_file
}
@test 'more_src has _progress' {
    assert "$(xsrc_find _progress)" is_file
}
@test 'more_src has _proguardgui' {
    assert "$(xsrc_find _proguardgui)" is_file
}
@test 'more_src has _project' {
    assert "$(xsrc_find _project)" is_file
}
@test 'more_src has _projx' {
    assert "$(xsrc_find _projx)" is_file
}
@test 'more_src has _prom2json' {
    assert "$(xsrc_find _prom2json)" is_file
}
@test 'more_src has _prometheus-config-reloader' {
    assert "$(xsrc_find _prometheus-config-reloader)" is_file
}
@test 'more_src has _promptflow-cli' {
    assert "$(xsrc_find _promptflow-cli)" is_file
}
@test 'more_src has _promtool' {
    assert "$(xsrc_find _promtool)" is_file
}
@test 'more_src has _prophecy' {
    assert "$(xsrc_find _prophecy)" is_file
}
@test 'more_src has _prophet' {
    assert "$(xsrc_find _prophet)" is_file
}
@test 'more_src has _prosextract' {
    assert "$(xsrc_find _prosextract)" is_file
}
@test 'more_src has _protoc-gen-go' {
    assert "$(xsrc_find _protoc-gen-go)" is_file
}
@test 'more_src has _prowler' {
    assert "$(xsrc_find _prowler)" is_file
}
@test 'more_src has _proxctl' {
    assert "$(xsrc_find _proxctl)" is_file
}
@test 'more_src has _proxify' {
    assert "$(xsrc_find _proxify)" is_file
}
@test 'more_src has _proxychains4-daemon' {
    assert "$(xsrc_find _proxychains4-daemon)" is_file
}
@test 'more_src has _proxyset' {
    assert "$(xsrc_find _proxyset)" is_file
}
@test 'more_src has _prprompts' {
    assert "$(xsrc_find _prprompts)" is_file
}
@test 'more_src has _prqlc' {
    assert "$(xsrc_find _prqlc)" is_file
}
@test 'more_src has _prte' {
    assert "$(xsrc_find _prte)" is_file
}
@test 'more_src has _pscale' {
    assert "$(xsrc_find _pscale)" is_file
}
@test 'more_src has _psftostl' {
    assert "$(xsrc_find _psftostl)" is_file
}
@test 'more_src has _psftostroke' {
    assert "$(xsrc_find _psftostroke)" is_file
}
@test 'more_src has _psi4' {
    assert "$(xsrc_find _psi4)" is_file
}
@test 'more_src has _psiblast' {
    assert "$(xsrc_find _psiblast)" is_file
}
@test 'more_src has _pspg' {
    assert "$(xsrc_find _pspg)" is_file
}
@test 'more_src has _pssql.zsh' {
    assert "$(xsrc_find _pssql.zsh)" is_file
}
@test 'more_src has _psub' {
    assert "$(xsrc_find _psub)" is_file
}
@test 'more_src has _pt-config-diff' {
    assert "$(xsrc_find _pt-config-diff)" is_file
}
@test 'more_src has _pt-duplicate-key-checker' {
    assert "$(xsrc_find _pt-duplicate-key-checker)" is_file
}
@test 'more_src has _pt-fifo-split' {
    assert "$(xsrc_find _pt-fifo-split)" is_file
}
@test 'more_src has _pt-find' {
    assert "$(xsrc_find _pt-find)" is_file
}
@test 'more_src has _pt-fk-error-logger' {
    assert "$(xsrc_find _pt-fk-error-logger)" is_file
}
@test 'more_src has _pt-heartbeat' {
    assert "$(xsrc_find _pt-heartbeat)" is_file
}
@test 'more_src has _pt-index-usage' {
    assert "$(xsrc_find _pt-index-usage)" is_file
}
@test 'more_src has _pt-ioprofile' {
    assert "$(xsrc_find _pt-ioprofile)" is_file
}
@test 'more_src has _pt-mext' {
    assert "$(xsrc_find _pt-mext)" is_file
}
@test 'more_src has _pt-mongodb' {
    assert "$(xsrc_find _pt-mongodb)" is_file
}
@test 'more_src has _pt-pmp' {
    assert "$(xsrc_find _pt-pmp)" is_file
}
@test 'more_src has _pt-query-digest' {
    assert "$(xsrc_find _pt-query-digest)" is_file
}
@test 'more_src has _pt-secure-collect' {
    assert "$(xsrc_find _pt-secure-collect)" is_file
}
@test 'more_src has _pt-show-grants' {
    assert "$(xsrc_find _pt-show-grants)" is_file
}
@test 'more_src has _pt-sift' {
    assert "$(xsrc_find _pt-sift)" is_file
}
@test 'more_src has _pt-slave-delay' {
    assert "$(xsrc_find _pt-slave-delay)" is_file
}
@test 'more_src has _ptar' {
    assert "$(xsrc_find _ptar)" is_file
}
@test 'more_src has _ptardiff' {
    assert "$(xsrc_find _ptardiff)" is_file
}
@test 'more_src has _pterm' {
    assert "$(xsrc_find _pterm)" is_file
}
@test 'more_src has _pto_gen' {
    assert "$(xsrc_find _pto_gen)" is_file
}
@test 'more_src has _pto_lensstack' {
    assert "$(xsrc_find _pto_lensstack)" is_file
}
@test 'more_src has _pto_merge' {
    assert "$(xsrc_find _pto_merge)" is_file
}
@test 'more_src has _pto_template' {
    assert "$(xsrc_find _pto_template)" is_file
}
@test 'more_src has _ptpython' {
    assert "$(xsrc_find _ptpython)" is_file
}
@test 'more_src has _ptxas' {
    assert "$(xsrc_find _ptxas)" is_file
}
@test 'more_src has _puddletag' {
    assert "$(xsrc_find _puddletag)" is_file
}
@test 'more_src has _pueue' {
    assert "$(xsrc_find _pueue)" is_file
}
@test 'more_src has _pug' {
    assert "$(xsrc_find _pug)" is_file
}
@test 'more_src has _pulledpork' {
    assert "$(xsrc_find _pulledpork)" is_file
}
@test 'more_src has _pulledpork3' {
    assert "$(xsrc_find _pulledpork3)" is_file
}
@test 'more_src has _pulp-admin' {
    assert "$(xsrc_find _pulp-admin)" is_file
}
@test 'more_src has _pulsar-daemon' {
    assert "$(xsrc_find _pulsar-daemon)" is_file
}
@test 'more_src has _pulsectl' {
    assert "$(xsrc_find _pulsectl)" is_file
}
@test 'more_src has _pulsemixer' {
    assert "$(xsrc_find _pulsemixer)" is_file
}
@test 'more_src has _pulsos' {
    assert "$(xsrc_find _pulsos)" is_file
}
@test 'more_src has _pulumi' {
    assert "$(xsrc_find _pulumi)" is_file
}
@test 'more_src has _pumas' {
    assert "$(xsrc_find _pumas)" is_file
}
@test 'more_src has _pup' {
    assert "$(xsrc_find _pup)" is_file
}
@test 'more_src has _puppet' {
    assert "$(xsrc_find _puppet)" is_file
}
@test 'more_src has _pure-ftpd-init' {
    assert "$(xsrc_find _pure-ftpd-init)" is_file
}
@test 'more_src has _puredata' {
    assert "$(xsrc_find _puredata)" is_file
}
@test 'more_src has _purewebm' {
    assert "$(xsrc_find _purewebm)" is_file
}
@test 'more_src has _purge' {
    assert "$(xsrc_find _purge)" is_file
}
@test 'more_src has _pvbatch' {
    assert "$(xsrc_find _pvbatch)" is_file
}
@test 'more_src has _pvdataserver' {
    assert "$(xsrc_find _pvdataserver)" is_file
}
@test 'more_src has _pvesh' {
    assert "$(xsrc_find _pvesh)" is_file
}
@test 'more_src has _pvfs2-config' {
    assert "$(xsrc_find _pvfs2-config)" is_file
}
@test 'more_src has _pvfs2-cp' {
    assert "$(xsrc_find _pvfs2-cp)" is_file
}
@test 'more_src has _pvfs2-genconfig' {
    assert "$(xsrc_find _pvfs2-genconfig)" is_file
}
@test 'more_src has _pvfs2-ls' {
    assert "$(xsrc_find _pvfs2-ls)" is_file
}
@test 'more_src has _pvfs2-mkdir' {
    assert "$(xsrc_find _pvfs2-mkdir)" is_file
}
@test 'more_src has _pvfs2-rm' {
    assert "$(xsrc_find _pvfs2-rm)" is_file
}
@test 'more_src has _pvfs2-rmdir' {
    assert "$(xsrc_find _pvfs2-rmdir)" is_file
}
@test 'more_src has _pvfs2-server' {
    assert "$(xsrc_find _pvfs2-server)" is_file
}
@test 'more_src has _pvpython' {
    assert "$(xsrc_find _pvpython)" is_file
}
@test 'more_src has _pvrenderserver' {
    assert "$(xsrc_find _pvrenderserver)" is_file
}
@test 'more_src has _pvserver' {
    assert "$(xsrc_find _pvserver)" is_file
}
@test 'more_src has _pw-env' {
    assert "$(xsrc_find _pw-env)" is_file
}
@test 'more_src has _pwgen-perl' {
    assert "$(xsrc_find _pwgen-perl)" is_file
}
@test 'more_src has _pwsafe' {
    assert "$(xsrc_find _pwsafe)" is_file
}
@test 'more_src has _pwsafe-cli' {
    assert "$(xsrc_find _pwsafe-cli)" is_file
}
@test 'more_src has _px2ansi-rs' {
    assert "$(xsrc_find _px2ansi-rs)" is_file
}
@test 'more_src has _pxar' {
    assert "$(xsrc_find _pxar)" is_file
}
@test 'more_src has _pxelinux' {
    assert "$(xsrc_find _pxelinux)" is_file
}
@test 'more_src has _pxz' {
    assert "$(xsrc_find _pxz)" is_file
}
@test 'more_src has _py-spy' {
    assert "$(xsrc_find _py-spy)" is_file
}
@test 'more_src has _pycharm' {
    assert "$(xsrc_find _pycharm)" is_file
}
@test 'more_src has _pychess' {
    assert "$(xsrc_find _pychess)" is_file
}
@test 'more_src has _pycui' {
    assert "$(xsrc_find _pycui)" is_file
}
@test 'more_src has _pyenv' {
    assert "$(xsrc_find _pyenv)" is_file
}
@test 'more_src has _pyflyte' {
    assert "$(xsrc_find _pyflyte)" is_file
}
@test 'more_src has _pyftinspect' {
    assert "$(xsrc_find _pyftinspect)" is_file
}
@test 'more_src has _pyinfra' {
    assert "$(xsrc_find _pyinfra)" is_file
}
@test 'more_src has _pymol' {
    assert "$(xsrc_find _pymol)" is_file
}
@test 'more_src has _pyoxidizer' {
    assert "$(xsrc_find _pyoxidizer)" is_file
}
@test 'more_src has _pyprof2html' {
    assert "$(xsrc_find _pyprof2html)" is_file
}
@test 'more_src has _pypykatz' {
    assert "$(xsrc_find _pypykatz)" is_file
}
@test 'more_src has _pyres_manager' {
    assert "$(xsrc_find _pyres_manager)" is_file
}
@test 'more_src has _pyres_scheduler' {
    assert "$(xsrc_find _pyres_scheduler)" is_file
}
@test 'more_src has _pyres_web' {
    assert "$(xsrc_find _pyres_web)" is_file
}
@test 'more_src has _pyres_worker' {
    assert "$(xsrc_find _pyres_worker)" is_file
}
@test 'more_src has _pyright' {
    assert "$(xsrc_find _pyright)" is_file
}
@test 'more_src has _pyroscope-cli' {
    assert "$(xsrc_find _pyroscope-cli)" is_file
}
@test 'more_src has _pyroscope-server' {
    assert "$(xsrc_find _pyroscope-server)" is_file
}
@test 'more_src has _pyscf' {
    assert "$(xsrc_find _pyscf)" is_file
}
@test 'more_src has _pyspark' {
    assert "$(xsrc_find _pyspark)" is_file
}
@test 'more_src has _pyspur' {
    assert "$(xsrc_find _pyspur)" is_file
}
@test 'more_src has _q' {
    assert "$(xsrc_find _q)" is_file
}
@test 'more_src has _q4wine' {
    assert "$(xsrc_find _q4wine)" is_file
}
@test 'more_src has _qalter' {
    assert "$(xsrc_find _qalter)" is_file
}
@test 'more_src has _qaren' {
    assert "$(xsrc_find _qaren)" is_file
}
@test 'more_src has _qc' {
    assert "$(xsrc_find _qc)" is_file
}
@test 'more_src has _qchkpt' {
    assert "$(xsrc_find _qchkpt)" is_file
}
@test 'more_src has _qdel' {
    assert "$(xsrc_find _qdel)" is_file
}
@test 'more_src has _qdisable' {
    assert "$(xsrc_find _qdisable)" is_file
}
@test 'more_src has _qemu-bridge-helper' {
    assert "$(xsrc_find _qemu-bridge-helper)" is_file
}
@test 'more_src has _qemu-riscv32' {
    assert "$(xsrc_find _qemu-riscv32)" is_file
}
@test 'more_src has _qemu-riscv64' {
    assert "$(xsrc_find _qemu-riscv64)" is_file
}
@test 'more_src has _qenable' {
    assert "$(xsrc_find _qenable)" is_file
}
@test 'more_src has _qgis' {
    assert "$(xsrc_find _qgis)" is_file
}
@test 'more_src has _qhold' {
    assert "$(xsrc_find _qhold)" is_file
}
@test 'more_src has _qjackrcd' {
    assert "$(xsrc_find _qjackrcd)" is_file
}
@test 'more_src has _qlandkartegt' {
    assert "$(xsrc_find _qlandkartegt)" is_file
}
@test 'more_src has _qli' {
    assert "$(xsrc_find _qli)" is_file
}
@test 'more_src has _qmail' {
    assert "$(xsrc_find _qmail)" is_file
}
@test 'more_src has _qmail-clean' {
    assert "$(xsrc_find _qmail-clean)" is_file
}
@test 'more_src has _qmail-inject' {
    assert "$(xsrc_find _qmail-inject)" is_file
}
@test 'more_src has _qmail-lspawn' {
    assert "$(xsrc_find _qmail-lspawn)" is_file
}
@test 'more_src has _qmail-newu' {
    assert "$(xsrc_find _qmail-newu)" is_file
}
@test 'more_src has _qmail-pop3d' {
    assert "$(xsrc_find _qmail-pop3d)" is_file
}
@test 'more_src has _qmail-qread' {
    assert "$(xsrc_find _qmail-qread)" is_file
}
@test 'more_src has _qmail-qstat' {
    assert "$(xsrc_find _qmail-qstat)" is_file
}
@test 'more_src has _qmail-rspawn' {
    assert "$(xsrc_find _qmail-rspawn)" is_file
}
@test 'more_src has _qmail-send' {
    assert "$(xsrc_find _qmail-send)" is_file
}
@test 'more_src has _qmail-showctl' {
    assert "$(xsrc_find _qmail-showctl)" is_file
}
@test 'more_src has _qmail-smtpd' {
    assert "$(xsrc_find _qmail-smtpd)" is_file
}
@test 'more_src has _qmapshack' {
    assert "$(xsrc_find _qmapshack)" is_file
}
@test 'more_src has _qmgr' {
    assert "$(xsrc_find _qmgr)" is_file
}
@test 'more_src has _qmove' {
    assert "$(xsrc_find _qmove)" is_file
}
@test 'more_src has _qmp-shell' {
    assert "$(xsrc_find _qmp-shell)" is_file
}
@test 'more_src has _qmsg' {
    assert "$(xsrc_find _qmsg)" is_file
}
@test 'more_src has _qnap' {
    assert "$(xsrc_find _qnap)" is_file
}
@test 'more_src has _qodo' {
    assert "$(xsrc_find _qodo)" is_file
}
@test 'more_src has _qorder' {
    assert "$(xsrc_find _qorder)" is_file
}
@test 'more_src has _qpdfview' {
    assert "$(xsrc_find _qpdfview)" is_file
}
@test 'more_src has _qpwgraph' {
    assert "$(xsrc_find _qpwgraph)" is_file
}
@test 'more_src has _qrelease' {
    assert "$(xsrc_find _qrelease)" is_file
}
@test 'more_src has _qrerun' {
    assert "$(xsrc_find _qrerun)" is_file
}
@test 'more_src has _qrls' {
    assert "$(xsrc_find _qrls)" is_file
}
@test 'more_src has _qrrs' {
    assert "$(xsrc_find _qrrs)" is_file
}
@test 'more_src has _qrtool' {
    assert "$(xsrc_find _qrtool)" is_file
}
@test 'more_src has _qrun' {
    assert "$(xsrc_find _qrun)" is_file
}
@test 'more_src has _qs' {
    assert "$(xsrc_find _qs)" is_file
}
@test 'more_src has _qselect' {
    assert "$(xsrc_find _qselect)" is_file
}
@test 'more_src has _qshell' {
    assert "$(xsrc_find _qshell)" is_file
}
@test 'more_src has _qsig' {
    assert "$(xsrc_find _qsig)" is_file
}
@test 'more_src has _qstart' {
    assert "$(xsrc_find _qstart)" is_file
}
@test 'more_src has _qstat' {
    assert "$(xsrc_find _qstat)" is_file
}
@test 'more_src has _qstop' {
    assert "$(xsrc_find _qstop)" is_file
}
@test 'more_src has _qsub' {
    assert "$(xsrc_find _qsub)" is_file
}
@test 'more_src has _qsv' {
    assert "$(xsrc_find _qsv)" is_file
}
@test 'more_src has _qsynth' {
    assert "$(xsrc_find _qsynth)" is_file
}
@test 'more_src has _qterm' {
    assert "$(xsrc_find _qterm)" is_file
}
@test 'more_src has _qtouch' {
    assert "$(xsrc_find _qtouch)" is_file
}
@test 'more_src has _quake' {
    assert "$(xsrc_find _quake)" is_file
}
@test 'more_src has _quake4' {
    assert "$(xsrc_find _quake4)" is_file
}
@test 'more_src has _quantum-espresso' {
    assert "$(xsrc_find _quantum-espresso)" is_file
}
@test 'more_src has _quantum-nexus' {
    assert "$(xsrc_find _quantum-nexus)" is_file
}
@test 'more_src has _quarkus' {
    assert "$(xsrc_find _quarkus)" is_file
}
@test 'more_src has _quassel' {
    assert "$(xsrc_find _quassel)" is_file
}
@test 'more_src has _qucs' {
    assert "$(xsrc_find _qucs)" is_file
}
@test 'more_src has _qucs-cli' {
    assert "$(xsrc_find _qucs-cli)" is_file
}
@test 'more_src has _quicksynergy' {
    assert "$(xsrc_find _quicksynergy)" is_file
}
@test 'more_src has _quicktype' {
    assert "$(xsrc_find _quicktype)" is_file
}
@test 'more_src has _quodlibet' {
    assert "$(xsrc_find _quodlibet)" is_file
}
@test 'more_src has _quota-warn' {
    assert "$(xsrc_find _quota-warn)" is_file
}
@test 'more_src has _quotastats' {
    assert "$(xsrc_find _quotastats)" is_file
}
@test 'more_src has _qvlc' {
    assert "$(xsrc_find _qvlc)" is_file
}
@test 'more_src has _qwen-cli' {
    assert "$(xsrc_find _qwen-cli)" is_file
}
@test 'more_src has _r2' {
    assert "$(xsrc_find _r2)" is_file
}
@test 'more_src has _raco' {
    assert "$(xsrc_find _raco)" is_file
}
@test 'more_src has _radeontop' {
    assert "$(xsrc_find _radeontop)" is_file
}
@test 'more_src has _radiance' {
    assert "$(xsrc_find _radiance)" is_file
}
@test 'more_src has _radioboat' {
    assert "$(xsrc_find _radioboat)" is_file
}
@test 'more_src has _radon' {
    assert "$(xsrc_find _radon)" is_file
}
@test 'more_src has _radosgw' {
    assert "$(xsrc_find _radosgw)" is_file
}
@test 'more_src has _radosgw-token' {
    assert "$(xsrc_find _radosgw-token)" is_file
}
@test 'more_src has _radvd-config' {
    assert "$(xsrc_find _radvd-config)" is_file
}
@test 'more_src has _radvd-utils' {
    assert "$(xsrc_find _radvd-utils)" is_file
}
@test 'more_src has _ragas' {
    assert "$(xsrc_find _ragas)" is_file
}
@test 'more_src has _rage' {
    assert "$(xsrc_find _rage)" is_file
}
@test 'more_src has _ragel' {
    assert "$(xsrc_find _ragel)" is_file
}
@test 'more_src has _ragenix' {
    assert "$(xsrc_find _ragenix)" is_file
}
@test 'more_src has _ragg2-cc' {
    assert "$(xsrc_find _ragg2-cc)" is_file
}
@test 'more_src has _raid-check' {
    assert "$(xsrc_find _raid-check)" is_file
}
@test 'more_src has _raid-monitor' {
    assert "$(xsrc_find _raid-monitor)" is_file
}
@test 'more_src has _raidautorun' {
    assert "$(xsrc_find _raidautorun)" is_file
}
@test 'more_src has _raidstart' {
    assert "$(xsrc_find _raidstart)" is_file
}
@test 'more_src has _railpack' {
    assert "$(xsrc_find _railpack)" is_file
}
@test 'more_src has _raine' {
    assert "$(xsrc_find _raine)" is_file
}
@test 'more_src has _rainfrog' {
    assert "$(xsrc_find _rainfrog)" is_file
}
@test 'more_src has _rakarrack' {
    assert "$(xsrc_find _rakarrack)" is_file
}
@test 'more_src has _ralph' {
    assert "$(xsrc_find _ralph)" is_file
}
@test 'more_src has _ramalama' {
    assert "$(xsrc_find _ramalama)" is_file
}
@test 'more_src has _rancher' {
    assert "$(xsrc_find _rancher)" is_file
}
@test 'more_src has _rancher-agent' {
    assert "$(xsrc_find _rancher-agent)" is_file
}
@test 'more_src has _rancher-server' {
    assert "$(xsrc_find _rancher-server)" is_file
}
@test 'more_src has _rapid-git' {
    assert "$(xsrc_find _rapid-git)" is_file
}
@test 'more_src has _raps' {
    assert "$(xsrc_find _raps)" is_file
}
@test 'more_src has _rargs' {
    assert "$(xsrc_find _rargs)" is_file
}
@test 'more_src has _ras-mc-ctl' {
    assert "$(xsrc_find _ras-mc-ctl)" is_file
}
@test 'more_src has _rasdaemon' {
    assert "$(xsrc_find _rasdaemon)" is_file
}
@test 'more_src has _ratchet' {
    assert "$(xsrc_find _ratchet)" is_file
}
@test 'more_src has _rawtherapee-pp' {
    assert "$(xsrc_find _rawtherapee-pp)" is_file
}
@test 'more_src has _raxml-ng' {
    assert "$(xsrc_find _raxml-ng)" is_file
}
@test 'more_src has _rbd-fuse' {
    assert "$(xsrc_find _rbd-fuse)" is_file
}
@test 'more_src has _rbd-mirror' {
    assert "$(xsrc_find _rbd-mirror)" is_file
}
@test 'more_src has _rbd-nbd' {
    assert "$(xsrc_find _rbd-nbd)" is_file
}
@test 'more_src has _rbenv' {
    assert "$(xsrc_find _rbenv)" is_file
}
@test 'more_src has _rbt' {
    assert "$(xsrc_find _rbt)" is_file
}
@test 'more_src has _rbw' {
    assert "$(xsrc_find _rbw)" is_file
}
@test 'more_src has _rc-status' {
    assert "$(xsrc_find _rc-status)" is_file
}
@test 'more_src has _rcalc' {
    assert "$(xsrc_find _rcalc)" is_file
}
@test 'more_src has _rcm' {
    assert "$(xsrc_find _rcm)" is_file
}
@test 'more_src has _rco' {
    assert "$(xsrc_find _rco)" is_file
}
@test 'more_src has _rdiff-backup' {
    assert "$(xsrc_find _rdiff-backup)" is_file
}
@test 'more_src has _rdm' {
    assert "$(xsrc_find _rdm)" is_file
}
@test 'more_src has _re-run' {
    assert "$(xsrc_find _re-run)" is_file
}
@test 'more_src has _re2d' {
    assert "$(xsrc_find _re2d)" is_file
}
@test 'more_src has _re2hs' {
    assert "$(xsrc_find _re2hs)" is_file
}
@test 'more_src has _re2js' {
    assert "$(xsrc_find _re2js)" is_file
}
@test 'more_src has _re2ocaml' {
    assert "$(xsrc_find _re2ocaml)" is_file
}
@test 'more_src has _re2py' {
    assert "$(xsrc_find _re2py)" is_file
}
@test 'more_src has _re2swift' {
    assert "$(xsrc_find _re2swift)" is_file
}
@test 'more_src has _re2v' {
    assert "$(xsrc_find _re2v)" is_file
}
@test 'more_src has _re2zig' {
    assert "$(xsrc_find _re2zig)" is_file
}
@test 'more_src has _react-router' {
    assert "$(xsrc_find _react-router)" is_file
}
@test 'more_src has _reaction' {
    assert "$(xsrc_find _reaction)" is_file
}
@test 'more_src has _readable' {
    assert "$(xsrc_find _readable)" is_file
}
@test 'more_src has _readproctitle' {
    assert "$(xsrc_find _readproctitle)" is_file
}
@test 'more_src has _reattach-to-user-namespace' {
    assert "$(xsrc_find _reattach-to-user-namespace)" is_file
}
@test 'more_src has _rebaseextract' {
    assert "$(xsrc_find _rebaseextract)" is_file
}
@test 'more_src has _rebel-readline' {
    assert "$(xsrc_find _rebel-readline)" is_file
}
@test 'more_src has _rebuildctl' {
    assert "$(xsrc_find _rebuildctl)" is_file
}
@test 'more_src has _recoder' {
    assert "$(xsrc_find _recoder)" is_file
}
@test 'more_src has _recoll' {
    assert "$(xsrc_find _recoll)" is_file
}
@test 'more_src has _recon-cli' {
    assert "$(xsrc_find _recon-cli)" is_file
}
@test 'more_src has _reconstructPar' {
    assert "$(xsrc_find _reconstructPar)" is_file
}
@test 'more_src has _redata' {
    assert "$(xsrc_find _redata)" is_file
}
@test 'more_src has _redbean' {
    assert "$(xsrc_find _redbean)" is_file
}
@test 'more_src has _redeclipse' {
    assert "$(xsrc_find _redeclipse)" is_file
}
@test 'more_src has _redfish-finder' {
    assert "$(xsrc_find _redfish-finder)" is_file
}
@test 'more_src has _redis-check-rdb' {
    assert "$(xsrc_find _redis-check-rdb)" is_file
}
@test 'more_src has _redis-stat' {
    assert "$(xsrc_find _redis-stat)" is_file
}
@test 'more_src has _redmine-cli' {
    assert "$(xsrc_find _redmine-cli)" is_file
}
@test 'more_src has _rednotebook' {
    assert "$(xsrc_find _rednotebook)" is_file
}
@test 'more_src has _redo' {
    assert "$(xsrc_find _redo)" is_file
}
@test 'more_src has _redress' {
    assert "$(xsrc_find _redress)" is_file
}
@test 'more_src has _redstr' {
    assert "$(xsrc_find _redstr)" is_file
}
@test 'more_src has _reduce' {
    assert "$(xsrc_find _reduce)" is_file
}
@test 'more_src has _refact-lsp' {
    assert "$(xsrc_find _refact-lsp)" is_file
}
@test 'more_src has _refind-install' {
    assert "$(xsrc_find _refind-install)" is_file
}
@test 'more_src has _refind-mkdefault' {
    assert "$(xsrc_find _refind-mkdefault)" is_file
}
@test 'more_src has _refind-mkfont' {
    assert "$(xsrc_find _refind-mkfont)" is_file
}
@test 'more_src has _refind-mkrlconf' {
    assert "$(xsrc_find _refind-mkrlconf)" is_file
}
@test 'more_src has _reflex' {
    assert "$(xsrc_find _reflex)" is_file
}
@test 'more_src has _refseqget' {
    assert "$(xsrc_find _refseqget)" is_file
}
@test 'more_src has _refurb' {
    assert "$(xsrc_find _refurb)" is_file
}
@test 'more_src has _regctl' {
    assert "$(xsrc_find _regctl)" is_file
}
@test 'more_src has _reginald.zsh' {
    assert "$(xsrc_find _reginald.zsh)" is_file
}
@test 'more_src has _regipy-diff' {
    assert "$(xsrc_find _regipy-diff)" is_file
}
@test 'more_src has _regipy-dump' {
    assert "$(xsrc_find _regipy-dump)" is_file
}
@test 'more_src has _regipy-parse-header' {
    assert "$(xsrc_find _regipy-parse-header)" is_file
}
@test 'more_src has _regipy-plugins-list' {
    assert "$(xsrc_find _regipy-plugins-list)" is_file
}
@test 'more_src has _regipy-plugins-run' {
    assert "$(xsrc_find _regipy-plugins-run)" is_file
}
@test 'more_src has _regipy-process-transaction-logs' {
    assert "$(xsrc_find _regipy-process-transaction-logs)" is_file
}
@test 'more_src has _rekall' {
    assert "$(xsrc_find _rekall)" is_file
}
@test 'more_src has _rekor' {
    assert "$(xsrc_find _rekor)" is_file
}
@test 'more_src has _relay' {
    assert "$(xsrc_find _relay)" is_file
}
@test 'more_src has _release-it' {
    assert "$(xsrc_find _release-it)" is_file
}
@test 'more_src has _releaser' {
    assert "$(xsrc_find _releaser)" is_file
}
@test 'more_src has _reloader' {
    assert "$(xsrc_find _reloader)" is_file
}
@test 'more_src has _remap' {
    assert "$(xsrc_find _remap)" is_file
}
@test 'more_src has _remarshal' {
    assert "$(xsrc_find _remarshal)" is_file
}
@test 'more_src has _remit' {
    assert "$(xsrc_find _remit)" is_file
}
@test 'more_src has _remote-agent' {
    assert "$(xsrc_find _remote-agent)" is_file
}
@test 'more_src has _remote-coding-agent' {
    assert "$(xsrc_find _remote-coding-agent)" is_file
}
@test 'more_src has _ren' {
    assert "$(xsrc_find _ren)" is_file
}
@test 'more_src has _renri' {
    assert "$(xsrc_find _renri)" is_file
}
@test 'more_src has _replit' {
    assert "$(xsrc_find _replit)" is_file
}
@test 'more_src has _repo' {
    assert "$(xsrc_find _repo)" is_file
}
@test 'more_src has _repo-trust' {
    assert "$(xsrc_find _repo-trust)" is_file
}
@test 'more_src has _repomix' {
    assert "$(xsrc_find _repomix)" is_file
}
@test 'more_src has _repomix-cli' {
    assert "$(xsrc_find _repomix-cli)" is_file
}
@test 'more_src has _report-cli' {
    assert "$(xsrc_find _report-cli)" is_file
}
@test 'more_src has _reportbug-ng' {
    assert "$(xsrc_find _reportbug-ng)" is_file
}
@test 'more_src has _repos-manager' {
    assert "$(xsrc_find _repos-manager)" is_file
}
@test 'more_src has _repoverlay' {
    assert "$(xsrc_find _repoverlay)" is_file
}
@test 'more_src has _repro-env' {
    assert "$(xsrc_find _repro-env)" is_file
}
@test 'more_src has _reproxy' {
    assert "$(xsrc_find _reproxy)" is_file
}
@test 'more_src has _research-master' {
    assert "$(xsrc_find _research-master)" is_file
}
@test 'more_src has _residualvm' {
    assert "$(xsrc_find _residualvm)" is_file
}
@test 'more_src has _restart_service' {
    assert "$(xsrc_find _restart_service)" is_file
}
@test 'more_src has _restic' {
    assert "$(xsrc_find _restic)" is_file
}
@test 'more_src has _resticprofile' {
    assert "$(xsrc_find _resticprofile)" is_file
}
@test 'more_src has _restover' {
    assert "$(xsrc_find _restover)" is_file
}
@test 'more_src has _restrict' {
    assert "$(xsrc_find _restrict)" is_file
}
@test 'more_src has _retire' {
    assert "$(xsrc_find _retire)" is_file
}
@test 'more_src has _retroarch-cli' {
    assert "$(xsrc_find _retroarch-cli)" is_file
}
@test 'more_src has _retty' {
    assert "$(xsrc_find _retty)" is_file
}
@test 'more_src has _revive' {
    assert "$(xsrc_find _revive)" is_file
}
@test 'more_src has _revseq' {
    assert "$(xsrc_find _revseq)" is_file
}
@test 'more_src has _revshellgen' {
    assert "$(xsrc_find _revshellgen)" is_file
}
@test 'more_src has _rezound' {
    assert "$(xsrc_find _rezound)" is_file
}
@test 'more_src has _rfluxmtx' {
    assert "$(xsrc_find _rfluxmtx)" is_file
}
@test 'more_src has _rga' {
    assert "$(xsrc_find _rga)" is_file
}
@test 'more_src has _rgbasm' {
    assert "$(xsrc_find _rgbasm)" is_file
}
@test 'more_src has _rgbfix' {
    assert "$(xsrc_find _rgbfix)" is_file
}
@test 'more_src has _rgbgfx' {
    assert "$(xsrc_find _rgbgfx)" is_file
}
@test 'more_src has _rgblink' {
    assert "$(xsrc_find _rgblink)" is_file
}
@test 'more_src has _rgr' {
    assert "$(xsrc_find _rgr)" is_file
}
@test 'more_src has _rgrc' {
    assert "$(xsrc_find _rgrc)" is_file
}
@test 'more_src has _rgxg' {
    assert "$(xsrc_find _rgxg)" is_file
}
@test 'more_src has _rhasspy-cli' {
    assert "$(xsrc_find _rhasspy-cli)" is_file
}
@test 'more_src has _rhoas' {
    assert "$(xsrc_find _rhoas)" is_file
}
@test 'more_src has _rhpict' {
    assert "$(xsrc_find _rhpict)" is_file
}
@test 'more_src has _riak' {
    assert "$(xsrc_find _riak)" is_file
}
@test 'more_src has _riak-admin' {
    assert "$(xsrc_find _riak-admin)" is_file
}
@test 'more_src has _ricochet-refresh' {
    assert "$(xsrc_find _ricochet-refresh)" is_file
}
@test 'more_src has _rider' {
    assert "$(xsrc_find _rider)" is_file
}
@test 'more_src has _rigg' {
    assert "$(xsrc_find _rigg)" is_file
}
@test 'more_src has _rigsql' {
    assert "$(xsrc_find _rigsql)" is_file
}
@test 'more_src has _riji' {
    assert "$(xsrc_find _riji)" is_file
}
@test 'more_src has _rip' {
    assert "$(xsrc_find _rip)" is_file
}
@test 'more_src has _rip2' {
    assert "$(xsrc_find _rip2)" is_file
}
@test 'more_src has _ripd' {
    assert "$(xsrc_find _ripd)" is_file
}
@test 'more_src has _ripit' {
    assert "$(xsrc_find _ripit)" is_file
}
@test 'more_src has _rippkgs' {
    assert "$(xsrc_find _rippkgs)" is_file
}
@test 'more_src has _risor' {
    assert "$(xsrc_find _risor)" is_file
}
@test 'more_src has _river' {
    assert "$(xsrc_find _river)" is_file
}
@test 'more_src has _riverctl' {
    assert "$(xsrc_find _riverctl)" is_file
}
@test 'more_src has _riverwm' {
    assert "$(xsrc_find _riverwm)" is_file
}
@test 'more_src has _rivet' {
    assert "$(xsrc_find _rivet)" is_file
}
@test 'more_src has _rke2' {
    assert "$(xsrc_find _rke2)" is_file
}
@test 'more_src has _rledger' {
    assert "$(xsrc_find _rledger)" is_file
}
@test 'more_src has _rlytest' {
    assert "$(xsrc_find _rlytest)" is_file
}
@test 'more_src has _rmailmm' {
    assert "$(xsrc_find _rmailmm)" is_file
}
@test 'more_src has _rmtrash' {
    assert "$(xsrc_find _rmtrash)" is_file
}
@test 'more_src has _rnaalifold' {
    assert "$(xsrc_find _rnaalifold)" is_file
}
@test 'more_src has _rnacofold' {
    assert "$(xsrc_find _rnacofold)" is_file
}
@test 'more_src has _rnaduplex' {
    assert "$(xsrc_find _rnaduplex)" is_file
}
@test 'more_src has _rnaeval' {
    assert "$(xsrc_find _rnaeval)" is_file
}
@test 'more_src has _rnainverse' {
    assert "$(xsrc_find _rnainverse)" is_file
}
@test 'more_src has _rnaplfold' {
    assert "$(xsrc_find _rnaplfold)" is_file
}
@test 'more_src has _rnasubopt' {
    assert "$(xsrc_find _rnasubopt)" is_file
}
@test 'more_src has _rnc-cli' {
    assert "$(xsrc_find _rnc-cli)" is_file
}
@test 'more_src has _rnix-fmt' {
    assert "$(xsrc_find _rnix-fmt)" is_file
}
@test 'more_src has _rnp' {
    assert "$(xsrc_find _rnp)" is_file
}
@test 'more_src has _rnpkeys' {
    assert "$(xsrc_find _rnpkeys)" is_file
}
@test 'more_src has _rnpv' {
    assert "$(xsrc_find _rnpv)" is_file
}
@test 'more_src has _rnr' {
    assert "$(xsrc_find _rnr)" is_file
}
@test 'more_src has _robo' {
    assert "$(xsrc_find _robo)" is_file
}
@test 'more_src has _roc' {
    assert "$(xsrc_find _roc)" is_file
}
@test 'more_src has _rocgdb' {
    assert "$(xsrc_find _rocgdb)" is_file
}
@test 'more_src has _rocksdb_ldb' {
    assert "$(xsrc_find _rocksdb_ldb)" is_file
}
@test 'more_src has _rocksdb_repair' {
    assert "$(xsrc_find _rocksdb_repair)" is_file
}
@test 'more_src has _rocksdb_sst_dump' {
    assert "$(xsrc_find _rocksdb_sst_dump)" is_file
}
@test 'more_src has _rocm-bandwidth-test' {
    assert "$(xsrc_find _rocm-bandwidth-test)" is_file
}
@test 'more_src has _rocm-smi' {
    assert "$(xsrc_find _rocm-smi)" is_file
}
@test 'more_src has _rocminfo' {
    assert "$(xsrc_find _rocminfo)" is_file
}
@test 'more_src has _rocprof' {
    assert "$(xsrc_find _rocprof)" is_file
}
@test 'more_src has _roer' {
    assert "$(xsrc_find _roer)" is_file
}
@test 'more_src has _rofi' {
    assert "$(xsrc_find _rofi)" is_file
}
@test 'more_src has _rofimoji' {
    assert "$(xsrc_find _rofimoji)" is_file
}
@test 'more_src has _rojo' {
    assert "$(xsrc_find _rojo)" is_file
}
@test 'more_src has _rollbar-agent' {
    assert "$(xsrc_find _rollbar-agent)" is_file
}
@test 'more_src has _ronin' {
    assert "$(xsrc_find _ronin)" is_file
}
@test 'more_src has _roo' {
    assert "$(xsrc_find _roo)" is_file
}
@test 'more_src has _roo-cli' {
    assert "$(xsrc_find _roo-cli)" is_file
}
@test 'more_src has _roocommander' {
    assert "$(xsrc_find _roocommander)" is_file
}
@test 'more_src has _rooster' {
    assert "$(xsrc_find _rooster)" is_file
}
@test 'more_src has _ropper' {
    assert "$(xsrc_find _ropper)" is_file
}
@test 'more_src has _ros' {
    assert "$(xsrc_find _ros)" is_file
}
@test 'more_src has _rosegarden' {
    assert "$(xsrc_find _rosegarden)" is_file
}
@test 'more_src has _rosetta_scripts' {
    assert "$(xsrc_find _rosetta_scripts)" is_file
}
@test 'more_src has _rotz' {
    assert "$(xsrc_find _rotz)" is_file
}
@test 'more_src has _roughtime' {
    assert "$(xsrc_find _roughtime)" is_file
}
@test 'more_src has _route53' {
    assert "$(xsrc_find _route53)" is_file
}
@test 'more_src has _routino' {
    assert "$(xsrc_find _routino)" is_file
}
@test 'more_src has _rover' {
    assert "$(xsrc_find _rover)" is_file
}
@test 'more_src has _rox-filer' {
    assert "$(xsrc_find _rox-filer)" is_file
}
@test 'more_src has _rpict' {
    assert "$(xsrc_find _rpict)" is_file
}
@test 'more_src has _rpk' {
    assert "$(xsrc_find _rpk)" is_file
}
@test 'more_src has _rpmdev-bumpspec' {
    assert "$(xsrc_find _rpmdev-bumpspec)" is_file
}
@test 'more_src has _rpmdev-checksig' {
    assert "$(xsrc_find _rpmdev-checksig)" is_file
}
@test 'more_src has _rpmdev-extract' {
    assert "$(xsrc_find _rpmdev-extract)" is_file
}
@test 'more_src has _rpmdev-md5' {
    assert "$(xsrc_find _rpmdev-md5)" is_file
}
@test 'more_src has _rpmdev-newinit' {
    assert "$(xsrc_find _rpmdev-newinit)" is_file
}
@test 'more_src has _rpmdev-packager' {
    assert "$(xsrc_find _rpmdev-packager)" is_file
}
@test 'more_src has _rpmdev-rmdevelrpms' {
    assert "$(xsrc_find _rpmdev-rmdevelrpms)" is_file
}
@test 'more_src has _rpmdev-rpmlintian' {
    assert "$(xsrc_find _rpmdev-rpmlintian)" is_file
}
@test 'more_src has _rpmdev-sortpkgs' {
    assert "$(xsrc_find _rpmdev-sortpkgs)" is_file
}
@test 'more_src has _rpmdev-sourcesum' {
    assert "$(xsrc_find _rpmdev-sourcesum)" is_file
}
@test 'more_src has _rpmdev-srcdir' {
    assert "$(xsrc_find _rpmdev-srcdir)" is_file
}
@test 'more_src has _rpmgrill' {
    assert "$(xsrc_find _rpmgrill)" is_file
}
@test 'more_src has _rpsblast' {
    assert "$(xsrc_find _rpsblast)" is_file
}
@test 'more_src has _rr' {
    assert "$(xsrc_find _rr)" is_file
}
@test 'more_src has _rrdcached' {
    assert "$(xsrc_find _rrdcached)" is_file
}
@test 'more_src has _rrdcgi' {
    assert "$(xsrc_find _rrdcgi)" is_file
}
@test 'more_src has _rrdupdate' {
    assert "$(xsrc_find _rrdupdate)" is_file
}
@test 'more_src has _rsop' {
    assert "$(xsrc_find _rsop)" is_file
}
@test 'more_src has _rsopv' {
    assert "$(xsrc_find _rsopv)" is_file
}
@test 'more_src has _rspamadm' {
    assert "$(xsrc_find _rspamadm)" is_file
}
@test 'more_src has _rspamd-cli' {
    assert "$(xsrc_find _rspamd-cli)" is_file
}
@test 'more_src has _rst2epub' {
    assert "$(xsrc_find _rst2epub)" is_file
}
@test 'more_src has _rst2info' {
    assert "$(xsrc_find _rst2info)" is_file
}
@test 'more_src has _rstudio' {
    assert "$(xsrc_find _rstudio)" is_file
}
@test 'more_src has _rsvm' {
    assert "$(xsrc_find _rsvm)" is_file
}
@test 'more_src has _rsyslogd' {
    assert "$(xsrc_find _rsyslogd)" is_file
}
@test 'more_src has _rtf2html' {
    assert "$(xsrc_find _rtf2html)" is_file
}
@test 'more_src has _rtk' {
    assert "$(xsrc_find _rtk)" is_file
}
@test 'more_src has _rtrace' {
    assert "$(xsrc_find _rtrace)" is_file
}
@test 'more_src has _rts' {
    assert "$(xsrc_find _rts)" is_file
}
@test 'more_src has _rtx' {
    assert "$(xsrc_find _rtx)" is_file
}
@test 'more_src has _rubymine' {
    assert "$(xsrc_find _rubymine)" is_file
}
@test 'more_src has _ruff' {
    assert "$(xsrc_find _ruff)" is_file
}
@test 'more_src has _ruff-lsp' {
    assert "$(xsrc_find _ruff-lsp)" is_file
}
@test 'more_src has _rung' {
    assert "$(xsrc_find _rung)" is_file
}
@test 'more_src has _runme' {
    assert "$(xsrc_find _runme)" is_file
}
@test 'more_src has _runner' {
    assert "$(xsrc_find _runner)" is_file
}
@test 'more_src has _runsv' {
    assert "$(xsrc_find _runsv)" is_file
}
@test 'more_src has _runsvchdir' {
    assert "$(xsrc_find _runsvchdir)" is_file
}
@test 'more_src has _runsvdir' {
    assert "$(xsrc_find _runsvdir)" is_file
}
@test 'more_src has _runtest' {
    assert "$(xsrc_find _runtest)" is_file
}
@test 'more_src has _ruplacer' {
    assert "$(xsrc_find _ruplacer)" is_file
}
@test 'more_src has _rush' {
    assert "$(xsrc_find _rush)" is_file
}
@test 'more_src has _rust' {
    assert "$(xsrc_find _rust)" is_file
}
@test 'more_src has _rust-analyzer' {
    assert "$(xsrc_find _rust-analyzer)" is_file
}
@test 'more_src has _rust-bindgen' {
    assert "$(xsrc_find _rust-bindgen)" is_file
}
@test 'more_src has _rust-objcopy' {
    assert "$(xsrc_find _rust-objcopy)" is_file
}
@test 'more_src has _rust-objdump' {
    assert "$(xsrc_find _rust-objdump)" is_file
}
@test 'more_src has _rust-readobj' {
    assert "$(xsrc_find _rust-readobj)" is_file
}
@test 'more_src has _rust-size' {
    assert "$(xsrc_find _rust-size)" is_file
}
@test 'more_src has _rust-strings' {
    assert "$(xsrc_find _rust-strings)" is_file
}
@test 'more_src has _rust-strip' {
    assert "$(xsrc_find _rust-strip)" is_file
}
@test 'more_src has _rust-to-npm-cli' {
    assert "$(xsrc_find _rust-to-npm-cli)" is_file
}
@test 'more_src has _rustac' {
    assert "$(xsrc_find _rustac)" is_file
}
@test 'more_src has _rustcat' {
    assert "$(xsrc_find _rustcat)" is_file
}
@test 'more_src has _rustgraph' {
    assert "$(xsrc_find _rustgraph)" is_file
}
@test 'more_src has _rustic' {
    assert "$(xsrc_find _rustic)" is_file
}
@test 'more_src has _rustlings' {
    assert "$(xsrc_find _rustlings)" is_file
}
@test 'more_src has _rustowl' {
    assert "$(xsrc_find _rustowl)" is_file
}
@test 'more_src has _rustscan' {
    assert "$(xsrc_find _rustscan)" is_file
}
@test 'more_src has _rv' {
    assert "$(xsrc_find _rv)" is_file
}
@test 'more_src has _rvlc' {
    assert "$(xsrc_find _rvlc)" is_file
}
@test 'more_src has _rvm' {
    assert "$(xsrc_find _rvm)" is_file
}
@test 'more_src has _rvpm' {
    assert "$(xsrc_find _rvpm)" is_file
}
@test 'more_src has _rye' {
    assert "$(xsrc_find _rye)" is_file
}
@test 'more_src has _ryujinx' {
    assert "$(xsrc_find _ryujinx)" is_file
}
@test 'more_src has _s-tui' {
    assert "$(xsrc_find _s-tui)" is_file
}
@test 'more_src has _s2' {
    assert "$(xsrc_find _s2)" is_file
}
@test 'more_src has _s3.zsh' {
    assert "$(xsrc_find _s3.zsh)" is_file
}
@test 'more_src has _s3cmd' {
    assert "$(xsrc_find _s3cmd)" is_file
}
@test 'more_src has _s5cmd' {
    assert "$(xsrc_find _s5cmd)" is_file
}
@test 'more_src has _s6-clock' {
    assert "$(xsrc_find _s6-clock)" is_file
}
@test 'more_src has _s6-mkfifo' {
    assert "$(xsrc_find _s6-mkfifo)" is_file
}
@test 'more_src has _s6-supervise' {
    assert "$(xsrc_find _s6-supervise)" is_file
}
@test 'more_src has _s6-svscanctl' {
    assert "$(xsrc_find _s6-svscanctl)" is_file
}
@test 'more_src has _s6-test' {
    assert "$(xsrc_find _s6-test)" is_file
}
@test 'more_src has _sacc' {
    assert "$(xsrc_find _sacc)" is_file
}
@test 'more_src has _sad' {
    assert "$(xsrc_find _sad)" is_file
}
@test 'more_src has _safari-cli' {
    assert "$(xsrc_find _safari-cli)" is_file
}
@test 'more_src has _safe-bundle' {
    assert "$(xsrc_find _safe-bundle)" is_file
}
@test 'more_src has _safety' {
    assert "$(xsrc_find _safety)" is_file
}
@test 'more_src has _sagemaker-studio' {
    assert "$(xsrc_find _sagemaker-studio)" is_file
}
@test 'more_src has _sagemaker-studio-cli' {
    assert "$(xsrc_find _sagemaker-studio-cli)" is_file
}
@test 'more_src has _sagemath' {
    assert "$(xsrc_find _sagemath)" is_file
}
@test 'more_src has _sagoin' {
    assert "$(xsrc_find _sagoin)" is_file
}
@test 'more_src has _sahara-api' {
    assert "$(xsrc_find _sahara-api)" is_file
}
@test 'more_src has _sahara-engine' {
    assert "$(xsrc_find _sahara-engine)" is_file
}
@test 'more_src has _sahara-manage' {
    assert "$(xsrc_find _sahara-manage)" is_file
}
@test 'more_src has _sahara-status' {
    assert "$(xsrc_find _sahara-status)" is_file
}
@test 'more_src has _salome' {
    assert "$(xsrc_find _salome)" is_file
}
@test 'more_src has _salome-launcher' {
    assert "$(xsrc_find _salome-launcher)" is_file
}
@test 'more_src has _sam' {
    assert "$(xsrc_find _sam)" is_file
}
@test 'more_src has _samba-bgqd' {
    assert "$(xsrc_find _samba-bgqd)" is_file
}
@test 'more_src has _samba-dcerpcd' {
    assert "$(xsrc_find _samba-dcerpcd)" is_file
}
@test 'more_src has _samba_spotlightd' {
    assert "$(xsrc_find _samba_spotlightd)" is_file
}
@test 'more_src has _samhain' {
    assert "$(xsrc_find _samhain)" is_file
}
@test 'more_src has _samhainctl' {
    assert "$(xsrc_find _samhainctl)" is_file
}
@test 'more_src has _saml2aws' {
    assert "$(xsrc_find _saml2aws)" is_file
}
@test 'more_src has _sampleproc' {
    assert "$(xsrc_find _sampleproc)" is_file
}
@test 'more_src has _sampler' {
    assert "$(xsrc_find _sampler)" is_file
}
@test 'more_src has _samtools' {
    assert "$(xsrc_find _samtools)" is_file
}
@test 'more_src has _sander' {
    assert "$(xsrc_find _sander)" is_file
}
@test 'more_src has _sandy' {
    assert "$(xsrc_find _sandy)" is_file
}
@test 'more_src has _sanoid' {
    assert "$(xsrc_find _sanoid)" is_file
}
@test 'more_src has _sapling' {
    assert "$(xsrc_find _sapling)" is_file
}
@test 'more_src has _sarien' {
    assert "$(xsrc_find _sarien)" is_file
}
@test 'more_src has _sarif' {
    assert "$(xsrc_find _sarif)" is_file
}
@test 'more_src has _sasquatch' {
    assert "$(xsrc_find _sasquatch)" is_file
}
@test 'more_src has _sassc' {
    assert "$(xsrc_find _sassc)" is_file
}
@test 'more_src has _satellite-installer' {
    assert "$(xsrc_find _satellite-installer)" is_file
}
@test 'more_src has _sauerbraten' {
    assert "$(xsrc_find _sauerbraten)" is_file
}
@test 'more_src has _saved_model_cli' {
    assert "$(xsrc_find _saved_model_cli)" is_file
}
@test 'more_src has _sbopkg' {
    assert "$(xsrc_find _sbopkg)" is_file
}
@test 'more_src has _sbotools' {
    assert "$(xsrc_find _sbotools)" is_file
}
@test 'more_src has _sbozyp' {
    assert "$(xsrc_find _sbozyp)" is_file
}
@test 'more_src has _sbsigntool' {
    assert "$(xsrc_find _sbsigntool)" is_file
}
@test 'more_src has _sc-im' {
    assert "$(xsrc_find _sc-im)" is_file
}
@test 'more_src has _scaffold' {
    assert "$(xsrc_find _scaffold)" is_file
}
@test 'more_src has _scaffoldx' {
    assert "$(xsrc_find _scaffoldx)" is_file
}
@test 'more_src has _scala3' {
    assert "$(xsrc_find _scala3)" is_file
}
@test 'more_src has _scalafmt' {
    assert "$(xsrc_find _scalafmt)" is_file
}
@test 'more_src has _scalemogrifier' {
    assert "$(xsrc_find _scalemogrifier)" is_file
}
@test 'more_src has _scanadf' {
    assert "$(xsrc_find _scanadf)" is_file
}
@test 'more_src has _scantailor' {
    assert "$(xsrc_find _scantailor)" is_file
}
@test 'more_src has _scaphandre' {
    assert "$(xsrc_find _scaphandre)" is_file
}
@test 'more_src has _scapy3k' {
    assert "$(xsrc_find _scapy3k)" is_file
}
@test 'more_src has _scc' {
    assert "$(xsrc_find _scc)" is_file
}
@test 'more_src has _sccache' {
    assert "$(xsrc_find _sccache)" is_file
}
@test 'more_src has _scd' {
    assert "$(xsrc_find _scd)" is_file
}
@test 'more_src has _scdoc' {
    assert "$(xsrc_find _scdoc)" is_file
}
@test 'more_src has _schemathesis' {
    assert "$(xsrc_find _schemathesis)" is_file
}
@test 'more_src has _schemaui' {
    assert "$(xsrc_find _schemaui)" is_file
}
@test 'more_src has _scheme48' {
    assert "$(xsrc_find _scheme48)" is_file
}
@test 'more_src has _scid' {
    assert "$(xsrc_find _scid)" is_file
}
@test 'more_src has _scid_vs_pc' {
    assert "$(xsrc_find _scid_vs_pc)" is_file
}
@test 'more_src has _sclang' {
    assert "$(xsrc_find _sclang)" is_file
}
@test 'more_src has _scli' {
    assert "$(xsrc_find _scli)" is_file
}
@test 'more_src has _sclient' {
    assert "$(xsrc_find _sclient)" is_file
}
@test 'more_src has _scm' {
    assert "$(xsrc_find _scm)" is_file
}
@test 'more_src has _score' {
    assert "$(xsrc_find _score)" is_file
}
@test 'more_src has _scott' {
    assert "$(xsrc_find _scott)" is_file
}
@test 'more_src has _scpr' {
    assert "$(xsrc_find _scpr)" is_file
}
@test 'more_src has _scrapyd' {
    assert "$(xsrc_find _scrapyd)" is_file
}
@test 'more_src has _scrapyd-client' {
    assert "$(xsrc_find _scrapyd-client)" is_file
}
@test 'more_src has _scrcpy' {
    assert "$(xsrc_find _scrcpy)" is_file
}
@test 'more_src has _screenkey' {
    assert "$(xsrc_find _screenkey)" is_file
}
@test 'more_src has _scribus' {
    assert "$(xsrc_find _scribus)" is_file
}
@test 'more_src has _scripts-cli.sh' {
    assert "$(xsrc_find _scripts-cli.sh)" is_file
}
@test 'more_src has _scriv' {
    assert "$(xsrc_find _scriv)" is_file
}
@test 'more_src has _scrypt' {
    assert "$(xsrc_find _scrypt)" is_file
}
@test 'more_src has _scstadmin' {
    assert "$(xsrc_find _scstadmin)" is_file
}
@test 'more_src has _scummvm-tools' {
    assert "$(xsrc_find _scummvm-tools)" is_file
}
@test 'more_src has _scw' {
    assert "$(xsrc_find _scw)" is_file
}
@test 'more_src has _sd' {
    assert "$(xsrc_find _sd)" is_file
}
@test 'more_src has _sd-mux-ctrl' {
    assert "$(xsrc_find _sd-mux-ctrl)" is_file
}
@test 'more_src has _sdar' {
    assert "$(xsrc_find _sdar)" is_file
}
@test 'more_src has _sdas8051' {
    assert "$(xsrc_find _sdas8051)" is_file
}
@test 'more_src has _sdasz80' {
    assert "$(xsrc_find _sdasz80)" is_file
}
@test 'more_src has _sdcclib' {
    assert "$(xsrc_find _sdcclib)" is_file
}
@test 'more_src has _sdcpp' {
    assert "$(xsrc_find _sdcpp)" is_file
}
@test 'more_src has _sdef' {
    assert "$(xsrc_find _sdef)" is_file
}
@test 'more_src has _sdkman' {
    assert "$(xsrc_find _sdkman)" is_file
}
@test 'more_src has _sdldgb' {
    assert "$(xsrc_find _sdldgb)" is_file
}
@test 'more_src has _sdldlink' {
    assert "$(xsrc_find _sdldlink)" is_file
}
@test 'more_src has _sdldlz80' {
    assert "$(xsrc_find _sdldlz80)" is_file
}
@test 'more_src has _sdlmame' {
    assert "$(xsrc_find _sdlmame)" is_file
}
@test 'more_src has _sdobjcopy' {
    assert "$(xsrc_find _sdobjcopy)" is_file
}
@test 'more_src has _sealert' {
    assert "$(xsrc_find _sealert)" is_file
}
@test 'more_src has _search-cmd' {
    assert "$(xsrc_find _search-cmd)" is_file
}
@test 'more_src has _searchdiagnose' {
    assert "$(xsrc_find _searchdiagnose)" is_file
}
@test 'more_src has _searchlight-api' {
    assert "$(xsrc_find _searchlight-api)" is_file
}
@test 'more_src has _searchlight-listener' {
    assert "$(xsrc_find _searchlight-listener)" is_file
}
@test 'more_src has _searchlight-manage' {
    assert "$(xsrc_find _searchlight-manage)" is_file
}
@test 'more_src has _searchnmapscript' {
    assert "$(xsrc_find _searchnmapscript)" is_file
}
@test 'more_src has _secretenv' {
    assert "$(xsrc_find _secretenv)" is_file
}
@test 'more_src has _sectok' {
    assert "$(xsrc_find _sectok)" is_file
}
@test 'more_src has _securefs' {
    assert "$(xsrc_find _securefs)" is_file
}
@test 'more_src has _seealso' {
    assert "$(xsrc_find _seealso)" is_file
}
@test 'more_src has _seek' {
    assert "$(xsrc_find _seek)" is_file
}
@test 'more_src has _seite' {
    assert "$(xsrc_find _seite)" is_file
}
@test 'more_src has _seldon-batch-processor' {
    assert "$(xsrc_find _seldon-batch-processor)" is_file
}
@test 'more_src has _seldon-core-api-tester' {
    assert "$(xsrc_find _seldon-core-api-tester)" is_file
}
@test 'more_src has _seldon-core-microservice' {
    assert "$(xsrc_find _seldon-core-microservice)" is_file
}
@test 'more_src has _seldon-core-microservice-tester' {
    assert "$(xsrc_find _seldon-core-microservice-tester)" is_file
}
@test 'more_src has _seldon-core-tester' {
    assert "$(xsrc_find _seldon-core-tester)" is_file
}
@test 'more_src has _selene' {
    assert "$(xsrc_find _selene)" is_file
}
@test 'more_src has _selfserv' {
    assert "$(xsrc_find _selfserv)" is_file
}
@test 'more_src has _selinuxexeccon' {
    assert "$(xsrc_find _selinuxexeccon)" is_file
}
@test 'more_src has _sema' {
    assert "$(xsrc_find _sema)" is_file
}
@test 'more_src has _semgrep' {
    assert "$(xsrc_find _semgrep)" is_file
}
@test 'more_src has _semodule_deps' {
    assert "$(xsrc_find _semodule_deps)" is_file
}
@test 'more_src has _senlin-api' {
    assert "$(xsrc_find _senlin-api)" is_file
}
@test 'more_src has _senlin-engine' {
    assert "$(xsrc_find _senlin-engine)" is_file
}
@test 'more_src has _senlin-manage' {
    assert "$(xsrc_find _senlin-manage)" is_file
}
@test 'more_src has _senlin-status' {
    assert "$(xsrc_find _senlin-status)" is_file
}
@test 'more_src has _sensors-applet' {
    assert "$(xsrc_find _sensors-applet)" is_file
}
@test 'more_src has _sentinel' {
    assert "$(xsrc_find _sentinel)" is_file
}
@test 'more_src has _sento' {
    assert "$(xsrc_find _sento)" is_file
}
@test 'more_src has _sentry-cli' {
    assert "$(xsrc_find _sentry-cli)" is_file
}
@test 'more_src has _sentry-server' {
    assert "$(xsrc_find _sentry-server)" is_file
}
@test 'more_src has _seq24' {
    assert "$(xsrc_find _seq24)" is_file
}
@test 'more_src has _seq66' {
    assert "$(xsrc_find _seq66)" is_file
}
@test 'more_src has _seqcount' {
    assert "$(xsrc_find _seqcount)" is_file
}
@test 'more_src has _seqkit' {
    assert "$(xsrc_find _seqkit)" is_file
}
@test 'more_src has _seqmatchall' {
    assert "$(xsrc_find _seqmatchall)" is_file
}
@test 'more_src has _seqret' {
    assert "$(xsrc_find _seqret)" is_file
}
@test 'more_src has _seqretsplit' {
    assert "$(xsrc_find _seqretsplit)" is_file
}
@test 'more_src has _seqtk' {
    assert "$(xsrc_find _seqtk)" is_file
}
@test 'more_src has _sequin' {
    assert "$(xsrc_find _sequin)" is_file
}
@test 'more_src has _sequoia-sq' {
    assert "$(xsrc_find _sequoia-sq)" is_file
}
@test 'more_src has _seqxref' {
    assert "$(xsrc_find _seqxref)" is_file
}
@test 'more_src has _seqxrefget' {
    assert "$(xsrc_find _seqxrefget)" is_file
}
@test 'more_src has _serie' {
    assert "$(xsrc_find _serie)" is_file
}
@test 'more_src has _serpl' {
    assert "$(xsrc_find _serpl)" is_file
}
@test 'more_src has _server-setup' {
    assert "$(xsrc_find _server-setup)" is_file
}
@test 'more_src has _serverless' {
    assert "$(xsrc_find _serverless)" is_file
}
@test 'more_src has _servertell' {
    assert "$(xsrc_find _servertell)" is_file
}
@test 'more_src has _sesh' {
    assert "$(xsrc_find _sesh)" is_file
}
@test 'more_src has _session-desktop' {
    assert "$(xsrc_find _session-desktop)" is_file
}
@test 'more_src has _sessionguard' {
    assert "$(xsrc_find _sessionguard)" is_file
}
@test 'more_src has _setlock' {
    assert "$(xsrc_find _setlock)" is_file
}
@test 'more_src has _setools' {
    assert "$(xsrc_find _setools)" is_file
}
@test 'more_src has _setsebool' {
    assert "$(xsrc_find _setsebool)" is_file
}
@test 'more_src has _settle' {
    assert "$(xsrc_find _settle)" is_file
}
@test 'more_src has _setuidgid' {
    assert "$(xsrc_find _setuidgid)" is_file
}
@test 'more_src has _sfddiff' {
    assert "$(xsrc_find _sfddiff)" is_file
}
@test 'more_src has _sfdx' {
    assert "$(xsrc_find _sfdx)" is_file
}
@test 'more_src has _sfnt2woff-zopfli' {
    assert "$(xsrc_find _sfnt2woff-zopfli)" is_file
}
@test 'more_src has _sfopen' {
    assert "$(xsrc_find _sfopen)" is_file
}
@test 'more_src has _sgminer' {
    assert "$(xsrc_find _sgminer)" is_file
}
@test 'more_src has _sgpt' {
    assert "$(xsrc_find _sgpt)" is_file
}
@test 'more_src has _sgrsh' {
    assert "$(xsrc_find _sgrsh)" is_file
}
@test 'more_src has _sh4d0wup' {
    assert "$(xsrc_find _sh4d0wup)" is_file
}
@test 'more_src has _sha-tarkistin.sh' {
    assert "$(xsrc_find _sha-tarkistin.sh)" is_file
}
@test 'more_src has _sha512deep' {
    assert "$(xsrc_find _sha512deep)" is_file
}
@test 'more_src has _shadcn' {
    assert "$(xsrc_find _shadcn)" is_file
}
@test 'more_src has _shadow' {
    assert "$(xsrc_find _shadow)" is_file
}
@test 'more_src has _shadowforge' {
    assert "$(xsrc_find _shadowforge)" is_file
}
@test 'more_src has _shai-scan' {
    assert "$(xsrc_find _shai-scan)" is_file
}
@test 'more_src has _shark-cli' {
    assert "$(xsrc_find _shark-cli)" is_file
}
@test 'more_src has _sheets' {
    assert "$(xsrc_find _sheets)" is_file
}
@test 'more_src has _sheldon' {
    assert "$(xsrc_find _sheldon)" is_file
}
@test 'more_src has _shell-genie' {
    assert "$(xsrc_find _shell-genie)" is_file
}
@test 'more_src has _shell2http' {
    assert "$(xsrc_find _shell2http)" is_file
}
@test 'more_src has _shellharden' {
    assert "$(xsrc_find _shellharden)" is_file
}
@test 'more_src has _shellspec' {
    assert "$(xsrc_find _shellspec)" is_file
}
@test 'more_src has _sherlock' {
    assert "$(xsrc_find _sherlock)" is_file
}
@test 'more_src has _sherpack' {
    assert "$(xsrc_find _sherpack)" is_file
}
@test 'more_src has _shh' {
    assert "$(xsrc_find _shh)" is_file
}
@test 'more_src has _shifter' {
    assert "$(xsrc_find _shifter)" is_file
}
@test 'more_src has _shifterimg' {
    assert "$(xsrc_find _shifterimg)" is_file
}
@test 'more_src has _shk' {
    assert "$(xsrc_find _shk)" is_file
}
@test 'more_src has _shnote' {
    assert "$(xsrc_find _shnote)" is_file
}
@test 'more_src has _shopify' {
    assert "$(xsrc_find _shopify)" is_file
}
@test 'more_src has _shorewall-init' {
    assert "$(xsrc_find _shorewall-init)" is_file
}
@test 'more_src has _shorewall-lite' {
    assert "$(xsrc_find _shorewall-lite)" is_file
}
@test 'more_src has _shorewall6' {
    assert "$(xsrc_find _shorewall6)" is_file
}
@test 'more_src has _shorewall6-lite' {
    assert "$(xsrc_find _shorewall6-lite)" is_file
}
@test 'more_src has _shotcut' {
    assert "$(xsrc_find _shotcut)" is_file
}
@test 'more_src has _shroud' {
    assert "$(xsrc_find _shroud)" is_file
}
@test 'more_src has _shuffleseq' {
    assert "$(xsrc_find _shuffleseq)" is_file
}
@test 'more_src has _sic' {
    assert "$(xsrc_find _sic)" is_file
}
@test 'more_src has _sidecar-injector' {
    assert "$(xsrc_find _sidecar-injector)" is_file
}
@test 'more_src has _sif' {
    assert "$(xsrc_find _sif)" is_file
}
@test 'more_src has _sif-info' {
    assert "$(xsrc_find _sif-info)" is_file
}
@test 'more_src has _sigcleave' {
    assert "$(xsrc_find _sigcleave)" is_file
}
@test 'more_src has _sigil' {
    assert "$(xsrc_find _sigil)" is_file
}
@test 'more_src has _signal-cli' {
    assert "$(xsrc_find _signal-cli)" is_file
}
@test 'more_src has _signal-desktop' {
    assert "$(xsrc_find _signal-desktop)" is_file
}
@test 'more_src has _signify-openbsd' {
    assert "$(xsrc_find _signify-openbsd)" is_file
}
@test 'more_src has _silent' {
    assert "$(xsrc_find _silent)" is_file
}
@test 'more_src has _silicon' {
    assert "$(xsrc_find _silicon)" is_file
}
@test 'more_src has _simg2img' {
    assert "$(xsrc_find _simg2img)" is_file
}
@test 'more_src has _simh' {
    assert "$(xsrc_find _simh)" is_file
}
@test 'more_src has _simpleFoam' {
    assert "$(xsrc_find _simpleFoam)" is_file
}
@test 'more_src has _simplescreenrecorder' {
    assert "$(xsrc_find _simplescreenrecorder)" is_file
}
@test 'more_src has _simplifyify' {
    assert "$(xsrc_find _simplifyify)" is_file
}
@test 'more_src has _sirna' {
    assert "$(xsrc_find _sirna)" is_file
}
@test 'more_src has _sixpack' {
    assert "$(xsrc_find _sixpack)" is_file
}
@test 'more_src has _sizelint' {
    assert "$(xsrc_find _sizelint)" is_file
}
@test 'more_src has _sizeseq' {
    assert "$(xsrc_find _sizeseq)" is_file
}
@test 'more_src has _sjeng' {
    assert "$(xsrc_find _sjeng)" is_file
}
@test 'more_src has _sjstat' {
    assert "$(xsrc_find _sjstat)" is_file
}
@test 'more_src has _sk' {
    assert "$(xsrc_find _sk)" is_file
}
@test 'more_src has _skaffold' {
    assert "$(xsrc_find _skaffold)" is_file
}
@test 'more_src has _skate' {
    assert "$(xsrc_find _skate)" is_file
}
@test 'more_src has _skhd' {
    assert "$(xsrc_find _skhd)" is_file
}
@test 'more_src has _skills' {
    assert "$(xsrc_find _skills)" is_file
}
@test 'more_src has _skills-ref' {
    assert "$(xsrc_find _skills-ref)" is_file
}
@test 'more_src has _skillshare' {
    assert "$(xsrc_find _skillshare)" is_file
}
@test 'more_src has _skim' {
    assert "$(xsrc_find _skim)" is_file
}
@test 'more_src has _skip' {
    assert "$(xsrc_find _skip)" is_file
}
@test 'more_src has _skipper' {
    assert "$(xsrc_find _skipper)" is_file
}
@test 'more_src has _skipredundant' {
    assert "$(xsrc_find _skipredundant)" is_file
}
@test 'more_src has _skipseq' {
    assert "$(xsrc_find _skipseq)" is_file
}
@test 'more_src has _skopeo' {
    assert "$(xsrc_find _skopeo)" is_file
}
@test 'more_src has _skrooge' {
    assert "$(xsrc_find _skrooge)" is_file
}
@test 'more_src has _skupper' {
    assert "$(xsrc_find _skupper)" is_file
}
@test 'more_src has _skytable' {
    assert "$(xsrc_find _skytable)" is_file
}
@test 'more_src has _slackpkg' {
    assert "$(xsrc_find _slackpkg)" is_file
}
@test 'more_src has _slade' {
    assert "$(xsrc_find _slade)" is_file
}
@test 'more_src has _slides' {
    assert "$(xsrc_find _slides)" is_file
}
@test 'more_src has _slimg' {
    assert "$(xsrc_find _slimg)" is_file
}
@test 'more_src has _slint' {
    assert "$(xsrc_find _slint)" is_file
}
@test 'more_src has _slipd' {
    assert "$(xsrc_find _slipd)" is_file
}
@test 'more_src has _sliver-client' {
    assert "$(xsrc_find _sliver-client)" is_file
}
@test 'more_src has _sloc' {
    assert "$(xsrc_find _sloc)" is_file
}
@test 'more_src has _sloccount' {
    assert "$(xsrc_find _sloccount)" is_file
}
@test 'more_src has _sloppy' {
    assert "$(xsrc_find _sloppy)" is_file
}
@test 'more_src has _sloth' {
    assert "$(xsrc_find _sloth)" is_file
}
@test 'more_src has _slpkg' {
    assert "$(xsrc_find _slpkg)" is_file
}
@test 'more_src has _slurmrestd' {
    assert "$(xsrc_find _slurmrestd)" is_file
}
@test 'more_src has _slurp' {
    assert "$(xsrc_find _slurp)" is_file
}
@test 'more_src has _smart-sudo.zsh' {
    assert "$(xsrc_find _smart-sudo.zsh)" is_file
}
@test 'more_src has _smartdns' {
    assert "$(xsrc_find _smartdns)" is_file
}
@test 'more_src has _smartlog' {
    assert "$(xsrc_find _smartlog)" is_file
}
@test 'more_src has _smbios-battery-ctl' {
    assert "$(xsrc_find _smbios-battery-ctl)" is_file
}
@test 'more_src has _smbios-keyboard-ctl' {
    assert "$(xsrc_find _smbios-keyboard-ctl)" is_file
}
@test 'more_src has _smbios-passwd' {
    assert "$(xsrc_find _smbios-passwd)" is_file
}
@test 'more_src has _smbios-sys-info' {
    assert "$(xsrc_find _smbios-sys-info)" is_file
}
@test 'more_src has _smbios-thermal-ctl' {
    assert "$(xsrc_find _smbios-thermal-ctl)" is_file
}
@test 'more_src has _smbios-token-ctl' {
    assert "$(xsrc_find _smbios-token-ctl)" is_file
}
@test 'more_src has _smbios-upflag-ctl' {
    assert "$(xsrc_find _smbios-upflag-ctl)" is_file
}
@test 'more_src has _smbios-wakeup-ctl' {
    assert "$(xsrc_find _smbios-wakeup-ctl)" is_file
}
@test 'more_src has _smbiosdump' {
    assert "$(xsrc_find _smbiosdump)" is_file
}
@test 'more_src has _smbprint' {
    assert "$(xsrc_find _smbprint)" is_file
}
@test 'more_src has _smbspool' {
    assert "$(xsrc_find _smbspool)" is_file
}
@test 'more_src has _smemstat' {
    assert "$(xsrc_find _smemstat)" is_file
}
@test 'more_src has _smhkd' {
    assert "$(xsrc_find _smhkd)" is_file
}
@test 'more_src has _sml' {
    assert "$(xsrc_find _sml)" is_file
}
@test 'more_src has _smlnj' {
    assert "$(xsrc_find _smlnj)" is_file
}
@test 'more_src has _smolagent' {
    assert "$(xsrc_find _smolagent)" is_file
}
@test 'more_src has _smtpctl' {
    assert "$(xsrc_find _smtpctl)" is_file
}
@test 'more_src has _smug' {
    assert "$(xsrc_find _smug)" is_file
}
@test 'more_src has _smyrna' {
    assert "$(xsrc_find _smyrna)" is_file
}
@test 'more_src has _snakefmt' {
    assert "$(xsrc_find _snakefmt)" is_file
}
@test 'more_src has _snakemake' {
    assert "$(xsrc_find _snakemake)" is_file
}
@test 'more_src has _snapclient' {
    assert "$(xsrc_find _snapclient)" is_file
}
@test 'more_src has _snapcraft' {
    assert "$(xsrc_find _snapcraft)" is_file
}
@test 'more_src has _snaplet' {
    assert "$(xsrc_find _snaplet)" is_file
}
@test 'more_src has _snapper-cleanup' {
    assert "$(xsrc_find _snapper-cleanup)" is_file
}
@test 'more_src has _snapper-config' {
    assert "$(xsrc_find _snapper-config)" is_file
}
@test 'more_src has _snappyHexMesh' {
    assert "$(xsrc_find _snappyHexMesh)" is_file
}
@test 'more_src has _snapserver' {
    assert "$(xsrc_find _snapserver)" is_file
}
@test 'more_src has _snarkos' {
    assert "$(xsrc_find _snarkos)" is_file
}
@test 'more_src has _snazy' {
    assert "$(xsrc_find _snazy)" is_file
}
@test 'more_src has _sndfile-cmp' {
    assert "$(xsrc_find _sndfile-cmp)" is_file
}
@test 'more_src has _sndfile-concat' {
    assert "$(xsrc_find _sndfile-concat)" is_file
}
@test 'more_src has _sndfile-deinterleave' {
    assert "$(xsrc_find _sndfile-deinterleave)" is_file
}
@test 'more_src has _sndfile-info' {
    assert "$(xsrc_find _sndfile-info)" is_file
}
@test 'more_src has _sndfile-interleave' {
    assert "$(xsrc_find _sndfile-interleave)" is_file
}
@test 'more_src has _sndfile-jackplay' {
    assert "$(xsrc_find _sndfile-jackplay)" is_file
}
@test 'more_src has _sndfile-mix-to-mono' {
    assert "$(xsrc_find _sndfile-mix-to-mono)" is_file
}
@test 'more_src has _sndfile-play' {
    assert "$(xsrc_find _sndfile-play)" is_file
}
@test 'more_src has _sndfile-resample' {
    assert "$(xsrc_find _sndfile-resample)" is_file
}
@test 'more_src has _sndfile-salvage' {
    assert "$(xsrc_find _sndfile-salvage)" is_file
}
@test 'more_src has _snes9x' {
    assert "$(xsrc_find _snes9x)" is_file
}
@test 'more_src has _sniffglue' {
    assert "$(xsrc_find _sniffglue)" is_file
}
@test 'more_src has _sniffit' {
    assert "$(xsrc_find _sniffit)" is_file
}
@test 'more_src has _sniffnet' {
    assert "$(xsrc_find _sniffnet)" is_file
}
@test 'more_src has _sniprun' {
    assert "$(xsrc_find _sniprun)" is_file
}
@test 'more_src has _snort2' {
    assert "$(xsrc_find _snort2)" is_file
}
@test 'more_src has _snort3' {
    assert "$(xsrc_find _snort3)" is_file
}
@test 'more_src has _snort_inline' {
    assert "$(xsrc_find _snort_inline)" is_file
}
@test 'more_src has _snortsam' {
    assert "$(xsrc_find _snortsam)" is_file
}
@test 'more_src has _snouty' {
    assert "$(xsrc_find _snouty)" is_file
}
@test 'more_src has _snowflake-broker' {
    assert "$(xsrc_find _snowflake-broker)" is_file
}
@test 'more_src has _snowflake-client' {
    assert "$(xsrc_find _snowflake-client)" is_file
}
@test 'more_src has _snowflake-proxy' {
    assert "$(xsrc_find _snowflake-proxy)" is_file
}
@test 'more_src has _snowpack' {
    assert "$(xsrc_find _snowpack)" is_file
}
@test 'more_src has _snyk' {
    assert "$(xsrc_find _snyk)" is_file
}
@test 'more_src has _so' {
    assert "$(xsrc_find _so)" is_file
}
@test 'more_src has _sodipodi' {
    assert "$(xsrc_find _sodipodi)" is_file
}
@test 'more_src has _soft-serve' {
    assert "$(xsrc_find _soft-serve)" is_file
}
@test 'more_src has _softhsm-bin' {
    assert "$(xsrc_find _softhsm-bin)" is_file
}
@test 'more_src has _softlimit' {
    assert "$(xsrc_find _softlimit)" is_file
}
@test 'more_src has _soju' {
    assert "$(xsrc_find _soju)" is_file
}
@test 'more_src has _solana' {
    assert "$(xsrc_find _solana)" is_file
}
@test 'more_src has _solc-select' {
    assert "$(xsrc_find _solc-select)" is_file
}
@test 'more_src has _solr-zkcli' {
    assert "$(xsrc_find _solr-zkcli)" is_file
}
@test 'more_src has _solum-api' {
    assert "$(xsrc_find _solum-api)" is_file
}
@test 'more_src has _solum-conductor' {
    assert "$(xsrc_find _solum-conductor)" is_file
}
@test 'more_src has _solum-deployer' {
    assert "$(xsrc_find _solum-deployer)" is_file
}
@test 'more_src has _solum-worker' {
    assert "$(xsrc_find _solum-worker)" is_file
}
@test 'more_src has _solv' {
    assert "$(xsrc_find _solv)" is_file
}
@test 'more_src has _somo' {
    assert "$(xsrc_find _somo)" is_file
}
@test 'more_src has _sonar-scanner' {
    assert "$(xsrc_find _sonar-scanner)" is_file
}
@test 'more_src has _sonobuoy' {
    assert "$(xsrc_find _sonobuoy)" is_file
}
@test 'more_src has _sooperlooper' {
    assert "$(xsrc_find _sooperlooper)" is_file
}
@test 'more_src has _sops' {
    assert "$(xsrc_find _sops)" is_file
}
@test 'more_src has _sound-recorder' {
    assert "$(xsrc_find _sound-recorder)" is_file
}
@test 'more_src has _sourcekit-lsp' {
    assert "$(xsrc_find _sourcekit-lsp)" is_file
}
@test 'more_src has _sourcekitten' {
    assert "$(xsrc_find _sourcekitten)" is_file
}
@test 'more_src has _spacecmd' {
    assert "$(xsrc_find _spacecmd)" is_file
}
@test 'more_src has _spacemacs' {
    assert "$(xsrc_find _spacemacs)" is_file
}
@test 'more_src has _spacer' {
    assert "$(xsrc_find _spacer)" is_file
}
@test 'more_src has _spack' {
    assert "$(xsrc_find _spack)" is_file
}
@test 'more_src has _spades' {
    assert "$(xsrc_find _spades)" is_file
}
@test 'more_src has _spamass-milter' {
    assert "$(xsrc_find _spamass-milter)" is_file
}
@test 'more_src has _spamd' {
    assert "$(xsrc_find _spamd)" is_file
}
@test 'more_src has _spamdyke' {
    assert "$(xsrc_find _spamdyke)" is_file
}
@test 'more_src has _spampd' {
    assert "$(xsrc_find _spampd)" is_file
}
@test 'more_src has _spamprobe' {
    assert "$(xsrc_find _spamprobe)" is_file
}
@test 'more_src has _spark' {
    assert "$(xsrc_find _spark)" is_file
}
@test 'more_src has _spatialite_dem' {
    assert "$(xsrc_find _spatialite_dem)" is_file
}
@test 'more_src has _spatialite_gml' {
    assert "$(xsrc_find _spatialite_gml)" is_file
}
@test 'more_src has _spatialite_network' {
    assert "$(xsrc_find _spatialite_network)" is_file
}
@test 'more_src has _spatialite_osm' {
    assert "$(xsrc_find _spatialite_osm)" is_file
}
@test 'more_src has _spatialite_tool' {
    assert "$(xsrc_find _spatialite_tool)" is_file
}
@test 'more_src has _spatialite_xml2sql' {
    assert "$(xsrc_find _spatialite_xml2sql)" is_file
}
@test 'more_src has _spec' {
    assert "$(xsrc_find _spec)" is_file
}
@test 'more_src has _spec-driver' {
    assert "$(xsrc_find _spec-driver)" is_file
}
@test 'more_src has _spectral' {
    assert "$(xsrc_find _spectral)" is_file
}
@test 'more_src has _spice-html5' {
    assert "$(xsrc_find _spice-html5)" is_file
}
@test 'more_src has _spicedb' {
    assert "$(xsrc_find _spicedb)" is_file
}
@test 'more_src has _spin' {
    assert "$(xsrc_find _spin)" is_file
}
@test 'more_src has _spiped' {
    assert "$(xsrc_find _spiped)" is_file
}
@test 'more_src has _spirv-cross' {
    assert "$(xsrc_find _spirv-cross)" is_file
}
@test 'more_src has _spirv-link' {
    assert "$(xsrc_find _spirv-link)" is_file
}
@test 'more_src has _splain' {
    assert "$(xsrc_find _splain)" is_file
}
@test 'more_src has _splitter' {
    assert "$(xsrc_find _splitter)" is_file
}
@test 'more_src has _spool' {
    assert "$(xsrc_find _spool)" is_file
}
@test 'more_src has _spop' {
    assert "$(xsrc_find _spop)" is_file
}
@test 'more_src has _spot' {
    assert "$(xsrc_find _spot)" is_file
}
@test 'more_src has _spot-secrets' {
    assert "$(xsrc_find _spot-secrets)" is_file
}
@test 'more_src has _spotify-cli' {
    assert "$(xsrc_find _spotify-cli)" is_file
}
@test 'more_src has _spotlighter' {
    assert "$(xsrc_find _spotlighter)" is_file
}
@test 'more_src has _spreet' {
    assert "$(xsrc_find _spreet)" is_file
}
@test 'more_src has _springlobby' {
    assert "$(xsrc_find _springlobby)" is_file
}
@test 'more_src has _springrts' {
    assert "$(xsrc_find _springrts)" is_file
}
@test 'more_src has _sprocket' {
    assert "$(xsrc_find _sprocket)" is_file
}
@test 'more_src has _spytrap-adb' {
    assert "$(xsrc_find _spytrap-adb)" is_file
}
@test 'more_src has _sq' {
    assert "$(xsrc_find _sq)" is_file
}
@test 'more_src has _sq-git' {
    assert "$(xsrc_find _sq-git)" is_file
}
@test 'more_src has _sq-wot' {
    assert "$(xsrc_find _sq-wot)" is_file
}
@test 'more_src has _sqitch' {
    assert "$(xsrc_find _sqitch)" is_file
}
@test 'more_src has _sql-splitter' {
    assert "$(xsrc_find _sql-splitter)" is_file
}
@test 'more_src has _sql2csv' {
    assert "$(xsrc_find _sql2csv)" is_file
}
@test 'more_src has _sqlc' {
    assert "$(xsrc_find _sqlc)" is_file
}
@test 'more_src has _sqlectron' {
    assert "$(xsrc_find _sqlectron)" is_file
}
@test 'more_src has _sqlfluff' {
    assert "$(xsrc_find _sqlfluff)" is_file
}
@test 'more_src has _sqlite-ftvs' {
    assert "$(xsrc_find _sqlite-ftvs)" is_file
}
@test 'more_src has _sqlite-utils' {
    assert "$(xsrc_find _sqlite-utils)" is_file
}
@test 'more_src has _sqlite-web' {
    assert "$(xsrc_find _sqlite-web)" is_file
}
@test 'more_src has _sqlite3mysql' {
    assert "$(xsrc_find _sqlite3mysql)" is_file
}
@test 'more_src has _sqlite3rsync' {
    assert "$(xsrc_find _sqlite3rsync)" is_file
}
@test 'more_src has _sqlitebiter' {
    assert "$(xsrc_find _sqlitebiter)" is_file
}
@test 'more_src has _sqlitestudio' {
    assert "$(xsrc_find _sqlitestudio)" is_file
}
@test 'more_src has _sqlx' {
    assert "$(xsrc_find _sqlx)" is_file
}
@test 'more_src has _sqop' {
    assert "$(xsrc_find _sqop)" is_file
}
@test 'more_src has _sqopv' {
    assert "$(xsrc_find _sqopv)" is_file
}
@test 'more_src has _squeekboard' {
    assert "$(xsrc_find _squeekboard)" is_file
}
@test 'more_src has _squishy' {
    assert "$(xsrc_find _squishy)" is_file
}
@test 'more_src has _sqv' {
    assert "$(xsrc_find _sqv)" is_file
}
@test 'more_src has _srain' {
    assert "$(xsrc_find _srain)" is_file
}
@test 'more_src has _srcwalk' {
    assert "$(xsrc_find _srcwalk)" is_file
}
@test 'more_src has _srec_cat' {
    assert "$(xsrc_find _srec_cat)" is_file
}
@test 'more_src has _srec_cmp' {
    assert "$(xsrc_find _srec_cmp)" is_file
}
@test 'more_src has _srec_info' {
    assert "$(xsrc_find _srec_info)" is_file
}
@test 'more_src has _sriov-cni' {
    assert "$(xsrc_find _sriov-cni)" is_file
}
@test 'more_src has _srt-tunnel' {
    assert "$(xsrc_find _srt-tunnel)" is_file
}
@test 'more_src has _ssacli' {
    assert "$(xsrc_find _ssacli)" is_file
}
@test 'more_src has _ssaducli' {
    assert "$(xsrc_find _ssaducli)" is_file
}
@test 'more_src has _sscli' {
    assert "$(xsrc_find _sscli)" is_file
}
@test 'more_src has _ssconvert' {
    assert "$(xsrc_find _ssconvert)" is_file
}
@test 'more_src has _ssdeep-update' {
    assert "$(xsrc_find _ssdeep-update)" is_file
}
@test 'more_src has _sserver' {
    assert "$(xsrc_find _sserver)" is_file
}
@test 'more_src has _ssh-audit' {
    assert "$(xsrc_find _ssh-audit)" is_file
}
@test 'more_src has _ssh-cli' {
    assert "$(xsrc_find _ssh-cli)" is_file
}
@test 'more_src has _ssh-host-config' {
    assert "$(xsrc_find _ssh-host-config)" is_file
}
@test 'more_src has _ssh-kube-gcloud' {
    assert "$(xsrc_find _ssh-kube-gcloud)" is_file
}
@test 'more_src has _ssh3' {
    assert "$(xsrc_find _ssh3)" is_file
}
@test 'more_src has _sshch' {
    assert "$(xsrc_find _sshch)" is_file
}
@test 'more_src has _sshuttle' {
    assert "$(xsrc_find _sshuttle)" is_file
}
@test 'more_src has _ssl-opt.sh' {
    assert "$(xsrc_find _ssl-opt.sh)" is_file
}
@test 'more_src has _sss_debuglevel' {
    assert "$(xsrc_find _sss_debuglevel)" is_file
}
@test 'more_src has _sss_groupadd' {
    assert "$(xsrc_find _sss_groupadd)" is_file
}
@test 'more_src has _sss_obfuscate' {
    assert "$(xsrc_find _sss_obfuscate)" is_file
}
@test 'more_src has _sss_override' {
    assert "$(xsrc_find _sss_override)" is_file
}
@test 'more_src has _sss_useradd' {
    assert "$(xsrc_find _sss_useradd)" is_file
}
@test 'more_src has _sstable2json' {
    assert "$(xsrc_find _sstable2json)" is_file
}
@test 'more_src has _sstablekeys' {
    assert "$(xsrc_find _sstablekeys)" is_file
}
@test 'more_src has _st' {
    assert "$(xsrc_find _st)" is_file
}
@test 'more_src has _st-link' {
    assert "$(xsrc_find _st-link)" is_file
}
@test 'more_src has _st-trace' {
    assert "$(xsrc_find _st-trace)" is_file
}
@test 'more_src has _stack' {
    assert "$(xsrc_find _stack)" is_file
}
@test 'more_src has _stack2nix' {
    assert "$(xsrc_find _stack2nix)" is_file
}
@test 'more_src has _stage' {
    assert "$(xsrc_find _stage)" is_file
}
@test 'more_src has _stakk' {
    assert "$(xsrc_find _stakk)" is_file
}
@test 'more_src has _stalin' {
    assert "$(xsrc_find _stalin)" is_file
}
@test 'more_src has _stan-server' {
    assert "$(xsrc_find _stan-server)" is_file
}
@test 'more_src has _stap-prep' {
    assert "$(xsrc_find _stap-prep)" is_file
}
@test 'more_src has _stap-report' {
    assert "$(xsrc_find _stap-report)" is_file
}
@test 'more_src has _stapio' {
    assert "$(xsrc_find _stapio)" is_file
}
@test 'more_src has _starboard' {
    assert "$(xsrc_find _starboard)" is_file
}
@test 'more_src has _stargazer' {
    assert "$(xsrc_find _stargazer)" is_file
}
@test 'more_src has _starlark' {
    assert "$(xsrc_find _starlark)" is_file
}
@test 'more_src has _starman' {
    assert "$(xsrc_find _starman)" is_file
}
@test 'more_src has _starpls' {
    assert "$(xsrc_find _starpls)" is_file
}
@test 'more_src has _start_server' {
    assert "$(xsrc_find _start_server)" is_file
}
@test 'more_src has _starweft' {
    assert "$(xsrc_find _starweft)" is_file
}
@test 'more_src has _stateset' {
    assert "$(xsrc_find _stateset)" is_file
}
@test 'more_src has _staticcheck' {
    assert "$(xsrc_find _staticcheck)" is_file
}
@test 'more_src has _staticd' {
    assert "$(xsrc_find _staticd)" is_file
}
@test 'more_src has _statikapi' {
    assert "$(xsrc_find _statikapi)" is_file
}
@test 'more_src has _statix' {
    assert "$(xsrc_find _statix)" is_file
}
@test 'more_src has _steampipe' {
    assert "$(xsrc_find _steampipe)" is_file
}
@test 'more_src has _steer' {
    assert "$(xsrc_find _steer)" is_file
}
@test 'more_src has _stegseek' {
    assert "$(xsrc_find _stegseek)" is_file
}
@test 'more_src has _stella' {
    assert "$(xsrc_find _stella)" is_file
}
@test 'more_src has _stellar-xdr' {
    assert "$(xsrc_find _stellar-xdr)" is_file
}
@test 'more_src has _stellarium' {
    assert "$(xsrc_find _stellarium)" is_file
}
@test 'more_src has _step' {
    assert "$(xsrc_find _step)" is_file
}
@test 'more_src has _stepci' {
    assert "$(xsrc_find _stepci)" is_file
}
@test 'more_src has _stern' {
    assert "$(xsrc_find _stern)" is_file
}
@test 'more_src has _stevedore' {
    assert "$(xsrc_find _stevedore)" is_file
}
@test 'more_src has _stew' {
    assert "$(xsrc_find _stew)" is_file
}
@test 'more_src has _stg' {
    assert "$(xsrc_find _stg)" is_file
}
@test 'more_src has _sti' {
    assert "$(xsrc_find _sti)" is_file
}
@test 'more_src has _stmflasher' {
    assert "$(xsrc_find _stmflasher)" is_file
}
@test 'more_src has _stockfish' {
    assert "$(xsrc_find _stockfish)" is_file
}
@test 'more_src has _stonith_admin' {
    assert "$(xsrc_find _stonith_admin)" is_file
}
@test 'more_src has _storagectl' {
    assert "$(xsrc_find _storagectl)" is_file
}
@test 'more_src has _storcli' {
    assert "$(xsrc_find _storcli)" is_file
}
@test 'more_src has _storcli64' {
    assert "$(xsrc_find _storcli64)" is_file
}
@test 'more_src has _storj' {
    assert "$(xsrc_find _storj)" is_file
}
@test 'more_src has _stork' {
    assert "$(xsrc_find _stork)" is_file
}
@test 'more_src has _storybook' {
    assert "$(xsrc_find _storybook)" is_file
}
@test 'more_src has _stratoshark' {
    assert "$(xsrc_find _stratoshark)" is_file
}
@test 'more_src has _streamlabs-obs' {
    assert "$(xsrc_find _streamlabs-obs)" is_file
}
@test 'more_src has _streamlink' {
    assert "$(xsrc_find _streamlink)" is_file
}
@test 'more_src has _strelka2' {
    assert "$(xsrc_find _strelka2)" is_file
}
@test 'more_src has _strerror' {
    assert "$(xsrc_find _strerror)" is_file
}
@test 'more_src has _stress' {
    assert "$(xsrc_find _stress)" is_file
}
@test 'more_src has _stress-ng' {
    assert "$(xsrc_find _stress-ng)" is_file
}
@test 'more_src has _stressapptest' {
    assert "$(xsrc_find _stressapptest)" is_file
}
@test 'more_src has _stretcher' {
    assert "$(xsrc_find _stretcher)" is_file
}
@test 'more_src has _stretchpuzzle' {
    assert "$(xsrc_find _stretchpuzzle)" is_file
}
@test 'more_src has _strimzi' {
    assert "$(xsrc_find _strimzi)" is_file
}
@test 'more_src has _stringtie' {
    assert "$(xsrc_find _stringtie)" is_file
}
@test 'more_src has _strip-ansi' {
    assert "$(xsrc_find _strip-ansi)" is_file
}
@test 'more_src has _stripe' {
    assert "$(xsrc_find _stripe)" is_file
}
@test 'more_src has _stssearch' {
    assert "$(xsrc_find _stssearch)" is_file
}
@test 'more_src has _sttr' {
    assert "$(xsrc_find _sttr)" is_file
}
@test 'more_src has _stubby' {
    assert "$(xsrc_find _stubby)" is_file
}
@test 'more_src has _studio' {
    assert "$(xsrc_find _studio)" is_file
}
@test 'more_src has _stunnel5' {
    assert "$(xsrc_find _stunnel5)" is_file
}
@test 'more_src has _stylelint' {
    assert "$(xsrc_find _stylelint)" is_file
}
@test 'more_src has _stylua' {
    assert "$(xsrc_find _stylua)" is_file
}
@test 'more_src has _subctl' {
    assert "$(xsrc_find _subctl)" is_file
}
@test 'more_src has _subfinder' {
    assert "$(xsrc_find _subfinder)" is_file
}
@test 'more_src has _subrepo' {
    assert "$(xsrc_find _subrepo)" is_file
}
@test 'more_src has _substrate-node' {
    assert "$(xsrc_find _substrate-node)" is_file
}
@test 'more_src has _subsync' {
    assert "$(xsrc_find _subsync)" is_file
}
@test 'more_src has _sui' {
    assert "$(xsrc_find _sui)" is_file
}
@test 'more_src has _sumo-collector' {
    assert "$(xsrc_find _sumo-collector)" is_file
}
@test 'more_src has _sumo-otel-distro' {
    assert "$(xsrc_find _sumo-otel-distro)" is_file
}
@test 'more_src has _sup.zsh' {
    assert "$(xsrc_find _sup.zsh)" is_file
}
@test 'more_src has _supabase' {
    assert "$(xsrc_find _supabase)" is_file
}
@test 'more_src has _superagent' {
    assert "$(xsrc_find _superagent)" is_file
}
@test 'more_src has _superagent-cli' {
    assert "$(xsrc_find _superagent-cli)" is_file
}
@test 'more_src has _supercollider' {
    assert "$(xsrc_find _supercollider)" is_file
}
@test 'more_src has _superctl' {
    assert "$(xsrc_find _superctl)" is_file
}
@test 'more_src has _superfile' {
    assert "$(xsrc_find _superfile)" is_file
}
@test 'more_src has _supermatcher' {
    assert "$(xsrc_find _supermatcher)" is_file
}
@test 'more_src has _supersigil' {
    assert "$(xsrc_find _supersigil)" is_file
}
@test 'more_src has _supersurkhet' {
    assert "$(xsrc_find _supersurkhet)" is_file
}
@test 'more_src has _supertux' {
    assert "$(xsrc_find _supertux)" is_file
}
@test 'more_src has _supertuxkart' {
    assert "$(xsrc_find _supertuxkart)" is_file
}
@test 'more_src has _supervise' {
    assert "$(xsrc_find _supervise)" is_file
}
@test 'more_src has _supp' {
    assert "$(xsrc_find _supp)" is_file
}
@test 'more_src has _supplyscan' {
    assert "$(xsrc_find _supplyscan)" is_file
}
@test 'more_src has _surface' {
    assert "$(xsrc_find _surface)" is_file
}
@test 'more_src has _surge-xt' {
    assert "$(xsrc_find _surge-xt)" is_file
}
@test 'more_src has _suricata' {
    assert "$(xsrc_find _suricata)" is_file
}
@test 'more_src has _suricata-update' {
    assert "$(xsrc_find _suricata-update)" is_file
}
@test 'more_src has _suricatactl' {
    assert "$(xsrc_find _suricatactl)" is_file
}
@test 'more_src has _suricatasc' {
    assert "$(xsrc_find _suricatasc)" is_file
}
@test 'more_src has _surreal' {
    assert "$(xsrc_find _surreal)" is_file
}
@test 'more_src has _sv' {
    assert "$(xsrc_find _sv)" is_file
}
@test 'more_src has _svbump' {
    assert "$(xsrc_find _svbump)" is_file
}
@test 'more_src has _svc' {
    assert "$(xsrc_find _svc)" is_file
}
@test 'more_src has _svdrpsend' {
    assert "$(xsrc_find _svdrpsend)" is_file
}
@test 'more_src has _svelte-create' {
    assert "$(xsrc_find _svelte-create)" is_file
}
@test 'more_src has _svgcleaner' {
    assert "$(xsrc_find _svgcleaner)" is_file
}
@test 'more_src has _svgexport' {
    assert "$(xsrc_find _svgexport)" is_file
}
@test 'more_src has _svgo' {
    assert "$(xsrc_find _svgo)" is_file
}
@test 'more_src has _svgr' {
    assert "$(xsrc_find _svgr)" is_file
}
@test 'more_src has _sview' {
    assert "$(xsrc_find _sview)" is_file
}
@test 'more_src has _svlc' {
    assert "$(xsrc_find _svlc)" is_file
}
@test 'more_src has _svlint' {
    assert "$(xsrc_find _svlint)" is_file
}
@test 'more_src has _svnbench' {
    assert "$(xsrc_find _svnbench)" is_file
}
@test 'more_src has _svndumpfilter' {
    assert "$(xsrc_find _svndumpfilter)" is_file
}
@test 'more_src has _svnfsfs' {
    assert "$(xsrc_find _svnfsfs)" is_file
}
@test 'more_src has _svnlook' {
    assert "$(xsrc_find _svnlook)" is_file
}
@test 'more_src has _svnrdump' {
    assert "$(xsrc_find _svnrdump)" is_file
}
@test 'more_src has _svnsync' {
    assert "$(xsrc_find _svnsync)" is_file
}
@test 'more_src has _svscan' {
    assert "$(xsrc_find _svscan)" is_file
}
@test 'more_src has _svstat' {
    assert "$(xsrc_find _svstat)" is_file
}
@test 'more_src has _svtplay-dl' {
    assert "$(xsrc_find _svtplay-dl)" is_file
}
@test 'more_src has _svu' {
    assert "$(xsrc_find _svu)" is_file
}
@test 'more_src has _swag' {
    assert "$(xsrc_find _swag)" is_file
}
@test 'more_src has _swarm-code' {
    assert "$(xsrc_find _swarm-code)" is_file
}
@test 'more_src has _swarms' {
    assert "$(xsrc_find _swarms)" is_file
}
@test 'more_src has _swarmskills' {
    assert "$(xsrc_find _swarmskills)" is_file
}
@test 'more_src has _swaymsg' {
    assert "$(xsrc_find _swaymsg)" is_file
}
@test 'more_src has _swc' {
    assert "$(xsrc_find _swc)" is_file
}
@test 'more_src has _sweagent' {
    assert "$(xsrc_find _sweagent)" is_file
}
@test 'more_src has _sweep-cli' {
    assert "$(xsrc_find _sweep-cli)" is_file
}
@test 'more_src has _sweepai' {
    assert "$(xsrc_find _sweepai)" is_file
}
@test 'more_src has _sweepai-cli' {
    assert "$(xsrc_find _sweepai-cli)" is_file
}
@test 'more_src has _swift-account-auditor' {
    assert "$(xsrc_find _swift-account-auditor)" is_file
}
@test 'more_src has _swift-account-info' {
    assert "$(xsrc_find _swift-account-info)" is_file
}
@test 'more_src has _swift-account-reaper' {
    assert "$(xsrc_find _swift-account-reaper)" is_file
}
@test 'more_src has _swift-account-replicator' {
    assert "$(xsrc_find _swift-account-replicator)" is_file
}
@test 'more_src has _swift-account-server' {
    assert "$(xsrc_find _swift-account-server)" is_file
}
@test 'more_src has _swift-container-auditor' {
    assert "$(xsrc_find _swift-container-auditor)" is_file
}
@test 'more_src has _swift-container-info' {
    assert "$(xsrc_find _swift-container-info)" is_file
}
@test 'more_src has _swift-container-replicator' {
    assert "$(xsrc_find _swift-container-replicator)" is_file
}
@test 'more_src has _swift-container-server' {
    assert "$(xsrc_find _swift-container-server)" is_file
}
@test 'more_src has _swift-container-sharder' {
    assert "$(xsrc_find _swift-container-sharder)" is_file
}
@test 'more_src has _swift-container-sync' {
    assert "$(xsrc_find _swift-container-sync)" is_file
}
@test 'more_src has _swift-container-updater' {
    assert "$(xsrc_find _swift-container-updater)" is_file
}
@test 'more_src has _swift-dispersion-report' {
    assert "$(xsrc_find _swift-dispersion-report)" is_file
}
@test 'more_src has _swift-drive-audit' {
    assert "$(xsrc_find _swift-drive-audit)" is_file
}
@test 'more_src has _swift-get-nodes' {
    assert "$(xsrc_find _swift-get-nodes)" is_file
}
@test 'more_src has _swift-init' {
    assert "$(xsrc_find _swift-init)" is_file
}
@test 'more_src has _swift-object-auditor' {
    assert "$(xsrc_find _swift-object-auditor)" is_file
}
@test 'more_src has _swift-object-expirer' {
    assert "$(xsrc_find _swift-object-expirer)" is_file
}
@test 'more_src has _swift-object-info' {
    assert "$(xsrc_find _swift-object-info)" is_file
}
@test 'more_src has _swift-object-replicator' {
    assert "$(xsrc_find _swift-object-replicator)" is_file
}
@test 'more_src has _swift-object-server' {
    assert "$(xsrc_find _swift-object-server)" is_file
}
@test 'more_src has _swift-object-updater' {
    assert "$(xsrc_find _swift-object-updater)" is_file
}
@test 'more_src has _swift-proxy-server' {
    assert "$(xsrc_find _swift-proxy-server)" is_file
}
@test 'more_src has _swift-recon' {
    assert "$(xsrc_find _swift-recon)" is_file
}
@test 'more_src has _swift-ring-builder' {
    assert "$(xsrc_find _swift-ring-builder)" is_file
}
@test 'more_src has _swift-section' {
    assert "$(xsrc_find _swift-section)" is_file
}
@test 'more_src has _switch' {
    assert "$(xsrc_find _switch)" is_file
}
@test 'more_src has _sxiv' {
    assert "$(xsrc_find _sxiv)" is_file
}
@test 'more_src has _syco' {
    assert "$(xsrc_find _syco)" is_file
}
@test 'more_src has _syft' {
    assert "$(xsrc_find _syft)" is_file
}
@test 'more_src has _sylpheed' {
    assert "$(xsrc_find _sylpheed)" is_file
}
@test 'more_src has _synadm' {
    assert "$(xsrc_find _synadm)" is_file
}
@test 'more_src has _synctex' {
    assert "$(xsrc_find _synctex)" is_file
}
@test 'more_src has _syncthing' {
    assert "$(xsrc_find _syncthing)" is_file
}
@test 'more_src has _syncthing-discosrv' {
    assert "$(xsrc_find _syncthing-discosrv)" is_file
}
@test 'more_src has _syncthing-relaysrv' {
    assert "$(xsrc_find _syncthing-relaysrv)" is_file
}
@test 'more_src has _synergy' {
    assert "$(xsrc_find _synergy)" is_file
}
@test 'more_src has _synergyc' {
    assert "$(xsrc_find _synergyc)" is_file
}
@test 'more_src has _synergys' {
    assert "$(xsrc_find _synergys)" is_file
}
@test 'more_src has _sysdig' {
    assert "$(xsrc_find _sysdig)" is_file
}
@test 'more_src has _syslinux-common' {
    assert "$(xsrc_find _syslinux-common)" is_file
}
@test 'more_src has _syslinux-utils' {
    assert "$(xsrc_find _syslinux-utils)" is_file
}
@test 'more_src has _systemd-bootchart' {
    assert "$(xsrc_find _systemd-bootchart)" is_file
}
@test 'more_src has _systemd-coredump' {
    assert "$(xsrc_find _systemd-coredump)" is_file
}
@test 'more_src has _systemd-journal-gatewayd' {
    assert "$(xsrc_find _systemd-journal-gatewayd)" is_file
}
@test 'more_src has _systemd-journal-remote' {
    assert "$(xsrc_find _systemd-journal-remote)" is_file
}
@test 'more_src has _systemd-journal-upload' {
    assert "$(xsrc_find _systemd-journal-upload)" is_file
}
@test 'more_src has _systemd-network-generator' {
    assert "$(xsrc_find _systemd-network-generator)" is_file
}
@test 'more_src has _systemd-sysinstall' {
    assert "$(xsrc_find _systemd-sysinstall)" is_file
}
@test 'more_src has _systemextensionsctl' {
    assert "$(xsrc_find _systemextensionsctl)" is_file
}
@test 'more_src has _systemsettings' {
    assert "$(xsrc_find _systemsettings)" is_file
}
@test 'more_src has _systemsettings5' {
    assert "$(xsrc_find _systemsettings5)" is_file
}
@test 'more_src has _systemsettings6' {
    assert "$(xsrc_find _systemsettings6)" is_file
}
@test 'more_src has _systeroid' {
    assert "$(xsrc_find _systeroid)" is_file
}
@test 'more_src has _t-coffee' {
    assert "$(xsrc_find _t-coffee)" is_file
}
@test 'more_src has _t-rec' {
    assert "$(xsrc_find _t-rec)" is_file
}
@test 'more_src has _t2' {
    assert "$(xsrc_find _t2)" is_file
}
@test 'more_src has _t3code' {
    assert "$(xsrc_find _t3code)" is_file
}
@test 'more_src has _tab' {
    assert "$(xsrc_find _tab)" is_file
}
@test 'more_src has _tabby-cli' {
    assert "$(xsrc_find _tabby-cli)" is_file
}
@test 'more_src has _tacker-conductor' {
    assert "$(xsrc_find _tacker-conductor)" is_file
}
@test 'more_src has _tacker-db-manage' {
    assert "$(xsrc_find _tacker-db-manage)" is_file
}
@test 'more_src has _tacker-server' {
    assert "$(xsrc_find _tacker-server)" is_file
}
@test 'more_src has _tailscale' {
    assert "$(xsrc_find _tailscale)" is_file
}
@test 'more_src has _takt' {
    assert "$(xsrc_find _takt)" is_file
}
@test 'more_src has _talisman' {
    assert "$(xsrc_find _talisman)" is_file
}
@test 'more_src has _tally' {
    assert "$(xsrc_find _tally)" is_file
}
@test 'more_src has _talosctl' {
    assert "$(xsrc_find _talosctl)" is_file
}
@test 'more_src has _tang' {
    assert "$(xsrc_find _tang)" is_file
}
@test 'more_src has _tang-show-keys' {
    assert "$(xsrc_find _tang-show-keys)" is_file
}
@test 'more_src has _tangd' {
    assert "$(xsrc_find _tangd)" is_file
}
@test 'more_src has _tanka' {
    assert "$(xsrc_find _tanka)" is_file
}
@test 'more_src has _tanstack' {
    assert "$(xsrc_find _tanstack)" is_file
}
@test 'more_src has _tanzu' {
    assert "$(xsrc_find _tanzu)" is_file
}
@test 'more_src has _taplo' {
    assert "$(xsrc_find _taplo)" is_file
}
@test 'more_src has _targetcli' {
    assert "$(xsrc_find _targetcli)" is_file
}
@test 'more_src has _targetcli-fb' {
    assert "$(xsrc_find _targetcli-fb)" is_file
}
@test 'more_src has _tarn' {
    assert "$(xsrc_find _tarn)" is_file
}
@test 'more_src has _tarsnap' {
    assert "$(xsrc_find _tarsnap)" is_file
}
@test 'more_src has _tart' {
    assert "$(xsrc_find _tart)" is_file
}
@test 'more_src has _task' {
    assert "$(xsrc_find _task)" is_file
}
@test 'more_src has _task-master' {
    assert "$(xsrc_find _task-master)" is_file
}
@test 'more_src has _task-master-ai' {
    assert "$(xsrc_find _task-master-ai)" is_file
}
@test 'more_src has _task-master-mcp' {
    assert "$(xsrc_find _task-master-mcp)" is_file
}
@test 'more_src has _taskadmin' {
    assert "$(xsrc_find _taskadmin)" is_file
}
@test 'more_src has _taskell' {
    assert "$(xsrc_find _taskell)" is_file
}
@test 'more_src has _taskfile' {
    assert "$(xsrc_find _taskfile)" is_file
}
@test 'more_src has _taskflow' {
    assert "$(xsrc_find _taskflow)" is_file
}
@test 'more_src has _taskinfo' {
    assert "$(xsrc_find _taskinfo)" is_file
}
@test 'more_src has _taskopen' {
    assert "$(xsrc_find _taskopen)" is_file
}
@test 'more_src has _taskpaper' {
    assert "$(xsrc_find _taskpaper)" is_file
}
@test 'more_src has _taskwarrior-tui' {
    assert "$(xsrc_find _taskwarrior-tui)" is_file
}
@test 'more_src has _taskweaver' {
    assert "$(xsrc_find _taskweaver)" is_file
}
@test 'more_src has _tasm' {
    assert "$(xsrc_find _tasm)" is_file
}
@test 'more_src has _tattoy' {
    assert "$(xsrc_find _tattoy)" is_file
}
@test 'more_src has _tavily' {
    assert "$(xsrc_find _tavily)" is_file
}
@test 'more_src has _tavily-cli' {
    assert "$(xsrc_find _tavily-cli)" is_file
}
@test 'more_src has _tawiza' {
    assert "$(xsrc_find _tawiza)" is_file
}
@test 'more_src has _taws' {
    assert "$(xsrc_find _taws)" is_file
}
@test 'more_src has _taxget' {
    assert "$(xsrc_find _taxget)" is_file
}
@test 'more_src has _taxgetdown' {
    assert "$(xsrc_find _taxgetdown)" is_file
}
@test 'more_src has _taxgetrank' {
    assert "$(xsrc_find _taxgetrank)" is_file
}
@test 'more_src has _taxgetspecies' {
    assert "$(xsrc_find _taxgetspecies)" is_file
}
@test 'more_src has _taxgetup' {
    assert "$(xsrc_find _taxgetup)" is_file
}
@test 'more_src has _tazpkg' {
    assert "$(xsrc_find _tazpkg)" is_file
}
@test 'more_src has _tbdflow' {
    assert "$(xsrc_find _tbdflow)" is_file
}
@test 'more_src has _tblastn' {
    assert "$(xsrc_find _tblastn)" is_file
}
@test 'more_src has _tblastx' {
    assert "$(xsrc_find _tblastx)" is_file
}
@test 'more_src has _tbot' {
    assert "$(xsrc_find _tbot)" is_file
}
@test 'more_src has _tbsm' {
    assert "$(xsrc_find _tbsm)" is_file
}
@test 'more_src has _tccutil' {
    assert "$(xsrc_find _tccutil)" is_file
}
@test 'more_src has _tcld' {
    assert "$(xsrc_find _tcld)" is_file
}
@test 'more_src has _tcli' {
    assert "$(xsrc_find _tcli)" is_file
}
@test 'more_src has _tclkit' {
    assert "$(xsrc_find _tclkit)" is_file
}
@test 'more_src has _tclock' {
    assert "$(xsrc_find _tclock)" is_file
}
@test 'more_src has _tclsh' {
    assert "$(xsrc_find _tclsh)" is_file
}
@test 'more_src has _tcode' {
    assert "$(xsrc_find _tcode)" is_file
}
@test 'more_src has _tcoffee' {
    assert "$(xsrc_find _tcoffee)" is_file
}
@test 'more_src has _tcplay' {
    assert "$(xsrc_find _tcplay)" is_file
}
@test 'more_src has _tctl' {
    assert "$(xsrc_find _tctl)" is_file
}
@test 'more_src has _td-agent-bit' {
    assert "$(xsrc_find _td-agent-bit)" is_file
}
@test 'more_src has _tdbrestore' {
    assert "$(xsrc_find _tdbrestore)" is_file
}
@test 'more_src has _tdbtune' {
    assert "$(xsrc_find _tdbtune)" is_file
}
@test 'more_src has _tdl' {
    assert "$(xsrc_find _tdl)" is_file
}
@test 'more_src has _tdns-mgr' {
    assert "$(xsrc_find _tdns-mgr)" is_file
}
@test 'more_src has _tea' {
    assert "$(xsrc_find _tea)" is_file
}
@test 'more_src has _tealdeer' {
    assert "$(xsrc_find _tealdeer)" is_file
}
@test 'more_src has _teamtype' {
    assert "$(xsrc_find _teamtype)" is_file
}
@test 'more_src has _tec.zsh' {
    assert "$(xsrc_find _tec.zsh)" is_file
}
@test 'more_src has _tectonic' {
    assert "$(xsrc_find _tectonic)" is_file
}
@test 'more_src has _ted' {
    assert "$(xsrc_find _ted)" is_file
}
@test 'more_src has _teensy-loader' {
    assert "$(xsrc_find _teensy-loader)" is_file
}
@test 'more_src has _teensy_loader_cli' {
    assert "$(xsrc_find _teensy_loader_cli)" is_file
}
@test 'more_src has _teeworlds' {
    assert "$(xsrc_find _teeworlds)" is_file
}
@test 'more_src has _tegrarcm' {
    assert "$(xsrc_find _tegrarcm)" is_file
}
@test 'more_src has _teip' {
    assert "$(xsrc_find _teip)" is_file
}
@test 'more_src has _tekhton' {
    assert "$(xsrc_find _tekhton)" is_file
}
@test 'more_src has _tekton-cli' {
    assert "$(xsrc_find _tekton-cli)" is_file
}
@test 'more_src has _telegraf' {
    assert "$(xsrc_find _telegraf)" is_file
}
@test 'more_src has _teleport-event-handler' {
    assert "$(xsrc_find _teleport-event-handler)" is_file
}
@test 'more_src has _telepresence' {
    assert "$(xsrc_find _telepresence)" is_file
}
@test 'more_src has _teller' {
    assert "$(xsrc_find _teller)" is_file
}
@test 'more_src has _tellico' {
    assert "$(xsrc_find _tellico)" is_file
}
@test 'more_src has _templ' {
    assert "$(xsrc_find _templ)" is_file
}
@test 'more_src has _tempo-cli' {
    assert "$(xsrc_find _tempo-cli)" is_file
}
@test 'more_src has _tempo-vulture' {
    assert "$(xsrc_find _tempo-vulture)" is_file
}
@test 'more_src has _temporal' {
    assert "$(xsrc_find _temporal)" is_file
}
@test 'more_src has _temporal-cli' {
    assert "$(xsrc_find _temporal-cli)" is_file
}
@test 'more_src has _tempurai' {
    assert "$(xsrc_find _tempurai)" is_file
}
@test 'more_src has _tensor-tools' {
    assert "$(xsrc_find _tensor-tools)" is_file
}
@test 'more_src has _termdown' {
    assert "$(xsrc_find _termdown)" is_file
}
@test 'more_src has _termgraph' {
    assert "$(xsrc_find _termgraph)" is_file
}
@test 'more_src has _terminai' {
    assert "$(xsrc_find _terminai)" is_file
}
@test 'more_src has _terminal-notifier' {
    assert "$(xsrc_find _terminal-notifier)" is_file
}
@test 'more_src has _terminator' {
    assert "$(xsrc_find _terminator)" is_file
}
@test 'more_src has _terminitor' {
    assert "$(xsrc_find _terminitor)" is_file
}
@test 'more_src has _terminix' {
    assert "$(xsrc_find _terminix)" is_file
}
@test 'more_src has _termpulse' {
    assert "$(xsrc_find _termpulse)" is_file
}
@test 'more_src has _termscp' {
    assert "$(xsrc_find _termscp)" is_file
}
@test 'more_src has _termshark' {
    assert "$(xsrc_find _termshark)" is_file
}
@test 'more_src has _termshot' {
    assert "$(xsrc_find _termshot)" is_file
}
@test 'more_src has _termtosvg' {
    assert "$(xsrc_find _termtosvg)" is_file
}
@test 'more_src has _tern' {
    assert "$(xsrc_find _tern)" is_file
}
@test 'more_src has _terraform-ls' {
    assert "$(xsrc_find _terraform-ls)" is_file
}
@test 'more_src has _terragrunt' {
    assert "$(xsrc_find _terragrunt)" is_file
}
@test 'more_src has _terramate' {
    assert "$(xsrc_find _terramate)" is_file
}
@test 'more_src has _terrascan' {
    assert "$(xsrc_find _terrascan)" is_file
}
@test 'more_src has _tersify' {
    assert "$(xsrc_find _tersify)" is_file
}
@test 'more_src has _testdisk' {
    assert "$(xsrc_find _testdisk)" is_file
}
@test 'more_src has _testkube' {
    assert "$(xsrc_find _testkube)" is_file
}
@test 'more_src has _tex2lyx' {
    assert "$(xsrc_find _tex2lyx)" is_file
}
@test 'more_src has _tex4ht' {
    assert "$(xsrc_find _tex4ht)" is_file
}
@test 'more_src has _texlab' {
    assert "$(xsrc_find _texlab)" is_file
}
@test 'more_src has _texloganalyser' {
    assert "$(xsrc_find _texloganalyser)" is_file
}
@test 'more_src has _texmaker' {
    assert "$(xsrc_find _texmaker)" is_file
}
@test 'more_src has _texplate' {
    assert "$(xsrc_find _texplate)" is_file
}
@test 'more_src has _texstudio' {
    assert "$(xsrc_find _texstudio)" is_file
}
@test 'more_src has _text-generation-server' {
    assert "$(xsrc_find _text-generation-server)" is_file
}
@test 'more_src has _textget' {
    assert "$(xsrc_find _textget)" is_file
}
@test 'more_src has _textimg' {
    assert "$(xsrc_find _textimg)" is_file
}
@test 'more_src has _textosaurus' {
    assert "$(xsrc_find _textosaurus)" is_file
}
@test 'more_src has _textql' {
    assert "$(xsrc_find _textql)" is_file
}
@test 'more_src has _textsearch' {
    assert "$(xsrc_find _textsearch)" is_file
}
@test 'more_src has _teyjus' {
    assert "$(xsrc_find _teyjus)" is_file
}
@test 'more_src has _tf' {
    assert "$(xsrc_find _tf)" is_file
}
@test 'more_src has _tf-a-tools' {
    assert "$(xsrc_find _tf-a-tools)" is_file
}
@test 'more_src has _tf2onnx' {
    assert "$(xsrc_find _tf2onnx)" is_file
}
@test 'more_src has _tfenv' {
    assert "$(xsrc_find _tfenv)" is_file
}
@test 'more_src has _tfextract' {
    assert "$(xsrc_find _tfextract)" is_file
}
@test 'more_src has _tflint' {
    assert "$(xsrc_find _tflint)" is_file
}
@test 'more_src has _tflite_convert' {
    assert "$(xsrc_find _tflite_convert)" is_file
}
@test 'more_src has _tfm' {
    assert "$(xsrc_find _tfm)" is_file
}
@test 'more_src has _tfm2afm' {
    assert "$(xsrc_find _tfm2afm)" is_file
}
@test 'more_src has _tfscan' {
    assert "$(xsrc_find _tfscan)" is_file
}
@test 'more_src has _tfsec' {
    assert "$(xsrc_find _tfsec)" is_file
}
@test 'more_src has _tfswitch' {
    assert "$(xsrc_find _tfswitch)" is_file
}
@test 'more_src has _tftpd-hpa' {
    assert "$(xsrc_find _tftpd-hpa)" is_file
}
@test 'more_src has _tgenv' {
    assert "$(xsrc_find _tgenv)" is_file
}
@test 'more_src has _tgpt' {
    assert "$(xsrc_find _tgpt)" is_file
}
@test 'more_src has _tgswitch' {
    assert "$(xsrc_find _tgswitch)" is_file
}
@test 'more_src has _tgt-admin' {
    assert "$(xsrc_find _tgt-admin)" is_file
}
@test 'more_src has _tgtadm' {
    assert "$(xsrc_find _tgtadm)" is_file
}
@test 'more_src has _tgtd' {
    assert "$(xsrc_find _tgtd)" is_file
}
@test 'more_src has _tgtimg' {
    assert "$(xsrc_find _tgtimg)" is_file
}
@test 'more_src has _tgzd' {
    assert "$(xsrc_find _tgzd)" is_file
}
@test 'more_src has _thanos' {
    assert "$(xsrc_find _thanos)" is_file
}
@test 'more_src has _the_silver_searcher' {
    assert "$(xsrc_find _the_silver_searcher)" is_file
}
@test 'more_src has _thedarkmod' {
    assert "$(xsrc_find _thedarkmod)" is_file
}
@test 'more_src has _thelounge' {
    assert "$(xsrc_find _thelounge)" is_file
}
@test 'more_src has _themeify' {
    assert "$(xsrc_find _themeify)" is_file
}
@test 'more_src has _thin_migrate' {
    assert "$(xsrc_find _thin_migrate)" is_file
}
@test 'more_src has _thin_show_duplicates' {
    assert "$(xsrc_find _thin_show_duplicates)" is_file
}
@test 'more_src has _thinkfan' {
    assert "$(xsrc_find _thinkfan)" is_file
}
@test 'more_src has _thirdweb-cli' {
    assert "$(xsrc_find _thirdweb-cli)" is_file
}
@test 'more_src has _thonny' {
    assert "$(xsrc_find _thonny)" is_file
}
@test 'more_src has _throttle' {
    assert "$(xsrc_find _throttle)" is_file
}
@test 'more_src has _thulp' {
    assert "$(xsrc_find _thulp)" is_file
}
@test 'more_src has _thumper' {
    assert "$(xsrc_find _thumper)" is_file
}
@test 'more_src has _thunar' {
    assert "$(xsrc_find _thunar)" is_file
}
@test 'more_src has _tibet' {
    assert "$(xsrc_find _tibet)" is_file
}
@test 'more_src has _tidb' {
    assert "$(xsrc_find _tidb)" is_file
}
@test 'more_src has _tidy-browser' {
    assert "$(xsrc_find _tidy-browser)" is_file
}
@test 'more_src has _tidyp' {
    assert "$(xsrc_find _tidyp)" is_file
}
@test 'more_src has _tiflash' {
    assert "$(xsrc_find _tiflash)" is_file
}
@test 'more_src has _tigervnc-server' {
    assert "$(xsrc_find _tigervnc-server)" is_file
}
@test 'more_src has _tigervncserver' {
    assert "$(xsrc_find _tigervncserver)" is_file
}
@test 'more_src has _tigervncviewer' {
    assert "$(xsrc_find _tigervncviewer)" is_file
}
@test 'more_src has _tigris-cli' {
    assert "$(xsrc_find _tigris-cli)" is_file
}
@test 'more_src has _tikzedt' {
    assert "$(xsrc_find _tikzedt)" is_file
}
@test 'more_src has _tikzit' {
    assert "$(xsrc_find _tikzit)" is_file
}
@test 'more_src has _tile38' {
    assert "$(xsrc_find _tile38)" is_file
}
@test 'more_src has _tile38-benchmark' {
    assert "$(xsrc_find _tile38-benchmark)" is_file
}
@test 'more_src has _tile38-cli' {
    assert "$(xsrc_find _tile38-cli)" is_file
}
@test 'more_src has _tilemill' {
    assert "$(xsrc_find _tilemill)" is_file
}
@test 'more_src has _tilix' {
    assert "$(xsrc_find _tilix)" is_file
}
@test 'more_src has _timeshift' {
    assert "$(xsrc_find _timeshift)" is_file
}
@test 'more_src has _timetrap' {
    assert "$(xsrc_find _timetrap)" is_file
}
@test 'more_src has _timew' {
    assert "$(xsrc_find _timew)" is_file
}
@test 'more_src has _timewall' {
    assert "$(xsrc_find _timewall)" is_file
}
@test 'more_src has _timg' {
    assert "$(xsrc_find _timg)" is_file
}
@test 'more_src has _timoni' {
    assert "$(xsrc_find _timoni)" is_file
}
@test 'more_src has _tinfo' {
    assert "$(xsrc_find _tinfo)" is_file
}
@test 'more_src has _tinker' {
    assert "$(xsrc_find _tinker)" is_file
}
@test 'more_src has _tinkerforge' {
    assert "$(xsrc_find _tinkerforge)" is_file
}
@test 'more_src has _tint' {
    assert "$(xsrc_find _tint)" is_file
}
@test 'more_src has _tinty' {
    assert "$(xsrc_find _tinty)" is_file
}
@test 'more_src has _tiny-agents' {
    assert "$(xsrc_find _tiny-agents)" is_file
}
@test 'more_src has _tinydns' {
    assert "$(xsrc_find _tinydns)" is_file
}
@test 'more_src has _tinygo' {
    assert "$(xsrc_find _tinygo)" is_file
}
@test 'more_src has _tinyssh' {
    assert "$(xsrc_find _tinyssh)" is_file
}
@test 'more_src has _tinyssh-keygen' {
    assert "$(xsrc_find _tinyssh-keygen)" is_file
}
@test 'more_src has _tiramisu' {
    assert "$(xsrc_find _tiramisu)" is_file
}
@test 'more_src has _tirith' {
    assert "$(xsrc_find _tirith)" is_file
}
@test 'more_src has _tiup' {
    assert "$(xsrc_find _tiup)" is_file
}
@test 'more_src has _tldr' {
    assert "$(xsrc_find _tldr)" is_file
}
@test 'more_src has _tleap' {
    assert "$(xsrc_find _tleap)" is_file
}
@test 'more_src has _tlf' {
    assert "$(xsrc_find _tlf)" is_file
}
@test 'more_src has _tlp-pcilist' {
    assert "$(xsrc_find _tlp-pcilist)" is_file
}
@test 'more_src has _tlp-radio-device' {
    assert "$(xsrc_find _tlp-radio-device)" is_file
}
@test 'more_src has _tlp-rdw' {
    assert "$(xsrc_find _tlp-rdw)" is_file
}
@test 'more_src has _tlp-run-on' {
    assert "$(xsrc_find _tlp-run-on)" is_file
}
@test 'more_src has _tlp-usblist' {
    assert "$(xsrc_find _tlp-usblist)" is_file
}
@test 'more_src has _tlsx' {
    assert "$(xsrc_find _tlsx)" is_file
}
@test 'more_src has _tmap' {
    assert "$(xsrc_find _tmap)" is_file
}
@test 'more_src has _tmate' {
    assert "$(xsrc_find _tmate)" is_file
}
@test 'more_src has _tmplt' {
    assert "$(xsrc_find _tmplt)" is_file
}
@test 'more_src has _tmsu' {
    assert "$(xsrc_find _tmsu)" is_file
}
@test 'more_src has _tmt' {
    assert "$(xsrc_find _tmt)" is_file
}
@test 'more_src has _tmux-cssh' {
    assert "$(xsrc_find _tmux-cssh)" is_file
}
@test 'more_src has _to-html' {
    assert "$(xsrc_find _to-html)" is_file
}
@test 'more_src has _tobs' {
    assert "$(xsrc_find _tobs)" is_file
}
@test 'more_src has _toco' {
    assert "$(xsrc_find _toco)" is_file
}
@test 'more_src has _todo-scan' {
    assert "$(xsrc_find _todo-scan)" is_file
}
@test 'more_src has _todo-txt' {
    assert "$(xsrc_find _todo-txt)" is_file
}
@test 'more_src has _todoist' {
    assert "$(xsrc_find _todoist)" is_file
}
@test 'more_src has _todoke' {
    assert "$(xsrc_find _todoke)" is_file
}
@test 'more_src has _todoman' {
    assert "$(xsrc_find _todoman)" is_file
}
@test 'more_src has _todors' {
    assert "$(xsrc_find _todors)" is_file
}
@test 'more_src has _tofa' {
    assert "$(xsrc_find _tofa)" is_file
}
@test 'more_src has _tofi' {
    assert "$(xsrc_find _tofi)" is_file
}
@test 'more_src has _tofu' {
    assert "$(xsrc_find _tofu)" is_file
}
@test 'more_src has _toga2' {
    assert "$(xsrc_find _toga2)" is_file
}
@test 'more_src has _toggl' {
    assert "$(xsrc_find _toggl)" is_file
}
@test 'more_src has _toggl.zsh' {
    assert "$(xsrc_find _toggl.zsh)" is_file
}
@test 'more_src has _toktrack' {
    assert "$(xsrc_find _toktrack)" is_file
}
@test 'more_src has _tolgee' {
    assert "$(xsrc_find _tolgee)" is_file
}
@test 'more_src has _tolka' {
    assert "$(xsrc_find _tolka)" is_file
}
@test 'more_src has _tom' {
    assert "$(xsrc_find _tom)" is_file
}
@test 'more_src has _tomahawk' {
    assert "$(xsrc_find _tomahawk)" is_file
}
@test 'more_src has _tomat' {
    assert "$(xsrc_find _tomat)" is_file
}
@test 'more_src has _tomb' {
    assert "$(xsrc_find _tomb)" is_file
}
@test 'more_src has _tombi' {
    assert "$(xsrc_find _tombi)" is_file
}
@test 'more_src has _tomcat-init' {
    assert "$(xsrc_find _tomcat-init)" is_file
}
@test 'more_src has _tome2' {
    assert "$(xsrc_find _tome2)" is_file
}
@test 'more_src has _toolame' {
    assert "$(xsrc_find _toolame)" is_file
}
@test 'more_src has _toot' {
    assert "$(xsrc_find _toot)" is_file
}
@test 'more_src has _topgrade' {
    assert "$(xsrc_find _topgrade)" is_file
}
@test 'more_src has _tophat' {
    assert "$(xsrc_find _tophat)" is_file
}
@test 'more_src has _tophat2' {
    assert "$(xsrc_find _tophat2)" is_file
}
@test 'more_src has _topiary' {
    assert "$(xsrc_find _topiary)" is_file
}
@test 'more_src has _topydo' {
    assert "$(xsrc_find _topydo)" is_file
}
@test 'more_src has _torc' {
    assert "$(xsrc_find _torc)" is_file
}
@test 'more_src has _torch-model-archiver' {
    assert "$(xsrc_find _torch-model-archiver)" is_file
}
@test 'more_src has _torcs' {
    assert "$(xsrc_find _torcs)" is_file
}
@test 'more_src has _torify' {
    assert "$(xsrc_find _torify)" is_file
}
@test 'more_src has _torrra' {
    assert "$(xsrc_find _torrra)" is_file
}
@test 'more_src has _totpc.zsh' {
    assert "$(xsrc_find _totpc.zsh)" is_file
}
@test 'more_src has _tower-cli' {
    assert "$(xsrc_find _tower-cli)" is_file
}
@test 'more_src has _toxic' {
    assert "$(xsrc_find _toxic)" is_file
}
@test 'more_src has _tracee' {
    assert "$(xsrc_find _tracee)" is_file
}
@test 'more_src has _tracejob' {
    assert "$(xsrc_find _tracejob)" is_file
}
@test 'more_src has _traceroute-paris' {
    assert "$(xsrc_find _traceroute-paris)" is_file
}
@test 'more_src has _trackma' {
    assert "$(xsrc_find _trackma)" is_file
}
@test 'more_src has _traefik' {
    assert "$(xsrc_find _traefik)" is_file
}
@test 'more_src has _trafficserver' {
    assert "$(xsrc_find _trafficserver)" is_file
}
@test 'more_src has _tranalign' {
    assert "$(xsrc_find _tranalign)" is_file
}
@test 'more_src has _transcrypt' {
    assert "$(xsrc_find _transcrypt)" is_file
}
@test 'more_src has _transeq' {
    assert "$(xsrc_find _transeq)" is_file
}
@test 'more_src has _transfig' {
    assert "$(xsrc_find _transfig)" is_file
}
@test 'more_src has _trash-empty' {
    assert "$(xsrc_find _trash-empty)" is_file
}
@test 'more_src has _trash-list' {
    assert "$(xsrc_find _trash-list)" is_file
}
@test 'more_src has _trash-put' {
    assert "$(xsrc_find _trash-put)" is_file
}
@test 'more_src has _trash-restore' {
    assert "$(xsrc_find _trash-restore)" is_file
}
@test 'more_src has _trash-rm' {
    assert "$(xsrc_find _trash-rm)" is_file
}
@test 'more_src has _travis' {
    assert "$(xsrc_find _travis)" is_file
}
@test 'more_src has _trdsql' {
    assert "$(xsrc_find _trdsql)" is_file
}
@test 'more_src has _tre' {
    assert "$(xsrc_find _tre)" is_file
}
@test 'more_src has _treefmt' {
    assert "$(xsrc_find _treefmt)" is_file
}
@test 'more_src has _trellis' {
    assert "$(xsrc_find _trellis)" is_file
}
@test 'more_src has _tremulous' {
    assert "$(xsrc_find _tremulous)" is_file
}
@test 'more_src has _triage' {
    assert "$(xsrc_find _triage)" is_file
}
@test 'more_src has _trigger' {
    assert "$(xsrc_find _trigger)" is_file
}
@test 'more_src has _trigger-cli' {
    assert "$(xsrc_find _trigger-cli)" is_file
}
@test 'more_src has _trim-galore' {
    assert "$(xsrc_find _trim-galore)" is_file
}
@test 'more_src has _trimest' {
    assert "$(xsrc_find _trimest)" is_file
}
@test 'more_src has _trimforce' {
    assert "$(xsrc_find _trimforce)" is_file
}
@test 'more_src has _trimgalore' {
    assert "$(xsrc_find _trimgalore)" is_file
}
@test 'more_src has _trimmomatic' {
    assert "$(xsrc_find _trimmomatic)" is_file
}
@test 'more_src has _trimseq' {
    assert "$(xsrc_find _trimseq)" is_file
}
@test 'more_src has _trimspace' {
    assert "$(xsrc_find _trimspace)" is_file
}
@test 'more_src has _trippy' {
    assert "$(xsrc_find _trippy)" is_file
}
@test 'more_src has _triton' {
    assert "$(xsrc_find _triton)" is_file
}
@test 'more_src has _triton-inference-server' {
    assert "$(xsrc_find _triton-inference-server)" is_file
}
@test 'more_src has _triton-tui' {
    assert "$(xsrc_find _triton-tui)" is_file
}
@test 'more_src has _tritonserver' {
    assert "$(xsrc_find _tritonserver)" is_file
}
@test 'more_src has _trivy' {
    assert "$(xsrc_find _trivy)" is_file
}
@test 'more_src has _trivy-operator' {
    assert "$(xsrc_find _trivy-operator)" is_file
}
@test 'more_src has _trojita' {
    assert "$(xsrc_find _trojita)" is_file
}
@test 'more_src has _trop-cli' {
    assert "$(xsrc_find _trop-cli)" is_file
}
@test 'more_src has _trove-api' {
    assert "$(xsrc_find _trove-api)" is_file
}
@test 'more_src has _trove-conductor' {
    assert "$(xsrc_find _trove-conductor)" is_file
}
@test 'more_src has _trove-guestagent' {
    assert "$(xsrc_find _trove-guestagent)" is_file
}
@test 'more_src has _trove-manage' {
    assert "$(xsrc_find _trove-manage)" is_file
}
@test 'more_src has _trove-status' {
    assert "$(xsrc_find _trove-status)" is_file
}
@test 'more_src has _trove-taskmanager' {
    assert "$(xsrc_find _trove-taskmanager)" is_file
}
@test 'more_src has _trtexec' {
    assert "$(xsrc_find _trtexec)" is_file
}
@test 'more_src has _trufflehog' {
    assert "$(xsrc_find _trufflehog)" is_file
}
@test 'more_src has _trunk' {
    assert "$(xsrc_find _trunk)" is_file
}
@test 'more_src has _trurl' {
    assert "$(xsrc_find _trurl)" is_file
}
@test 'more_src has _tscribe' {
    assert "$(xsrc_find _tscribe)" is_file
}
@test 'more_src has _tsh' {
    assert "$(xsrc_find _tsh)" is_file
}
@test 'more_src has _tsk' {
    assert "$(xsrc_find _tsk)" is_file
}
@test 'more_src has _tsk_dirstat' {
    assert "$(xsrc_find _tsk_dirstat)" is_file
}
@test 'more_src has _tsocks' {
    assert "$(xsrc_find _tsocks)" is_file
}
@test 'more_src has _tsp' {
    assert "$(xsrc_find _tsp)" is_file
}
@test 'more_src has _tspin' {
    assert "$(xsrc_find _tspin)" is_file
}
@test 'more_src has _tst' {
    assert "$(xsrc_find _tst)" is_file
}
@test 'more_src has _tsup' {
    assert "$(xsrc_find _tsup)" is_file
}
@test 'more_src has _tsup-node' {
    assert "$(xsrc_find _tsup-node)" is_file
}
@test 'more_src has _ttf2pt1' {
    assert "$(xsrc_find _ttf2pt1)" is_file
}
@test 'more_src has _ttf2woff' {
    assert "$(xsrc_find _ttf2woff)" is_file
}
@test 'more_src has _ttf2woff2' {
    assert "$(xsrc_find _ttf2woff2)" is_file
}
@test 'more_src has _ttftodvi' {
    assert "$(xsrc_find _ttftodvi)" is_file
}
@test 'more_src has _ttyd' {
    assert "$(xsrc_find _ttyd)" is_file
}
@test 'more_src has _ttygif' {
    assert "$(xsrc_find _ttygif)" is_file
}
@test 'more_src has _ttyper' {
    assert "$(xsrc_find _ttyper)" is_file
}
@test 'more_src has _ttyplot' {
    assert "$(xsrc_find _ttyplot)" is_file
}
@test 'more_src has _ttypo' {
    assert "$(xsrc_find _ttypo)" is_file
}
@test 'more_src has _tubeup' {
    assert "$(xsrc_find _tubeup)" is_file
}
@test 'more_src has _tuc' {
    assert "$(xsrc_find _tuc)" is_file
}
@test 'more_src has _tugboat' {
    assert "$(xsrc_find _tugboat)" is_file
}
@test 'more_src has _tuigreet' {
    assert "$(xsrc_find _tuigreet)" is_file
}
@test 'more_src has _tuist' {
    assert "$(xsrc_find _tuist)" is_file
}
@test 'more_src has _tuna' {
    assert "$(xsrc_find _tuna)" is_file
}
@test 'more_src has _tuned-gui' {
    assert "$(xsrc_find _tuned-gui)" is_file
}
@test 'more_src has _tunefs.lustre' {
    assert "$(xsrc_find _tunefs.lustre)" is_file
}
@test 'more_src has _tuptime' {
    assert "$(xsrc_find _tuptime)" is_file
}
@test 'more_src has _turbo' {
    assert "$(xsrc_find _turbo)" is_file
}
@test 'more_src has _turborepo' {
    assert "$(xsrc_find _turborepo)" is_file
}
@test 'more_src has _turso' {
    assert "$(xsrc_find _turso)" is_file
}
@test 'more_src has _tusk' {
    assert "$(xsrc_find _tusk)" is_file
}
@test 'more_src has _tux' {
    assert "$(xsrc_find _tux)" is_file
}
@test 'more_src has _tuxmath' {
    assert "$(xsrc_find _tuxmath)" is_file
}
@test 'more_src has _tuxpaint' {
    assert "$(xsrc_find _tuxpaint)" is_file
}
@test 'more_src has _tuxracer' {
    assert "$(xsrc_find _tuxracer)" is_file
}
@test 'more_src has _tuxtype' {
    assert "$(xsrc_find _tuxtype)" is_file
}
@test 'more_src has _tv' {
    assert "$(xsrc_find _tv)" is_file
}
@test 'more_src has _tvheadend' {
    assert "$(xsrc_find _tvheadend)" is_file
}
@test 'more_src has _tvly' {
    assert "$(xsrc_find _tvly)" is_file
}
@test 'more_src has _tvnamer' {
    assert "$(xsrc_find _tvnamer)" is_file
}
@test 'more_src has _tvtime' {
    assert "$(xsrc_find _tvtime)" is_file
}
@test 'more_src has _tw_gtasks_sync' {
    assert "$(xsrc_find _tw_gtasks_sync)" is_file
}
@test 'more_src has _tweak' {
    assert "$(xsrc_find _tweak)" is_file
}
@test 'more_src has _twify' {
    assert "$(xsrc_find _twify)" is_file
}
@test 'more_src has _twint' {
    assert "$(xsrc_find _twint)" is_file
}
@test 'more_src has _twips' {
    assert "$(xsrc_find _twips)" is_file
}
@test 'more_src has _twofeat' {
    assert "$(xsrc_find _twofeat)" is_file
}
@test 'more_src has _twtxt' {
    assert "$(xsrc_find _twtxt)" is_file
}
@test 'more_src has _txt2man' {
    assert "$(xsrc_find _txt2man)" is_file
}
@test 'more_src has _txt2tags' {
    assert "$(xsrc_find _txt2tags)" is_file
}
@test 'more_src has _tyedev' {
    assert "$(xsrc_find _tyedev)" is_file
}
@test 'more_src has _typeshare' {
    assert "$(xsrc_find _typeshare)" is_file
}
@test 'more_src has _typha' {
    assert "$(xsrc_find _typha)" is_file
}
@test 'more_src has _typical' {
    assert "$(xsrc_find _typical)" is_file
}
@test 'more_src has _typos' {
    assert "$(xsrc_find _typos)" is_file
}
@test 'more_src has _typst' {
    assert "$(xsrc_find _typst)" is_file
}
@test 'more_src has _typst-lsp' {
    assert "$(xsrc_find _typst-lsp)" is_file
}
@test 'more_src has _tyrian2000' {
    assert "$(xsrc_find _tyrian2000)" is_file
}
@test 'more_src has _tzdata-update' {
    assert "$(xsrc_find _tzdata-update)" is_file
}
@test 'more_src has _u-boot-mkimage' {
    assert "$(xsrc_find _u-boot-mkimage)" is_file
}
@test 'more_src has _ua' {
    assert "$(xsrc_find _ua)" is_file
}
@test 'more_src has _uacme' {
    assert "$(xsrc_find _uacme)" is_file
}
@test 'more_src has _uair' {
    assert "$(xsrc_find _uair)" is_file
}
@test 'more_src has _uairctl' {
    assert "$(xsrc_find _uairctl)" is_file
}
@test 'more_src has _uasm' {
    assert "$(xsrc_find _uasm)" is_file
}
@test 'more_src has _uberftp' {
    assert "$(xsrc_find _uberftp)" is_file
}
@test 'more_src has _ubi' {
    assert "$(xsrc_find _ubi)" is_file
}
@test 'more_src has _ubt' {
    assert "$(xsrc_find _ubt)" is_file
}
@test 'more_src has _ubxtool' {
    assert "$(xsrc_find _ubxtool)" is_file
}
@test 'more_src has _uci' {
    assert "$(xsrc_find _uci)" is_file
}
@test 'more_src has _ucl-bin' {
    assert "$(xsrc_find _ucl-bin)" is_file
}
@test 'more_src has _ucsm-cli' {
    assert "$(xsrc_find _ucsm-cli)" is_file
}
@test 'more_src has _udiskie-umount' {
    assert "$(xsrc_find _udiskie-umount)" is_file
}
@test 'more_src has _udisks2' {
    assert "$(xsrc_find _udisks2)" is_file
}
@test 'more_src has _udisksd' {
    assert "$(xsrc_find _udisksd)" is_file
}
@test 'more_src has _udp-receiver' {
    assert "$(xsrc_find _udp-receiver)" is_file
}
@test 'more_src has _udp-sender' {
    assert "$(xsrc_find _udp-sender)" is_file
}
@test 'more_src has _udp2raw_mp' {
    assert "$(xsrc_find _udp2raw_mp)" is_file
}
@test 'more_src has _uefi-firmware-parser' {
    assert "$(xsrc_find _uefi-firmware-parser)" is_file
}
@test 'more_src has _uefi-update' {
    assert "$(xsrc_find _uefi-update)" is_file
}
@test 'more_src has _uefitool' {
    assert "$(xsrc_find _uefitool)" is_file
}
@test 'more_src has _ufraw' {
    assert "$(xsrc_find _ufraw)" is_file
}
@test 'more_src has _uftrace' {
    assert "$(xsrc_find _uftrace)" is_file
}
@test 'more_src has _ugit' {
    assert "$(xsrc_find _ugit)" is_file
}
@test 'more_src has _ugrep' {
    assert "$(xsrc_find _ugrep)" is_file
}
@test 'more_src has _ugrep-indexer' {
    assert "$(xsrc_find _ugrep-indexer)" is_file
}
@test 'more_src has _uiautomatorviewer' {
    assert "$(xsrc_find _uiautomatorviewer)" is_file
}
@test 'more_src has _uim-fep' {
    assert "$(xsrc_find _uim-fep)" is_file
}
@test 'more_src has _uim-sh' {
    assert "$(xsrc_find _uim-sh)" is_file
}
@test 'more_src has _uithub' {
    assert "$(xsrc_find _uithub)" is_file
}
@test 'more_src has _uiua' {
    assert "$(xsrc_find _uiua)" is_file
}
@test 'more_src has _ukigumo-agent' {
    assert "$(xsrc_find _ukigumo-agent)" is_file
}
@test 'more_src has _ukigumo-client.pl' {
    assert "$(xsrc_find _ukigumo-client.pl)" is_file
}
@test 'more_src has _ukigumo-server' {
    assert "$(xsrc_find _ukigumo-server)" is_file
}
@test 'more_src has _ultralist' {
    assert "$(xsrc_find _ultralist)" is_file
}
@test 'more_src has _umami' {
    assert "$(xsrc_find _umami)" is_file
}
@test 'more_src has _umb.zsh' {
    assert "$(xsrc_find _umb.zsh)" is_file
}
@test 'more_src has _umount.cifs' {
    assert "$(xsrc_find _umount.cifs)" is_file
}
@test 'more_src has _unar' {
    assert "$(xsrc_find _unar)" is_file
}
@test 'more_src has _unarchive' {
    assert "$(xsrc_find _unarchive)" is_file
}
@test 'more_src has _unfurl' {
    assert "$(xsrc_find _unfurl)" is_file
}
@test 'more_src has _unimatrix' {
    assert "$(xsrc_find _unimatrix)" is_file
}
@test 'more_src has _union' {
    assert "$(xsrc_find _union)" is_file
}
@test 'more_src has _unknown-horizons' {
    assert "$(xsrc_find _unknown-horizons)" is_file
}
@test 'more_src has _unmount_share' {
    assert "$(xsrc_find _unmount_share)" is_file
}
@test 'more_src has _unrealircd' {
    assert "$(xsrc_find _unrealircd)" is_file
}
@test 'more_src has _unrtf' {
    assert "$(xsrc_find _unrtf)" is_file
}
@test 'more_src has _unsloth' {
    assert "$(xsrc_find _unsloth)" is_file
}
@test 'more_src has _unsquashfs4' {
    assert "$(xsrc_find _unsquashfs4)" is_file
}
@test 'more_src has _unstructured' {
    assert "$(xsrc_find _unstructured)" is_file
}
@test 'more_src has _unused' {
    assert "$(xsrc_find _unused)" is_file
}
@test 'more_src has _unvanquished' {
    assert "$(xsrc_find _unvanquished)" is_file
}
@test 'more_src has _upbound' {
    assert "$(xsrc_find _upbound)" is_file
}
@test 'more_src has _upcc' {
    assert "$(xsrc_find _upcc)" is_file
}
@test 'more_src has _upcrun' {
    assert "$(xsrc_find _upcrun)" is_file
}
@test 'more_src has _update-my-stuff' {
    assert "$(xsrc_find _update-my-stuff)" is_file
}
@test 'more_src has _updatecli' {
    assert "$(xsrc_find _updatecli)" is_file
}
@test 'more_src has _uplare' {
    assert "$(xsrc_find _uplare)" is_file
}
@test 'more_src has _upload_theme' {
    assert "$(xsrc_find _upload_theme)" is_file
}
@test 'more_src has _upowerd' {
    assert "$(xsrc_find _upowerd)" is_file
}
@test 'more_src has _upsc' {
    assert "$(xsrc_find _upsc)" is_file
}
@test 'more_src has _upscmd' {
    assert "$(xsrc_find _upscmd)" is_file
}
@test 'more_src has _upsd' {
    assert "$(xsrc_find _upsd)" is_file
}
@test 'more_src has _upsmon' {
    assert "$(xsrc_find _upsmon)" is_file
}
@test 'more_src has _upterm' {
    assert "$(xsrc_find _upterm)" is_file
}
@test 'more_src has _uptrain-add' {
    assert "$(xsrc_find _uptrain-add)" is_file
}
@test 'more_src has _urban-terror' {
    assert "$(xsrc_find _urban-terror)" is_file
}
@test 'more_src has _uri-encode' {
    assert "$(xsrc_find _uri-encode)" is_file
}
@test 'more_src has _urlget' {
    assert "$(xsrc_find _urlget)" is_file
}
@test 'more_src has _urlview' {
    assert "$(xsrc_find _urlview)" is_file
}
@test 'more_src has _urxvt-cli' {
    assert "$(xsrc_find _urxvt-cli)" is_file
}
@test 'more_src has _urxvtcd' {
    assert "$(xsrc_find _urxvtcd)" is_file
}
@test 'more_src has _usacloud' {
    assert "$(xsrc_find _usacloud)" is_file
}
@test 'more_src has _usage' {
    assert "$(xsrc_find _usage)" is_file
}
@test 'more_src has _usbguard' {
    assert "$(xsrc_find _usbguard)" is_file
}
@test 'more_src has _usbguard-applet' {
    assert "$(xsrc_find _usbguard-applet)" is_file
}
@test 'more_src has _usbreset' {
    assert "$(xsrc_find _usbreset)" is_file
}
@test 'more_src has _usbrip' {
    assert "$(xsrc_find _usbrip)" is_file
}
@test 'more_src has _usql' {
    assert "$(xsrc_find _usql)" is_file
}
@test 'more_src has _utwifi' {
    assert "$(xsrc_find _utwifi)" is_file
}
@test 'more_src has _uu-arch' {
    assert "$(xsrc_find _uu-arch)" is_file
}
@test 'more_src has _uu-b2sum' {
    assert "$(xsrc_find _uu-b2sum)" is_file
}
@test 'more_src has _uu-base32' {
    assert "$(xsrc_find _uu-base32)" is_file
}
@test 'more_src has _uu-base64' {
    assert "$(xsrc_find _uu-base64)" is_file
}
@test 'more_src has _uu-basename' {
    assert "$(xsrc_find _uu-basename)" is_file
}
@test 'more_src has _uu-basenc' {
    assert "$(xsrc_find _uu-basenc)" is_file
}
@test 'more_src has _uu-cat' {
    assert "$(xsrc_find _uu-cat)" is_file
}
@test 'more_src has _uu-chgrp' {
    assert "$(xsrc_find _uu-chgrp)" is_file
}
@test 'more_src has _uu-chmod' {
    assert "$(xsrc_find _uu-chmod)" is_file
}
@test 'more_src has _uu-chown' {
    assert "$(xsrc_find _uu-chown)" is_file
}
@test 'more_src has _uu-chroot' {
    assert "$(xsrc_find _uu-chroot)" is_file
}
@test 'more_src has _uu-cksum' {
    assert "$(xsrc_find _uu-cksum)" is_file
}
@test 'more_src has _uu-comm' {
    assert "$(xsrc_find _uu-comm)" is_file
}
@test 'more_src has _uu-coreutils' {
    assert "$(xsrc_find _uu-coreutils)" is_file
}
@test 'more_src has _uu-cp' {
    assert "$(xsrc_find _uu-cp)" is_file
}
@test 'more_src has _uu-csplit' {
    assert "$(xsrc_find _uu-csplit)" is_file
}
@test 'more_src has _uu-cut' {
    assert "$(xsrc_find _uu-cut)" is_file
}
@test 'more_src has _uu-date' {
    assert "$(xsrc_find _uu-date)" is_file
}
@test 'more_src has _uu-dd' {
    assert "$(xsrc_find _uu-dd)" is_file
}
@test 'more_src has _uu-df' {
    assert "$(xsrc_find _uu-df)" is_file
}
@test 'more_src has _uu-dir' {
    assert "$(xsrc_find _uu-dir)" is_file
}
@test 'more_src has _uu-dircolors' {
    assert "$(xsrc_find _uu-dircolors)" is_file
}
@test 'more_src has _uu-dirname' {
    assert "$(xsrc_find _uu-dirname)" is_file
}
@test 'more_src has _uu-du' {
    assert "$(xsrc_find _uu-du)" is_file
}
@test 'more_src has _uu-echo' {
    assert "$(xsrc_find _uu-echo)" is_file
}
@test 'more_src has _uu-env' {
    assert "$(xsrc_find _uu-env)" is_file
}
@test 'more_src has _uu-expand' {
    assert "$(xsrc_find _uu-expand)" is_file
}
@test 'more_src has _uu-expr' {
    assert "$(xsrc_find _uu-expr)" is_file
}
@test 'more_src has _uu-factor' {
    assert "$(xsrc_find _uu-factor)" is_file
}
@test 'more_src has _uu-false' {
    assert "$(xsrc_find _uu-false)" is_file
}
@test 'more_src has _uu-fmt' {
    assert "$(xsrc_find _uu-fmt)" is_file
}
@test 'more_src has _uu-fold' {
    assert "$(xsrc_find _uu-fold)" is_file
}
@test 'more_src has _uu-groups' {
    assert "$(xsrc_find _uu-groups)" is_file
}
@test 'more_src has _uu-head' {
    assert "$(xsrc_find _uu-head)" is_file
}
@test 'more_src has _uu-hostid' {
    assert "$(xsrc_find _uu-hostid)" is_file
}
@test 'more_src has _uu-hostname' {
    assert "$(xsrc_find _uu-hostname)" is_file
}
@test 'more_src has _uu-id' {
    assert "$(xsrc_find _uu-id)" is_file
}
@test 'more_src has _uu-install' {
    assert "$(xsrc_find _uu-install)" is_file
}
@test 'more_src has _uu-join' {
    assert "$(xsrc_find _uu-join)" is_file
}
@test 'more_src has _uu-kill' {
    assert "$(xsrc_find _uu-kill)" is_file
}
@test 'more_src has _uu-link' {
    assert "$(xsrc_find _uu-link)" is_file
}
@test 'more_src has _uu-ln' {
    assert "$(xsrc_find _uu-ln)" is_file
}
@test 'more_src has _uu-logname' {
    assert "$(xsrc_find _uu-logname)" is_file
}
@test 'more_src has _uu-ls' {
    assert "$(xsrc_find _uu-ls)" is_file
}
@test 'more_src has _uu-md5sum' {
    assert "$(xsrc_find _uu-md5sum)" is_file
}
@test 'more_src has _uu-mkdir' {
    assert "$(xsrc_find _uu-mkdir)" is_file
}
@test 'more_src has _uu-mkfifo' {
    assert "$(xsrc_find _uu-mkfifo)" is_file
}
@test 'more_src has _uu-mknod' {
    assert "$(xsrc_find _uu-mknod)" is_file
}
@test 'more_src has _uu-mktemp' {
    assert "$(xsrc_find _uu-mktemp)" is_file
}
@test 'more_src has _uu-more' {
    assert "$(xsrc_find _uu-more)" is_file
}
@test 'more_src has _uu-mv' {
    assert "$(xsrc_find _uu-mv)" is_file
}
@test 'more_src has _uu-nice' {
    assert "$(xsrc_find _uu-nice)" is_file
}
@test 'more_src has _uu-nl' {
    assert "$(xsrc_find _uu-nl)" is_file
}
@test 'more_src has _uu-nohup' {
    assert "$(xsrc_find _uu-nohup)" is_file
}
@test 'more_src has _uu-nproc' {
    assert "$(xsrc_find _uu-nproc)" is_file
}
@test 'more_src has _uu-numfmt' {
    assert "$(xsrc_find _uu-numfmt)" is_file
}
@test 'more_src has _uu-od' {
    assert "$(xsrc_find _uu-od)" is_file
}
@test 'more_src has _uu-paste' {
    assert "$(xsrc_find _uu-paste)" is_file
}
@test 'more_src has _uu-pathchk' {
    assert "$(xsrc_find _uu-pathchk)" is_file
}
@test 'more_src has _uu-pinky' {
    assert "$(xsrc_find _uu-pinky)" is_file
}
@test 'more_src has _uu-pr' {
    assert "$(xsrc_find _uu-pr)" is_file
}
@test 'more_src has _uu-printenv' {
    assert "$(xsrc_find _uu-printenv)" is_file
}
@test 'more_src has _uu-printf' {
    assert "$(xsrc_find _uu-printf)" is_file
}
@test 'more_src has _uu-ptx' {
    assert "$(xsrc_find _uu-ptx)" is_file
}
@test 'more_src has _uu-pwd' {
    assert "$(xsrc_find _uu-pwd)" is_file
}
@test 'more_src has _uu-readlink' {
    assert "$(xsrc_find _uu-readlink)" is_file
}
@test 'more_src has _uu-realpath' {
    assert "$(xsrc_find _uu-realpath)" is_file
}
@test 'more_src has _uu-rm' {
    assert "$(xsrc_find _uu-rm)" is_file
}
@test 'more_src has _uu-rmdir' {
    assert "$(xsrc_find _uu-rmdir)" is_file
}
@test 'more_src has _uu-seq' {
    assert "$(xsrc_find _uu-seq)" is_file
}
@test 'more_src has _uu-sha1sum' {
    assert "$(xsrc_find _uu-sha1sum)" is_file
}
@test 'more_src has _uu-sha224sum' {
    assert "$(xsrc_find _uu-sha224sum)" is_file
}
@test 'more_src has _uu-sha256sum' {
    assert "$(xsrc_find _uu-sha256sum)" is_file
}
@test 'more_src has _uu-sha384sum' {
    assert "$(xsrc_find _uu-sha384sum)" is_file
}
@test 'more_src has _uu-sha512sum' {
    assert "$(xsrc_find _uu-sha512sum)" is_file
}
@test 'more_src has _uu-shred' {
    assert "$(xsrc_find _uu-shred)" is_file
}
@test 'more_src has _uu-shuf' {
    assert "$(xsrc_find _uu-shuf)" is_file
}
@test 'more_src has _uu-sleep' {
    assert "$(xsrc_find _uu-sleep)" is_file
}
@test 'more_src has _uu-sort' {
    assert "$(xsrc_find _uu-sort)" is_file
}
@test 'more_src has _uu-split' {
    assert "$(xsrc_find _uu-split)" is_file
}
@test 'more_src has _uu-stat' {
    assert "$(xsrc_find _uu-stat)" is_file
}
@test 'more_src has _uu-stdbuf' {
    assert "$(xsrc_find _uu-stdbuf)" is_file
}
@test 'more_src has _uu-stty' {
    assert "$(xsrc_find _uu-stty)" is_file
}
@test 'more_src has _uu-sum' {
    assert "$(xsrc_find _uu-sum)" is_file
}
@test 'more_src has _uu-sync' {
    assert "$(xsrc_find _uu-sync)" is_file
}
@test 'more_src has _uu-tac' {
    assert "$(xsrc_find _uu-tac)" is_file
}
@test 'more_src has _uu-tail' {
    assert "$(xsrc_find _uu-tail)" is_file
}
@test 'more_src has _uu-tee' {
    assert "$(xsrc_find _uu-tee)" is_file
}
@test 'more_src has _uu-test' {
    assert "$(xsrc_find _uu-test)" is_file
}
@test 'more_src has _uu-timeout' {
    assert "$(xsrc_find _uu-timeout)" is_file
}
@test 'more_src has _uu-touch' {
    assert "$(xsrc_find _uu-touch)" is_file
}
@test 'more_src has _uu-tr' {
    assert "$(xsrc_find _uu-tr)" is_file
}
@test 'more_src has _uu-true' {
    assert "$(xsrc_find _uu-true)" is_file
}
@test 'more_src has _uu-truncate' {
    assert "$(xsrc_find _uu-truncate)" is_file
}
@test 'more_src has _uu-tsort' {
    assert "$(xsrc_find _uu-tsort)" is_file
}
@test 'more_src has _uu-tty' {
    assert "$(xsrc_find _uu-tty)" is_file
}
@test 'more_src has _uu-uname' {
    assert "$(xsrc_find _uu-uname)" is_file
}
@test 'more_src has _uu-unexpand' {
    assert "$(xsrc_find _uu-unexpand)" is_file
}
@test 'more_src has _uu-uniq' {
    assert "$(xsrc_find _uu-uniq)" is_file
}
@test 'more_src has _uu-unlink' {
    assert "$(xsrc_find _uu-unlink)" is_file
}
@test 'more_src has _uu-uptime' {
    assert "$(xsrc_find _uu-uptime)" is_file
}
@test 'more_src has _uu-users' {
    assert "$(xsrc_find _uu-users)" is_file
}
@test 'more_src has _uu-vdir' {
    assert "$(xsrc_find _uu-vdir)" is_file
}
@test 'more_src has _uu-wc' {
    assert "$(xsrc_find _uu-wc)" is_file
}
@test 'more_src has _uu-who' {
    assert "$(xsrc_find _uu-who)" is_file
}
@test 'more_src has _uu-whoami' {
    assert "$(xsrc_find _uu-whoami)" is_file
}
@test 'more_src has _uu-yes' {
    assert "$(xsrc_find _uu-yes)" is_file
}
@test 'more_src has _uuagc' {
    assert "$(xsrc_find _uuagc)" is_file
}
@test 'more_src has _uub.zsh' {
    assert "$(xsrc_find _uub.zsh)" is_file
}
@test 'more_src has _uwsm' {
    assert "$(xsrc_find _uwsm)" is_file
}
@test 'more_src has _uxn' {
    assert "$(xsrc_find _uxn)" is_file
}
@test 'more_src has _uxnemu' {
    assert "$(xsrc_find _uxnemu)" is_file
}
@test 'more_src has _uxntal' {
    assert "$(xsrc_find _uxntal)" is_file
}
@test 'more_src has _v' {
    assert "$(xsrc_find _v)" is_file
}
@test 'more_src has _v4lctl' {
    assert "$(xsrc_find _v4lctl)" is_file
}
@test 'more_src has _vagrant-box-search' {
    assert "$(xsrc_find _vagrant-box-search)" is_file
}
@test 'more_src has _vale' {
    assert "$(xsrc_find _vale)" is_file
}
@test 'more_src has _valkey-benchmark' {
    assert "$(xsrc_find _valkey-benchmark)" is_file
}
@test 'more_src has _valkey-check-aof' {
    assert "$(xsrc_find _valkey-check-aof)" is_file
}
@test 'more_src has _valkey-check-rdb' {
    assert "$(xsrc_find _valkey-check-rdb)" is_file
}
@test 'more_src has _valkey-cli' {
    assert "$(xsrc_find _valkey-cli)" is_file
}
@test 'more_src has _valkey-sentinel' {
    assert "$(xsrc_find _valkey-sentinel)" is_file
}
@test 'more_src has _vals' {
    assert "$(xsrc_find _vals)" is_file
}
@test 'more_src has _vapor' {
    assert "$(xsrc_find _vapor)" is_file
}
@test 'more_src has _variationget' {
    assert "$(xsrc_find _variationget)" is_file
}
@test 'more_src has _varnishadm' {
    assert "$(xsrc_find _varnishadm)" is_file
}
@test 'more_src has _varnishlog' {
    assert "$(xsrc_find _varnishlog)" is_file
}
@test 'more_src has _varnishstat' {
    assert "$(xsrc_find _varnishstat)" is_file
}
@test 'more_src has _varnishtest' {
    assert "$(xsrc_find _varnishtest)" is_file
}
@test 'more_src has _varnishtop' {
    assert "$(xsrc_find _varnishtop)" is_file
}
@test 'more_src has _vasp' {
    assert "$(xsrc_find _vasp)" is_file
}
@test 'more_src has _vault' {
    assert "$(xsrc_find _vault)" is_file
}
@test 'more_src has _vault-agent' {
    assert "$(xsrc_find _vault-agent)" is_file
}
@test 'more_src has _vault-csi-provider' {
    assert "$(xsrc_find _vault-csi-provider)" is_file
}
@test 'more_src has _vault-tasks-tui' {
    assert "$(xsrc_find _vault-tasks-tui)" is_file
}
@test 'more_src has _vbam' {
    assert "$(xsrc_find _vbam)" is_file
}
@test 'more_src has _vbe-tools' {
    assert "$(xsrc_find _vbe-tools)" is_file
}
@test 'more_src has _vboxautostart' {
    assert "$(xsrc_find _vboxautostart)" is_file
}
@test 'more_src has _vboxballoonctrl' {
    assert "$(xsrc_find _vboxballoonctrl)" is_file
}
@test 'more_src has _vboxdtrace' {
    assert "$(xsrc_find _vboxdtrace)" is_file
}
@test 'more_src has _vboximg-mount' {
    assert "$(xsrc_find _vboximg-mount)" is_file
}
@test 'more_src has _vboxsdl' {
    assert "$(xsrc_find _vboxsdl)" is_file
}
@test 'more_src has _vcfkit' {
    assert "$(xsrc_find _vcfkit)" is_file
}
@test 'more_src has _vcftools' {
    assert "$(xsrc_find _vcftools)" is_file
}
@test 'more_src has _vcfutils.pl' {
    assert "$(xsrc_find _vcfutils.pl)" is_file
}
@test 'more_src has _vcluster' {
    assert "$(xsrc_find _vcluster)" is_file
}
@test 'more_src has _vconfig' {
    assert "$(xsrc_find _vconfig)" is_file
}
@test 'more_src has _vcpkg' {
    assert "$(xsrc_find _vcpkg)" is_file
}
@test 'more_src has _vcsh' {
    assert "$(xsrc_find _vcsh)" is_file
}
@test 'more_src has _vd' {
    assert "$(xsrc_find _vd)" is_file
}
@test 'more_src has _vdirsyncer' {
    assert "$(xsrc_find _vdirsyncer)" is_file
}
@test 'more_src has _vdr' {
    assert "$(xsrc_find _vdr)" is_file
}
@test 'more_src has _vdradmin' {
    assert "$(xsrc_find _vdradmin)" is_file
}
@test 'more_src has _vector' {
    assert "$(xsrc_find _vector)" is_file
}
@test 'more_src has _vector-cli' {
    assert "$(xsrc_find _vector-cli)" is_file
}
@test 'more_src has _vector-tap' {
    assert "$(xsrc_find _vector-tap)" is_file
}
@test 'more_src has _vectorstrip' {
    assert "$(xsrc_find _vectorstrip)" is_file
}
@test 'more_src has _vega' {
    assert "$(xsrc_find _vega)" is_file
}
@test 'more_src has _vegeta' {
    assert "$(xsrc_find _vegeta)" is_file
}
@test 'more_src has _velero' {
    assert "$(xsrc_find _velero)" is_file
}
@test 'more_src has _veles' {
    assert "$(xsrc_find _veles)" is_file
}
@test 'more_src has _velesdb' {
    assert "$(xsrc_find _velesdb)" is_file
}
@test 'more_src has _velox' {
    assert "$(xsrc_find _velox)" is_file
}
@test 'more_src has _vendir' {
    assert "$(xsrc_find _vendir)" is_file
}
@test 'more_src has _venom' {
    assert "$(xsrc_find _venom)" is_file
}
@test 'more_src has _vep' {
    assert "$(xsrc_find _vep)" is_file
}
@test 'more_src has _veracrypt' {
    assert "$(xsrc_find _veracrypt)" is_file
}
@test 'more_src has _vercel' {
    assert "$(xsrc_find _vercel)" is_file
}
@test 'more_src has _verdandi' {
    assert "$(xsrc_find _verdandi)" is_file
}
@test 'more_src has _verg' {
    assert "$(xsrc_find _verg)" is_file
}
@test 'more_src has _verible-verilog-format' {
    assert "$(xsrc_find _verible-verilog-format)" is_file
}
@test 'more_src has _verible-verilog-syntax' {
    assert "$(xsrc_find _verible-verilog-syntax)" is_file
}
@test 'more_src has _vership' {
    assert "$(xsrc_find _vership)" is_file
}
@test 'more_src has _vertica' {
    assert "$(xsrc_find _vertica)" is_file
}
@test 'more_src has _vet' {
    assert "$(xsrc_find _vet)" is_file
}
@test 'more_src has _vfox' {
    assert "$(xsrc_find _vfox)" is_file
}
@test 'more_src has _vgrep' {
    assert "$(xsrc_find _vgrep)" is_file
}
@test 'more_src has _vhost-user-blk' {
    assert "$(xsrc_find _vhost-user-blk)" is_file
}
@test 'more_src has _vhost-user-fs' {
    assert "$(xsrc_find _vhost-user-fs)" is_file
}
@test 'more_src has _vhost-user-gpu' {
    assert "$(xsrc_find _vhost-user-gpu)" is_file
}
@test 'more_src has _vhost-user-net' {
    assert "$(xsrc_find _vhost-user-net)" is_file
}
@test 'more_src has _vhost-user-scsi' {
    assert "$(xsrc_find _vhost-user-scsi)" is_file
}
@test 'more_src has _vhs' {
    assert "$(xsrc_find _vhs)" is_file
}
@test 'more_src has _vibe-kanban' {
    assert "$(xsrc_find _vibe-kanban)" is_file
}
@test 'more_src has _vice' {
    assert "$(xsrc_find _vice)" is_file
}
@test 'more_src has _victoria-logs' {
    assert "$(xsrc_find _victoria-logs)" is_file
}
@test 'more_src has _vidalia' {
    assert "$(xsrc_find _vidalia)" is_file
}
@test 'more_src has _vidcutter' {
    assert "$(xsrc_find _vidcutter)" is_file
}
@test 'more_src has _viddy' {
    assert "$(xsrc_find _viddy)" is_file
}
@test 'more_src has _viewcore' {
    assert "$(xsrc_find _viewcore)" is_file
}
@test 'more_src has _vifm' {
    assert "$(xsrc_find _vifm)" is_file
}
@test 'more_src has _vig_optimize' {
    assert "$(xsrc_find _vig_optimize)" is_file
}
@test 'more_src has _viking' {
    assert "$(xsrc_find _viking)" is_file
}
@test 'more_src has _viless' {
    assert "$(xsrc_find _viless)" is_file
}
@test 'more_src has _villain' {
    assert "$(xsrc_find _villain)" is_file
}
@test 'more_src has _vim-athena' {
    assert "$(xsrc_find _vim-athena)" is_file
}
@test 'more_src has _vim-gnome' {
    assert "$(xsrc_find _vim-gnome)" is_file
}
@test 'more_src has _vim-gtk3' {
    assert "$(xsrc_find _vim-gtk3)" is_file
}
@test 'more_src has _vim-tiny' {
    assert "$(xsrc_find _vim-tiny)" is_file
}
@test 'more_src has _vimb' {
    assert "$(xsrc_find _vimb)" is_file
}
@test 'more_src has _vimcat' {
    assert "$(xsrc_find _vimcat)" is_file
}
@test 'more_src has _vimpager' {
    assert "$(xsrc_find _vimpager)" is_file
}
@test 'more_src has _vipe' {
    assert "$(xsrc_find _vipe)" is_file
}
@test 'more_src has _viper' {
    assert "$(xsrc_find _viper)" is_file
}
@test 'more_src has _vipsdisp' {
    assert "$(xsrc_find _vipsdisp)" is_file
}
@test 'more_src has _vipsedit' {
    assert "$(xsrc_find _vipsedit)" is_file
}
@test 'more_src has _virt-bootstrap' {
    assert "$(xsrc_find _virt-bootstrap)" is_file
}
@test 'more_src has _virt-builder-repository' {
    assert "$(xsrc_find _virt-builder-repository)" is_file
}
@test 'more_src has _virt-convert' {
    assert "$(xsrc_find _virt-convert)" is_file
}
@test 'more_src has _virt-firmware' {
    assert "$(xsrc_find _virt-firmware)" is_file
}
@test 'more_src has _virt-image' {
    assert "$(xsrc_find _virt-image)" is_file
}
@test 'more_src has _virt-p2v' {
    assert "$(xsrc_find _virt-p2v)" is_file
}
@test 'more_src has _virt-pki-query' {
    assert "$(xsrc_find _virt-pki-query)" is_file
}
@test 'more_src has _virt-sanlock-cleanup' {
    assert "$(xsrc_find _virt-sanlock-cleanup)" is_file
}
@test 'more_src has _virt-v2v-in-place' {
    assert "$(xsrc_find _virt-v2v-in-place)" is_file
}
@test 'more_src has _virt-who' {
    assert "$(xsrc_find _virt-who)" is_file
}
@test 'more_src has _virtiofsd' {
    assert "$(xsrc_find _virtiofsd)" is_file
}
@test 'more_src has _virtualbox' {
    assert "$(xsrc_find _virtualbox)" is_file
}
@test 'more_src has _visidata' {
    assert "$(xsrc_find _visidata)" is_file
}
@test 'more_src has _visit' {
    assert "$(xsrc_find _visit)" is_file
}
@test 'more_src has _visualboyadvance' {
    assert "$(xsrc_find _visualboyadvance)" is_file
}
@test 'more_src has _vit' {
    assert "$(xsrc_find _vit)" is_file
}
@test 'more_src has _vite' {
    assert "$(xsrc_find _vite)" is_file
}
@test 'more_src has _vitest' {
    assert "$(xsrc_find _vitest)" is_file
}
@test 'more_src has _vitrage-api' {
    assert "$(xsrc_find _vitrage-api)" is_file
}
@test 'more_src has _vitrage-graph' {
    assert "$(xsrc_find _vitrage-graph)" is_file
}
@test 'more_src has _vitrage-notifier' {
    assert "$(xsrc_find _vitrage-notifier)" is_file
}
@test 'more_src has _viu' {
    assert "$(xsrc_find _viu)" is_file
}
@test 'more_src has _vkconfig' {
    assert "$(xsrc_find _vkconfig)" is_file
}
@test 'more_src has _vkcube' {
    assert "$(xsrc_find _vkcube)" is_file
}
@test 'more_src has _vkmark' {
    assert "$(xsrc_find _vkmark)" is_file
}
@test 'more_src has _vkrunner' {
    assert "$(xsrc_find _vkrunner)" is_file
}
@test 'more_src has _vlinsert' {
    assert "$(xsrc_find _vlinsert)" is_file
}
@test 'more_src has _vlogger' {
    assert "$(xsrc_find _vlogger)" is_file
}
@test 'more_src has _vlogs' {
    assert "$(xsrc_find _vlogs)" is_file
}
@test 'more_src has _vlselect' {
    assert "$(xsrc_find _vlselect)" is_file
}
@test 'more_src has _vlt' {
    assert "$(xsrc_find _vlt)" is_file
}
@test 'more_src has _vm_stat' {
    assert "$(xsrc_find _vm_stat)" is_file
}
@test 'more_src has _vmd' {
    assert "$(xsrc_find _vmd)" is_file
}
@test 'more_src has _vmpop3d' {
    assert "$(xsrc_find _vmpop3d)" is_file
}
@test 'more_src has _vmvpn' {
    assert "$(xsrc_find _vmvpn)" is_file
}
@test 'more_src has _vmware' {
    assert "$(xsrc_find _vmware)" is_file
}
@test 'more_src has _vmware-toolbox-cmd' {
    assert "$(xsrc_find _vmware-toolbox-cmd)" is_file
}
@test 'more_src has _vnc4server' {
    assert "$(xsrc_find _vnc4server)" is_file
}
@test 'more_src has _void' {
    assert "$(xsrc_find _void)" is_file
}
@test 'more_src has _void-agent' {
    assert "$(xsrc_find _void-agent)" is_file
}
@test 'more_src has _void-spirit' {
    assert "$(xsrc_find _void-spirit)" is_file
}
@test 'more_src has _voidforge' {
    assert "$(xsrc_find _voidforge)" is_file
}
@test 'more_src has _vokoscreen' {
    assert "$(xsrc_find _vokoscreen)" is_file
}
@test 'more_src has _vokoscreen-ng' {
    assert "$(xsrc_find _vokoscreen-ng)" is_file
}
@test 'more_src has _vokoscreenng' {
    assert "$(xsrc_find _vokoscreenng)" is_file
}
@test 'more_src has _volt' {
    assert "$(xsrc_find _volt)" is_file
}
@test 'more_src has _volta' {
    assert "$(xsrc_find _volta)" is_file
}
@test 'more_src has _volumeicon' {
    assert "$(xsrc_find _volumeicon)" is_file
}
@test 'more_src has _voms-proxy-destroy' {
    assert "$(xsrc_find _voms-proxy-destroy)" is_file
}
@test 'more_src has _voms-proxy-info' {
    assert "$(xsrc_find _voms-proxy-info)" is_file
}
@test 'more_src has _voms-proxy-init' {
    assert "$(xsrc_find _voms-proxy-init)" is_file
}
@test 'more_src has _vorbisgain' {
    assert "$(xsrc_find _vorbisgain)" is_file
}
@test 'more_src has _vortix' {
    assert "$(xsrc_find _vortix)" is_file
}
@test 'more_src has _vouch-proxy' {
    assert "$(xsrc_find _vouch-proxy)" is_file
}
@test 'more_src has _vov' {
    assert "$(xsrc_find _vov)" is_file
}
@test 'more_src has _vp' {
    assert "$(xsrc_find _vp)" is_file
}
@test 'more_src has _vpn' {
    assert "$(xsrc_find _vpn)" is_file
}
@test 'more_src has _vpnc-script' {
    assert "$(xsrc_find _vpnc-script)" is_file
}
@test 'more_src has _vrlmrag' {
    assert "$(xsrc_find _vrlmrag)" is_file
}
@test 'more_src has _vrrpd' {
    assert "$(xsrc_find _vrrpd)" is_file
}
@test 'more_src has _vsce' {
    assert "$(xsrc_find _vsce)" is_file
}
@test 'more_src has _vscli' {
    assert "$(xsrc_find _vscli)" is_file
}
@test 'more_src has _vsftpd-init' {
    assert "$(xsrc_find _vsftpd-init)" is_file
}
@test 'more_src has _vspcli' {
    assert "$(xsrc_find _vspcli)" is_file
}
@test 'more_src has _vtctl' {
    assert "$(xsrc_find _vtctl)" is_file
}
@test 'more_src has _vue-list' {
    assert "$(xsrc_find _vue-list)" is_file
}
@test 'more_src has _vultr' {
    assert "$(xsrc_find _vultr)" is_file
}
@test 'more_src has _vunnel' {
    assert "$(xsrc_find _vunnel)" is_file
}
@test 'more_src has _w3af-console' {
    assert "$(xsrc_find _w3af-console)" is_file
}
@test 'more_src has _w3mimgdisplay' {
    assert "$(xsrc_find _w3mimgdisplay)" is_file
}
@test 'more_src has _wails' {
    assert "$(xsrc_find _wails)" is_file
}
@test 'more_src has _wait4path' {
    assert "$(xsrc_find _wait4path)" is_file
}
@test 'more_src has _wait4x' {
    assert "$(xsrc_find _wait4x)" is_file
}
@test 'more_src has _wakatime' {
    assert "$(xsrc_find _wakatime)" is_file
}
@test 'more_src has _wake' {
    assert "$(xsrc_find _wake)" is_file
}
@test 'more_src has _wakelan' {
    assert "$(xsrc_find _wakelan)" is_file
}
@test 'more_src has _waku' {
    assert "$(xsrc_find _waku)" is_file
}
@test 'more_src has _walk' {
    assert "$(xsrc_find _walk)" is_file
}
@test 'more_src has _walkmod' {
    assert "$(xsrc_find _walkmod)" is_file
}
@test 'more_src has _walkmod-cli' {
    assert "$(xsrc_find _walkmod-cli)" is_file
}
@test 'more_src has _warmux' {
    assert "$(xsrc_find _warmux)" is_file
}
@test 'more_src has _warp-cli' {
    assert "$(xsrc_find _warp-cli)" is_file
}
@test 'more_src has _warp-terminal' {
    assert "$(xsrc_find _warp-terminal)" is_file
}
@test 'more_src has _warsow' {
    assert "$(xsrc_find _warsow)" is_file
}
@test 'more_src has _warzone2100' {
    assert "$(xsrc_find _warzone2100)" is_file
}
@test 'more_src has _wasm-bindgen' {
    assert "$(xsrc_find _wasm-bindgen)" is_file
}
@test 'more_src has _wasm-dump' {
    assert "$(xsrc_find _wasm-dump)" is_file
}
@test 'more_src has _wasm-opt' {
    assert "$(xsrc_find _wasm-opt)" is_file
}
@test 'more_src has _wasm-pack' {
    assert "$(xsrc_find _wasm-pack)" is_file
}
@test 'more_src has _wasm-run' {
    assert "$(xsrc_find _wasm-run)" is_file
}
@test 'more_src has _wasm-strip' {
    assert "$(xsrc_find _wasm-strip)" is_file
}
@test 'more_src has _wasm-tools' {
    assert "$(xsrc_find _wasm-tools)" is_file
}
@test 'more_src has _wasmer' {
    assert "$(xsrc_find _wasmer)" is_file
}
@test 'more_src has _wasmtime' {
    assert "$(xsrc_find _wasmtime)" is_file
}
@test 'more_src has _watcher-api' {
    assert "$(xsrc_find _watcher-api)" is_file
}
@test 'more_src has _watcher-applier' {
    assert "$(xsrc_find _watcher-applier)" is_file
}
@test 'more_src has _watcher-db-manage' {
    assert "$(xsrc_find _watcher-db-manage)" is_file
}
@test 'more_src has _watcher-decision-engine' {
    assert "$(xsrc_find _watcher-decision-engine)" is_file
}
@test 'more_src has _watcher-status' {
    assert "$(xsrc_find _watcher-status)" is_file
}
@test 'more_src has _watchexec' {
    assert "$(xsrc_find _watchexec)" is_file
}
@test 'more_src has _watchfrr' {
    assert "$(xsrc_find _watchfrr)" is_file
}
@test 'more_src has _watchman-diag' {
    assert "$(xsrc_find _watchman-diag)" is_file
}
@test 'more_src has _watchwoman' {
    assert "$(xsrc_find _watchwoman)" is_file
}
@test 'more_src has _water' {
    assert "$(xsrc_find _water)" is_file
}
@test 'more_src has _waterfox' {
    assert "$(xsrc_find _waterfox)" is_file
}
@test 'more_src has _watson' {
    assert "$(xsrc_find _watson)" is_file
}
@test 'more_src has _wavcmp' {
    assert "$(xsrc_find _wavcmp)" is_file
}
@test 'more_src has _wavinfo' {
    assert "$(xsrc_find _wavinfo)" is_file
}
@test 'more_src has _waybackurls' {
    assert "$(xsrc_find _waybackurls)" is_file
}
@test 'more_src has _waydroid-cli' {
    assert "$(xsrc_find _waydroid-cli)" is_file
}
@test 'more_src has _wayfire-cli' {
    assert "$(xsrc_find _wayfire-cli)" is_file
}
@test 'more_src has _wayhaus' {
    assert "$(xsrc_find _wayhaus)" is_file
}
@test 'more_src has _waylandpp' {
    assert "$(xsrc_find _waylandpp)" is_file
}
@test 'more_src has _wayle' {
    assert "$(xsrc_find _wayle)" is_file
}
@test 'more_src has _waypoint' {
    assert "$(xsrc_find _waypoint)" is_file
}
@test 'more_src has _wayst' {
    assert "$(xsrc_find _wayst)" is_file
}
@test 'more_src has _wazero' {
    assert "$(xsrc_find _wazero)" is_file
}
@test 'more_src has _wazuh' {
    assert "$(xsrc_find _wazuh)" is_file
}
@test 'more_src has _wazuh-analysisd' {
    assert "$(xsrc_find _wazuh-analysisd)" is_file
}
@test 'more_src has _wazuh-control' {
    assert "$(xsrc_find _wazuh-control)" is_file
}
@test 'more_src has _wazuh-execd' {
    assert "$(xsrc_find _wazuh-execd)" is_file
}
@test 'more_src has _wazuh-logtest' {
    assert "$(xsrc_find _wazuh-logtest)" is_file
}
@test 'more_src has _wazuh-manager' {
    assert "$(xsrc_find _wazuh-manager)" is_file
}
@test 'more_src has _wazuh-modulesd' {
    assert "$(xsrc_find _wazuh-modulesd)" is_file
}
@test 'more_src has _wazuh-monitord' {
    assert "$(xsrc_find _wazuh-monitord)" is_file
}
@test 'more_src has _wazuh-remoted' {
    assert "$(xsrc_find _wazuh-remoted)" is_file
}
@test 'more_src has _wazuh-syscheckd' {
    assert "$(xsrc_find _wazuh-syscheckd)" is_file
}
@test 'more_src has _wcalc' {
    assert "$(xsrc_find _wcalc)" is_file
}
@test 'more_src has _wcm' {
    assert "$(xsrc_find _wcm)" is_file
}
@test 'more_src has _wdocker' {
    assert "$(xsrc_find _wdocker)" is_file
}
@test 'more_src has _weave' {
    assert "$(xsrc_find _weave)" is_file
}
@test 'more_src has _weave-cli' {
    assert "$(xsrc_find _weave-cli)" is_file
}
@test 'more_src has _weave-net' {
    assert "$(xsrc_find _weave-net)" is_file
}
@test 'more_src has _weave-npc' {
    assert "$(xsrc_find _weave-npc)" is_file
}
@test 'more_src has _weave-scope' {
    assert "$(xsrc_find _weave-scope)" is_file
}
@test 'more_src has _webagent' {
    assert "$(xsrc_find _webagent)" is_file
}
@test 'more_src has _webalizer' {
    assert "$(xsrc_find _webalizer)" is_file
}
@test 'more_src has _webhttrack' {
    assert "$(xsrc_find _webhttrack)" is_file
}
@test 'more_src has _websocat' {
    assert "$(xsrc_find _websocat)" is_file
}
@test 'more_src has _webstorm' {
    assert "$(xsrc_find _webstorm)" is_file
}
@test 'more_src has _weeder' {
    assert "$(xsrc_find _weeder)" is_file
}
@test 'more_src has _weighttp' {
    assert "$(xsrc_find _weighttp)" is_file
}
@test 'more_src has _werf' {
    assert "$(xsrc_find _werf)" is_file
}
@test 'more_src has _wesnoth' {
    assert "$(xsrc_find _wesnoth)" is_file
}
@test 'more_src has _west' {
    assert "$(xsrc_find _west)" is_file
}
@test 'more_src has _weston-debug' {
    assert "$(xsrc_find _weston-debug)" is_file
}
@test 'more_src has _weston-info' {
    assert "$(xsrc_find _weston-info)" is_file
}
@test 'more_src has _weston-keyboard' {
    assert "$(xsrc_find _weston-keyboard)" is_file
}
@test 'more_src has _weston-launch' {
    assert "$(xsrc_find _weston-launch)" is_file
}
@test 'more_src has _weston-screenshooter' {
    assert "$(xsrc_find _weston-screenshooter)" is_file
}
@test 'more_src has _wev' {
    assert "$(xsrc_find _wev)" is_file
}
@test 'more_src has _wezterm' {
    assert "$(xsrc_find _wezterm)" is_file
}
@test 'more_src has _wf-cmd' {
    assert "$(xsrc_find _wf-cmd)" is_file
}
@test 'more_src has _wf-config' {
    assert "$(xsrc_find _wf-config)" is_file
}
@test 'more_src has _wf-info' {
    assert "$(xsrc_find _wf-info)" is_file
}
@test 'more_src has _wf-msg' {
    assert "$(xsrc_find _wf-msg)" is_file
}
@test 'more_src has _wf-shell' {
    assert "$(xsrc_find _wf-shell)" is_file
}
@test 'more_src has _wflinfo' {
    assert "$(xsrc_find _wflinfo)" is_file
}
@test 'more_src has _wfsctl' {
    assert "$(xsrc_find _wfsctl)" is_file
}
@test 'more_src has _wg' {
    assert "$(xsrc_find _wg)" is_file
}
@test 'more_src has _wgetpaste' {
    assert "$(xsrc_find _wgetpaste)" is_file
}
@test 'more_src has _wgu' {
    assert "$(xsrc_find _wgu)" is_file
}
@test 'more_src has _whalebrew' {
    assert "$(xsrc_find _whalebrew)" is_file
}
@test 'more_src has _whatip' {
    assert "$(xsrc_find _whatip)" is_file
}
@test 'more_src has _whysynth' {
    assert "$(xsrc_find _whysynth)" is_file
}
@test 'more_src has _wi.sh' {
    assert "$(xsrc_find _wi.sh)" is_file
}
@test 'more_src has _wicd-cli' {
    assert "$(xsrc_find _wicd-cli)" is_file
}
@test 'more_src has _wicd-client' {
    assert "$(xsrc_find _wicd-client)" is_file
}
@test 'more_src has _wicd-curses' {
    assert "$(xsrc_find _wicd-curses)" is_file
}
@test 'more_src has _wicd-gtk' {
    assert "$(xsrc_find _wicd-gtk)" is_file
}
@test 'more_src has _wid' {
    assert "$(xsrc_find _wid)" is_file
}
@test 'more_src has _widelands' {
    assert "$(xsrc_find _widelands)" is_file
}
@test 'more_src has _wiki-tui' {
    assert "$(xsrc_find _wiki-tui)" is_file
}
@test 'more_src has _windmill' {
    assert "$(xsrc_find _windmill)" is_file
}
@test 'more_src has _windscribe' {
    assert "$(xsrc_find _windscribe)" is_file
}
@test 'more_src has _winefile' {
    assert "$(xsrc_find _winefile)" is_file
}
@test 'more_src has _winemenubuilder' {
    assert "$(xsrc_find _winemenubuilder)" is_file
}
@test 'more_src has _wingpanel' {
    assert "$(xsrc_find _wingpanel)" is_file
}
@test 'more_src has _wipe' {
    assert "$(xsrc_find _wipe)" is_file
}
@test 'more_src has _wishlist' {
    assert "$(xsrc_find _wishlist)" is_file
}
@test 'more_src has _wkhtmltoimage' {
    assert "$(xsrc_find _wkhtmltoimage)" is_file
}
@test 'more_src has _wkhtmltopdf' {
    assert "$(xsrc_find _wkhtmltopdf)" is_file
}
@test 'more_src has _wl-clipboard-cli' {
    assert "$(xsrc_find _wl-clipboard-cli)" is_file
}
@test 'more_src has _wl-clipboard-x11' {
    assert "$(xsrc_find _wl-clipboard-x11)" is_file
}
@test 'more_src has _wl-copy' {
    assert "$(xsrc_find _wl-copy)" is_file
}
@test 'more_src has _wl-paste' {
    assert "$(xsrc_find _wl-paste)" is_file
}
@test 'more_src has _wl-present' {
    assert "$(xsrc_find _wl-present)" is_file
}
@test 'more_src has _wlinhibit' {
    assert "$(xsrc_find _wlinhibit)" is_file
}
@test 'more_src has _wlr-randr' {
    assert "$(xsrc_find _wlr-randr)" is_file
}
@test 'more_src has _wlroots-headless' {
    assert "$(xsrc_find _wlroots-headless)" is_file
}
@test 'more_src has _wluma' {
    assert "$(xsrc_find _wluma)" is_file
}
@test 'more_src has _wmake' {
    assert "$(xsrc_find _wmake)" is_file
}
@test 'more_src has _wmclock' {
    assert "$(xsrc_find _wmclock)" is_file
}
@test 'more_src has _wmcpuload' {
    assert "$(xsrc_find _wmcpuload)" is_file
}
@test 'more_src has _wmnd' {
    assert "$(xsrc_find _wmnd)" is_file
}
@test 'more_src has _wmnet' {
    assert "$(xsrc_find _wmnet)" is_file
}
@test 'more_src has _wmnetload' {
    assert "$(xsrc_find _wmnetload)" is_file
}
@test 'more_src has _wmrack' {
    assert "$(xsrc_find _wmrack)" is_file
}
@test 'more_src has _wmsetbg' {
    assert "$(xsrc_find _wmsetbg)" is_file
}
@test 'more_src has _wmtune' {
    assert "$(xsrc_find _wmtune)" is_file
}
@test 'more_src has _wmweather' {
    assert "$(xsrc_find _wmweather)" is_file
}
@test 'more_src has _wob' {
    assert "$(xsrc_find _wob)" is_file
}
@test 'more_src has _wobble' {
    assert "$(xsrc_find _wobble)" is_file
}
@test 'more_src has _wofi' {
    assert "$(xsrc_find _wofi)" is_file
}
@test 'more_src has _wofi-emoji' {
    assert "$(xsrc_find _wofi-emoji)" is_file
}
@test 'more_src has _wofi-pass' {
    assert "$(xsrc_find _wofi-pass)" is_file
}
@test 'more_src has _woke' {
    assert "$(xsrc_find _woke)" is_file
}
@test 'more_src has _wolfssh' {
    assert "$(xsrc_find _wolfssh)" is_file
}
@test 'more_src has _wolfsshd' {
    assert "$(xsrc_find _wolfsshd)" is_file
}
@test 'more_src has _wondershaper' {
    assert "$(xsrc_find _wondershaper)" is_file
}
@test 'more_src has _woodpecker' {
    assert "$(xsrc_find _woodpecker)" is_file
}
@test 'more_src has _woodpecker-agent' {
    assert "$(xsrc_find _woodpecker-agent)" is_file
}
@test 'more_src has _woodpecker-server' {
    assert "$(xsrc_find _woodpecker-server)" is_file
}
@test 'more_src has _wordcount' {
    assert "$(xsrc_find _wordcount)" is_file
}
@test 'more_src has _wordfinder' {
    assert "$(xsrc_find _wordfinder)" is_file
}
@test 'more_src has _wordgrinder' {
    assert "$(xsrc_find _wordgrinder)" is_file
}
@test 'more_src has _wordmatch' {
    assert "$(xsrc_find _wordmatch)" is_file
}
@test 'more_src has _workon.zsh' {
    assert "$(xsrc_find _workon.zsh)" is_file
}
@test 'more_src has _workspaces' {
    assert "$(xsrc_find _workspaces)" is_file
}
@test 'more_src has _worldofpadman' {
    assert "$(xsrc_find _worldofpadman)" is_file
}
@test 'more_src has _wormhole' {
    assert "$(xsrc_find _wormhole)" is_file
}
@test 'more_src has _wossdata' {
    assert "$(xsrc_find _wossdata)" is_file
}
@test 'more_src has _wossinput' {
    assert "$(xsrc_find _wossinput)" is_file
}
@test 'more_src has _wossname' {
    assert "$(xsrc_find _wossname)" is_file
}
@test 'more_src has _wossoperation' {
    assert "$(xsrc_find _wossoperation)" is_file
}
@test 'more_src has _wossoutput' {
    assert "$(xsrc_find _wossoutput)" is_file
}
@test 'more_src has _wossparam' {
    assert "$(xsrc_find _wossparam)" is_file
}
@test 'more_src has _wosstopic' {
    assert "$(xsrc_find _wosstopic)" is_file
}
@test 'more_src has _wpaclean' {
    assert "$(xsrc_find _wpaclean)" is_file
}
@test 'more_src has _wpactl' {
    assert "$(xsrc_find _wpactl)" is_file
}
@test 'more_src has _wpctl' {
    assert "$(xsrc_find _wpctl)" is_file
}
@test 'more_src has _wput' {
    assert "$(xsrc_find _wput)" is_file
}
@test 'more_src has _wrangler' {
    assert "$(xsrc_find _wrangler)" is_file
}
@test 'more_src has _wrangler1' {
    assert "$(xsrc_find _wrangler1)" is_file
}
@test 'more_src has _wrk' {
    assert "$(xsrc_find _wrk)" is_file
}
@test 'more_src has _wrk2' {
    assert "$(xsrc_find _wrk2)" is_file
}
@test 'more_src has _ws-session' {
    assert "$(xsrc_find _ws-session)" is_file
}
@test 'more_src has _wsjtx' {
    assert "$(xsrc_find _wsjtx)" is_file
}
@test 'more_src has _wsman' {
    assert "$(xsrc_find _wsman)" is_file
}
@test 'more_src has _wtdbg2' {
    assert "$(xsrc_find _wtdbg2)" is_file
}
@test 'more_src has _wtfutil' {
    assert "$(xsrc_find _wtfutil)" is_file
}
@test 'more_src has _wthrr' {
    assert "$(xsrc_find _wthrr)" is_file
}
@test 'more_src has _wu-ftpd' {
    assert "$(xsrc_find _wu-ftpd)" is_file
}
@test 'more_src has _wvpack' {
    assert "$(xsrc_find _wvpack)" is_file
}
@test 'more_src has _ww.sh' {
    assert "$(xsrc_find _ww.sh)" is_file
}
@test 'more_src has _wwd.sh' {
    assert "$(xsrc_find _wwd.sh)" is_file
}
@test 'more_src has _wxhexeditor' {
    assert "$(xsrc_find _wxhexeditor)" is_file
}
@test 'more_src has _wxmaxima' {
    assert "$(xsrc_find _wxmaxima)" is_file
}
@test 'more_src has _wxt-publish-extension' {
    assert "$(xsrc_find _wxt-publish-extension)" is_file
}
@test 'more_src has _x-cmd' {
    assert "$(xsrc_find _x-cmd)" is_file
}
@test 'more_src has _x.py' {
    assert "$(xsrc_find _x.py)" is_file
}
@test 'more_src has _x2goclient' {
    assert "$(xsrc_find _x2goclient)" is_file
}
@test 'more_src has _x2goserver' {
    assert "$(xsrc_find _x2goserver)" is_file
}
@test 'more_src has _x2vnc' {
    assert "$(xsrc_find _x2vnc)" is_file
}
@test 'more_src has _x64' {
    assert "$(xsrc_find _x64)" is_file
}
@test 'more_src has _x64sc' {
    assert "$(xsrc_find _x64sc)" is_file
}
@test 'more_src has _xapi' {
    assert "$(xsrc_find _xapi)" is_file
}
@test 'more_src has _xastir' {
    assert "$(xsrc_find _xastir)" is_file
}
@test 'more_src has _xata-cli' {
    assert "$(xsrc_find _xata-cli)" is_file
}
@test 'more_src has _xbar' {
    assert "$(xsrc_find _xbar)" is_file
}
@test 'more_src has _xbindkeys' {
    assert "$(xsrc_find _xbindkeys)" is_file
}
@test 'more_src has _xbps-alternatives' {
    assert "$(xsrc_find _xbps-alternatives)" is_file
}
@test 'more_src has _xbps-create' {
    assert "$(xsrc_find _xbps-create)" is_file
}
@test 'more_src has _xbps-fbulk' {
    assert "$(xsrc_find _xbps-fbulk)" is_file
}
@test 'more_src has _xbps-reconfigure' {
    assert "$(xsrc_find _xbps-reconfigure)" is_file
}
@test 'more_src has _xbps-uchroot' {
    assert "$(xsrc_find _xbps-uchroot)" is_file
}
@test 'more_src has _xbps-uunshare' {
    assert "$(xsrc_find _xbps-uunshare)" is_file
}
@test 'more_src has _xc' {
    assert "$(xsrc_find _xc)" is_file
}
@test 'more_src has _xcaddy' {
    assert "$(xsrc_find _xcaddy)" is_file
}
@test 'more_src has _xcbm2' {
    assert "$(xsrc_find _xcbm2)" is_file
}
@test 'more_src has _xcbm5x0' {
    assert "$(xsrc_find _xcbm5x0)" is_file
}
@test 'more_src has _xchat' {
    assert "$(xsrc_find _xchat)" is_file
}
@test 'more_src has _xcowsay' {
    assert "$(xsrc_find _xcowsay)" is_file
}
@test 'more_src has _xcp' {
    assert "$(xsrc_find _xcp)" is_file
}
@test 'more_src has _xcstrings-mcp' {
    assert "$(xsrc_find _xcstrings-mcp)" is_file
}
@test 'more_src has _xdg-ninja' {
    assert "$(xsrc_find _xdg-ninja)" is_file
}
@test 'more_src has _xemacs' {
    assert "$(xsrc_find _xemacs)" is_file
}
@test 'more_src has _xemacs21' {
    assert "$(xsrc_find _xemacs21)" is_file
}
@test 'more_src has _xen-bugtool' {
    assert "$(xsrc_find _xen-bugtool)" is_file
}
@test 'more_src has _xen-detect' {
    assert "$(xsrc_find _xen-detect)" is_file
}
@test 'more_src has _xen-list' {
    assert "$(xsrc_find _xen-list)" is_file
}
@test 'more_src has _xen-livepatch' {
    assert "$(xsrc_find _xen-livepatch)" is_file
}
@test 'more_src has _xen-pciback' {
    assert "$(xsrc_find _xen-pciback)" is_file
}
@test 'more_src has _xen-watchdogd' {
    assert "$(xsrc_find _xen-watchdogd)" is_file
}
@test 'more_src has _xenbaked' {
    assert "$(xsrc_find _xenbaked)" is_file
}
@test 'more_src has _xenballoond' {
    assert "$(xsrc_find _xenballoond)" is_file
}
@test 'more_src has _xenconsoled' {
    assert "$(xsrc_find _xenconsoled)" is_file
}
@test 'more_src has _xendomains' {
    assert "$(xsrc_find _xendomains)" is_file
}
@test 'more_src has _xenhypfs' {
    assert "$(xsrc_find _xenhypfs)" is_file
}
@test 'more_src has _xenmon' {
    assert "$(xsrc_find _xenmon)" is_file
}
@test 'more_src has _xenpaging' {
    assert "$(xsrc_find _xenpaging)" is_file
}
@test 'more_src has _xenpm' {
    assert "$(xsrc_find _xenpm)" is_file
}
@test 'more_src has _xenpvnetboot' {
    assert "$(xsrc_find _xenpvnetboot)" is_file
}
@test 'more_src has _xenstore' {
    assert "$(xsrc_find _xenstore)" is_file
}
@test 'more_src has _xenstored' {
    assert "$(xsrc_find _xenstored)" is_file
}
@test 'more_src has _xentop' {
    assert "$(xsrc_find _xentop)" is_file
}
@test 'more_src has _xentrace' {
    assert "$(xsrc_find _xentrace)" is_file
}
@test 'more_src has _xenwatch' {
    assert "$(xsrc_find _xenwatch)" is_file
}
@test 'more_src has _xeol' {
    assert "$(xsrc_find _xeol)" is_file
}
@test 'more_src has _xfce4-clipman' {
    assert "$(xsrc_find _xfce4-clipman)" is_file
}
@test 'more_src has _xfce4-clipman-settings' {
    assert "$(xsrc_find _xfce4-clipman-settings)" is_file
}
@test 'more_src has _xfce4-mixer' {
    assert "$(xsrc_find _xfce4-mixer)" is_file
}
@test 'more_src has _xfce4-mount-plugin' {
    assert "$(xsrc_find _xfce4-mount-plugin)" is_file
}
@test 'more_src has _xfce4-notifyd' {
    assert "$(xsrc_find _xfce4-notifyd)" is_file
}
@test 'more_src has _xfce4-orage' {
    assert "$(xsrc_find _xfce4-orage)" is_file
}
@test 'more_src has _xfce4-screensaver' {
    assert "$(xsrc_find _xfce4-screensaver)" is_file
}
@test 'more_src has _xfce4-screensaver-command' {
    assert "$(xsrc_find _xfce4-screensaver-command)" is_file
}
@test 'more_src has _xfce4-screensaver-preferences' {
    assert "$(xsrc_find _xfce4-screensaver-preferences)" is_file
}
@test 'more_src has _xfce4-sensors-plugin' {
    assert "$(xsrc_find _xfce4-sensors-plugin)" is_file
}
@test 'more_src has _xfce4-settings' {
    assert "$(xsrc_find _xfce4-settings)" is_file
}
@test 'more_src has _xfce4-systemload-plugin' {
    assert "$(xsrc_find _xfce4-systemload-plugin)" is_file
}
@test 'more_src has _xfce4-time-out-plugin' {
    assert "$(xsrc_find _xfce4-time-out-plugin)" is_file
}
@test 'more_src has _xfce4-timer-plugin' {
    assert "$(xsrc_find _xfce4-timer-plugin)" is_file
}
@test 'more_src has _xfce4-volumed-pulse' {
    assert "$(xsrc_find _xfce4-volumed-pulse)" is_file
}
@test 'more_src has _xfce4-wavelan-plugin' {
    assert "$(xsrc_find _xfce4-wavelan-plugin)" is_file
}
@test 'more_src has _xfce4-weather-plugin' {
    assert "$(xsrc_find _xfce4-weather-plugin)" is_file
}
@test 'more_src has _xfconfd' {
    assert "$(xsrc_find _xfconfd)" is_file
}
@test 'more_src has _xfishtank' {
    assert "$(xsrc_find _xfishtank)" is_file
}
@test 'more_src has _xfontscale' {
    assert "$(xsrc_find _xfontscale)" is_file
}
@test 'more_src has _xfr' {
    assert "$(xsrc_find _xfr)" is_file
}
@test 'more_src has _xgboost' {
    assert "$(xsrc_find _xgboost)" is_file
}
@test 'more_src has _xgps' {
    assert "$(xsrc_find _xgps)" is_file
}
@test 'more_src has _xgpsspeed' {
    assert "$(xsrc_find _xgpsspeed)" is_file
}
@test 'more_src has _xh' {
    assert "$(xsrc_find _xh)" is_file
}
@test 'more_src has _xidel' {
    assert "$(xsrc_find _xidel)" is_file
}
@test 'more_src has _xine' {
    assert "$(xsrc_find _xine)" is_file
}
@test 'more_src has _xine-ui' {
    assert "$(xsrc_find _xine-ui)" is_file
}
@test 'more_src has _xinput-calibrator' {
    assert "$(xsrc_find _xinput-calibrator)" is_file
}
@test 'more_src has _xip' {
    assert "$(xsrc_find _xip)" is_file
}
@test 'more_src has _xiphos' {
    assert "$(xsrc_find _xiphos)" is_file
}
@test 'more_src has _xkbinfo' {
    assert "$(xsrc_find _xkbinfo)" is_file
}
@test 'more_src has _xkblayout-state' {
    assert "$(xsrc_find _xkblayout-state)" is_file
}
@test 'more_src has _xkbutils' {
    assert "$(xsrc_find _xkbutils)" is_file
}
@test 'more_src has _xlockmore' {
    assert "$(xsrc_find _xlockmore)" is_file
}
@test 'more_src has _xlsx2csv' {
    assert "$(xsrc_find _xlsx2csv)" is_file
}
@test 'more_src has _xm' {
    assert "$(xsrc_find _xm)" is_file
}
@test 'more_src has _xmake' {
    assert "$(xsrc_find _xmake)" is_file
}
@test 'more_src has _xmaxima' {
    assert "$(xsrc_find _xmaxima)" is_file
}
@test 'more_src has _xmeters' {
    assert "$(xsrc_find _xmeters)" is_file
}
@test 'more_src has _xmgrace' {
    assert "$(xsrc_find _xmgrace)" is_file
}
@test 'more_src has _xml2man' {
    assert "$(xsrc_find _xml2man)" is_file
}
@test 'more_src has _xmlget' {
    assert "$(xsrc_find _xmlget)" is_file
}
@test 'more_src has _xmlif' {
    assert "$(xsrc_find _xmlif)" is_file
}
@test 'more_src has _xmlsec' {
    assert "$(xsrc_find _xmlsec)" is_file
}
@test 'more_src has _xmltext' {
    assert "$(xsrc_find _xmltext)" is_file
}
@test 'more_src has _xmoto' {
    assert "$(xsrc_find _xmoto)" is_file
}
@test 'more_src has _xnconvert' {
    assert "$(xsrc_find _xnconvert)" is_file
}
@test 'more_src has _xnec2c' {
    assert "$(xsrc_find _xnec2c)" is_file
}
@test 'more_src has _xnviewmp' {
    assert "$(xsrc_find _xnviewmp)" is_file
}
@test 'more_src has _xolint' {
    assert "$(xsrc_find _xolint)" is_file
}
@test 'more_src has _xonotic' {
    assert "$(xsrc_find _xonotic)" is_file
}
@test 'more_src has _xonsh' {
    assert "$(xsrc_find _xonsh)" is_file
}
@test 'more_src has _xournalpp' {
    assert "$(xsrc_find _xournalpp)" is_file
}
@test 'more_src has _xpaint' {
    assert "$(xsrc_find _xpaint)" is_file
}
@test 'more_src has _xpenguins' {
    assert "$(xsrc_find _xpenguins)" is_file
}
@test 'more_src has _xpet' {
    assert "$(xsrc_find _xpet)" is_file
}
@test 'more_src has _xpipe' {
    assert "$(xsrc_find _xpipe)" is_file
}
@test 'more_src has _xplr' {
    assert "$(xsrc_find _xplr)" is_file
}
@test 'more_src has _xplus4' {
    assert "$(xsrc_find _xplus4)" is_file
}
@test 'more_src has _xpquery' {
    assert "$(xsrc_find _xpquery)" is_file
}
@test 'more_src has _xq' {
    assert "$(xsrc_find _xq)" is_file
}
@test 'more_src has _xqilla' {
    assert "$(xsrc_find _xqilla)" is_file
}
@test 'more_src has _xr' {
    assert "$(xsrc_find _xr)" is_file
}
@test 'more_src has _xray' {
    assert "$(xsrc_find _xray)" is_file
}
@test 'more_src has _xray-cli' {
    assert "$(xsrc_find _xray-cli)" is_file
}
@test 'more_src has _xrdadler32' {
    assert "$(xsrc_find _xrdadler32)" is_file
}
@test 'more_src has _xrdcp' {
    assert "$(xsrc_find _xrdcp)" is_file
}
@test 'more_src has _xrdesktop' {
    assert "$(xsrc_find _xrdesktop)" is_file
}
@test 'more_src has _xrdfs' {
    assert "$(xsrc_find _xrdfs)" is_file
}
@test 'more_src has _xrdgsiproxy' {
    assert "$(xsrc_find _xrdgsiproxy)" is_file
}
@test 'more_src has _xrdmapc' {
    assert "$(xsrc_find _xrdmapc)" is_file
}
@test 'more_src has _xrdpwd' {
    assert "$(xsrc_find _xrdpwd)" is_file
}
@test 'more_src has _xrdsssadmin' {
    assert "$(xsrc_find _xrdsssadmin)" is_file
}
@test 'more_src has _xrec' {
    assert "$(xsrc_find _xrec)" is_file
}
@test 'more_src has _xresprobe' {
    assert "$(xsrc_find _xresprobe)" is_file
}
@test 'more_src has _xrootd' {
    assert "$(xsrc_find _xrootd)" is_file
}
@test 'more_src has _xsane' {
    assert "$(xsrc_find _xsane)" is_file
}
@test 'more_src has _xsb' {
    assert "$(xsrc_find _xsb)" is_file
}
@test 'more_src has _xscanimage' {
    assert "$(xsrc_find _xscanimage)" is_file
}
@test 'more_src has _xschem' {
    assert "$(xsrc_find _xschem)" is_file
}
@test 'more_src has _xscpu64' {
    assert "$(xsrc_find _xscpu64)" is_file
}
@test 'more_src has _xsnow' {
    assert "$(xsrc_find _xsnow)" is_file
}
@test 'more_src has _xsv' {
    assert "$(xsrc_find _xsv)" is_file
}
@test 'more_src has _xsv2' {
    assert "$(xsrc_find _xsv2)" is_file
}
@test 'more_src has _xsvfmt' {
    assert "$(xsrc_find _xsvfmt)" is_file
}
@test 'more_src has _xtitle' {
    assert "$(xsrc_find _xtitle)" is_file
}
@test 'more_src has _xtruss' {
    assert "$(xsrc_find _xtruss)" is_file
}
@test 'more_src has _xvic' {
    assert "$(xsrc_find _xvic)" is_file
}
@test 'more_src has _xwallpaper' {
    assert "$(xsrc_find _xwallpaper)" is_file
}
@test 'more_src has _xxh' {
    assert "$(xsrc_find _xxh)" is_file
}
@test 'more_src has _xzmore' {
    assert "$(xsrc_find _xzmore)" is_file
}
@test 'more_src has _y-cruncher' {
    assert "$(xsrc_find _y-cruncher)" is_file
}
@test 'more_src has _yabai' {
    assert "$(xsrc_find _yabai)" is_file
}
@test 'more_src has _yabause' {
    assert "$(xsrc_find _yabause)" is_file
}
@test 'more_src has _yabb' {
    assert "$(xsrc_find _yabb)" is_file
}
@test 'more_src has _yacron' {
    assert "$(xsrc_find _yacron)" is_file
}
@test 'more_src has _yadm' {
    assert "$(xsrc_find _yadm)" is_file
}
@test 'more_src has _yamlfmt' {
    assert "$(xsrc_find _yamlfmt)" is_file
}
@test 'more_src has _yantrikclaw' {
    assert "$(xsrc_find _yantrikclaw)" is_file
}
@test 'more_src has _yaourt' {
    assert "$(xsrc_find _yaourt)" is_file
}
@test 'more_src has _yay' {
    assert "$(xsrc_find _yay)" is_file
}
@test 'more_src has _yayo' {
    assert "$(xsrc_find _yayo)" is_file
}
@test 'more_src has _yazi' {
    assert "$(xsrc_find _yazi)" is_file
}
@test 'more_src has _ydotoold' {
    assert "$(xsrc_find _ydotoold)" is_file
}
@test 'more_src has _yfm' {
    assert "$(xsrc_find _yfm)" is_file
}
@test 'more_src has _yi' {
    assert "$(xsrc_find _yi)" is_file
}
@test 'more_src has _yj' {
    assert "$(xsrc_find _yj)" is_file
}
@test 'more_src has _ykman' {
    assert "$(xsrc_find _ykman)" is_file
}
@test 'more_src has _yosay' {
    assert "$(xsrc_find _yosay)" is_file
}
@test 'more_src has _yoshimi' {
    assert "$(xsrc_find _yoshimi)" is_file
}
@test 'more_src has _yoshimi-launcher' {
    assert "$(xsrc_find _yoshimi-launcher)" is_file
}
@test 'more_src has _yosys-abc' {
    assert "$(xsrc_find _yosys-abc)" is_file
}
@test 'more_src has _yosys-config' {
    assert "$(xsrc_find _yosys-config)" is_file
}
@test 'more_src has _yosys-filterlib' {
    assert "$(xsrc_find _yosys-filterlib)" is_file
}
@test 'more_src has _yosys-smtbmc' {
    assert "$(xsrc_find _yosys-smtbmc)" is_file
}
@test 'more_src has _yosys-witness' {
    assert "$(xsrc_find _yosys-witness)" is_file
}
@test 'more_src has _yq' {
    assert "$(xsrc_find _yq)" is_file
}
@test 'more_src has _ysh' {
    assert "$(xsrc_find _ysh)" is_file
}
@test 'more_src has _yt-dlp' {
    assert "$(xsrc_find _yt-dlp)" is_file
}
@test 'more_src has _ytcc' {
    assert "$(xsrc_find _ytcc)" is_file
}
@test 'more_src has _ytfzf' {
    assert "$(xsrc_find _ytfzf)" is_file
}
@test 'more_src has _ytt' {
    assert "$(xsrc_find _ytt)" is_file
}
@test 'more_src has _yubikey-luks' {
    assert "$(xsrc_find _yubikey-luks)" is_file
}
@test 'more_src has _yubikey-personalization-gui' {
    assert "$(xsrc_find _yubikey-personalization-gui)" is_file
}
@test 'more_src has _yugabyte' {
    assert "$(xsrc_find _yugabyte)" is_file
}
@test 'more_src has _yugabytedb' {
    assert "$(xsrc_find _yugabytedb)" is_file
}
@test 'more_src has _yui' {
    assert "$(xsrc_find _yui)" is_file
}
@test 'more_src has _yuki-cli' {
    assert "$(xsrc_find _yuki-cli)" is_file
}
@test 'more_src has _yuzu' {
    assert "$(xsrc_find _yuzu)" is_file
}
@test 'more_src has _z88dk' {
    assert "$(xsrc_find _z88dk)" is_file
}
@test 'more_src has _zabbix-agent' {
    assert "$(xsrc_find _zabbix-agent)" is_file
}
@test 'more_src has _zabbix-agent2' {
    assert "$(xsrc_find _zabbix-agent2)" is_file
}
@test 'more_src has _zabbix-cli' {
    assert "$(xsrc_find _zabbix-cli)" is_file
}
@test 'more_src has _zabbix-get' {
    assert "$(xsrc_find _zabbix-get)" is_file
}
@test 'more_src has _zabbix-java-gateway' {
    assert "$(xsrc_find _zabbix-java-gateway)" is_file
}
@test 'more_src has _zabbix-proxy' {
    assert "$(xsrc_find _zabbix-proxy)" is_file
}
@test 'more_src has _zabbix-sender' {
    assert "$(xsrc_find _zabbix-sender)" is_file
}
@test 'more_src has _zabbix-server' {
    assert "$(xsrc_find _zabbix-server)" is_file
}
@test 'more_src has _zanata-cli' {
    assert "$(xsrc_find _zanata-cli)" is_file
}
@test 'more_src has _zangband' {
    assert "$(xsrc_find _zangband)" is_file
}
@test 'more_src has _zap' {
    assert "$(xsrc_find _zap)" is_file
}
@test 'more_src has _zap-api-scan' {
    assert "$(xsrc_find _zap-api-scan)" is_file
}
@test 'more_src has _zap-baseline' {
    assert "$(xsrc_find _zap-baseline)" is_file
}
@test 'more_src has _zap-full-scan' {
    assert "$(xsrc_find _zap-full-scan)" is_file
}
@test 'more_src has _zaproxy' {
    assert "$(xsrc_find _zaproxy)" is_file
}
@test 'more_src has _zaqar-gc' {
    assert "$(xsrc_find _zaqar-gc)" is_file
}
@test 'more_src has _zaqar-server' {
    assert "$(xsrc_find _zaqar-server)" is_file
}
@test 'more_src has _zaqar-status' {
    assert "$(xsrc_find _zaqar-status)" is_file
}
@test 'more_src has _zarf' {
    assert "$(xsrc_find _zarf)" is_file
}
@test 'more_src has _zathura' {
    assert "$(xsrc_find _zathura)" is_file
}
@test 'more_src has _zbarcam' {
    assert "$(xsrc_find _zbarcam)" is_file
}
@test 'more_src has _zcmp' {
    assert "$(xsrc_find _zcmp)" is_file
}
@test 'more_src has _zdiff' {
    assert "$(xsrc_find _zdiff)" is_file
}
@test 'more_src has _zeabur' {
    assert "$(xsrc_find _zeabur)" is_file
}
@test 'more_src has _zebra' {
    assert "$(xsrc_find _zebra)" is_file
}
@test 'more_src has _zeekctl' {
    assert "$(xsrc_find _zeekctl)" is_file
}
@test 'more_src has _zek' {
    assert "$(xsrc_find _zek)" is_file
}
@test 'more_src has _zellij' {
    assert "$(xsrc_find _zellij)" is_file
}
@test 'more_src has _zen' {
    assert "$(xsrc_find _zen)" is_file
}
@test 'more_src has _zenith' {
    assert "$(xsrc_find _zenith)" is_file
}
@test 'more_src has _zenml-cli' {
    assert "$(xsrc_find _zenml-cli)" is_file
}
@test 'more_src has _zenoh-bridge-dds' {
    assert "$(xsrc_find _zenoh-bridge-dds)" is_file
}
@test 'more_src has _zenoh-bridge-mqtt' {
    assert "$(xsrc_find _zenoh-bridge-mqtt)" is_file
}
@test 'more_src has _zenoh-bridge-ros2dds' {
    assert "$(xsrc_find _zenoh-bridge-ros2dds)" is_file
}
@test 'more_src has _zenoh-router' {
    assert "$(xsrc_find _zenoh-router)" is_file
}
@test 'more_src has _zenohd' {
    assert "$(xsrc_find _zenohd)" is_file
}
@test 'more_src has _zenroom' {
    assert "$(xsrc_find _zenroom)" is_file
}
@test 'more_src has _zentao' {
    assert "$(xsrc_find _zentao)" is_file
}
@test 'more_src has _zerotier-cli' {
    assert "$(xsrc_find _zerotier-cli)" is_file
}
@test 'more_src has _zetten' {
    assert "$(xsrc_find _zetten)" is_file
}
@test 'more_src has _zeus' {
    assert "$(xsrc_find _zeus)" is_file
}
@test 'more_src has _zev' {
    assert "$(xsrc_find _zev)" is_file
}
@test 'more_src has _zf' {
    assert "$(xsrc_find _zf)" is_file
}
@test 'more_src has _zfind' {
    assert "$(xsrc_find _zfind)" is_file
}
@test 'more_src has _zhmccli' {
    assert "$(xsrc_find _zhmccli)" is_file
}
@test 'more_src has _zhmcclient' {
    assert "$(xsrc_find _zhmcclient)" is_file
}
@test 'more_src has _zi' {
    assert "$(xsrc_find _zi)" is_file
}
@test 'more_src has _zig' {
    assert "$(xsrc_find _zig)" is_file
}
@test 'more_src has _zigbee2mqtt' {
    assert "$(xsrc_find _zigbee2mqtt)" is_file
}
@test 'more_src has _zigmod' {
    assert "$(xsrc_find _zigmod)" is_file
}
@test 'more_src has _zild' {
    assert "$(xsrc_find _zild)" is_file
}
@test 'more_src has _zinit4' {
    assert "$(xsrc_find _zinit4)" is_file
}
@test 'more_src has _zion' {
    assert "$(xsrc_find _zion)" is_file
}
@test 'more_src has _zipd' {
    assert "$(xsrc_find _zipd)" is_file
}
@test 'more_src has _zipgrep' {
    assert "$(xsrc_find _zipgrep)" is_file
}
@test 'more_src has _zipkin' {
    assert "$(xsrc_find _zipkin)" is_file
}
@test 'more_src has _zitadel' {
    assert "$(xsrc_find _zitadel)" is_file
}
@test 'more_src has _zizmor' {
    assert "$(xsrc_find _zizmor)" is_file
}
@test 'more_src has _zk' {
    assert "$(xsrc_find _zk)" is_file
}
@test 'more_src has _zkCleanup' {
    assert "$(xsrc_find _zkCleanup)" is_file
}
@test 'more_src has _zkCli' {
    assert "$(xsrc_find _zkCli)" is_file
}
@test 'more_src has _zkServer' {
    assert "$(xsrc_find _zkServer)" is_file
}
@test 'more_src has _zls' {
    assert "$(xsrc_find _zls)" is_file
}
@test 'more_src has _znc-buildmod' {
    assert "$(xsrc_find _znc-buildmod)" is_file
}
@test 'more_src has _znc-config' {
    assert "$(xsrc_find _znc-config)" is_file
}
@test 'more_src has _znvm' {
    assert "$(xsrc_find _znvm)" is_file
}
@test 'more_src has _zoekt' {
    assert "$(xsrc_find _zoekt)" is_file
}
@test 'more_src has _zoekt-git-index' {
    assert "$(xsrc_find _zoekt-git-index)" is_file
}
@test 'more_src has _zola' {
    assert "$(xsrc_find _zola)" is_file
}
@test 'more_src has _zomboid' {
    assert "$(xsrc_find _zomboid)" is_file
}
@test 'more_src has _zonemd' {
    assert "$(xsrc_find _zonemd)" is_file
}
@test 'more_src has _zoneminder' {
    assert "$(xsrc_find _zoneminder)" is_file
}
@test 'more_src has _zookeeper-server' {
    assert "$(xsrc_find _zookeeper-server)" is_file
}
@test 'more_src has _zoom' {
    assert "$(xsrc_find _zoom)" is_file
}
@test 'more_src has _zos' {
    assert "$(xsrc_find _zos)" is_file
}
@test 'more_src has _zplugin' {
    assert "$(xsrc_find _zplugin)" is_file
}
@test 'more_src has _zpwrExpandStats' {
    assert "$(xsrc_find _zpwrExpandStats)" is_file
}
@test 'more_src has _zq' {
    assert "$(xsrc_find _zq)" is_file
}
@test 'more_src has _zrok' {
    assert "$(xsrc_find _zrok)" is_file
}
@test 'more_src has _zrun' {
    assert "$(xsrc_find _zrun)" is_file
}
@test 'more_src has _zsh-bench' {
    assert "$(xsrc_find _zsh-bench)" is_file
}
@test 'more_src has _zsh-defer' {
    assert "$(xsrc_find _zsh-defer)" is_file
}
@test 'more_src has _zsh_source.sh' {
    assert "$(xsrc_find _zsh_source.sh)" is_file
}
@test 'more_src has _zsnes' {
    assert "$(xsrc_find _zsnes)" is_file
}
@test 'more_src has _zstdgrep' {
    assert "$(xsrc_find _zstdgrep)" is_file
}
@test 'more_src has _zsteg' {
    assert "$(xsrc_find _zsteg)" is_file
}
@test 'more_src has _ztnet' {
    assert "$(xsrc_find _ztnet)" is_file
}
@test 'more_src has _zulucrypt' {
    assert "$(xsrc_find _zulucrypt)" is_file
}
@test 'more_src has _zun-api' {
    assert "$(xsrc_find _zun-api)" is_file
}
@test 'more_src has _zun-cni-daemon' {
    assert "$(xsrc_find _zun-cni-daemon)" is_file
}
@test 'more_src has _zun-compute' {
    assert "$(xsrc_find _zun-compute)" is_file
}
@test 'more_src has _zun-db-manage' {
    assert "$(xsrc_find _zun-db-manage)" is_file
}
@test 'more_src has _zun-status' {
    assert "$(xsrc_find _zun-status)" is_file
}
@test 'more_src has _zun-wsproxy' {
    assert "$(xsrc_find _zun-wsproxy)" is_file
}
@test 'more_src has _zuul' {
    assert "$(xsrc_find _zuul)" is_file
}
@test 'more_src has _zx' {
    assert "$(xsrc_find _zx)" is_file
}
@test 'more_src has _zxbasic' {
    assert "$(xsrc_find _zxbasic)" is_file
}
@test 'more_src has _zyn-fusion' {
    assert "$(xsrc_find _zyn-fusion)" is_file
}
@test 'more_src has _zynaddsubfx' {
    assert "$(xsrc_find _zynaddsubfx)" is_file
}
@test 'more_src has _zynaddsubfx-jack' {
    assert "$(xsrc_find _zynaddsubfx-jack)" is_file
}
