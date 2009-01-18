(

  prepare_install  &&
  sedit "s:/usr/local:/usr:g" Makefile
  sedit "s:(datadir)/tools:(prefix)/bin:g" Makefile
  make install

) > $C_FIFO 2>&1
