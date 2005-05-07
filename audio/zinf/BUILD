(

  ./configure  --prefix=/usr     \
               --enable-cmdline  \
               $OPTS             &&
  make                           &&
  prepare_install                &&
  make    install
 
) > $C_FIFO 2>&1
