#compdef e2make3d.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2make3d.html
# Reconstructs 3D volumes from a set of 2D images using header Euler angles

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--output=[output reconstructed volume file name]:file:_files' \
  '--input=[input projections with xform.projection header]:file:_files' \
  '--input_model=[use only class-averages with this model_id]:id' \
  '--tlt=[IMOD tlt file with alignment angles]:file:_files' \
  '--sym=[set symmetry (i,c,d,tet,icos,oct,none)]:sym' \
  '--pad=[zero-pad images before reconstruction]:size' \
  '--padvol=[dimensions of reconstructed volume]:size' \
  '--outsize=[dimensions of final volume written to disk]:size' \
  '--recon=[reconstructor to use]:recon' \
  '--keep=[fraction of slices to keep by quality scores]:frac' \
  '--keepsig[interpret keep as standard deviation coefficient]' \
  '--keepabs[keep refers to absolute quality]' \
  '--no_wt[turn off automatic weighting of images]' \
  '--iter=[number of iterations for reconstruction]:n' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--nofilecheck[turn file checking off]' \
  '(-c --check)'{-c,--check}'[perform command line argument check only]' \
  '--lowmem[load images as needed to reduce memory usage]' \
  '--preprocess=[preprocessor applied to projections]:proc' \
  '--setsf=[force structure factor to match known curve]:file:_files' \
  '--postprocess=[postprocessor applied to volume]:proc' \
  '--apix=[A/pix value for output]:apix' \
  '--start=[starting model for FFT reconstruction]:file:_files' \
  '--startweight=[starting model weight]:val' \
  '--ppid=[set parent process PID]:pid' && ret=0

return ret
