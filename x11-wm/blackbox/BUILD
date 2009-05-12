(

  ./configure --build=$BUILD     \
              --prefix=/usr      \
              --sysconfdir=/etc  \
              --disable-nls      \
              $OPTS             &&
              
  default_make
  
) > $C_FIFO 2>&1
