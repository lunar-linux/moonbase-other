(

  add_priv_user postgres:postgres       &&
  ./configure  --prefix=/usr            \
               --with-libs="-lncurses"  &&
  default_make                                  

) > $C_FIFO 2>&1

