# Load the _gcloud helper functions against a fixture SDK, then eval code.
# usage: zsh -f gcloud-load.zsh <sdk-root> <plugin-dir> <code>
path=($1/bin $path)
export XDG_CACHE_HOME=${1:h}/cache
lines=("${(@f)$(<$2/override_src/_gcloud)}")
# Drop the trailing `_gcloud "$@"` so only the functions get defined.
eval "${(F)lines[1,-2]}"
_gcloud_tree_load || print LOAD-FAILED
eval "$3"
