(

  sedit "s/MANDIR = \$(prefix)\/man/MANDIR = \$(prefix)\/share\/man/" unix/Makefile &&
  sedit 's@/usr/local@/usr@g' unix/Makefile unix/configure &&
  sedit "s/-O3/$CFLAGS/" unix/configure &&
  chmod 700 unix/configure &&
  cp -rf unix/* . &&
  ./configure &&
  make generic &&
  prepare_install &&
  make install &&
  gather_docs WHATSNEW TODO WHERE

) > $C_FIFO 2>&1
