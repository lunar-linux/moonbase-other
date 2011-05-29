(

  OPTS+=" --with-piplib=system --disable-static" &&

  sedit "s?install-data-local ??g" Makefile.in &&

  default_build

) > $C_FIFO 2>&1
