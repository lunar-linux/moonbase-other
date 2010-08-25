(

  sedit 's/^prefix.*/prefix = \//' Makefile
  sedit 's/\/local//' man/Makefile &&
  sedit 's/^bindir.*/bindir = \/sbin/' Makefile &&

  make &&
  make convert &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
