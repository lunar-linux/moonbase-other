(

#--with-mozilla-snapshot will be removed after a new release of galeon
#it is necessary for version 1.2.5

  if [[ $GCCVER == "3" ]];  then
    OPTS="$OPTS --disable-werror --with-mozilla-snapshot=trunk"
  fi

  default_config  &&
  default_make    &&
  echo  "YES"                     |
  galeon-config-tool  --install-schemas --fix-gconf-permissions

) > $C_FIFO 2>&1 
