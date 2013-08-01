(

  unset CC CXX  &&
  sedit  "s/-O/$CFLAGS/"  Makefile.in

  ./configure  --prefix=/usr     \
               --disable-static &&

  sedit "s/fix)\/info/fix)\/share\/info/" Makefile  &&
  sedit "s/fix)\/man/fix)\/share\/man/" Makefile    &&
  make             &&
  prepare_install  &&
  make  prefix=/usr install

) > $C_FIFO 2>&1
