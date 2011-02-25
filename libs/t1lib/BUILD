(

  ./configure --prefix=/usr  \
              $OPTS         &&

  make without_doc          &&

  prepare_install           &&
  make    install           &&

  chmod 755 /usr/lib/libt1.so.$VERSION

) > $C_FIFO 2>&1
