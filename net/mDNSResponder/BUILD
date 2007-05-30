(

  patch_it $SOURCE1 0
  cd mDNSPosix && make os=linux INSTBASE=/usr STARTUPSCRIPTDIR=/etc/init.d &&
  prepare_install &&
  make install os=linux INSTBASE=/usr STARTUPSCRIPTDIR=/etc/init.d

) > $C_FIFO 2>&1
