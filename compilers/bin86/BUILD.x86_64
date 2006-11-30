(

  patch_it $SOURCE2 1 &&
  sedit "s/-O2/$CFLAGS/" Makefile &&
  sedit "s/MANDIR=\$(PREFIX)\/man/MANDIR=\$(PREFIX)\/share\/man/" Makefile &&
  make &&
  prepare_install &&
  make PREFIX=/usr install

) > $C_FIFO 2>&1
