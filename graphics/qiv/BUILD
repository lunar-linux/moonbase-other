(
  bzcat $SCRIPT_DIRECTORY/qiv-1.17.patch.bz2 | patch -p0
  sedit "s/man\/man1/share\/man\/man1/g" Makefile
  make              &&
  prepare_install   &&
  make install

) > $C_FIFO 2>&1
