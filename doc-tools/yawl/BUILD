(

  patch < $SCRIPT_DIRECTORY/yawl-0.2.patch     &&
  sedit "s/SeDcFlAgS/$CFLAGS/g" Makefile       &&
  
  make                                         &&
  prepare_install                              &&
  make install

) > $C_FIFO 2>&1
