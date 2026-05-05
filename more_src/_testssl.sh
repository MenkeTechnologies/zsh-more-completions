#compdef testssl.sh

_arguments -s \
  '(- *)--help[show help]' \
  '(-b --banner)'{-b,--banner}'[show banner]' \
  '(- *)'{-v,--version}'[show version]' \
  '(-V --local)'{-V,--local}'[show local ciphers]' \
  '(-q --quiet)'{-q,--quiet}'[quiet mode]' \
  '-p[show protocols]' \
  '-s[show standard cipher categories]' \
  '-e[each cipher]' \
  '-E[each cipher remote]' \
  '-x=[match cipher]:pattern:' \
  '-f[forward secrecy]' \
  '-P[server preferences]' \
  '-S[server defaults]' \
  '-h[HTTP header]' \
  '-c[client simulation]' \
  '-g[grease]' \
  '-U[all vulnerabilities]' \
  '-H[Heartbleed]' \
  '-I[CCS injection]' \
  '-T[ticketbleed]' \
  '--BB[Bleichenbacher]' \
  '--SI[secure renegotiation]' \
  '-R[Renegotiation]' \
  '-C[CRIME]' \
  '-B[BREACH]' \
  '-O[POODLE]' \
  '-Z[TLS_FALLBACK_SCSV]' \
  '-W[SWEET32]' \
  '-F[FREAK]' \
  '-D[DROWN]' \
  '-J[LOGJAM]' \
  '-A[BEAST]' \
  '-L[LUCKY13]' \
  '-WS[winshock]' \
  '-4[RC4]' \
  '(-t --starttls)'{-t,--starttls=}'[STARTTLS protocol]:proto:(smtp imap pop3 ftp xmpp telnet ldap nntp postgres mysql)' \
  '--xmpphost=[XMPP host]:host:' \
  '--mx=[MX records]:domain:' \
  '--file=[input file]:file:_files' \
  '-iL[input file]:file:_files' \
  '--mode=[scan mode]:mode:(serial parallel)' \
  '--parallel[parallel scan]' \
  '--serial[serial scan]' \
  '--warnings=[warnings level]:level:(batch off false)' \
  '--ip=[target IP]:ip:' \
  '-6[IPv6]' \
  '--proxy=[proxy]:host\:port:' \
  '--connect-timeout=[connect timeout]:secs:' \
  '--openssl-timeout=[openssl timeout]:secs:' \
  '--nodns=[DNS mode]:mode:(none min) ' \
  '--ssl-native[use native SSL]' \
  '--openssl=[openssl path]:file:_files' \
  '--bugs[openssl bug compat]' \
  '--assuming-http[assume HTTP]' \
  '--basicauth=[basic auth]:user\:pw:' \
  '--reqheader=[request header]:hdr:' \
  '--mtls=[mutual TLS cert]:file:_files' \
  '--sneaky[sneaky user agent]' \
  '--user-agent=[user agent]:string:' \
  '--wide[wide output]' \
  '--mapping=[mapping]:mode:(rfc openssl iana no-openssl)' \
  '--show-each[show each cipher]' \
  '--color=[color level]:level:(0 1 2 3)' \
  '--colorblind[colorblind mode]' \
  '--debug=[debug level]:n:(0 1 2 3 4 5 6)' \
  '--disable-rating[disable rating]' \
  '--log[enable logging]' \
  '--logging[enable logging]' \
  '--logfile=[log file]:file:_files' \
  '-oL[log file]:file:_files' \
  '--json[JSON output]' \
  '--jsonfile=[JSON file]:file:_files' \
  '-oj[JSON file]:file:_files' \
  '--json-pretty[pretty JSON]' \
  '--jsonfile-pretty=[pretty JSON file]:file:_files' \
  '-oJ[pretty JSON file]:file:_files' \
  '--csv[CSV output]' \
  '--csvfile=[CSV file]:file:_files' \
  '-oC[CSV file]:file:_files' \
  '--html[HTML output]' \
  '--htmlfile=[HTML file]:file:_files' \
  '-oH[HTML file]:file:_files' \
  '-oA[all output]:prefix:' \
  '-oa[all output]:prefix:' \
  '--append[append to file]' \
  '--overwrite[overwrite file]' \
  '--outprefix=[output prefix]:prefix:' \
  '--severity=[severity threshold]:level:(LOW MEDIUM HIGH CRITICAL)' \
  '--add-ca=[additional CA]:file:_files' \
  '--ids-friendly[IDS-friendly mode]' \
  '--phone-out[allow phone-home]' \
  '--hints[show hints]' \
  ':target:'
