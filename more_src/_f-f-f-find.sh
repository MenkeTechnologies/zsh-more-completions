#compdef f-f-f-find.sh
# Documentation: https://github.com/juuran/.juuran
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/juuran/.juuran/blob/8cb44aef904af94492500ae5ecfa4a65f92ca69f/omat/.config/omat/skriptit/auto_completions/_f-f-f-find.sh
# Repository: juuran/.juuran (omat/.config/omat/skriptit/auto_completions/_f-f-f-find.sh)


## VIPUJA
## Nämä siis kohdennetaan itse _argumentsille
##  -s  optargs hommelin kanssa käytettävä, tarkoittaa että -x -y on sama kuin -xy
##  -S  lopeta parsiminen jos tulee -- mikä Unixissa usein meinaa, ei enää optioita
##  -C  muokkaa curcontext parametria kun käytetään ->state actionia... käytännössä ???
##
##
## ERI SPECIT
## spec
##  n:message:action    n:näs normi argumentti 
##  n::message:action   kahdella kaksoipisteellä argumentti on valinnainen
##  :message:action     seuraava argumentti järjestyksessä, joka päätellään (numeroita ei tarvi ollenkaan)
##  *:message:action    en tiedä virallisesti, mutta tätä näyttäisi voivan tarjota uudestaan vaikka jo kirjoitettu
##
## optspec
##  SYMBOLI  ESIMERKKI  SELITE
##  *       *optioni    tätä voidaan tarjota uudestaan, vaikka olisikin jo kirjoitettu
##  -       -optioni    tässä mahdollisen argumentin täytyy olla erotettuna välilyönnillä
##  +       -optioni+   nyt argumentti voi olla suoraan perässä esim.  -optionifile  tai  -optioni file
##  =       -optioni=   nyt argumentiksi kävisi  -optioni=file  tai  -optioni file
##  []      -opt[sel]   nyt "sel" näkyisi selitteenä optiolle
##
## optarg (seuraavat optspeciä, jos argumentti vaaditaan)
## HUOM! Kriittistä käyttää : merkkiä optspecin perässä jos argumentti pakollinen! Kuuluvat yhteen.
##  :message:action     tämä optioargumentti on pakollinen
##  ::message:action    tämä optioargumentti on vapaahtoinen
##  
##  

depthsOfHades='(0 1 2 3 4 5 6 7 8 9 99)'

_arguments -s \
    '1:hakutermi:' \
    '2::polku:_files -/ -g "." -g ".."' \
    '(-h --help)'{-h,--help}'[display help]' \
    '-i[ignore case off, makes case significant]' \
    '-e[exact matches only]' \
    '-p[to look for paths with a pattern treating "/" specially]' \
    '-X[to make less use its switch -X]' \
    "-m+[set maximum depth to descend to in recursion]:number:($depthsOfHades)" \
## (
##      Huomioita ylemmästä
##      1. rivi: ei ole mielekästä antaa vaihtoehtoja, koska valittavana kaikki universumin sanat
##      2. rivi: _files on valmis funktio näihin tarkoituksiin
## )
