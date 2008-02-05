(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  ./configure --prefix=/usr  \
              $OPTS         &&

  default_make &&

  # Some apps expect to find /usr/include/boost
  BINC=`expr /usr/include/boost-*`  &&

  ln -sf ${BINC}/boost /usr/include/boost  &&

  ln -sf /usr/lib/libboost_date_time-gcc42-mt.so   /usr/lib/libboost_date_time-mt.so   &&
  ln -sf /usr/lib/libboost_filesystem-gcc42-mt.so  /usr/lib/libboost_filesystem-mt.so  &&
  ln -sf /usr/lib/libboost_thread-gcc42-mt.so      /usr/lib/libboost_thread-mt.so      &&
  ln -sf /usr/lib/libboost_regex-gcc42.so          /usr/lib/libboost_regex-gcc.so

) > $C_FIFO 2>&1
