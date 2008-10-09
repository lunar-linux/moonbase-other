(

  patch_it $SOURCE2 1 &&
  add_priv_user imspector:imspector &&

  # Enable drop privs
  sedit 's/^#user=/user=/' imspector.conf &&
  sedit 's/^#group=/group=/' imspector.conf &&

  if is_depends mysql; then
    ADD_PLUGINS+=" mysqlloggingplugin.so"
  fi &&

  if is_depends sqlite; then
    ADD_PLUGINS+=" sqliteloggingplugin.so"
  fi &&

  if is_depends postgresql; then
    ADD_PLUGINS+=" postgresqlloggingplugin.so"
  fi &&

  sedit "/^PROTOCOL_PLUGINS/a ADD_PLUGINS \=$ADD_PLUGINS" Makefile &&

  default_make &&
  gather_docs imspector.conf

) > $C_FIFO 2>&1
