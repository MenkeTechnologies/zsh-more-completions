#compdef sha-tarkistin.sh
# Source: https://github.com/juuran/.juuran/blob/8cb44aef904af94492500ae5ecfa4a65f92ca69f/omat/.config/omat/skriptit/auto_completions/_sha-tarkistin.sh
# Repository: juuran/.juuran (omat/.config/omat/skriptit/auto_completions/_sha-tarkistin.sh)

shaNimet='(sha256sum sha512sum sha1sum sha384sum sha224sum)'

_arguments -s \
    '1:fileToCheck:_files' \
    '2::shaToCheck:' \
    '(-h --help)'{-h,--help}'[näyttääpi opasteen eli tienvarsiviitan]' \
    "-s[käytettävän shaSum ohjelman nimi annetaan tämän perään]:shaNimi:($shaNimet)"
