(

  sedit "s:/usr/local:/usr:g" Makefile
  sedit "s:/usr/share/info :/usr/share/info/:g" doc/Makefile

  prepare_install  &&
  make install

) > $C_FIFO 2>&1
