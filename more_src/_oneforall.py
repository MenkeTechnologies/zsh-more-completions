#compdef oneforall.py
# Documentation: https://github.com/shmilylty/OneForAll
# Powerful subdomain collection tool.

local ret=1

_arguments -C -s -S \
  '--target[single domain to scan]:domain' \
  '--targets[file with domains, one per line]:file:_files' \
  '--brute[enable brute force module (default True)]:bool:(True False)' \
  '--dns[enable DNS resolution (default True)]:bool:(True False)' \
  '--req[enable HTTP requests to subdomains (default True)]:bool:(True False)' \
  '--port[port range (default small)]:port:(small medium large)' \
  '--alive[export only active subdomains (default False)]:bool:(True False)' \
  '--fmt[output format (default csv)]:format:(csv json)' \
  '--path[result save location]:file:_files' \
  '--takeover[scan for subdomain takeover (default False)]:bool:(True False)' \
  '*::command:((
    run\:"execute full OneForAll scan workflow"
    version\:"display version and exit"
    check\:"check for a newer version and exit"
  ))' && ret=0

return ret
