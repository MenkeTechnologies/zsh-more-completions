#compdef lepus.py
# Documentation: https://github.com/gfek/Lepus
# Domain reconnaissance and subdomain enumeration.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-w --wordlist)'{-w,--wordlist}'[wordlist with subdomains]:file:_files' \
  '(-hw --hide-wildcards)'{-hw,--hide-wildcards}'[hide wildcard resolutions]' \
  '(-t --threads)'{-t,--threads}'[number of threads (default 100)]:threads' \
  '(-nc --no-collectors)'{-nc,--no-collectors}'[skip passive subdomain enumeration]' \
  '(-zt --zone-transfer)'{-zt,--zone-transfer}'[attempt zone transfer from name servers]' \
  '--permutate[perform permutations on resolved domains]' \
  '(-pw --permutation-wordlist)'{-pw,--permutation-wordlist}'[wordlist to perform permutations with]:file:_files' \
  '--reverse[perform reverse dns lookups on resolved public IPs]' \
  '(-ripe --ripe)'{-ripe,--ripe}'[query ripe database for networks]' \
  '(-r --ranges)'{-r,--ranges}'[comma separated ip ranges for reverse dns]:ranges' \
  '(-or --only-ranges)'{-or,--only-ranges}'[use only provided ranges, not all identified IPs]' \
  '--portscan[scan resolved public IPs for open ports]' \
  '(-p --ports)'{-p,--ports}'[set of ports for portscan (default medium)]:ports' \
  '--takeover[check identified hosts for subdomain take-overs]' \
  '--markovify[use markov chains to identify more subdomains]' \
  '(-ms --markov-state)'{-ms,--markov-state}'[markov state size (default 3)]:size' \
  '(-ml --markov-length)'{-ml,--markov-length}'[max length of markov substitutions (default 5)]:length' \
  '(-mq --markov-quantity)'{-mq,--markov-quantity}'[max quantity of markov results per length (default 5)]:quantity' \
  '(-f --flush)'{-f,--flush}'[purge all records of the domain from the database]' \
  '(-v --version)'{-v,--version}'[show version]' \
  '*:domain' && ret=0

return ret
