#compdef generate_interactive_bom.py
# Documentation: https://github.com/openscopeproject/InteractiveHtmlBom/wiki/Usage
# generate_interactive_bom.py - generate interactive HTML BOM from a KiCad PCB

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version]' \
  '--show-dialog[show config dialog; all other flags are ignored]' \
  '--dark-mode[default to dark mode]' \
  '--hide-pads[hide footprint pads by default]' \
  '--show-fabrication[show fabrication layer by default]' \
  '--hide-silkscreen[hide silkscreen by default]' \
  '--highlight-pin1=[highlight first pin]:mode:(none all selected)' \
  '--no-redraw-on-drag[do not redraw pcb on drag by default]' \
  '--board-rotation=[board rotation in degrees (-180 to 180)]:degrees' \
  '--offset-back-rotation[offset the back of the pcb by 180 degrees]' \
  '--checkboxes=[comma separated list of checkbox columns]:columns' \
  '--bom-view=[default BOM view]:view:(bom-only left-right top-bottom)' \
  '--layer-view=[default layer view]:view:(F FB B)' \
  '--no-compression[disable compression of pcb data]' \
  '--no-browser[do not launch browser]' \
  '--dest-dir=[destination directory for bom file]:directory:_files -/' \
  '--name-format=[output file name format]:format' \
  '--include-tracks[include track/zone information in output]' \
  '--include-nets[include netlist information in output]' \
  '--sort-order=[default sort order for components]:order' \
  '--blacklist=[comma separated blacklisted components or prefixes]:list' \
  '--no-blacklist-virtual[do not blacklist virtual components]' \
  '--blacklist-empty-val[blacklist components with empty value]' \
  '--netlist-file=[(deprecated) path to netlist or xml file]:file:_files' \
  '--extra-data-file=[path to netlist or xml file]:file:_files' \
  '--extra-fields=[shortcut for show-fields and group-fields]:fields' \
  '--show-fields=[list of fields to show in the BOM]:fields' \
  '--group-fields=[fields that components will be grouped by]:fields' \
  '--normalize-field-case[normalize extra field name case]' \
  '--variant-field=[extra field storing board variant for component]:field' \
  '--variants-whitelist=[board variants to include in the BOM]:list' \
  '--variants-blacklist=[board variants to exclude from the BOM]:list' \
  '--dnp-field=[extra field indicating do not populate status]:field' \
  '*:kicad pcb file:_files -g "*.kicad_pcb"' && ret=0

return ret
