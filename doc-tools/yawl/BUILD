(

  patch < $SCRIPT_DIRECTORY/yawl-0.2.patch     &&
  if [ "`arch`" == "alpha" ]; then
      sedit "s/-mpentium//" Makefile;
  fi                                           &&
  make                                         &&
  prepare_install                              &&
  make install

) > $C_FIFO 2>&1
