#compdef abistruct.py
# Documentation: https://abinit.github.io/abipy/scripts/abistruct.html
# AbiPy: analyze the crystalline structure stored in FILE

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '1:command:((spglib\:"find space group" abispg\:"call Abinit to find space group" primitive\:"get primitive cell" conventional\:"get conventional cell" proto\:"get prototype" wyckoff\:"get Wyckoff positions" convert\:"convert to another format" print\:"print structure" supercell\:"build supercell" kpath\:"get k-path" bz\:"visualize Brillouin zone" ngkpt\:"get k-mesh" neighbors\:"find neighbors" interpolate\:"interpolate structures" xrd\:"compute XRD pattern" oxistate\:"guess oxidation states" abisanitize\:"sanitize structure" visualize\:"visualize structure" mp_id\:"get structure from Materials Project ID" mp_match\:"match against Materials Project" mp_search\:"search Materials Project" cod_search\:"search COD" animate\:"animate trajectory"))' \
  '*::arg:_files' && ret=0

return ret
