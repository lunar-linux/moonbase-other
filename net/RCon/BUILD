(

  cd TRCon                                     &&
  sedit "s:CFLAGS.\+= -O2 -Wall:CFLAGS = $CFLAGS:" Makefile &&
  make                                         &&
  prepare_install                              &&
  install -m0755 TRCon $MODULE_PREFIX/bin      &&
  cd ..                                        &&
  install -m0755 RCon $MODULE_PREFIX/bin       &&
  install -m0755 RConConfig $MODULE_PREFIX/bin &&
  gather_docs TRCon/README

) > $C_FIFO 2>&1
