(

  if [[ $GCCVER == "3" ]];  then
    OPTS="$OPTS --disable-werror"
  fi

  default_config  &&
  default_make    &&
  echo  "YES"                     |
  galeon-config-tool  --install-schemas --fix-gconf-permissions

) > $C_FIFO 2>&1 