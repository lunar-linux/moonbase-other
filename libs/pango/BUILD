( 

  export PKG_CONFIG_PATH=/usr/lib/pkgconfig &&
  ./configure --prefix=/usr      \
              --sysconfdir=/etc  \
              $OPTS              &&
  make                           &&
  prepare_install                &&
  make    install                

) > $C_FIFO 2>&1
