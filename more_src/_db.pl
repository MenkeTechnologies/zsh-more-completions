#compdef db.pl
# Documentation: https://arkime.com/faq
# Arkime OpenSearch/Elasticsearch database management script

local ret=1

_arguments -s -S \
  '-v[verbose, repeat for more]' \
  '--prefix=[prefix for index names]:prefix:' \
  '--clientkey=[path to client auth key]:key:_files' \
  '--clientcert=[path to client auth cert]:cert:_files' \
  '--insecure[disable certificate verification]' \
  '-n[make no database changes]' \
  '--timeout=[ES timeout in seconds]:seconds:' \
  '--esuser=[ES user and password]:user\:pass:' \
  '--esapikey=[Elasticsearch API key]:key:' \
  '*::command:(init initnoprompt info wipe upgrade upgradenoprompt clean disable-users \
    set-shortcut users-import users-export import export restore restorenoprompt \
    repair backup expire rotate optimize optimize-admin mv rm rm-missing rm-node \
    add-missing field field-list field-rm field-enable field-disable sync-files \
    hide-node unhide-node add-alias show-nodes set-replicas set-shards-per-node \
    set-allocation-enable allocate-empty shrink ilm ism recreate-users es-adduser \
    es-passwd es-addapikey reindex)' && ret=0

return ret
