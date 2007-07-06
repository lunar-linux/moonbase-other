(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  sedit "s/MANDIR = \$(prefix)\/man/MANDIR = \$(prefix)\/share\/man/" unix/Makefile
  sedit "s/-O2/$CFLAGS/" unix/configure &&
  make  -f unix/Makefile generic  &&
  prepare_install                 &&
  make  prefix=/usr -f unix/Makefile install

) > $C_FIFO 2>&1
