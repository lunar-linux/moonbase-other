(

  add_priv_user postgres:postgres       &&
  ./configure  --prefix=/usr            \
               --with-libs="-lncurses"  &&
  make                                  &&
  prepare_install                       &&
  make    install

) > $C_FIFO 2>&1

