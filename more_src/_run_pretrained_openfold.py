#compdef run_pretrained_openfold.py
# Documentation: https://github.com/aqlaboratory/openfold/blob/main/run_pretrained_openfold.py
# OpenFold pretrained structure inference

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--use_precomputed_alignments=[path to alignment directory]:dir:_files -/' \
  '--use_custom_template[use mmCIF files as template input]' \
  '--use_single_seq_mode[use single sequence embeddings instead of MSAs]' \
  '--output_dir=[directory for output predictions]:dir:_files -/' \
  '--model_device=[device for model execution]:device:' \
  '--config_preset=[model config preset name]:preset:' \
  '--jax_param_path=[path to JAX model parameters]:file:_files' \
  '--openfold_checkpoint_path=[path to OpenFold checkpoint]:file:_files' \
  '--save_outputs[save all model outputs including embeddings]' \
  '--cpus=[number of CPUs for alignment tools]:n:' \
  '--preset=[database preset]:preset:(reduced_dbs full_dbs)' \
  '--output_postfix=[postfix for output filenames]:postfix:' \
  '--data_random_seed=[random seed for data processing]:n:' \
  '--skip_relaxation[skip protein relaxation step]' \
  '--multimer_ri_gap=[residue index offset between sequences]:n:' \
  '--trace_model[convert model parts to TorchScript]' \
  '--subtract_plddt[output (100 - pLDDT) in B-factor column]' \
  '--long_sequence_inference[enable memory-reduction for longer sequences]' \
  '--cif_output[output in ModelCIF format instead of PDB]' \
  '--experiment_config_json=[path to JSON file with custom config]:file:_files' \
  '--use_deepspeed_evoformer_attention[use DeepSpeed evoformer attention layer]' \
  '--use_cuequivariance_attention[use cuEquivariance kernels for attention]' \
  '--use_cuequivariance_multiplicative_update[use cuEquivariance kernels for updates]' \
  '--trt_mode=[TensorRT mode]:mode:(build run)' \
  '--trt_engine_dir=[directory with TensorRT .onnx and .plan files]:dir:_files -/' \
  '--precision=[precision type]:precision:(tf32 fp32 fp16 bf16)' \
  '--trt_max_sequence_len=[maximum sequence length for TensorRT]:n:' \
  '--trt_num_profiles=[number of TensorRT optimization profiles]:n:' \
  '--trt_optimization_level=[TensorRT optimization level]:level:(0 1 2 3 4 5)' \
  '1:fasta dir:_files -/' \
  '2:template mmcif dir:_files -/' && ret=0

return ret
