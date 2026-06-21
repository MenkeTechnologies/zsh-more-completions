#compdef ragtag.py
# Documentation: https://github.com/malonge/RagTag/wiki/scaffold
# reference-guided scaffolding and assembly improvement toolkit

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --version)'{-v,--version}'[show version]' \
  '-o+[output directory]:dir:_files -/' \
  '-w[overwrite intermediate files]' \
  '-u[add suffix to unplaced sequence headers]' \
  '-e+[reference sequences to ignore]:file:_files' \
  '-j+[query sequences to leave unplaced]:file:_files' \
  '-J+[query headers to exclude from chr0]:file:_files' \
  '-f+[minimum unique alignment length]:len' \
  '--remove-small[remove alignments shorter than -f]' \
  '-q+[minimum mapq score]:mapq' \
  '-d+[maximum alignment merge distance]:dist' \
  '-i+[minimum grouping confidence score]:score' \
  '-a+[minimum location confidence score]:score' \
  '-s+[minimum orientation confidence score]:score' \
  '-C[concatenate unplaced contigs into chr0]' \
  '-r[infer gap sizes]' \
  '-g+[minimum inferred gap size]:size' \
  '-m+[maximum inferred gap size]:size' \
  '-t+[number of aligner threads]:threads' \
  '--aligner=[aligner executable]:file:_files' \
  '--mm2-params=[custom minimap2 parameters]:params' \
  '--unimap-params=[custom unimap parameters]:params' \
  '--nucmer-params=[custom nucmer parameters]:params' \
  '*::command:->cmd' && ret=0

case $state in
  cmd)
    _values 'ragtag command' \
      'scaffold[order and orient sequences against a reference]' \
      'correct[correct misassemblies against a reference]' \
      'patch[fill gaps and patch a query assembly]' \
      'merge[merge multiple scaffoldings into one]' \
      'splitasm[split an assembly at gaps]' \
      'agp2fasta[build a FASTA from an AGP file]' \
      'asmstats[compute assembly statistics]' \
      'delta2paf[convert a delta file to PAF]' \
      'paf2delta[convert a PAF file to delta]' \
      'updategff[update gene coordinates after scaffolding]' && ret=0
    ;;
esac

return ret
