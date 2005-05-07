(

  ./configure --prefix=/usr  \
              $OPTS          &&
  make without_doc           &&
  prepare_install            &&
  make    install

) > $C_FIFO 2>&1
