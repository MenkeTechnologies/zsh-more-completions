#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Existence and header tests for src/ completion files
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    src="$pluginDir/src"
}

# ─── File existence tests ───────────────────────────────────────────────────

@test 'src has _grep' {
    assert "$src/_grep" is_file
}

@test 'src has _sed' {
    assert "$src/_sed" is_file
}

@test 'src has _awk' {
    assert "$src/_awk" is_file
}

@test 'src has _vim' {
    assert "$src/_vim" is_file
}

@test 'src has _docker' {
    assert "$src/_docker" is_file
}

@test 'src has _cargo' {
    assert "$src/_cargo" is_file
}

@test 'src has _make' {
    assert "$src/_make" is_file
}

@test 'src has _rsync' {
    assert "$src/_rsync" is_file
}

@test 'src has _jq' {
    assert "$src/_jq" is_file
}

@test 'src has _systemctl' {
    assert "$src/_systemctl" is_file
}

@test 'src has _emacs' {
    assert "$src/_emacs" is_file
}

@test 'src has _nano' {
    assert "$src/_nano" is_file
}

@test 'src has _screen' {
    assert "$src/_screen" is_file
}

@test 'src has _perl' {
    assert "$src/_perl" is_file
}

@test 'src has _python' {
    assert "$src/_python" is_file
}

@test 'src has _df' {
    assert "$src/_df" is_file
}

@test 'src has _du' {
    assert "$src/_du" is_file
}

@test 'src has _mount' {
    assert "$src/_mount" is_file
}

@test 'src has _unzip' {
    assert "$src/_unzip" is_file
}

@test 'src has _htop' {
    assert "$src/_htop" is_file
}

@test 'src has _kill' {
    assert "$src/_kill" is_file
}

@test 'src has _cat' {
    assert "$src/_cat" is_file
}

@test 'src has _less' {
    assert "$src/_less" is_file
}

@test 'src has _more' {
    assert "$src/_more" is_file
}

@test 'src has _tail' {
    assert "$src/_tail" is_file
}

@test 'src has _sort' {
    assert "$src/_sort" is_file
}

@test 'src has _wc' {
    assert "$src/_wc" is_file
}

@test 'src has _cut' {
    assert "$src/_cut" is_file
}

@test 'src has _paste' {
    assert "$src/_paste" is_file
}

@test 'src has _tee' {
    assert "$src/_tee" is_file
}

@test 'src has _chmod' {
    assert "$src/_chmod" is_file
}

@test 'src has _chown' {
    assert "$src/_chown" is_file
}

@test 'src has _chgrp' {
    assert "$src/_chgrp" is_file
}

@test 'src has _ln' {
    assert "$src/_ln" is_file
}

@test 'src has _mv' {
    assert "$src/_mv" is_file
}

@test 'src has _rm' {
    assert "$src/_rm" is_file
}

@test 'src has _mkdir' {
    assert "$src/_mkdir" is_file
}

@test 'src has _rmdir' {
    assert "$src/_rmdir" is_file
}

@test 'src has _ls' {
    assert "$src/_ls" is_file
}

@test 'src has _stat' {
    assert "$src/_stat" is_file
}

@test 'src has _file' {
    assert "$src/_file" is_file
}

@test 'src has _strings' {
    assert "$src/_strings" is_file
}

@test 'src has _od' {
    assert "$src/_od" is_file
}

@test 'src has _hexdump' {
    assert "$src/_hexdump" is_file
}

@test 'src has _diff' {
    assert "$src/_diff" is_file
}

@test 'src has _patch' {
    assert "$src/_patch" is_file
}

@test 'src has _strace' {
    assert "$src/_strace" is_file
}

@test 'src has _ltrace' {
    assert "$src/_ltrace" is_file
}

@test 'src has _nc' {
    assert "$src/_nc" is_file
}

@test 'src has _nmap' {
    assert "$src/_nmap" is_file
}

@test 'src has _curl' {
    assert "$src/_curl" is_file
}

@test 'src has _dig' {
    assert "$src/_dig" is_file
}

@test 'src has _host' {
    assert "$src/_host" is_file
}

@test 'src has _ip' {
    assert "$src/_ip" is_file
}

@test 'src has _ss' {
    assert "$src/_ss" is_file
}

@test 'src has _lsof' {
    assert "$src/_lsof" is_file
}

@test 'src has _fuser' {
    assert "$src/_fuser" is_file
}

@test 'src has _pgrep' {
    assert "$src/_pgrep" is_file
}

@test 'src has _pkill' {
    assert "$src/_pkill" is_file
}

@test 'src has _nice' {
    assert "$src/_nice" is_file
}

@test 'src has _nohup' {
    assert "$src/_nohup" is_file
}

@test 'src has _env' {
    assert "$src/_env" is_file
}

@test 'src has _expr' {
    assert "$src/_expr" is_file
}

@test 'src has _date' {
    assert "$src/_date" is_file
}

@test 'src has _cal' {
    assert "$src/_cal" is_file
}

@test 'src has _bc' {
    assert "$src/_bc" is_file
}

@test 'src has _dc' {
    assert "$src/_dc" is_file
}

@test 'src has _factor' {
    assert "$src/_factor" is_file
}

@test 'src has _seq' {
    assert "$src/_seq" is_file
}

@test 'src has _yes' {
    assert "$src/_yes" is_file
}

@test 'src has _true' {
    assert "$src/_true" is_file
}

@test 'src has _false' {
    assert "$src/_false" is_file
}

@test 'src has _basename' {
    assert "$src/_basename" is_file
}

@test 'src has _dirname' {
    assert "$src/_dirname" is_file
}

@test 'src has _realpath' {
    assert "$src/_realpath" is_file
}

@test 'src has _readlink' {
    assert "$src/_readlink" is_file
}

@test 'src has _reset' {
    assert "$src/_reset" is_file
}

@test 'src has _clear' {
    assert "$src/_clear" is_file
}

@test 'src has _stty' {
    assert "$src/_stty" is_file
}

@test 'src has _w' {
    assert "$src/_w" is_file
}

@test 'src has _who' {
    assert "$src/_who" is_file
}

@test 'src has _last' {
    assert "$src/_last" is_file
}

@test 'src has _uptime' {
    assert "$src/_uptime" is_file
}

@test 'src has _free' {
    assert "$src/_free" is_file
}

@test 'src has _vmstat' {
    assert "$src/_vmstat" is_file
}

@test 'src has _sar' {
    assert "$src/_sar" is_file
}

@test 'src has _dmesg' {
    assert "$src/_dmesg" is_file
}

@test 'src has _journalctl' {
    assert "$src/_journalctl" is_file
}

@test 'src has _timedatectl' {
    assert "$src/_timedatectl" is_file
}

@test 'src has _localectl' {
    assert "$src/_localectl" is_file
}

@test 'src has _hostnamectl' {
    assert "$src/_hostnamectl" is_file
}

@test 'src has _loginctl' {
    assert "$src/_loginctl" is_file
}

@test 'src has _coredumpctl' {
    assert "$src/_coredumpctl" is_file
}

@test 'src has _networkctl' {
    assert "$src/_networkctl" is_file
}

@test 'src has _resolvectl' {
    assert "$src/_resolvectl" is_file
}

@test 'src has _busctl' {
    assert "$src/_busctl" is_file
}

@test 'src has _machinectl' {
    assert "$src/_machinectl" is_file
}

@test 'src has _hostname' {
    assert "$src/_hostname" is_file
}

@test 'src has _uname' {
    assert "$src/_uname" is_file
}

@test 'src has _id' {
    assert "$src/_id" is_file
}

@test 'src has _groups' {
    assert "$src/_groups" is_file
}

@test 'src has _whoami' {
    assert "$src/_whoami" is_file
}

@test 'src has _logname' {
    assert "$src/_logname" is_file
}

@test 'src has _sleep' {
    assert "$src/_sleep" is_file
}

@test 'src has _printf' {
    assert "$src/_printf" is_file
}

@test 'src has _echo' {
    assert "$src/_echo" is_file
}

@test 'src has _md5sum' {
    assert "$src/_md5sum" is_file
}

@test 'src has _sha256sum' {
    assert "$src/_sha256sum" is_file
}

@test 'src has _sha512sum' {
    assert "$src/_sha512sum" is_file
}

@test 'src has _crontab' {
    assert "$src/_crontab" is_file
}

@test 'src has _watch' {
    assert "$src/_watch" is_file
}

@test 'src has _timeout' {
    assert "$src/_timeout" is_file
}

@test 'src has _install' {
    assert "$src/_install" is_file
}

@test 'src has _mktemp' {
    assert "$src/_mktemp" is_file
}

@test 'src has _shred' {
    assert "$src/_shred" is_file
}

@test 'src has _truncate' {
    assert "$src/_truncate" is_file
}

@test 'src has _split' {
    assert "$src/_split" is_file
}

@test 'src has _csplit' {
    assert "$src/_csplit" is_file
}

@test 'src has _join' {
    assert "$src/_join" is_file
}

@test 'src has _nl' {
    assert "$src/_nl" is_file
}

@test 'src has _fmt' {
    assert "$src/_fmt" is_file
}

@test 'src has _fold' {
    assert "$src/_fold" is_file
}

@test 'src has _pr' {
    assert "$src/_pr" is_file
}

@test 'src has _unexpand' {
    assert "$src/_unexpand" is_file
}

@test 'src has _colrm' {
    assert "$src/_colrm" is_file
}

@test 'src has _column' {
    assert "$src/_column" is_file
}

@test 'src has _rev' {
    assert "$src/_rev" is_file
}

@test 'src has _tac' {
    assert "$src/_tac" is_file
}

@test 'src has _tsort' {
    assert "$src/_tsort" is_file
}

@test 'src has _comm' {
    assert "$src/_comm" is_file
}

@test 'src has _uniq' {
    assert "$src/_uniq" is_file
}

@test 'src has _shuf' {
    assert "$src/_shuf" is_file
}

@test 'src has _numfmt' {
    assert "$src/_numfmt" is_file
}

@test 'src has _ptx' {
    assert "$src/_ptx" is_file
}

@test 'src has _pinky' {
    assert "$src/_pinky" is_file
}

@test 'src has _users' {
    assert "$src/_users" is_file
}

@test 'src has _mesg' {
    assert "$src/_mesg" is_file
}

@test 'src has _write' {
    assert "$src/_write" is_file
}

@test 'src has _wall' {
    assert "$src/_wall" is_file
}

@test 'src has _ncat' {
    assert "$src/_ncat" is_file
}

@test 'src has _socat' {
    assert "$src/_socat" is_file
}

@test 'src has _netcat' {
    assert "$src/_netcat" is_file
}

@test 'src has _ftp' {
    assert "$src/_ftp" is_file
}

@test 'src has _sshfs' {
    assert "$src/_sshfs" is_file
}

@test 'src has _curlftpfs' {
    assert "$src/_curlftpfs" is_file
}

@test 'src has _fusermount' {
    assert "$src/_fusermount" is_file
}

@test 'src has _encfs' {
    assert "$src/_encfs" is_file
}

@test 'src has _cryfs' {
    assert "$src/_cryfs" is_file
}

@test 'src has _gocryptfs' {
    assert "$src/_gocryptfs" is_file
}

@test 'src has _cryptsetup' {
    assert "$src/_cryptsetup" is_file
}

@test 'src has _parted' {
    assert "$src/_parted" is_file
}

@test 'src has _fdisk' {
    assert "$src/_fdisk" is_file
}

@test 'src has _mkswap' {
    assert "$src/_mkswap" is_file
}

@test 'src has _swapon' {
    assert "$src/_swapon" is_file
}

@test 'src has _swapoff' {
    assert "$src/_swapoff" is_file
}

@test 'src has _blkid' {
    assert "$src/_blkid" is_file
}

@test 'src has _lsblk' {
    assert "$src/_lsblk" is_file
}

@test 'src has _findmnt' {
    assert "$src/_findmnt" is_file
}

@test 'src has _ncdu' {
    assert "$src/_ncdu" is_file
}

@test 'src has _iotop' {
    assert "$src/_iotop" is_file
}

@test 'src has _bmon' {
    assert "$src/_bmon" is_file
}

@test 'src has _iftop' {
    assert "$src/_iftop" is_file
}

@test 'src has _nload' {
    assert "$src/_nload" is_file
}

@test 'src has _traceroute' {
    assert "$src/_traceroute" is_file
}

@test 'src has _whois' {
    assert "$src/_whois" is_file
}

@test 'src has _tshark' {
    assert "$src/_tshark" is_file
}

@test 'src has _wireshark' {
    assert "$src/_wireshark" is_file
}

@test 'src has _ettercap' {
    assert "$src/_ettercap" is_file
}

@test 'src has _hping3' {
    assert "$src/_hping3" is_file
}

@test 'src has _ab' {
    assert "$src/_ab" is_file
}

@test 'src has _siege' {
    assert "$src/_siege" is_file
}

@test 'src has _httpie' {
    assert "$src/_httpie" is_file
}

@test 'src has _protoc' {
    assert "$src/_protoc" is_file
}

@test 'src has _thrift' {
    assert "$src/_thrift" is_file
}

@test 'src has _sass' {
    assert "$src/_sass" is_file
}

@test 'src has _webpack' {
    assert "$src/_webpack" is_file
}

@test 'src has _rollup' {
    assert "$src/_rollup" is_file
}

@test 'src has _babel' {
    assert "$src/_babel" is_file
}

@test 'src has _uglifyjs' {
    assert "$src/_uglifyjs" is_file
}

@test 'src has _gifsicle' {
    assert "$src/_gifsicle" is_file
}

@test 'src has _cwebp' {
    assert "$src/_cwebp" is_file
}

@test 'src has _avifenc' {
    assert "$src/_avifenc" is_file
}

@test 'src has _ffprobe' {
    assert "$src/_ffprobe" is_file
}

@test 'src has _ffplay' {
    assert "$src/_ffplay" is_file
}

@test 'src has _sox' {
    assert "$src/_sox" is_file
}

@test 'src has _lame' {
    assert "$src/_lame" is_file
}

@test 'src has _exiftool' {
    assert "$src/_exiftool" is_file
}

@test 'src has _convert' {
    assert "$src/_convert" is_file
}

@test 'src has _composite' {
    assert "$src/_composite" is_file
}

@test 'src has _montage' {
    assert "$src/_montage" is_file
}

@test 'src has _display' {
    assert "$src/_display" is_file
}

@test 'src has _animate' {
    assert "$src/_animate" is_file
}

@test 'src has _compare' {
    assert "$src/_compare" is_file
}

@test 'src has _conjure' {
    assert "$src/_conjure" is_file
}

@test 'src has _import' {
    assert "$src/_import" is_file
}

@test 'src has _stream' {
    assert "$src/_stream" is_file
}

@test 'src has _tesseract' {
    assert "$src/_tesseract" is_file
}

@test 'src has _pandoc' {
    assert "$src/_pandoc" is_file
}

@test 'src has _latex' {
    assert "$src/_latex" is_file
}

@test 'src has _xelatex' {
    assert "$src/_xelatex" is_file
}

@test 'src has _lualatex' {
    assert "$src/_lualatex" is_file
}

@test 'src has _bibtex' {
    assert "$src/_bibtex" is_file
}

@test 'src has _dvips' {
    assert "$src/_dvips" is_file
}

@test 'src has _qpdf' {
    assert "$src/_qpdf" is_file
}

@test 'src has _pkg-config' {
    assert "$src/_pkg-config" is_file
}

@test 'src has _tree' {
    assert "$src/_tree" is_file
}

@test 'src has _touch' {
    assert "$src/_touch" is_file
}

@test 'src has _tr' {
    assert "$src/_tr" is_file
}

@test 'src has _netstat' {
    assert "$src/_netstat" is_file
}

@test 'src has _readelf.py' {
    assert "$src/_readelf.py" is_file
}

@test 'src has _ranlib' {
    assert "$src/_ranlib" is_file
}

@test 'src has _gpg' {
    assert "$src/_gpg" is_file
}

@test 'src has _tabs' {
    assert "$src/_tabs" is_file
}

@test 'src has _prettier' {
    assert "$src/_prettier" is_file
}

@test 'src has _info' {
    assert "$src/_info" is_file
}

@test 'src has _7z' {
    assert "$src/_7z" is_file
}

@test 'src has _7za' {
    assert "$src/_7za" is_file
}

@test 'src has _7zr' {
    assert "$src/_7zr" is_file
}

@test 'src has _ack' {
    assert "$src/_ack" is_file
}

@test 'src has _ag' {
    assert "$src/_ag" is_file
}

@test 'src has _alacritty' {
    assert "$src/_alacritty" is_file
}

@test 'src has _alembic' {
    assert "$src/_alembic" is_file
}

@test 'src has _alpine' {
    assert "$src/_alpine" is_file
}

@test 'src has _amass' {
    assert "$src/_amass" is_file
}

@test 'src has _ansible-community' {
    assert "$src/_ansible-community" is_file
}

@test 'src has _valac' {
    assert "$src/_valac" is_file
}

@test 'src has _doxygen' {
    assert "$src/_doxygen" is_file
}

@test 'src has _highlight' {
    assert "$src/_highlight" is_file
}

@test 'src has _radare2' {
    assert "$src/_radare2" is_file
}

@test 'src has _puma' {
    assert "$src/_puma" is_file
}

@test 'src has _mpd' {
    assert "$src/_mpd" is_file
}

@test 'src has _runc' {
    assert "$src/_runc" is_file
}

@test 'src has _ponysay' {
    assert "$src/_ponysay" is_file
}

@test 'src has _speedtest-cli' {
    assert "$src/_speedtest-cli" is_file
}

@test 'src has _sphinx-apidoc' {
    assert "$src/_sphinx-apidoc" is_file
}

@test 'src has _tabulate' {
    assert "$src/_tabulate" is_file
}

@test 'src has _tailspin' {
    assert "$src/_tailspin" is_file
}

@test 'src has _tickrs' {
    assert "$src/_tickrs" is_file
}

@test 'src has _swift-package' {
    assert "$src/_swift-package" is_file
}

@test 'src has _vscodium' {
    assert "$src/_vscodium" is_file
}

@test 'src has _zopfli' {
    assert "$src/_zopfli" is_file
}

# ─── Compdef header tests ───────────────────────────────────────────────────

@test '_grep compdef is grep' {
    run head -1 "$src/_grep"
    assert $output same_as '#compdef grep'
}

@test '_sed compdef is sed' {
    run head -1 "$src/_sed"
    assert $output same_as '#compdef sed'
}

@test '_awk compdef is awk' {
    run head -1 "$src/_awk"
    assert $output contains '#compdef awk'
}

@test '_vim compdef is vim' {
    run head -1 "$src/_vim"
    assert $output contains '#compdef vim'
}

@test '_docker compdef is docker' {
    run head -1 "$src/_docker"
    assert $output same_as '#compdef docker'
}

@test '_cargo compdef is cargo' {
    run head -1 "$src/_cargo"
    assert $output same_as '#compdef cargo'
}

@test '_make compdef is make' {
    run head -1 "$src/_make"
    assert $output contains '#compdef make'
}

@test '_rsync compdef is rsync' {
    run head -1 "$src/_rsync"
    assert $output same_as '#compdef rsync'
}

@test '_jq compdef is jq' {
    run head -1 "$src/_jq"
    assert $output same_as '#compdef jq'
}

@test '_htop compdef is htop' {
    run head -1 "$src/_htop"
    assert $output same_as '#compdef htop'
}

@test '_kill compdef is kill' {
    run head -1 "$src/_kill"
    assert $output same_as '#compdef kill'
}

@test '_cat compdef is cat' {
    run head -1 "$src/_cat"
    assert $output same_as '#compdef cat'
}

@test '_less compdef is less' {
    run head -1 "$src/_less"
    assert $output same_as '#compdef less'
}

@test '_more compdef is more' {
    run head -1 "$src/_more"
    assert $output same_as '#compdef more'
}

@test '_tail compdef is tail' {
    run head -1 "$src/_tail"
    assert $output same_as '#compdef tail'
}

@test '_sort compdef is sort' {
    run head -1 "$src/_sort"
    assert $output contains '#compdef sort'
}

@test '_wc compdef is wc' {
    run head -1 "$src/_wc"
    assert $output contains '#compdef wc'
}

@test '_cut compdef is cut' {
    run head -1 "$src/_cut"
    assert $output contains '#compdef cut'
}

@test '_paste compdef is paste' {
    run head -1 "$src/_paste"
    assert $output contains '#compdef paste'
}

@test '_tee compdef is tee' {
    run head -1 "$src/_tee"
    assert $output same_as '#compdef tee'
}

@test '_chmod compdef is chmod' {
    run head -1 "$src/_chmod"
    assert $output same_as '#compdef chmod'
}

@test '_chown compdef is chown' {
    run head -1 "$src/_chown"
    assert $output same_as '#compdef chown'
}

@test '_chgrp compdef is chgrp' {
    run head -1 "$src/_chgrp"
    assert $output same_as '#compdef chgrp'
}

@test '_ln compdef is ln' {
    run head -1 "$src/_ln"
    assert $output same_as '#compdef ln'
}

@test '_mv compdef is mv' {
    run head -1 "$src/_mv"
    assert $output same_as '#compdef mv'
}

@test '_rm compdef is rm' {
    run head -1 "$src/_rm"
    assert $output same_as '#compdef rm'
}

@test '_mkdir compdef is mkdir' {
    run head -1 "$src/_mkdir"
    assert $output same_as '#compdef mkdir'
}

@test '_rmdir compdef is rmdir' {
    run head -1 "$src/_rmdir"
    assert $output same_as '#compdef rmdir'
}

@test '_ls compdef is ls' {
    run head -1 "$src/_ls"
    assert $output same_as '#compdef ls'
}

@test '_stat compdef is stat' {
    run head -1 "$src/_stat"
    assert $output contains '#compdef stat'
}

@test '_file compdef is file' {
    run head -1 "$src/_file"
    assert $output same_as '#compdef file'
}

@test '_strings compdef is strings' {
    run head -1 "$src/_strings"
    assert $output same_as '#compdef strings'
}

@test '_od compdef is od' {
    run head -1 "$src/_od"
    assert $output contains '#compdef od'
}

@test '_hexdump compdef is hexdump' {
    run head -1 "$src/_hexdump"
    assert $output contains '#compdef hexdump'
}

@test '_diff compdef is diff' {
    run head -1 "$src/_diff"
    assert $output same_as '#compdef diff'
}

@test '_patch compdef is patch' {
    run head -1 "$src/_patch"
    assert $output same_as '#compdef patch'
}

@test '_strace compdef is strace' {
    run head -1 "$src/_strace"
    assert $output same_as '#compdef strace'
}

@test '_ltrace compdef is ltrace' {
    run head -1 "$src/_ltrace"
    assert $output same_as '#compdef ltrace'
}

@test '_nc compdef is nc' {
    run head -1 "$src/_nc"
    assert $output contains '#compdef nc'
}

@test '_nmap compdef is nmap' {
    run head -1 "$src/_nmap"
    assert $output same_as '#compdef nmap'
}

@test '_curl compdef is curl' {
    run head -1 "$src/_curl"
    assert $output same_as '#compdef curl'
}

@test '_dig compdef is dig' {
    run head -1 "$src/_dig"
    assert $output same_as '#compdef dig'
}

@test '_host compdef is host' {
    run head -1 "$src/_host"
    assert $output same_as '#compdef host'
}

@test '_ip compdef is ip' {
    run head -1 "$src/_ip"
    assert $output same_as '#compdef ip'
}

@test '_ss compdef is ss' {
    run head -1 "$src/_ss"
    assert $output same_as '#compdef ss'
}

@test '_lsof compdef is lsof' {
    run head -1 "$src/_lsof"
    assert $output same_as '#compdef lsof'
}

@test '_fuser compdef is fuser' {
    run head -1 "$src/_fuser"
    assert $output same_as '#compdef fuser'
}

@test '_pgrep compdef is pgrep' {
    run head -1 "$src/_pgrep"
    assert $output same_as '#compdef pgrep'
}

@test '_pkill compdef is pkill' {
    run head -1 "$src/_pkill"
    assert $output same_as '#compdef pkill'
}

# ─── Syntax check tests ─────────────────────────────────────────────────────

@test '_grep passes syntax check' {
    run zsh -n "$src/_grep"
    assert $state equals 0
}

@test '_sed passes syntax check' {
    run zsh -n "$src/_sed"
    assert $state equals 0
}

@test '_awk passes syntax check' {
    run zsh -n "$src/_awk"
    assert $state equals 0
}

@test '_vim passes syntax check' {
    run zsh -n "$src/_vim"
    assert $state equals 0
}

@test '_docker passes syntax check' {
    run zsh -n "$src/_docker"
    assert $state equals 0
}

@test '_cargo passes syntax check' {
    run zsh -n "$src/_cargo"
    assert $state equals 0
}

@test '_make passes syntax check' {
    run zsh -n "$src/_make"
    assert $state equals 0
}

@test '_rsync passes syntax check' {
    run zsh -n "$src/_rsync"
    assert $state equals 0
}

@test '_jq passes syntax check' {
    run zsh -n "$src/_jq"
    assert $state equals 0
}

@test '_systemctl passes syntax check' {
    run zsh -n "$src/_systemctl"
    assert $state equals 0
}

@test '_htop passes syntax check' {
    run zsh -n "$src/_htop"
    assert $state equals 0
}

@test '_kill passes syntax check' {
    run zsh -n "$src/_kill"
    assert $state equals 0
}

@test '_cat passes syntax check' {
    run zsh -n "$src/_cat"
    assert $state equals 0
}

@test '_less passes syntax check' {
    run zsh -n "$src/_less"
    assert $state equals 0
}

@test '_curl passes syntax check' {
    run zsh -n "$src/_curl"
    assert $state equals 0
}

@test '_nmap passes syntax check' {
    run zsh -n "$src/_nmap"
    assert $state equals 0
}

@test '_diff passes syntax check' {
    run zsh -n "$src/_diff"
    assert $state equals 0
}

@test '_patch passes syntax check' {
    run zsh -n "$src/_patch"
    assert $state equals 0
}

@test '_tree passes syntax check' {
    run zsh -n "$src/_tree"
    assert $state equals 0
}

@test '_touch passes syntax check' {
    run zsh -n "$src/_touch"
    assert $state equals 0
}

@test '_chmod passes syntax check' {
    run zsh -n "$src/_chmod"
    assert $state equals 0
}

@test '_chown passes syntax check' {
    run zsh -n "$src/_chown"
    assert $state equals 0
}

@test '_ln passes syntax check' {
    run zsh -n "$src/_ln"
    assert $state equals 0
}

@test '_mv passes syntax check' {
    run zsh -n "$src/_mv"
    assert $state equals 0
}

@test '_rm passes syntax check' {
    run zsh -n "$src/_rm"
    assert $state equals 0
}

@test '_ls passes syntax check' {
    run zsh -n "$src/_ls"
    assert $state equals 0
}

@test '_stat passes syntax check' {
    run zsh -n "$src/_stat"
    assert $state equals 0
}

@test '_file passes syntax check' {
    run zsh -n "$src/_file"
    assert $state equals 0
}

@test '_sort passes syntax check' {
    run zsh -n "$src/_sort"
    assert $state equals 0
}

@test '_wc passes syntax check' {
    run zsh -n "$src/_wc"
    assert $state equals 0
}

@test '_cut passes syntax check' {
    run zsh -n "$src/_cut"
    assert $state equals 0
}

@test '_tail passes syntax check' {
    run zsh -n "$src/_tail"
    assert $state equals 0
}

@test '_uniq passes syntax check' {
    run zsh -n "$src/_uniq"
    assert $state equals 0
}

@test '_comm passes syntax check' {
    run zsh -n "$src/_comm"
    assert $state equals 0
}

@test '_nl passes syntax check' {
    run zsh -n "$src/_nl"
    assert $state equals 0
}

@test '_fmt passes syntax check' {
    run zsh -n "$src/_fmt"
    assert $state equals 0
}

@test '_fold passes syntax check' {
    run zsh -n "$src/_fold"
    assert $state equals 0
}

@test '_column passes syntax check' {
    run zsh -n "$src/_column"
    assert $state equals 0
}

@test '_rev passes syntax check' {
    run zsh -n "$src/_rev"
    assert $state equals 0
}

@test '_tac passes syntax check' {
    run zsh -n "$src/_tac"
    assert $state equals 0
}

@test '_lsof passes syntax check' {
    run zsh -n "$src/_lsof"
    assert $state equals 0
}

@test '_pgrep passes syntax check' {
    run zsh -n "$src/_pgrep"
    assert $state equals 0
}

@test '_pkill passes syntax check' {
    run zsh -n "$src/_pkill"
    assert $state equals 0
}

@test '_date passes syntax check' {
    run zsh -n "$src/_date"
    assert $state equals 0
}

@test '_cal passes syntax check' {
    run zsh -n "$src/_cal"
    assert $state equals 0
}

@test '_seq passes syntax check' {
    run zsh -n "$src/_seq"
    assert $state equals 0
}

@test '_basename passes syntax check' {
    run zsh -n "$src/_basename"
    assert $state equals 0
}

@test '_dirname passes syntax check' {
    run zsh -n "$src/_dirname"
    assert $state equals 0
}

# ─── _arguments usage tests ─────────────────────────────────────────────────

@test '_grep uses _arguments' {
    run grep -c '_arguments' "$src/_grep"
    assert $state equals 0
}

@test '_sed uses _arguments' {
    run grep -c '_arguments' "$src/_sed"
    assert $state equals 0
}

@test '_awk uses _arguments' {
    run grep -c '_arguments' "$src/_awk"
    assert $state equals 0
}

@test '_vim uses _arguments' {
    run grep -c '_arguments' "$src/_vim"
    assert $state equals 0
}

@test '_docker uses _arguments' {
    run grep -c '_arguments' "$src/_docker"
    assert $state equals 0
}

@test '_cargo uses _arguments' {
    run grep -c '_arguments' "$src/_cargo"
    assert $state equals 0
}

@test '_make uses _arguments' {
    run grep -c '_arguments' "$src/_make"
    assert $state equals 0
}

@test '_rsync uses _arguments' {
    run grep -c '_arguments' "$src/_rsync"
    assert $state equals 0
}

@test '_jq uses _arguments' {
    run grep -c '_arguments' "$src/_jq"
    assert $state equals 0
}

@test '_systemctl uses _arguments' {
    run grep -c '_arguments' "$src/_systemctl"
    assert $state equals 0
}

@test '_htop uses _arguments' {
    run grep -c '_arguments' "$src/_htop"
    assert $state equals 0
}

@test '_curl uses _arguments' {
    run grep -c '_arguments' "$src/_curl"
    assert $state equals 0
}

@test '_nmap uses _arguments' {
    run grep -c '_arguments' "$src/_nmap"
    assert $state equals 0
}

@test '_diff uses _arguments' {
    run grep -c '_arguments' "$src/_diff"
    assert $state equals 0
}

@test '_patch uses _arguments' {
    run grep -c '_arguments' "$src/_patch"
    assert $state equals 0
}

@test '_less uses _arguments' {
    run grep -c '_arguments' "$src/_less"
    assert $state equals 0
}

@test '_cat uses _arguments' {
    run grep -c '_arguments' "$src/_cat"
    assert $state equals 0
}

@test '_sort uses _arguments' {
    run grep -c '_arguments' "$src/_sort"
    assert $state equals 0
}

@test '_wc uses _arguments' {
    run grep -c '_arguments' "$src/_wc"
    assert $state equals 0
}

@test '_cut uses _arguments' {
    run grep -c '_arguments' "$src/_cut"
    assert $state equals 0
}

@test '_tail uses _arguments' {
    run grep -c '_arguments' "$src/_tail"
    assert $state equals 0
}

@test '_chmod uses _arguments' {
    run grep -c '_arguments' "$src/_chmod"
    assert $state equals 0
}

@test '_chown uses _arguments' {
    run grep -c '_arguments' "$src/_chown"
    assert $state equals 0
}

@test '_ln uses _arguments' {
    run grep -c '_arguments' "$src/_ln"
    assert $state equals 0
}

@test '_mv uses _arguments' {
    run grep -c '_arguments' "$src/_mv"
    assert $state equals 0
}

@test '_rm uses _arguments' {
    run grep -c '_arguments' "$src/_rm"
    assert $state equals 0
}

@test '_ls uses _arguments' {
    run grep -c '_arguments' "$src/_ls"
    assert $state equals 0
}

@test '_stat uses _arguments' {
    run grep -c '_arguments' "$src/_stat"
    assert $state equals 0
}

@test '_file uses _arguments' {
    run grep -c '_arguments' "$src/_file"
    assert $state equals 0
}

@test '_lsof uses _arguments' {
    run grep -c '_arguments' "$src/_lsof"
    assert $state equals 0
}

@test '_strace uses _arguments' {
    run grep -c '_arguments' "$src/_strace"
    assert $state equals 0
}

@test '_tree uses _arguments' {
    run grep -c '_arguments' "$src/_tree"
    assert $state equals 0
}

@test '_touch uses _arguments' {
    run grep -c '_arguments' "$src/_touch"
    assert $state equals 0
}

@test '_date uses _arguments' {
    run grep -c '_arguments' "$src/_date"
    assert $state equals 0
}

@test '_uniq uses _arguments' {
    run grep -c '_arguments' "$src/_uniq"
    assert $state equals 0
}

@test '_nl uses _arguments' {
    run grep -c '_arguments' "$src/_nl"
    assert $state equals 0
}

@test '_fmt uses _arguments' {
    run grep -c '_arguments' "$src/_fmt"
    assert $state equals 0
}

@test '_fold uses _arguments' {
    run grep -c '_arguments' "$src/_fold"
    assert $state equals 0
}

@test '_column uses _arguments' {
    run grep -c '_arguments' "$src/_column"
    assert $state equals 0
}

@test '_pgrep uses _arguments' {
    run grep -c '_arguments' "$src/_pgrep"
    assert $state equals 0
}

@test '_pkill uses _arguments' {
    run grep -c '_arguments' "$src/_pkill"
    assert $state equals 0
}

@test '_traceroute uses _arguments' {
    run grep -c '_arguments' "$src/_traceroute"
    assert $state equals 0
}

@test '_whois uses _arguments' {
    run grep -c '_arguments' "$src/_whois"
    assert $state equals 0
}

@test '_dig uses _arguments' {
    run grep -c '_arguments' "$src/_dig"
    assert $state equals 0
}

@test '_host uses _arguments' {
    run grep -c '_arguments' "$src/_host"
    assert $state equals 0
}

@test '_ip uses _arguments' {
    run grep -c '_arguments' "$src/_ip"
    assert $state equals 0
}

@test '_ss uses _arguments' {
    run grep -c '_arguments' "$src/_ss"
    assert $state equals 0
}

@test '_nc uses _arguments' {
    run grep -c '_arguments' "$src/_nc"
    assert $state equals 0
}

@test '_pandoc uses _arguments' {
    run grep -c '_arguments' "$src/_pandoc"
    assert $state equals 0
}

# ─── _files completion tests ────────────────────────────────────────────────

@test '_grep completes filenames' {
    run grep -c '_files' "$src/_grep"
    assert $state equals 0
}

@test '_sed completes filenames' {
    run grep -c '_files' "$src/_sed"
    assert $state equals 0
}

@test '_awk completes filenames' {
    run grep -c '_files' "$src/_awk"
    assert $state equals 0
}

@test '_vim completes filenames' {
    run grep -c '_files' "$src/_vim"
    assert $state equals 0
}

@test '_cat completes filenames' {
    run grep -c '_files' "$src/_cat"
    assert $state equals 0
}

@test '_less completes filenames' {
    run grep -c '_files' "$src/_less"
    assert $state equals 0
}

@test '_more completes filenames' {
    run grep -c '_files' "$src/_more"
    assert $state equals 0
}

@test '_tail completes filenames' {
    run grep -c '_files' "$src/_tail"
    assert $state equals 0
}

@test '_sort completes filenames' {
    run grep -c '_files' "$src/_sort"
    assert $state equals 0
}

@test '_diff completes filenames' {
    run grep -c '_files' "$src/_diff"
    assert $state equals 0
}

@test '_patch completes filenames' {
    run grep -c '_files' "$src/_patch"
    assert $state equals 0
}

@test '_chmod completes filenames' {
    run grep -c '_files' "$src/_chmod"
    assert $state equals 0
}

@test '_chown completes filenames' {
    run grep -c '_files' "$src/_chown"
    assert $state equals 0
}

@test '_ln completes filenames' {
    run grep -c '_files' "$src/_ln"
    assert $state equals 0
}

@test '_mv completes filenames' {
    run grep -c '_files' "$src/_mv"
    assert $state equals 0
}

@test '_rm completes filenames' {
    run grep -c '_files' "$src/_rm"
    assert $state equals 0
}

@test '_touch completes filenames' {
    run grep -c '_files' "$src/_touch"
    assert $state equals 0
}

@test '_file completes filenames' {
    run grep -c '_files' "$src/_file"
    assert $state equals 0
}

@test '_stat completes filenames' {
    run grep -c '_files' "$src/_stat"
    assert $state equals 0
}

@test '_strings completes filenames' {
    run grep -c '_files' "$src/_strings"
    assert $state equals 0
}

@test '_wc completes filenames' {
    run grep -c '_files' "$src/_wc"
    assert $state equals 0
}

@test '_cut completes filenames' {
    run grep -c '_files' "$src/_cut"
    assert $state equals 0
}

@test '_nl completes filenames' {
    run grep -c '_files' "$src/_nl"
    assert $state equals 0
}

@test '_uniq completes filenames' {
    run grep -c '_files' "$src/_uniq"
    assert $state equals 0
}

@test '_curl completes filenames' {
    run grep -c '_files' "$src/_curl"
    assert $state equals 0
}

@test '_rsync completes filenames' {
    run grep -c '_files' "$src/_rsync"
    assert $state equals 0
}

@test '_pandoc completes filenames' {
    run grep -c '_files' "$src/_pandoc"
    assert $state equals 0
}

@test '_tree completes filenames' {
    run grep -c '_files' "$src/_tree"
    assert $state equals 0
}

@test '_unzip completes filenames' {
    run grep -c '_files' "$src/_unzip"
    assert $state equals 0
}

# ─── Specific option content tests ──────────────────────────────────────────

@test '_grep has --color option' {
    run grep -c '\-\-color' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --recursive option' {
    run grep -c '\-\-recursive' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --ignore-case option' {
    run grep -c '\-\-ignore-case' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --line-number option' {
    run grep -c '\-\-line-number' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --count option' {
    run grep -c '\-\-count' "$src/_grep"
    assert $state equals 0
}

@test '_grep has --invert-match option' {
    run grep -c '\-\-invert-match' "$src/_grep"
    assert $state equals 0
}

@test '_sed has -e option' {
    run grep -c '{-e[+=]' "$src/_sed"
    assert $state equals 0
}

@test '_sed has -i option' {
    run grep -c '{-i[-=]' "$src/_sed"
    assert $state equals 0
}

@test '_vim has -R option' {
    run grep -c "'-R" "$src/_vim"
    assert $state equals 0
}

@test '_vim has -u option' {
    run grep -c "'-u" "$src/_vim"
    assert $state equals 0
}

@test '_rsync has --archive option' {
    run grep -c '\-\-archive' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --verbose option' {
    run grep -c '\-\-verbose' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --compress option' {
    run grep -c '\-\-compress' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --delete option' {
    run grep -c '\-\-delete' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --exclude option' {
    run grep -c '\-\-exclude' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync has --progress option' {
    run grep -c '\-\-progress' "$src/_rsync"
    assert $state equals 0
}

@test '_curl has --output option' {
    run grep -c '\-\-output' "$src/_curl"
    assert $state equals 0
}

@test '_curl has --header option' {
    run grep -c '\-\-header' "$src/_curl"
    assert $state equals 0
}

@test '_curl has --data option' {
    run grep -c '\-\-data' "$src/_curl"
    assert $state equals 0
}

@test '_curl has --request option' {
    run grep -c '\-\-request' "$src/_curl"
    assert $state equals 0
}

@test '_curl has --user option' {
    run grep -c '\-\-user' "$src/_curl"
    assert $state equals 0
}

@test '_curl has --silent option' {
    run grep -c '\-\-silent' "$src/_curl"
    assert $state equals 0
}

@test '_curl has --location option' {
    run grep -c '\-\-location' "$src/_curl"
    assert $state equals 0
}

@test '_diff has --unified option' {
    run grep -c '\-\-unified' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --recursive option' {
    run grep -c '\-\-recursive' "$src/_diff"
    assert $state equals 0
}

@test '_diff has --ignore-case option' {
    run grep -c '\-\-ignore-case' "$src/_diff"
    assert $state equals 0
}

@test '_ls has -l option' {
    run grep -c "'-l" "$src/_ls"
    assert $state equals 0
}

@test '_ls has -a option' {
    run grep -cF '{-a,' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --color option' {
    run grep -c '\-\-color' "$src/_ls"
    assert $state equals 0
}

@test '_ls has --all option' {
    run grep -c '\-\-all' "$src/_ls"
    assert $state equals 0
}

@test '_rm has --force option' {
    run grep -c '\-\-force' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --recursive option' {
    run grep -c '\-\-recursive' "$src/_rm"
    assert $state equals 0
}

@test '_rm has --verbose option' {
    run grep -c '\-\-verbose' "$src/_rm"
    assert $state equals 0
}

@test '_mv has --force option' {
    run grep -c '\-\-force' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --verbose option' {
    run grep -c '\-\-verbose' "$src/_mv"
    assert $state equals 0
}

@test '_mv has --interactive option' {
    run grep -c '\-\-interactive' "$src/_mv"
    assert $state equals 0
}

@test '_chmod has --recursive option' {
    run grep -c '\-\-recursive' "$src/_chmod"
    assert $state equals 0
}

@test '_chmod has --verbose option' {
    run grep -c '\-\-verbose' "$src/_chmod"
    assert $state equals 0
}

@test '_chown has --recursive option' {
    run grep -c '\-\-recursive' "$src/_chown"
    assert $state equals 0
}

@test '_chown has --verbose option' {
    run grep -c '\-\-verbose' "$src/_chown"
    assert $state equals 0
}

@test '_mkdir has --parents option' {
    run grep -c '\-\-parents' "$src/_mkdir"
    assert $state equals 0
}

@test '_mkdir has --verbose option' {
    run grep -c '\-\-verbose' "$src/_mkdir"
    assert $state equals 0
}

@test '_tail has -n option' {
    run grep -cF '{-n,' "$src/_tail"
    assert $state equals 0
}

@test '_tail has -f option' {
    run grep -cF '{-f,' "$src/_tail"
    assert $state equals 0
}

@test '_sort has --reverse option' {
    run grep -c '\-\-reverse' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --numeric-sort option' {
    run grep -c '\-\-numeric' "$src/_sort"
    assert $state equals 0
}

@test '_sort has --unique option' {
    run grep -c '\-\-unique' "$src/_sort"
    assert $state equals 0
}

@test '_wc has --lines option' {
    run grep -c '\-\-lines' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --words option' {
    run grep -c '\-\-words' "$src/_wc"
    assert $state equals 0
}

@test '_wc has --bytes option' {
    run grep -c '\-\-bytes' "$src/_wc"
    assert $state equals 0
}

@test '_cut has -d option' {
    run grep -c '\-d[+=]' "$src/_cut"
    assert $state equals 0
}

@test '_cut has -f option' {
    run grep -cF '{-f,' "$src/_cut"
    assert $state equals 0
}

@test '_nmap has -sS option' {
    run grep -c '\-sS' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -sV option' {
    run grep -c '\-sV' "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -O option' {
    run grep -c "'-O" "$src/_nmap"
    assert $state equals 0
}

@test '_nmap has -p option' {
    run grep -c "'-p" "$src/_nmap"
    assert $state equals 0
}

@test '_lsof has -i option' {
    run grep -c "'-i" "$src/_lsof"
    assert $state equals 0
}

@test '_lsof has -p option' {
    run grep -c "'-p" "$src/_lsof"
    assert $state equals 0
}

@test '_strace has -p option' {
    run grep -c "'-p" "$src/_strace"
    assert $state equals 0
}

@test '_strace has -e option' {
    run grep -c '\*-e' "$src/_strace"
    assert $state equals 0
}

@test '_strace has -f option' {
    run grep -c "'-f" "$src/_strace"
    assert $state equals 0
}

@test '_tree has -L option' {
    run grep -c "'-L" "$src/_tree"
    assert $state equals 0
}

@test '_tree has -d option' {
    run grep -c "'-d" "$src/_tree"
    assert $state equals 0
}

@test '_tree has -a option' {
    run grep -c "'-a" "$src/_tree"
    assert $state equals 0
}

@test '_cat has -n option' {
    run grep -cF '{-n,' "$src/_cat"
    assert $state equals 0
}

@test '_less has -N option' {
    run grep -cF -- '-N' "$src/_less"
    assert $state equals 0
}

@test '_less has -S option' {
    run grep -c '{-S,' "$src/_less"
    assert $state equals 0
}

@test '_touch has -a option' {
    run grep -c "'-a" "$src/_touch"
    assert $state equals 0
}

@test '_touch has -m option' {
    run grep -c "'-m" "$src/_touch"
    assert $state equals 0
}

@test '_ln has -s option' {
    run grep -cF '{-s,' "$src/_ln"
    assert $state equals 0
}

@test '_ln has --force option' {
    run grep -c '\-\-force' "$src/_ln"
    assert $state equals 0
}

@test '_file has -b option' {
    run grep -cF '{-b,' "$src/_file"
    assert $state equals 0
}

@test '_file has -i option' {
    run grep -c "'-i" "$src/_file"
    assert $state equals 0
}

@test '_stat has -f option' {
    run grep -cF '{-f,' "$src/_stat"
    assert $state equals 0
}

@test '_patch has -p option' {
    run grep -c '{-p[+=]' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --dry-run option' {
    run grep -c '\-\-dry-run' "$src/_patch"
    assert $state equals 0
}

@test '_patch has --reverse option' {
    run grep -c '\-\-reverse' "$src/_patch"
    assert $state equals 0
}

@test '_pgrep has -l option' {
    run grep -cF '{-l,' "$src/_pgrep"
    assert $state equals 0
}

@test '_pgrep has -u option' {
    run grep -c '{-u[+=]' "$src/_pgrep"
    assert $state equals 0
}

@test '_date has --date option' {
    run grep -c '\-\-date' "$src/_date"
    assert $state equals 0
}

@test '_uniq has --count option' {
    run grep -c '\-\-count' "$src/_uniq"
    assert $state equals 0
}

@test '_uniq has --repeated option' {
    run grep -c '\-\-repeated' "$src/_uniq"
    assert $state equals 0
}

@test '_uniq has --ignore-case option' {
    run grep -c '\-\-ignore-case' "$src/_uniq"
    assert $state equals 0
}

@test '_comm has -1 option' {
    run grep -c "'-1" "$src/_comm"
    assert $state equals 0
}

@test '_comm has -2 option' {
    run grep -c "'-2" "$src/_comm"
    assert $state equals 0
}

@test '_comm has -3 option' {
    run grep -c "'-3" "$src/_comm"
    assert $state equals 0
}

@test '_nl has -b option' {
    run grep -c '{-b[+=]' "$src/_nl"
    assert $state equals 0
}

@test '_fold has -w option' {
    run grep -c '{-w[+=]' "$src/_fold"
    assert $state equals 0
}

@test '_cargo has build subcommand' {
    run grep -c 'build' "$src/_cargo"
    assert $state equals 0
}

@test '_cargo has run subcommand' {
    run grep -c 'run' "$src/_cargo"
    assert $state equals 0
}

@test '_systemctl has start subcommand' {
    run grep -c 'start' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has stop subcommand' {
    run grep -c 'stop' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has restart subcommand' {
    run grep -c 'restart' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has status subcommand' {
    run grep -c 'status' "$src/_systemctl"
    assert $state equals 0
}

@test '_systemctl has enable subcommand' {
    run grep -c 'enable' "$src/_systemctl"
    assert $state equals 0
}

@test '_make has -f option' {
    run grep -c '{-f[+=]' "$src/_make"
    assert $state equals 0
}

@test '_make has -j option' {
    run grep -c '{-j[+=]' "$src/_make"
    assert $state equals 0
}

@test '_make has -k option' {
    run grep -cF '{-k,' "$src/_make"
    assert $state equals 0
}

@test '_make has -n option' {
    run grep -cF '{-n,' "$src/_make"
    assert $state equals 0
}

@test '_jq has -r option' {
    run grep -cF '{-r,' "$src/_jq"
    assert $state equals 0
}

@test '_jq has -e option' {
    run grep -cF '{-e,' "$src/_jq"
    assert $state equals 0
}

@test '_htop has -d option' {
    run grep -cF '{-d,' "$src/_htop"
    assert $state equals 0
}

@test '_htop has -u option' {
    run grep -cF '{-u,' "$src/_htop"
    assert $state equals 0
}

@test '_htop has -p option' {
    run grep -cF '{-p,' "$src/_htop"
    assert $state equals 0
}

@test '_ip has link subcommand' {
    run grep -c 'link' "$src/_ip"
    assert $state equals 0
}

@test '_ip has addr subcommand' {
    run grep -c 'addr' "$src/_ip"
    assert $state equals 0
}

@test '_ss has -t option' {
    run grep -cF '{-t,' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -u option' {
    run grep -cF '{-u,' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -l option' {
    run grep -cF '{-l,' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -n option' {
    run grep -cF '{-n,' "$src/_ss"
    assert $state equals 0
}

@test '_ss has -p option' {
    run grep -cF '{-p,' "$src/_ss"
    assert $state equals 0
}

@test '_nc has -l option' {
    run grep -c "'-l" "$src/_nc"
    assert $state equals 0
}

@test '_nc has -p option' {
    run grep -c "'-p" "$src/_nc"
    assert $state equals 0
}

@test '_nc has -v option' {
    run grep -c "'-v" "$src/_nc"
    assert $state equals 0
}

@test '_dig has +short reference' {
    run grep -c 'short' "$src/_dig"
    assert $state equals 0
}

@test '_traceroute has -m option' {
    run grep -cF '{-m,' "$src/_traceroute"
    assert $state equals 0
}

@test '_traceroute has -w option' {
    run grep -cF '{-w,' "$src/_traceroute"
    assert $state equals 0
}

@test '_emacs has --no-init-file option' {
    run grep -c '\-\-no-init-file' "$src/_emacs"
    assert $state equals 0
}

@test '_nano has -B option' {
    run grep -cF '{-B,' "$src/_nano"
    assert $state equals 0
}

@test '_nano has -l option' {
    run grep -cF '{-l,' "$src/_nano"
    assert $state equals 0
}

@test '_screen has -r option' {
    run grep -c "'-r" "$src/_screen"
    assert $state equals 0
}

@test '_screen has -S option' {
    run grep -c "'-S" "$src/_screen"
    assert $state equals 0
}

@test '_screen has -d option' {
    run grep -c "'-d" "$src/_screen"
    assert $state equals 0
}

@test '_python has -c option' {
    run grep -c "'-c" "$src/_python"
    assert $state equals 0
}

@test '_python has -m option' {
    run grep -c "'-m" "$src/_python"
    assert $state equals 0
}

@test '_perl has -e option' {
    run grep -c '\*-e' "$src/_perl"
    assert $state equals 0
}

@test '_perl has -w option' {
    run grep -c "'-w" "$src/_perl"
    assert $state equals 0
}

@test '_perl has -n option' {
    run grep -c "'-n" "$src/_perl"
    assert $state equals 0
}

@test '_df has --human-readable option' {
    run grep -c '\-\-human-readable' "$src/_df"
    assert $state equals 0
}

@test '_du has --human-readable option' {
    run grep -c '\-\-human-readable' "$src/_du"
    assert $state equals 0
}

@test '_du has --summarize option' {
    run grep -c '\-\-summarize' "$src/_du"
    assert $state equals 0
}

@test '_dmesg has -T option' {
    run grep -cF '{-T,' "$src/_dmesg"
    assert $state equals 0
}

@test '_dmesg has --level option' {
    run grep -c '\-\-level' "$src/_dmesg"
    assert $state equals 0
}

@test '_journalctl has -u option' {
    run grep -c '{-u[+=]' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has -f option' {
    run grep -cF '{-f,' "$src/_journalctl"
    assert $state equals 0
}

@test '_journalctl has --since option' {
    run grep -c '\-\-since' "$src/_journalctl"
    assert $state equals 0
}

@test '_crontab has -e option' {
    run grep -c ')-e' "$src/_crontab"
    assert $state equals 0
}

@test '_crontab has -l option' {
    run grep -c ')-l' "$src/_crontab"
    assert $state equals 0
}

@test '_watch has -n option' {
    run grep -cF '{-n,' "$src/_watch"
    assert $state equals 0
}

@test '_watch has -d option' {
    run grep -cF '{-d,' "$src/_watch"
    assert $state equals 0
}

@test '_gpg has --sign option' {
    run grep -c '\-\-sign' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --encrypt option' {
    run grep -c '\-\-encrypt' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --decrypt option' {
    run grep -c '\-\-decrypt' "$src/_gpg"
    assert $state equals 0
}

@test '_gpg has --verify option' {
    run grep -c '\-\-verify' "$src/_gpg"
    assert $state equals 0
}

# ─── Additional file existence tests ─────────────────────────────────────────

@test 'src has _wget' {
    assert "$src/_wget" is_file
}

@test 'src has _ssh' {
    assert "$src/_ssh" is_file
}

@test 'src has _xargs' {
    assert "$src/_xargs" is_file
}

@test 'src has _gzip' {
    assert "$src/_gzip" is_file
}

@test 'src has _bzip2' {
    assert "$src/_bzip2" is_file
}

@test 'src has _date' {
    assert "$src/_date" is_file
}

@test 'src has _env' {
    assert "$src/_env" is_file
}

@test 'src has _free' {
    assert "$src/_free" is_file
}

@test 'src has _touch' {
    assert "$src/_touch" is_file
}

@test 'src has _who' {
    assert "$src/_who" is_file
}

@test 'src has _uptime' {
    assert "$src/_uptime" is_file
}

# ─── Compdef header tests ────────────────────────────────────────────────────

@test '_wget compdef is wget' {
    run head -1 "$src/_wget"
    assert $output same_as '#compdef wget'
}

@test '_ssh compdef is ssh' {
    run head -1 "$src/_ssh"
    assert $output same_as '#compdef ssh'
}

@test '_xargs compdef is xargs' {
    run head -1 "$src/_xargs"
    assert $output same_as '#compdef xargs'
}

@test '_gzip compdef is gzip' {
    run head -1 "$src/_gzip"
    assert $output same_as '#compdef gzip'
}

@test '_bzip2 compdef is bzip2' {
    run head -1 "$src/_bzip2"
    assert $output same_as '#compdef bzip2'
}

@test '_date compdef is date' {
    run head -1 "$src/_date"
    assert $output same_as '#compdef date'
}

@test '_env compdef is env' {
    run head -1 "$src/_env"
    assert $output same_as '#compdef env'
}

@test '_free compdef is free' {
    run head -1 "$src/_free"
    assert $output same_as '#compdef free'
}

@test '_touch compdef is touch' {
    run head -1 "$src/_touch"
    assert $output same_as '#compdef touch'
}

@test '_who compdef is who' {
    run head -1 "$src/_who"
    assert $output same_as '#compdef who'
}

@test '_uptime compdef is uptime' {
    run head -1 "$src/_uptime"
    assert $output same_as '#compdef uptime'
}

@test '_tee compdef is tee' {
    run head -1 "$src/_tee"
    assert $output same_as '#compdef tee'
}

# ─── Syntax check tests ──────────────────────────────────────────────────────

@test '_wget passes syntax check' {
    run zsh -n "$src/_wget"
    assert $state equals 0
}

@test '_ssh passes syntax check' {
    run zsh -n "$src/_ssh"
    assert $state equals 0
}

@test '_xargs passes syntax check' {
    run zsh -n "$src/_xargs"
    assert $state equals 0
}

@test '_gzip passes syntax check' {
    run zsh -n "$src/_gzip"
    assert $state equals 0
}

@test '_bzip2 passes syntax check' {
    run zsh -n "$src/_bzip2"
    assert $state equals 0
}

@test '_date passes syntax check' {
    run zsh -n "$src/_date"
    assert $state equals 0
}

@test '_env passes syntax check' {
    run zsh -n "$src/_env"
    assert $state equals 0
}

@test '_free passes syntax check' {
    run zsh -n "$src/_free"
    assert $state equals 0
}

@test '_touch passes syntax check' {
    run zsh -n "$src/_touch"
    assert $state equals 0
}

@test '_who passes syntax check' {
    run zsh -n "$src/_who"
    assert $state equals 0
}

@test '_uptime passes syntax check' {
    run zsh -n "$src/_uptime"
    assert $state equals 0
}

@test '_tee passes syntax check' {
    run zsh -n "$src/_tee"
    assert $state equals 0
}

# ─── _arguments usage tests ──────────────────────────────────────────────────

@test '_wget uses _arguments' {
    run grep -c '_arguments' "$src/_wget"
    assert $state equals 0
}

@test '_ssh uses _arguments' {
    run grep -c '_arguments' "$src/_ssh"
    assert $state equals 0
}

@test '_xargs uses _arguments' {
    run grep -c '_arguments' "$src/_xargs"
    assert $state equals 0
}

@test '_gzip uses _arguments' {
    run grep -c '_arguments' "$src/_gzip"
    assert $state equals 0
}

@test '_bzip2 uses _arguments' {
    run grep -c '_arguments' "$src/_bzip2"
    assert $state equals 0
}

@test '_date uses _arguments' {
    run grep -c '_arguments' "$src/_date"
    assert $state equals 0
}

@test '_env uses _arguments' {
    run grep -c '_arguments' "$src/_env"
    assert $state equals 0
}

@test '_free uses _arguments' {
    run grep -c '_arguments' "$src/_free"
    assert $state equals 0
}

@test '_touch uses _arguments' {
    run grep -c '_arguments' "$src/_touch"
    assert $state equals 0
}

@test '_who uses _arguments' {
    run grep -c '_arguments' "$src/_who"
    assert $state equals 0
}

@test '_uptime uses _arguments' {
    run grep -c '_arguments' "$src/_uptime"
    assert $state equals 0
}

@test '_tee uses _arguments' {
    run grep -c '_arguments' "$src/_tee"
    assert $state equals 0
}

# ─── _files completion tests ─────────────────────────────────────────────────

@test '_wget completes URLs' {
    run grep -c '_urls' "$src/_wget"
    assert $state equals 0
}

@test '_gzip completes filenames' {
    run grep -c '_files' "$src/_gzip"
    assert $state equals 0
}

@test '_bzip2 completes filenames' {
    run grep -c '_files' "$src/_bzip2"
    assert $state equals 0
}

@test '_touch completes filenames' {
    run grep -c '_files' "$src/_touch"
    assert $state equals 0
}

@test '_who completes filenames' {
    run grep -c '_files' "$src/_who"
    assert $state equals 0
}

@test '_tee completes filenames' {
    run grep -c '_files' "$src/_tee"
    assert $state equals 0
}
