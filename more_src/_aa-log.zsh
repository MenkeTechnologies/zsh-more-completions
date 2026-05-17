#compdef aa-log
# Documentation: https://github.com/roddhjav/apparmor.d
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/roddhjav/apparmor.d/blob/f8de8d248ba607d48c8f3e798b19cd35f814d71c/share/zsh/site-functions/_aa-log.zsh
# Repository: roddhjav/apparmor.d (share/zsh/site-functions/_aa-log.zsh)
#autoload

_aa-log() {
	local IFS=$'\n'
	_arguments : \
		{-f,--file}'[set a logfile or a suffix to the default log file]:FILE:__aa_files' \
		{-s,--systemd}'[parse systemd logs from journalctl]' \
		{-r,--rules}'[convert the log into AppArmor rules]' \
		{-R,--raw}'[print the raw log without any formatting]' \
		{-h,--help}'[display help information]'

	_values -C 'profile names' ${$(__aa_profiles):-""}
}

__aa_files() {
	find /var/log/audit/ -type f -printf '%P\n' | cut -d '.' -f 3
	_files
}

__aa_profiles() {
	find -L /etc/apparmor.d -maxdepth 1 -type f -printf '%P\n' | sort
}

_aa-log
