( 

  export PKG_CONFIG_PATH=/usr/X11R6/lib/pkgconfig:$PKG_CONFIG_PATH
  ./configure --prefix=/usr      \
              $OPTS              &&
  make                           &&
  prepare_install                &&
  make    install                &&
  cp $SCRIPT_DIRECTORY/pangoxft.pc /usr/lib/pkgconfig/pangoxft.pc 

) > $C_FIFO 2>&1
