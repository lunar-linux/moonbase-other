(

  ./configure  --prefix=/usr      \
               --sysconfdir=/etc  \
               --enable-fsstd     &&
  make                            &&
  prepare_install                 &&
  make    install

) > $C_FIFO 2>&1
