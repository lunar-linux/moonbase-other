(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  add_priv_user imspector:imspector &&

  # Enable drop privs
  sedit 's/^#user=/user=/' imspector.conf &&
  sedit 's/^#group=/group=/' imspector.conf &&

  if in_depends $MODULE mysql; then
    ADD_PLUGINS+=" mysqlloggingplugin.so"
  fi &&

  if in_depends $MODULE sqlite; then
    ADD_PLUGINS+=" sqliteloggingplugin.so"
  fi &&

  if in_depends $MODULE postgresql; then
    ADD_PLUGINS+=" postgresqlloggingplugin.so"
  fi &&

  sedit "/^PROTOCOL_PLUGINS/a ADD_PLUGINS \=$ADD_PLUGINS" Makefile &&

  default_make &&
  gather_docs imspector.conf

) > $C_FIFO 2>&1
