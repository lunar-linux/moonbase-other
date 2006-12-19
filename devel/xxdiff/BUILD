(

  . /etc/profile.d/qt3.rc

  cd src                              &&
  make -f Makefile.bootstrap makefile &&
  make                                &&
  prepare_install                     &&
  cd ..                               &&
  install bin/xxdiff /usr/bin

) > $C_FIFO 2>&1
