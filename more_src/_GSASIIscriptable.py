#compdef GSASIIscriptable.py
# Documentation: https://gsas-ii.readthedocs.io/en/latest/GSASIIscriptable.html
# GSASIIscriptable.py - GSAS-II scripting command-line interface

local ret=1
local context state line

_arguments -C \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:command:->cmds' \
  '*::arg:->args' && ret=0

case $state in
  cmds)
    local -a cmds
    cmds=(
      'create:create a GSAS-II project, optionally adding histograms/phases'
      'add:add histograms and/or phases to a GSAS-II project'
      'dump:show the contents of a GSAS-II project'
      'refine:conduct refinements from a JSON refinement dict'
      'export:export a phase as CIF'
      'browse:load a project and open an IPython shell to browse it'
    )
    _describe -t commands 'GSASIIscriptable command' cmds && ret=0
    ;;
  args)
    case $line[1] in
      create)
        _arguments -s \
          '(-d --histograms)'{-d,--histograms}'[list of datafiles to add as histograms]:*:_files' \
          '(-i --iparams)'{-i,--iparams}'[instrument parameter file per histogram]:*:_files' \
          '(-p --phases)'{-p,--phases}'[list of phases to add]:*:_files' \
          '*:gpx file:_files -g "*.gpx"' && ret=0
        ;;
      add)
        _arguments -s \
          '(-d --histograms)'{-d,--histograms}'[list of datafiles to add as histograms]:*:_files' \
          '(-i --iparams)'{-i,--iparams}'[instrument parameter file per histogram]:*:_files' \
          '(-hf --histogramformat)'{-hf,--histogramformat}'[format hint for histogram import]:format:' \
          '(-p --phases)'{-p,--phases}'[list of phases to add]:*:_files' \
          '(-pf --phaseformat)'{-pf,--phaseformat}'[format hint for phase import]:format:' \
          '(-l --histlist)'{-l,--histlist}'[histogram indices to associate with added phases]:*:' \
          '*:gpx file:_files -g "*.gpx"' && ret=0
        ;;
      dump)
        _arguments -s \
          '(-d --histograms)'{-d,--histograms}'[list histograms in files]' \
          '(-p --phases)'{-p,--phases}'[list phases in files]' \
          '(-r --raw)'{-r,--raw}'[dump raw file contents]' \
          '*:file:_files' && ret=0
        ;;
      refine)
        _arguments -s \
          '1:gpx file:_files -g "*.gpx"' \
          '2:refinements json:_files -g "*.json"' && ret=0
        ;;
      export)
        _arguments -s \
          '1:gpx file:_files -g "*.gpx"' \
          '2:phase:' \
          '3:export file:_files -g "*.cif"' && ret=0
        ;;
      browse)
        _arguments '*:file:_files -g "*.gpx"' && ret=0
        ;;
    esac
    ;;
esac

return ret
