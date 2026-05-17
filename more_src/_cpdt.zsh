#compdef editdt
# Documentation: https://github.com/ausungju/editdt
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: ausungju/editdt completion/_cpdt.zsh

_editdt() {
    local context state line
    typeset -A opt_args
    
    _arguments -s -S \
        '(-c -e -n)-a[HOME and ROOT desktop files edit]:all desktop file:->all_files' \
        '(-a -e -n)-c[ROOT desktop file copy and edit]:root desktop file:->root_files' \
        '(-a -c -n)-e[HOME desktop file edit]:home desktop file:->home_files' \
        '(-a -c -e)-n[new desktop file creation in HOME]:new filename:' \
        '-h[show help message]'
    
    case "$state" in
        all_files)
            _editdt_all_files
            ;;
        root_files)
            _editdt_root_files
            ;;
        home_files)
            _editdt_home_files
            ;;
    esac
}

_editdt_all_files() {
	local -a all_files
	local -A seen
	
	if [[ -d ~/.local/share/applications ]]; then
		for file in ~/.local/share/applications/*.desktop(N); do
			local basename="${file:t:r}"
			all_files+=("$basename")
			seen[$basename]=1
		done
	fi
	
	if [[ -d /usr/share/applications ]]; then
		for file in /usr/share/applications/*.desktop(N); do
			local basename="${file:t:r}"
			if [[ -z ${seen[$basename]} ]]; then
				all_files+=("$basename")
			fi
		done
	fi
	
	_describe 'all desktop files' all_files
}

_editdt_root_files() {
    local -a root_files
    local -A seen
    
    if [[ -d ~/.local/share/applications ]]; then
        for file in ~/.local/share/applications/*.desktop(N); do
            local basename="${file:t:r}"
            seen[$basename]=1
        done
    fi
    
    if [[ -d /usr/share/applications ]]; then
        for file in /usr/share/applications/*.desktop(N); do
            local basename="${file:t:r}"
            if [[ -z ${seen[$basename]} ]]; then
                root_files+=("$basename")
            fi
        done
    fi
    
    _describe 'root desktop files' root_files
}

_editdt_home_files() {
    local -a home_files
    
    if [[ -d ~/.local/share/applications ]]; then
        for file in ~/.local/share/applications/*.desktop(N); do
            local basename="${file:t:r}"
            home_files+=("$basename")
        done
    fi
    
    _describe 'home desktop files' home_files
}
