#compdef stripmapApp.py
# Documentation: https://github.com/isce-framework/isce2
# ISCE2 stripmap-mode interferogram processing workflow

local ret=1

_arguments -s -S \
  '--help[display usage information]' \
  '--steps[execute processing in step-by-step mode]' \
  '--start[begin execution at specified step]:step:(startup preprocess cropraw formslc cropslc verifyDEM topo geo2rdr coarse_resample misregistration refined_resample dense_offsets rubber_sheet_range rubber_sheet_azimuth fine_resample split_range_spectrum sub_band_resample interferogram sub_band_interferogram filter filter_low_band filter_high_band unwrap unwrap_low_band unwrap_high_band ionosphere geocode geocodeoffsets endup)' \
  '--end[terminate execution after specified step]:step:(startup preprocess cropraw formslc cropslc verifyDEM topo geo2rdr coarse_resample misregistration refined_resample dense_offsets rubber_sheet_range rubber_sheet_azimuth fine_resample split_range_spectrum sub_band_resample interferogram sub_band_interferogram filter filter_low_band filter_high_band unwrap unwrap_low_band unwrap_high_band ionosphere geocode geocodeoffsets endup)' \
  '--dostep[execute single named step]:step:(startup preprocess cropraw formslc cropslc verifyDEM topo geo2rdr coarse_resample misregistration refined_resample dense_offsets rubber_sheet_range rubber_sheet_azimuth fine_resample split_range_spectrum sub_band_resample interferogram sub_band_interferogram filter filter_low_band filter_high_band unwrap unwrap_low_band unwrap_high_band ionosphere geocode geocodeoffsets endup)' \
  '--next[run next step in sequence]' \
  '*:input xml:_files -g "*.xml"' && ret=0

return ret
