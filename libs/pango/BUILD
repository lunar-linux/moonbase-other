( 

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:$PKG_CONFIG_PATH
  ./configure --prefix=/usr      \
              $OPTS              &&
  make                           &&
  prepare_install                &&
  make    install

) > $C_FIFO 2>&1
