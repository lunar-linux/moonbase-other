(

  sedit "s/-O3/$CFLAGS/" unix/configure unix/Makefile &&
  sedit "s/MANDIR = \$(prefix)\/man/MANDIR = \$(prefix)\/share\/man/" unix/Makefile &&
  sedit 's@/usr/local@/usr@g' unix/Makefile unix/configure &&
  cp -rf unix/* . &&
  ./configure &&
  make linux_shlib &&
  make linux &&
  prepare_install &&
  make install &&
  cp -af libunzip.s* /usr/lib &&
  gather_docs BUGS WHERE ToDo

) > $C_FIFO 2>&1
