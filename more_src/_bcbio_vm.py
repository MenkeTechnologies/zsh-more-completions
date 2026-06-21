#compdef bcbio_vm.py
# Documentation: https://github.com/bcbio/bcbio-nextgen-vm
# bcbio_vm.py: run bcbio-nextgen analyses in isolated containers and VMs

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--datadir=[directory with genome data and associated files]:dir:_files -/' \
  '--data[install or upgrade data dependencies]' \
  '--tools[install or upgrade tool dependencies]' \
  '--wrapper[update wrapper bcbio-nextgen-vm code]' \
  '--image=[docker image name to use]:image:' \
  '--cores=[cores for parallel data prep]:cores:' \
  '--fcdir=[directory of Illumina output or fastq files]:dir:_files -/' \
  '--systemconfig=[global YAML configuration file]:yaml:_files' \
  '(-n --numcores)'{-n,--numcores}'=[total cores for processing]:cores:' \
  '(-r --resources)'{-r,--resources}'=[cluster-specific resource specs]:resources:' \
  '--timeout=[minutes before cluster startup times out]:minutes:' \
  '--retries=[retries of failed tasks]:retries:' \
  '(-t --tag)'{-t,--tag}'=[tag name for cluster jobs]:tag:' \
  '--tmpdir=[local temporary directory path]:dir:_files -/' \
  '--relpaths[convert inputs to relative paths]' \
  '--no-container[use local bcbio instead of docker]' \
  '(-s --scheduler)'{-s,--scheduler}'=[HPC scheduler]:scheduler:(lsf sge torque slurm pbspro htcondor)' \
  '(-q --queue)'{-q,--queue}'=[scheduler queue]:queue:' \
  '(-j --joblimit)'{-j,--joblimit}'=[max simultaneous jobs]:jobs:' \
  '--port=[external server port]:port:' \
  '1:command:(install upgrade run ipython ipythonprep template cwl cwlrun runfn server saveconfig graph aws)' \
  '*::args:_files' && ret=0

return ret
