(

  ./configure --prefix=/usr --enable-static=no $OPTS &&

  make without_doc          &&

  prepare_install           &&
  make    install           &&

  chmod 755 /usr/lib/libt1{,x}.so.$VERSION

) > $C_FIFO 2>&1
