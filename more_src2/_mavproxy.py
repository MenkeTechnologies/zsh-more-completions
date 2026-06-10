#compdef mavproxy.py
# Documentation: https://ardupilot.org/mavproxy/
# Source: ArduPilot/MAVProxy MAVProxy/mavproxy.py — MAVLink ground station / proxy CLI.
# Reference accessed: 2026-06-10

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s \
    '*--master=[MAVLink master port and optional baud]:port:_default' \
    '--force-connected[use master even if initial connection fails]' \
    '*--out=[MAVLink output port and optional baud]:port:_default' \
    '--baudrate=[default serial baud rate]:baud:_default' \
    '--sitl=[SITL output port]:port:_default' \
    '--streamrate=[MAVLink stream rate]:rate:_default' \
    '--source-system=[MAVLink source system ID for this GCS]:id:_default' \
    '--source-component=[MAVLink source component ID]:id:_default' \
    '--target-system=[MAVLink target master system]:id:_default' \
    '--target-component=[MAVLink target master component]:id:_default' \
    '--logfile=[MAVLink master logfile]:file:_files' \
    '--append-log[append to log files]' \
    '--quadcopter[use quadcopter controls]' \
    '--setup[start in setup mode]' \
    '--nodtr[disable DTR drop on close]' \
    '--show-errors[show MAVLink error packets]' \
    '--speech[use text to speech]' \
    '--aircraft=[aircraft name]:name:_default' \
    '*--cmd=[initial command]:cmd:_default' \
    '--console[use GUI console]' \
    '--heartbeat-rate=[MAVLink HEARTBEAT rate]:rate:_default' \
    '--map[load map module]' \
    '*--load-module=[load module]:module:_default' \
    '--mav10[use MAVLink protocol 1.0]' \
    '--mav20[use MAVLink protocol 2.0]' \
    '--auto-protocol[auto-detect MAVLink protocol]' \
    '--mavversion=[force MAVLink version]:version:(1.0 2.0)' \
    '--nowait[do not wait for HEARTBEAT on startup]' \
    '--continue[continue logs]' \
    '--dialect=[MAVLink dialect]:dialect:_default' \
    '--rtscts[enable hardware RTS/CTS flow control]' \
    '--moddebug=[module debug level]:level:_default' \
    '--mission=[mission name]:name:_default' \
    '--daemon[run in daemon mode]' \
    '--non-interactive[do not start interactive shell]' \
    '--profile[run Yappi python profiler]' \
    '--state-basedir=[base dir for logs/aircraft]:dir:_directories' \
    '--no-state[do not save logs and state to disk]' \
    '(- *)--version[show version]' \
    '--udp-timeout=[UDP client timeout (s)]:seconds:_default' \
    '--retries=[number of retry connections]:n:_default' \
    && ret=0

return ret
