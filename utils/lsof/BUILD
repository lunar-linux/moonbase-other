(

  tar xvf ${MODULE}_${VERSION}_src.tar &&
  cd ${MODULE}_${VERSION}_src          &&

  yes |  ./Configure  linux  &&
  make                       &&
  prepare_install            &&
  cp  lsof  /usr/bin         &&
  cp  lsof.8  /usr/share/man/man8

) > $C_FIFO 2>&1 
