(

  cat $SOURCE_CACHE/$SOURCE2 | patch -p1  &&

  make             &&
  prepare_install  &&
  make install

) > $C_FIFO 2>&1
