(
  bzcat $SCRIPT_DIRECTORY/mailx_8.1.1-10.diff.bz2 | patch -p1  &&
  sedit "s/usr\/man\/man1/usr\/share\/man\/man1/" Makefile     &&
  make                                                         &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
