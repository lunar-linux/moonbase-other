(

  sedit "s:\$(PREFIX)/bin:\$(PREFIX)/games:" Makefile
  sedit "s:\$(PREFIX)/share:\$(PREFIX)/share/games:" Makefile
  make  PREFIX=/usr  &&
  prepare_install    &&
  make  PREFIX=/usr  install

) > $C_FIFO 2>&1
