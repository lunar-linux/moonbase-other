(

   perl Makefile.PL PREFIX=/usr  &&
   make                                 || exit 1
   make test                        || true
   prepare_install &&
   make install

) > $C_FIFO 2>&1

