( 
  export PATH=$PATH:/opt/lunar/Xft/bin &&
  export PKG_CONFIG_PATH=/usr/lib/pkgconfig &&
  ./configure --prefix=/usr      \
              $OPTS              &&
  make                           &&
  prepare_install                &&
  make    install                &&
  cp $SCRIPT_DIRECTORY/pangoxft.pc /usr/lib/pkgconfig/pangoxft.pc 

) > $C_FIFO 2>&1
