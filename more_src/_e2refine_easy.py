#compdef e2refine_easy.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2refine_easy.html
# Primary single particle refinement program in EMAN2.1+

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--input=[phase-flipped particle stack for alignment]:file:_files' \
  '--inputavg=[alternate particles for reconstruction after alignment]:file:_files' \
  '--model=[starting map to seed refinement]:file:_files' \
  '--startfrom=[existing refine_xx directory to continue]:dir:_files -/' \
  '--targetres=[target resolution in Angstroms]:res' \
  '--speed=[speed vs precision 1-7 (default 5)]:n' \
  '--sym=[symmetry enforcement (default c1)]:sym' \
  '--breaksym[reconstruction remains asymmetric]' \
  '--focused[3-D mask for fine-tuning and symmetrizing]:file:_files' \
  '--tophat=[filter type local/localwiener/global/none]:type' \
  '--nogoldfinal[final iteration disables gold-standard]' \
  '--treeclassify[use binary tree classification]' \
  '--norandomphase[suppress independent phase randomization]' \
  '--m3dold[use traditional e2make3d instead of e2make3dpar]' \
  '--iter=[total refinement iterations]:n' \
  '--mass=[particle mass in kDa for normalization]:kda' \
  '--invar[use invariants for orientation determination]' \
  '--mirror[force explicit mirrored projections]' \
  '--apix=[angstrom per pixel (0 reads from header)]:apix' \
  '--sep=[classes per particle (default 1)]:n' \
  '--classkeep=[fraction of particles to retain per class]:frac' \
  '--classautomask[apply automask during class-average alignment]' \
  '--prethreshold[threshold volume before projections]' \
  '--eulerrefine[refine Euler angles of class-averages]' \
  '--m3dkeep=[fraction of slices retained in e2make3d]:frac' \
  '--m3dpostprocess=[post-processor for 3-D map each iteration]:proc' \
  '--parallel=[parallel execution spec]:spec' \
  '--threads=[number of cores for single-machine parallelism]:n' \
  '--path=[output directory name]:dir:_files -/' \
  '--compressbits=[precision bits, 0=lossless (default 10)]:n' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--automaskexpand=[voxels to expand mask before soft edge]:n' \
  '--automask3d=[3-D mask processor spec]:proc' \
  '--automask3d2=[secondary mask multiplied by first]:proc' \
  '--projector=[projector type with parameters]:proj' \
  '--orientgen=[orientation generator spec]:gen' \
  '--simalign=[first-stage aligner name]:aligner' \
  '--simaligncmp=[first-stage aligner comparitor]:cmp' \
  '--simralign=[second-stage aligner name]:aligner' \
  '--simraligncmp=[second-stage aligner comparitor]:cmp' \
  '--simcmp=[comparitor for aligned image comparison]:cmp' \
  '--simmask=[mask file before comparison/after alignment]:file:_files' \
  '--shrink=[shrink input particles for speed]:n' \
  '--shrinks1=[shrinking in first classification stage]:n' \
  '--prefilt[filter reference to match particle power spectrum]' \
  '--prectf[CTF-based reference filtering]' \
  '--cmpdiff[binary tree mask focusing on child differences]' \
  '--treeincomplete=[binary tree incompleteness per level]:n' \
  '--classkeepsig[sigma-based keep criterion]' \
  '--classiter=[class averaging iterations]:n' \
  '--classalign=[class-averaging stage 1 aligner]:aligner' \
  '--classaligncmp=[class-averaging stage 1 comparitor]:cmp' \
  '--classralign=[class-averaging stage 2 aligner]:aligner' \
  '--classraligncmp=[class-averaging stage 2 comparitor]:cmp' \
  '--classaverager=[class average generator]:averager' \
  '--classcmp=[class-averaging similarity score comparitor]:cmp' \
  '--classnormproc=[normalization during class averaging]:proc' \
  '--classrefsf[match class-average filtration to projections]' \
  '--pad=[model padding for Fourier artifacts]:n' \
  '--recon=[reconstructor type]:recon' \
  '--m3dkeepsig[standard deviation alternative to m3dkeep]' \
  '--m3dpreprocess=[pre-reconstruction normalization processor]:proc' \
  '--ampcorrect=[amplitude correction method spec]:method' \
  '--lowmem[minimize memory usage]' \
  '--ppid=[set parent process PID]:pid' && ret=0

return ret
