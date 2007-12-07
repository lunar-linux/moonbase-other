(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  ./configure --prefix=/usr   \
              $OPTS          &&

  default_make &&

  # Some apps expect to find /usr/include/boost
  BINC=`expr /usr/include/boost-*` &&
  ln -sf ${BINC}/boost /usr/include/boost

) > $C_FIFO 2>&1
