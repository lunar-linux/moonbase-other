(

  cp    Makefile  Makefile.original
  sed   "s:\$(PREFIX)/bin:\$(PREFIX)/games:"  \
        Makefile.original  >  Makefile
  make  PREFIX=/usr  &&
  prepare_install    &&
  make  PREFIX=/usr  install

) > $C_FIFO 2>&1
