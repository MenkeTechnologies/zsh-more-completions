#compdef reconftw.sh
# Documentation: https://github.com/six2dez/reconftw
# automated reconnaissance framework

local ret=1

_arguments -s -S \
  '-d[single target domain]:domain' \
  '-l[file with list of target domains]:list file:_files' \
  '-m[multi-domain target search]:target' \
  '-x[exclude subdomains (out-of-scope)]:exclude file:_files' \
  '-i[include subdomains (in-scope)]:include file:_files' \
  '-r[full recon without active attacks]' \
  '-s[subdomain enumeration and web probing]' \
  '-p[passive reconnaissance only]' \
  '-a[complete recon plus vulnerability checks]' \
  '-w[vulnerability checks on web targets]' \
  '-n[OSINT scanning]' \
  '-z[lightweight recon with basic checks]' \
  '-c[execute specific function]:function' \
  '-f[custom configuration file path]:config file:_files' \
  '-o[output directory for results]:output dir:_files -/' \
  '-v[enable Axiom distributed scanning]' \
  '--vps-count[override Axiom instance count]:count' \
  '-q[set rate limit (requests/second)]:rate' \
  '-y[enable AI result analysis]' \
  '--deep[enable slower, comprehensive scanning]' \
  '--check-tools[verify required tools available]' \
  '--quick-rescan[skip heavy modules if no new assets]' \
  '--health-check[run system health check]' \
  '--dry-run[preview execution without running]' \
  '-h[show help]' && ret=0

return ret
