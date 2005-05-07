( 

  export PKG_CONFIG_PATH=/usr/lib/pkgconfig &&
  ./configure --prefix=/usr      \
              --sysconfdir=/etc  \
              $OPTS              &&
  default_make

) > $C_FIFO 2>&1
