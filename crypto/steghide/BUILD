(

  # this is a hack to get around a libtool-1.4.x versioning problem
  sedit "s/\$(LIBTOOL) --mode=link//g" src/Makefile.in &&

  default_config   &&
  make             &&
  make check       &&
  prepare_install  &&
  make install

) > $C_FIFO 2>&1
