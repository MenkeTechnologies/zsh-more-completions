#compdef run_inference.py
# Documentation: https://github.com/RosettaCommons/RFdiffusion/blob/main/README.md
# RFdiffusion structure generation (Hydra config overrides)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:hydra override:->overrides' && ret=0

case $state in
  overrides)
    _values -s ' ' 'rfdiffusion config override' \
      'inference.output_prefix[location to write files to]' \
      'inference.num_designs[number of designs to produce]' \
      'inference.input_pdb[input PDB for conditional generation]' \
      'inference.ckpt_override_path[alternative model checkpoint]' \
      'inference.symmetry[symmetry type for oligomer design]' \
      'inference.cyclic[macrocyclic peptide design]' \
      'inference.cyc_chains[chains to cyclize]' \
      'inference.final_step[timestep to stop trajectory early]' \
      'inference.model_directory_path[directory containing model weights]' \
      'contigmap.contigs[protein segments to build/scaffold]' \
      'contigmap.length[exact or range of total protein length]' \
      'contigmap.inpaint_seq[mask sequence identity of residues]' \
      'contigmap.inpaint_str[mask 3D structure of regions]' \
      'contigmap.inpaint_str_helix[helical secondary structure for regions]' \
      'contigmap.inpaint_str_strand[beta strand structure for regions]' \
      'contigmap.provide_seq[keep sequence fixed in ranges]' \
      'diffuser.T[number of denoising timesteps]' \
      'diffuser.partial_T[timestep to noise to for partial diffusion]' \
      'diffuser.crd_scale[coordinate scaling parameter]' \
      'denoiser.noise_scale_ca[scale translational coordinate noise]' \
      'denoiser.noise_scale_frame[scale rotational coordinate noise]' \
      'ppi.hotspot_res[residues the binder must contact]' \
      'ppi.hotspot[alternative hotspot specification]' \
      'scaffoldguided.scaffoldguided[enable fold conditioning]' \
      'scaffoldguided.scaffold_dir[directory containing scaffold structures]' \
      'scaffoldguided.scaffold_list[file listing specific scaffolds]' \
      'scaffoldguided.target_pdb[provide target protein structure]' \
      'scaffoldguided.target_path[path to target protein PDB]' \
      'scaffoldguided.target_ss[secondary structure file for target]' \
      'scaffoldguided.target_adj[block adjacency file for target]' \
      'scaffoldguided.mask_loops[mask loop regions in secondary structure]' \
      'scaffoldguided.sampled_insertion[residues to insert into loops]' \
      'scaffoldguided.sampled_N[residues to add at N-terminus]' \
      'scaffoldguided.sampled_C[residues to add at C-terminus]' \
      'potentials.guiding_potentials[potentials to apply during denoising]' \
      'potentials.guide_scale[strength multiplier for potentials]' \
      'potentials.guide_decay[decay type for potentials]' \
      'potentials.substrate[global substrate specification]' \
      'potentials.olig_intra_all[intra-chain contacts for oligomers]' \
      'potentials.olig_inter_all[inter-chain contacts for oligomers]' && ret=0
    ;;
esac

return ret
