#compdef dotdotpwn.pl

local arguments

arguments=(
  '-m[module \[http | http-url | ftp | tftp | payload | stdout\]]'
  '-h[hostname]'
  '-O[operating System detection for intelligent fuzzing (nmap)]'
  '-o[operating System type if known ("windows", "unix" or "generic")]'
  '-s[service version detection (banner grabber)]'
  '-d[depth of traversals (e.g. deepness 3 equals to ../../../; default: 6)]'
  '-f[specific filename (e.g. /etc/motd; default: according to OS detected, defaults in TraversalEngine.pm)]'
  '-E[add @Extra_files in TraversalEngine.pm (e.g. web.config, httpd.conf, etc.)]'
  '-S[use SSL for HTTP and Payload module (not needed for http-url, use a https:// url instead)]'
  '-u[URL with the part to be fuzzed marked as TRAVERSAL (e.g. http://foo:8080/id.php?x=TRAVERSAL&y=31337)]'
  '-k[text pattern to match in the response (http-url & payload modules - e.g. "root:" if trying /etc/passwd)]'
  '-p[filename with the payload to be sent and the part to be fuzzed marked with the TRAVERSAL keyword]'
  '-x[port to connect (default: HTTP=80; FTP=21; TFTP=69)]'
  '-t[time in milliseconds between each test (default: 300 (.3 second))]'
  '-X[use the Bisection Algorithm to detect the exact deepness once a vulnerability has been found]'
  '-e[file extension appended at the end of each fuzz string (e.g. ".php", ".jpg", ".inc")]'
  '-U[username (default: anonymous)]'
  '-P[password (default: dot@dot.pwn)]'
  '-M[HTTP Method to use when using the http module \[GET | POST | HEAD | COPY | MOVE\] (default: GET)]'
  '-r[report filename (default: HOST_MM-DD-YYYY_HOUR-MIN.txt)]'
  '-b[break after the first vulnerability is found]'
  '-q[quiet mode (doesnt print each attempt)]'
  '-C[continue if no data was received from host]'
  '*:filename:_files'
)

_arguments -s $arguments
