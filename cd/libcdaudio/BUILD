(
  CFLAGS=`echo $CFLAGS | sed -e "s/-funroll-loops//"`  &&
  ./configure $BUILD --prefix=/usr --with-pic         && 
  make  PREFIX=/usr                                   &&
  prepare_install                                     &&
  make  PREFIX=/usr install

) > $C_FIFO 2>&1
