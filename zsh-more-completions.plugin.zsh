# OMZ does not add nested comp dirs to fpath so do it here
# for this to take effect compinit must be run 2x, once in OMZ and once after sourcing this file
dirsFirst=("${0:h}/override_src")
dirsLast=("${0:h}/src" "${0:h}/man_src")
for dir in $dirsFirst[@]; do
    if [[ -z ${fpath[(r)$dir]} ]];then
        fpath=($dir $fpath)
    fi
done
for dir in $dirsLast[@]; do
    if [[ -z ${fpath[(r)$dir]} ]];then
        fpath=($fpath $dir)
    fi
done

unset dirsLast
unset dirsFirst
