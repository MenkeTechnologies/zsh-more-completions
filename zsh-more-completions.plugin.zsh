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
