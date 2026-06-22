#compdef petsc_gen_xdmf.py
# Documentation: https://gitlab.com/petsc/petsc/-/blob/main/lib/petsc/bin/petsc_gen_xdmf.py
# Generate XDMF (.xmf) metadata from PETSc HDF5 output for ParaView/VisIt

local ret=1

_arguments -s -S \
  '*:HDF5 file:_files -g "*.(h5|hdf5)"' && ret=0

return ret
