#compdef e2import.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2import.py
# EMAN2: import movies, tiltseries, tomograms, particles or boxes into a project

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--import_movies[import DDD movies]' \
  '--darkrefs=[comma separated list of dark reference stacks]:list:' \
  '--gainrefs=[comma separated list of gain reference stacks]:list:' \
  '--apix=[apix of the tiltseries being imported]:apix:' \
  '--import_tiltseries[import tiltseries]' \
  '--mdoc=[SerialEM .mdoc file or folder or auto]:mdoc:_files' \
  '--rawtlt=[imod/serialem rawtlt file]:file:_files' \
  '--import_tomos[import tomograms]' \
  '--compressbits=[bits to keep for compression]:n:' \
  '--removesub=[exclude this string from imported filenames]:str:' \
  '--import_particles[import particles]' \
  '--import_eman1[import a phase-flipped particle stack from EMAN1]' \
  '--importation=[import mode move copy or link]:mode:(move copy link)' \
  '--invert[invert the contrast before importing tomograms]' \
  '--shrink=[shrink tomograms before importing]:f:' \
  '--import_boxes[import boxes]' \
  '--extension=[extension of micrographs that the boxes match]:ext:' \
  '--box_type=[type of boxes to import]:type:(boxes tiltedboxes untiltedboxes)' \
  '--boxsize=[boxsize for each particle]:size:' \
  '--curdefocushint[use EMAN1 defocus as starting point]' \
  '--curdefocusfix[use EMAN1 defocus unchanged]' \
  '--threads=[number of threads to run in parallel]:n:' \
  '--verbose=[verbose level 0-9]:level:' \
  '--ppid=[set PID of parent process]:pid:' \
  '*:file:_files' && ret=0

return ret
