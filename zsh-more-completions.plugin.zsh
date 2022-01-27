# OMZ does not add nested comp dirs to fpath so do it here
# for this to take effect compinit must be run 2x, once in OMZ and once after sourcing this file
(){
    local __zsh_more_comp_dirs_first=("$1/override_src")
    local __zsh_more_comp_dirs_last=("$1/src" "$1/man_src")
    local __zsh_more_comp_dir

    for __zsh_more_comp_dir in $__zsh_more_comp_dirs_first[@]; do
        if [[ -z ${fpath[(r)$__zsh_more_comp_dir]} ]];then
            fpath=($__zsh_more_comp_dir $fpath)
        fi
    done
    for __zsh_more_comp_dir in $__zsh_more_comp_dirs_last[@]; do
        if [[ -z ${fpath[(r)$__zsh_more_comp_dir]} ]];then
            fpath=($fpath $__zsh_more_comp_dir)
        fi
    done
} ${0:h}
