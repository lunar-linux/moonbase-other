(

  patch < $SCRIPT_DIRECTORY/yawl-0.2.patch     &&
  if [ "`arch`" == "alpha" ]; then
# Alpha's don't accept -mpentium =)
      sedit "s/-mpentium//" Makefile;
  fi                                           &&
  make                                         &&
  prepare_install                              &&
  make install

) > $C_FIFO 2>&1
