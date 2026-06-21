#compdef zap-baseline.py
# Documentation: https://www.zaproxy.org/docs/docker/baseline-scan/
# OWASP ZAP baseline passive scan runner

local ret=1

_arguments -s -S \
  '(-h)-h[print help message]' \
  '-t+[target URL including the protocol]:url' \
  '-c+[config file to INFO, IGNORE or FAIL warnings]:file:_files' \
  '-u+[URL of config file to use]:url' \
  '-g+[generate default config file (all rules WARN)]:file:_files' \
  '-m+[number of minutes to spider for]:minutes' \
  '-r+[file to write the full ZAP HTML report]:file:_files' \
  '-w+[file to write the full ZAP Wiki (Markdown) report]:file:_files' \
  '-x+[file to write the full ZAP XML report]:file:_files' \
  '-J+[file to write the full ZAP JSON document]:file:_files' \
  '-a[include the alpha passive scan rules as well]' \
  '-d[show debug messages]' \
  '-P+[specify listen port]:port' \
  '-D+[delay in seconds to wait for passive scanning]:seconds' \
  '-i[default rules not in the config file to INFO]' \
  '-I[do not return failure on warning]' \
  '-j[use the Ajax spider in addition to the traditional one]' \
  '-l+[minimum level to show]:level:(PASS IGNORE INFO WARN FAIL)' \
  '-n+[context file loaded prior to spidering the target]:file:_files' \
  '-p+[progress file specifying issues being addressed]:file:_files' \
  '-s[short output format - dont show PASSes or example URLs]' \
  '-T+[max time in minutes to wait for ZAP to start]:minutes' \
  '-U+[username to use for authenticated scans]:user' \
  '-z+[ZAP command line options]:opts' \
  '--hook=[path to python file that defines custom hooks]:file:_files' \
  '--auto[use the automation framework if supported]' \
  '--autooff[do not use the automation framework]' \
  '--plan-only[generate an automation framework plan but do not run it]' && ret=0

return ret
