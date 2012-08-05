(

  aclocal        &&
  autoheader     &&
  libtoolize -f -i &&
  automake -a -f &&
  autoconf -f    &&
  autoreconf     &&

  default_build

) > $C_FIFO 2>&1
