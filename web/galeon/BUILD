(

  OPTS="$OPTS --disable-werror"

  default_config  &&
  default_make    &&
  echo  "YES"                     |
  galeon-config-tool  --install-schemas --fix-gconf-permissions

) > $C_FIFO 2>&1 
