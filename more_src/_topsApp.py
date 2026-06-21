#compdef topsApp.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 Sentinel-1 TOPS-mode interferogram processing workflow

local ret=1

_arguments -s -S \
  '--help[display usage information]' \
  '--steps[execute processing steps individually]' \
  '--start[begin processing from specified step]:step:(startup preprocess computeBaselines verifyDEM topo subsetoverlaps coarseoffsets coarseresamp overlapifg prepesd esd rangecoreg fineoffsets fineresamp ion burstifg mergebursts filter unwrap unwrap2stage geocode denseoffsets filteroffsets geocodeoffsets)' \
  '--end[stop processing at specified step]:step:(startup preprocess computeBaselines verifyDEM topo subsetoverlaps coarseoffsets coarseresamp overlapifg prepesd esd rangecoreg fineoffsets fineresamp ion burstifg mergebursts filter unwrap unwrap2stage geocode denseoffsets filteroffsets geocodeoffsets)' \
  '--dostep[execute single named step]:step:(startup preprocess computeBaselines verifyDEM topo subsetoverlaps coarseoffsets coarseresamp overlapifg prepesd esd rangecoreg fineoffsets fineresamp ion burstifg mergebursts filter unwrap unwrap2stage geocode denseoffsets filteroffsets geocodeoffsets)' \
  '--next[run next step in sequence]' \
  '*:input xml:_files -g "*.xml"' && ret=0

return ret
