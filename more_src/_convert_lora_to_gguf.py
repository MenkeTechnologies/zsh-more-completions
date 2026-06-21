#compdef convert_lora_to_gguf.py
# Documentation: https://github.com/ggml-org/llama.cpp/blob/master/convert_lora_to_gguf.py
# llama.cpp: convert a HuggingFace PEFT LoRA adapter to a GGUF file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--outfile=[path to write the output GGUF file]:file:_files -g "*.gguf"' \
  '--outtype=[output tensor type]:type:(f32 f16 bf16 q8_0 auto)' \
  '--bigendian[write the model in big-endian byte order]' \
  '--no-lazy[disable lazy tensor evaluation]' \
  '--base=[directory containing the base model]:dir:_files -/' \
  '--base-model-id=[HuggingFace model id of the base model]:id:' \
  '--trust-remote-code[allow loading remote code from the base model]' \
  '--dry-run[do not write the output file]' \
  '--verbose[increase output verbosity]' \
  '*:LoRA directory:_files -/' && ret=0

return ret
