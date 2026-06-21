#compdef insarApp.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 legacy stripmap InSAR processing workflow

local ret=1

_arguments -s -S \
  '--help[display usage information]' \
  '--steps[display individual processing steps]' \
  '--start[begin execution at specified step]:step:(startup preprocess verifyDEM pulsetiming estimateHeights mocompath orbit2sch updatepreprocinfo formslc offsetprf outliers1 prepareresamps resamp resamp_image mocompbaseline settopoint1 topo shadecpx2rg rgoffset rg_outliers2 resamp_only settopoint2 correct coherence filter mask unwrap unwrap2stage geocode)' \
  '--end[terminate execution after specified step]:step:(startup preprocess verifyDEM pulsetiming estimateHeights mocompath orbit2sch updatepreprocinfo formslc offsetprf outliers1 prepareresamps resamp resamp_image mocompbaseline settopoint1 topo shadecpx2rg rgoffset rg_outliers2 resamp_only settopoint2 correct coherence filter mask unwrap unwrap2stage geocode)' \
  '--dostep[execute single named step]:step:(startup preprocess verifyDEM pulsetiming estimateHeights mocompath orbit2sch updatepreprocinfo formslc offsetprf outliers1 prepareresamps resamp resamp_image mocompbaseline settopoint1 topo shadecpx2rg rgoffset rg_outliers2 resamp_only settopoint2 correct coherence filter mask unwrap unwrap2stage geocode)' \
  '--next[run next step in sequence]' \
  '*:input xml:_files -g "*.xml"' && ret=0

return ret
