(

  sedit "s/local\///g" Makefile                               &&
  sedit "s/MKSTEMP/MKSTEMP \$(CFLAGS) \$(LDFLAGS)/" Makefile  &&
  sedit "s/usr\/man/usr\/share\/man/" Makefile                &&
  sedit "s/MANSECT = n/MANSECT = 1/" Makefile                 &&
  make                                                        &&
  prepare_install                                             &&
  make install

) > $C_FIFO 2>&1
