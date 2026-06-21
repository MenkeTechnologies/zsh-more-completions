#compdef uber_subject.py
# Documentation: https://afni.nimh.nih.gov/pub/dist/doc/program_help/uber_subject.py.html
# GUI to generate single-subject afni_proc.py commands

local ret=1

_arguments -s \
  '-help[display help]' \
  '-help_gui[help for the graphical interface]' \
  '-help_howto_program[programming assistance]' \
  '-help_install[installation notes]' \
  '-hist[revision history]' \
  '-show_default_vars[list default variable values]' \
  '-show_valid_opts[display all valid options]' \
  '-show_svar_dict[show subject variable dictionary]' \
  '-ver[display version]' \
  '-verb[verbosity level]:level' \
  '-no_gui[suppress the graphical interface]' \
  '-qt_opts[pass options to PyQt]:*:opts' \
  '-print_ap_command[display the afni_proc.py script]' \
  '-save_ap_command[save afni_proc.py script to file]:file:_files' \
  '-exec_ap_command[execute the afni_proc.py command]' \
  '-exec_proc_script[run the processing script]' \
  '-cvar[set control variable]:var' \
  '-svar[set subject variable]:var' \
  '-sid[subject ID]:id' \
  '-gid[group ID]:id' \
  '-anat[anatomical dataset name]:dataset:_files' \
  '-epi[list of EPI datasets]:*:datasets:_files' \
  '-stim[stimulus timing files]:*:files:_files' && ret=0

return ret
