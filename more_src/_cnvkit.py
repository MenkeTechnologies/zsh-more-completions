#compdef cnvkit.py
# Documentation: https://cnvkit.readthedocs.io/en/stable/pipeline.html
# CNVkit copy-number variation caller from targeted/WGS sequencing

local ret=1

local -a subcmds
subcmds=(
  batch target access antitarget autobin coverage reference fix segment
  call scatter diagram heatmap breaks genemetrics sex metrics segmetrics
  export import-picard import-seg import-theta import-rna version
)

_arguments -C -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:subcommand:($subcmds)' \
  '*::args:->args' && ret=0

case $state in
  args)
    case $words[1] in
      batch)
        _arguments -s \
          '*--normal=[normal sample BAM files]:bam:_files' \
          '(-t --targets)'{-t,--targets}'=[target intervals BED]:bed:_files' \
          '(-a --antitargets)'{-a,--antitargets}'=[antitarget intervals BED]:bed:_files' \
          '--annotate=[annotate targets with gene names]:refflat:_files' \
          '(-f --fasta)'{-f,--fasta}'=[reference genome FASTA]:fasta:_files' \
          '(-g --access)'{-g,--access}'=[accessible regions BED]:bed:_files' \
          '(-r --reference)'{-r,--reference}'=[copy-number reference file]:cnn:_files' \
          '--output-reference=[output reference file path]:cnn:_files' \
          '(-d --output-dir)'{-d,--output-dir}'=[output directory]:dir:_files -/' \
          '(-p --processes)'{-p,--processes}'=[number of parallel processes]:int:' \
          '(-m --method)'{-m,--method}'=[pipeline type]:method:(hybrid amplicon wgs)' \
          '--scatter[create scatter plots per sample]' \
          '--diagram[create diagram plots per sample]' \
          '*:bam:_files' && ret=0
        ;;
      *)
        _files && ret=0
        ;;
    esac
    ;;
esac

return ret
