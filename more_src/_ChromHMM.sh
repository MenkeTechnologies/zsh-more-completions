#compdef ChromHMM.sh ChromHMM
# Documentation: https://compbio.mit.edu/ChromHMM/ChromHMM_manual.pdf
# ChromHMM: chromatin state discovery and characterization

local ret=1
local curcontext="$curcontext" state line
typeset -A opt_args

_arguments -C \
  '1: :->command' \
  '*:: :->args' && ret=0

case $state in
  command)
    local -a cmds
    cmds=(
      'BinarizeBam:binarize aligned reads in BAM files for model learning'
      'BinarizeBed:binarize aligned reads in BED files for model learning'
      'BinarizeSignal:binarize already-processed signal files'
      'LearnModel:learn chromatin state model and produce a segmentation'
      'MakeSegmentation:produce a segmentation from a saved model'
      'MakeBrowserFiles:convert a segmentation into UCSC browser tracks'
      'OverlapEnrichment:compute fold enrichment of states for external coordinates'
      'NeighborhoodEnrichment:compute positional enrichment around anchor positions'
      'CompareModels:compare models with different numbers of states'
      'EvalSubset:evaluate how well a subset of marks recovers a segmentation'
      'Reorder:reorder the states or columns of a model'
      'StatePruning:prune states from a model'
      'ConvertGeneTable:convert a UCSC gene table into enrichment coordinate files'
      'MergeBinary:merge binarized data files'
      'Version:print version information'
    )
    _describe -t commands 'ChromHMM command' cmds && ret=0
    ;;
  args)
    case $line[1] in
      BinarizeBam|BinarizeBed)
        _arguments -s -S \
          '-addchr[add chr prefix to chromosome names]' \
          '-b[bin size in base pairs]:binsize:' \
          '-c[control directory]:dir:_files -/' \
          '-center[assign read by center of interval]' \
          '-colfields[0-based columns for chromosome,start,end,strand]:cols:' \
          '-e[amount subtracted from end coordinate]:offsetend:' \
          '-f[fold threshold for binarization]:foldthresh:' \
          '-g[signal threshold for binarization]:signalthresh:' \
          '-gzip[output binarized files gzipped]' \
          '-n[shift in base pairs]:shift:' \
          '-o[output control directory]:dir:_files -/' \
          '-p[poisson threshold]:poissonthresh:' \
          '-paired[treat reads as pairs]' \
          '-mixed[decide single vs paired per read]' \
          '-peaks[binarize based on already called peaks]' \
          '-i[split row index]:splitrowindex:' \
          '-s[amount subtracted from start coordinate]:offsetstart:' \
          '-splitcols[split columns of binarized output]' \
          '-k[split column index]:splitcolindex:' \
          '-m[number of split columns]:numsplitcols:' \
          '-splitrows[split chromosome data across files]' \
          '-j[number of bins per split file]:numsplitbins:' \
          '-stacked[stacked binarization]' \
          '-strictthresh[use strict thresholding]' \
          '-t[output signal directory]:dir:_files -/' \
          '-u[pseudocount for control]:pseudocountcontrol:' \
          '-w[flank width for control]:flankwidthcontrol:' \
          '*:file:_files' && ret=0
        ;;
      LearnModel)
        _arguments -s -S \
          '-b[bin size in base pairs]:binsize:' \
          '-color[heat map color as r,g,b]:rgb:' \
          '-d[convergence delta on log likelihood]:convergedelta:' \
          '-e[load smoothing for emission parameters]:loadsmoothemission:' \
          '-f[file listing binarized files to include]:file:_files' \
          '-gzip[output segmentation and browser files gzipped]' \
          '-h[information-based initialization smoothing]:informationsmooth:' \
          '-holdcolumnorder[suppress reordering of mark columns]' \
          '-holdroworder[suppress reordering of states]' \
          '-i[string included in output file names]:outfileID:' \
          '-init[parameter initialization method]:init:(information random load)' \
          '-l[chromosome length file]:file:_files' \
          '-lowmem[reduce memory usage at cost of runtime]' \
          '-m[model file with initial parameters]:file:_files' \
          '-many[slower but numerically stable emission evaluation]' \
          '-n[number of sequence files used per iteration]:numseq:' \
          '-noautoopen[do not auto-open results web page]' \
          '-nobed[suppress four-column segmentation output]' \
          '-nobrowser[do not print genome browser files]' \
          '-nobrowserheader[do not print browser file headers]' \
          '-noenrich[do not print enrichment files]' \
          '-noimage[suppress image file output]' \
          '-nopseudolast[no pseudo count for last mark emission]' \
          '-p[maximum number of processors]:maxprocessors:' \
          '-pseudo[use pseudo counts of 1 in model parameters]' \
          '-printposterior[print posterior probabilities to file]' \
          '-printstatebyline[print state assignments one per line]' \
          '-r[maximum number of training iterations]:maxiterations:' \
          '-s[random seed]:seed:' \
          '-scalebeta[rescale backward variables to prevent overflow]' \
          '-splitrows[combine chromosome data split across files]' \
          '-stateordering[order states by emission or transition]:order:(emission transition)' \
          '-t[load smoothing for transition parameters]:loadsmoothtransition:' \
          '-u[directory of coordinate files for enrichment]:dir:_files -/' \
          '-v[directory of anchor files for enrichment]:dir:_files -/' \
          '-x[maximum seconds for optimization]:maxseconds:' \
          '-z[zero transition power threshold]:zerotransitionpower:' \
          '*:dir:_files -/' && ret=0
        ;;
      *)
        _files && ret=0
        ;;
    esac
    ;;
esac

return ret
