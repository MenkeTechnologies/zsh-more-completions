#compdef convert_hf_to_gguf.py
# Documentation: https://github.com/ggml-org/llama.cpp/blob/master/convert_hf_to_gguf.py
# llama.cpp: convert a HuggingFace model directory to a GGUF file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--vocab-only[extract only the vocabulary]' \
  '--mmproj[convert the multimodal projector for vision models]' \
  '--outfile=[path to write the output GGUF file]:file:_files -g "*.gguf"' \
  '--outtype=[output tensor type]:type:(f32 f16 bf16 q8_0 tq1_0 tq2_0 auto)' \
  '--bigendian[write the model in big-endian byte order]' \
  '--use-temp-file[use a temporary file during conversion]' \
  '--no-lazy[disable lazy tensor evaluation]' \
  '--model-name=[override the model name in metadata]:name:' \
  '--metadata=[path to a metadata override JSON file]:file:_files -g "*.json"' \
  '--split-max-tensors=[max tensors per output split]:count:' \
  '--split-max-size=[max size per output split]:size:' \
  '--dry-run[do not write the output file]' \
  '--no-tensor-first-split[do not place tensors in the first split]' \
  '--remote=[convert a model hosted on the HuggingFace Hub]:repo:' \
  '--mistral-format[treat the input as a Mistral-format model]' \
  '--disable-mistral-community-chat-template[disable the Mistral community chat template]' \
  '--sentence-transformers-dense-modules[include sentence-transformers dense modules]' \
  '--print-supported-models[print supported model architectures and exit]' \
  '--verbose[increase output verbosity]' \
  '*:model directory:_files -/' && ret=0

return ret
