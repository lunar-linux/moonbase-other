(

  sedit "s:-malign-:-falign-:g" Makefile
  sedit "s:/usr/man:/usr/share/man:" Makefile
  sedit "s:extern FILE://:g" cfgfile.y

  make             &&
  prepare_install  &&
  make install     &&
  if [ ! -e /etc/TextConfig ] ; then
    install TextConfig /etc/TextConfig
  fi

) > $C_FIFO 2>&1
