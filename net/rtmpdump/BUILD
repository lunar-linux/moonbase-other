(

  sedit "s:/usr/local:/usr:" Makefile librtmp/Makefile &&
  sedit "s:-Wall:-Wall -fPIC:" Makefile librtmp/Makefile &&

  make SYS=posix CRYPTO="OPENSSL"  &&

  prepare_install &&

  make install    &&

  install rtmpdump rtmpgw rtmpsrv rtmpsuck /usr/bin

) > $C_FIFO 2>&1
