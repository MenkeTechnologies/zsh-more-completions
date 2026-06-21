#compdef procar.py
# Documentation: https://romerogroup.github.io/pyprocar5.6.6/bands.html
# PyProcar command-line tool to manipulate and plot VASP PROCAR files

local ret=1

_arguments -s -C \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:command:(cat filter bandsplot fermi2D)' \
  '*::arg:->args' && ret=0

case $state in
  args)
    case $line[1] in
      bandsplot|fermi2D)
        _arguments -s \
          '(-m --mode)'{-m,--mode}'[plotting mode]:mode:(plain parametric scatter atomic)' \
          '(-s --spin)'{-s,--spin}'[spin projection]:spin:' \
          '(-a --atoms)'{-a,--atoms}'[atom indices to project]:atoms:' \
          '(-o --orbitals)'{-o,--orbitals}'[orbital indices to project]:orbitals:' \
          '(-f --fermi)'{-f,--fermi}'[Fermi level]:fermi:' \
          '(-e --elimit)'{-e,--elimit}'[energy window]:elimit:' \
          '--cmap=[matplotlib colormap]:cmap:' \
          '--markersize=[marker size]:size:' \
          '--savefig=[output image filename]:file:_files' \
          '--vmin=[minimum color scale value]:vmin:' \
          '--vmax=[maximum color scale value]:vmax:' \
          '*:file:_files' && ret=0
        ;;
      cat|filter)
        _arguments -s '*:file:_files' && ret=0
        ;;
      *)
        _files && ret=0
        ;;
    esac
    ;;
esac

return ret
