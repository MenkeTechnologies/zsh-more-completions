#compdef fungalrelease.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools FungalRelease: clean fungal assemblies for release

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input scaffolds file]:file:_files' \
  'out=[output scaffolds file]:file:_files' \
  'outc=[output contigs file]:file:_files' \
  'qfin=[optional quality scores input]:file:_files' \
  'qfout=[optional quality scores output]:file:_files' \
  'qfoutc=[optional contig quality scores output]:file:_files' \
  'agp=[output AGP file]:file:_files' \
  'legend=[output name legend file]:file:_files' \
  'overwrite=[allow overwriting existing files]:bool:(t f)' \
  'fastawrap=[FASTA line wrap length]:value' \
  'tuc=[convert sequence to uppercase]:bool:(t f)' \
  'baniupac=[crash on non-ACGTN base calls]:bool:(t f)' \
  'mingap=[minimum gap length to expand]:value' \
  'mingapin=[only expand gaps at least this long]:value' \
  'sortcscaffolds=[sort scaffolds by descending length]:bool:(t f)' \
  'sortcontigs=[sort contigs by descending length]:bool:(t f)' \
  'renamescaffolds=[rename scaffolds to scaffold_# format]:bool:(t f)' \
  'scafnum=[first scaffold number]:value' \
  'renamecontigs=[rename contigs to contig_# format]:bool:(t f)' \
  'contignum=[first contig number]:value' \
  'minscaf=[minimum scaffold length to retain]:value' \
  'mincontig=[minimum contig length to retain]:value' \
  '-Xmx[set maximum Java heap memory]:mem' \
  '*:file:_files' && ret=0

return ret
