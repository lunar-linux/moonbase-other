(
  gzip -dc  $SOURCE_CACHE/$SOURCE2 | patch -p1 && 

  libtoolize --force \
  && aclocal \
  && automake \
  && autoconf && 

  default_build
) > $C_FIFO 2>&1
