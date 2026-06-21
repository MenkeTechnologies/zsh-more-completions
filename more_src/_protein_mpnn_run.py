#compdef protein_mpnn_run.py
# Documentation: https://github.com/dauparas/ProteinMPNN/blob/main/protein_mpnn_run.py
# ProteinMPNN deep learning protein sequence design

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--suppress_print=[0 for False, 1 for True]:val:(0 1)' \
  '--ca_only[parse CA-only structures and use CA-only models]' \
  '--path_to_model_weights=[path to model weights folder]:dir:_files -/' \
  '--model_name=[ProteinMPNN model name]:name:(v_48_002 v_48_010 v_48_020 v_48_030)' \
  '--use_soluble_model[load weights trained on soluble proteins only]' \
  '--seed=[random seed, 0 picks a random seed]:n:' \
  '--save_score=[save score=-log_prob to npy files]:val:(0 1)' \
  '--save_probs=[save MPNN predicted probabilities per position]:val:(0 1)' \
  '--score_only=[score input backbone-sequence pairs]:val:(0 1)' \
  '--path_to_fasta=[score provided input sequence in fasta format]:file:_files' \
  '--conditional_probs_only=[output conditional probabilities p(s_i)]:val:(0 1)' \
  '--conditional_probs_only_backbone=[conditional probabilities given backbone]:val:(0 1)' \
  '--unconditional_probs_only=[output unconditional probabilities in one pass]:val:(0 1)' \
  '--backbone_noise=[stddev of Gaussian noise added to backbone atoms]:val:' \
  '--num_seq_per_target=[number of sequences to generate per target]:n:' \
  '--batch_size=[batch size, reduce if running out of GPU memory]:n:' \
  '--max_length=[max sequence length]:n:' \
  '--sampling_temp=[sampling temperature for amino acids]:temps:' \
  '--out_folder=[path to a folder to output sequences]:dir:_files -/' \
  '--pdb_path=[path to a single PDB to be designed]:file:_files' \
  '--pdb_path_chains=[which chains to design for a single PDB]:chains:' \
  '--jsonl_path=[path to a folder with parsed pdb into jsonl]:file:_files' \
  '--chain_id_jsonl=[dictionary of chains to design vs fixed]:file:_files' \
  '--fixed_positions_jsonl=[dictionary with fixed positions]:file:_files' \
  '--omit_AAs=[amino acids to omit in the generated sequence]:aas:' \
  '--bias_AA_jsonl=[dictionary specifying AA composition bias]:file:_files' \
  '--bias_by_res_jsonl=[dictionary with per position bias]:file:_files' \
  '--omit_AA_jsonl=[dictionary of AAs to omit at chain indices]:file:_files' \
  '--pssm_jsonl=[dictionary with pssm]:file:_files' \
  '--pssm_multi=[0.0 do not use pssm, 1.0 ignore MPNN predictions]:val:' \
  '--pssm_threshold=[restrict per position AAs]:val:' \
  '--pssm_log_odds_flag=[0 for False, 1 for True]:val:(0 1)' \
  '--pssm_bias_flag=[0 for False, 1 for True]:val:(0 1)' \
  '--tied_positions_jsonl=[dictionary with tied positions]:file:_files' && ret=0

return ret
