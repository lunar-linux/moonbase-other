(


  sedit "s:/usr/local:/usr:" Makefile librtmp/Makefile &&
  sedit "s:-Wall:-Wall -fPIC:" Makefile librtmp/Makefile &&

  cd librtmp &&

  make SYS=posix CRYPTO="OPENSSL"  &&

  prepare_install &&

  make install

) > $C_FIFO 2>&1
