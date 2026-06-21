#compdef batchFCSPlot.py
# Documentation: https://github.com/alexpreynolds/flow-cytometry-visualization/blob/master/batchFCSPlot.py
# Batch convert FCS flow-cytometry files to PNG scatterplots. Flags mirror parseArguments() in batchFCSPlot.py.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --inputDir)'{-i+,--inputDir=}'[input directory of FCS files]:dir:_files -/' \
  '(-o --outputDir)'{-o+,--outputDir=}'[output directory for PNG images]:dir:_files -/' \
  '(-c --fcsColumns)'{-c+,--fcsColumns=}'[three comma-separated FCS column names]:columns:' \
  '(-x --gateX)'{-x+,--gateX=}'[X-axis gate threshold (default 3.55)]:value:' \
  '(-y --gateY)'{-y+,--gateY=}'[Y-axis gate threshold (default 3.2)]:value:' \
  '(-z --gateZ)'{-z+,--gateZ=}'[Z-axis gate threshold (default 3.02)]:value:' \
  '(-1 --xRangeMin)'{-1+,--xRangeMin=}'[X-axis minimum range (default 0)]:value:' \
  '(-2 --xRangeMax)'{-2+,--xRangeMax=}'[X-axis maximum range (default 6)]:value:' \
  '(-3 --yRangeMin)'{-3+,--yRangeMin=}'[Y-axis minimum range (default 0)]:value:' \
  '(-4 --yRangeMax)'{-4+,--yRangeMax=}'[Y-axis maximum range (default 6)]:value:' \
  '(-5 --zRangeMin)'{-5+,--zRangeMin=}'[Z-axis minimum range (default 0)]:value:' \
  '(-6 --zRangeMax)'{-6+,--zRangeMax=}'[Z-axis maximum range (default 6)]:value:' && ret=0

return ret
