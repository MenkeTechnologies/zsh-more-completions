#compdef sp_mask.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_mask.py
# SPHIRE: create an adaptive 3D mask from an input volume

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--prefix=[prefix for the produced files]:prefix:' \
  '--overwrite[override existing files]' \
  '(--low_pass_filter_resolution --fl)'{--low_pass_filter_resolution,--fl}'=[target low-pass filter resolution in angstrom]:ang:' \
  '(--low_pass_filter_falloff --aa)'{--low_pass_filter_falloff,--aa}'=[low pass filter falloff in absolute frequencies]:f:' \
  '(--pixel_size --apix)'{--pixel_size,--apix}'=[pixel size of the input volume]:apix:' \
  '(--threshold --thr)'{--threshold,--thr}'=[binarization threshold]:thr:' \
  '(--nsigma --ns)'{--nsigma,--ns}'=[times of sigma to calculate binarization threshold]:n:' \
  '(--mol_mass --mm)'{--mol_mass,--mm}'=[estimated molecular mass in kD]:kd:' \
  '(--ndilation --nd)'{--ndilation,--nd}'=[iterations to dilate the binarized volume]:n:' \
  '(--nerosion --ne)'{--nerosion,--ne}'=[iterations to erode the binarized volume]:n:' \
  '(--edge_width --ew)'{--edge_width,--ew}'=[width of the soft edge of the mask in pixels]:n:' \
  '(--edge_type --et)'{--edge_type,--et}'=[type of the soft edge]:type:' \
  '(--do_old --da)'{--do_old,--da}'[restore the old masking behaviour]' \
  '(--allow_disconnected --ad)'{--allow_disconnected,--ad}'[allow disconnected regions in the mask]' \
  '(--fill_mask --fill)'{--fill_mask,--fill}'[fill empty regions in the mask]' \
  '(--second_mask --sm)'{--second_mask,--sm}'=[file path of optional second mask]:file:_files' \
  '(--second_mask_shape --sms)'{--second_mask_shape,--sms}'=[shape of the second mask]:shape:' \
  '(--s_threshold --sthr)'{--s_threshold,--sthr}'=[second mask binarization threshold]:thr:' \
  '(--s_nsigma --sns)'{--s_nsigma,--sns}'=[second mask sigma multiple]:n:' \
  '(--s_pixel_size --sapix)'{--s_pixel_size,--sapix}'=[second mask pixel size]:apix:' \
  '(--s_mol_mass --smm)'{--s_mol_mass,--smm}'=[second mask molecular mass in kD]:kd:' \
  '(--s_radius --sr)'{--s_radius,--sr}'=[second mask sphere/cylinder radius]:r:' \
  '(--s_nx --snx)'{--s_nx,--snx}'=[second mask X dimension]:nx:' \
  '(--s_ny --sny)'{--s_ny,--sny}'=[second mask Y dimension]:ny:' \
  '(--s_nz --snz)'{--s_nz,--snz}'=[second mask Z dimension]:nz:' \
  '(--s_ndilation --snd)'{--s_ndilation,--snd}'=[second mask dilation iterations]:n:' \
  '(--s_nerosion --sne)'{--s_nerosion,--sne}'=[second mask erosion iterations]:n:' \
  '(--s_edge_width --sew)'{--s_edge_width,--sew}'=[second mask soft edge width in pixels]:n:' \
  '(--s_edge_type --set)'{--s_edge_type,--set}'=[second mask soft edge type]:type:' \
  '(--s_do_old --sda)'{--s_do_old,--sda}'[second mask: restore old masking behaviour]' \
  '(--s_allow_disconnected --sad)'{--s_allow_disconnected,--sad}'[second mask: allow disconnected regions]' \
  '(--s_fill_mask --sfm)'{--s_fill_mask,--sfm}'[second mask: fill empty regions]' \
  '(--s_invert --sinv)'{--s_invert,--sinv}'[second mask: exclude region instead of including it]' \
  '*:file:_files' && ret=0

return ret
