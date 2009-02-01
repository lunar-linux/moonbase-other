(

  if module_installed qt4 || module_installed qt3 ; then
    OPTS="$OPTS --enable-gui"
   else
    OPTS="$OPT --disable-gui"
  fi &&

  OPTS="$OPTS --enable-fdb"

  default_build

) > $C_FIFO 2>&1
