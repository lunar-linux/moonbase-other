(
  
  prepare_install &&
  cd $SOURCE_DIRECTORY &&
  ./configure --prefix=/usr &&
  sedit "s/aclocal-1\.8/aclocal/" Makefile &&
  sedit "s/automake-1\.8/automake/" Makefile &&
  make &&
  make install

) > $C_FIFO 2>&1
