(

  bad_flags -malign-double
  export CC="gcc"
  OPTS="$OPTS --enable-shared --enable-static"

  default_config &&
  sedit "s/\$(prefix)\/man\/man\$(manext)/\/usr\/share\/man\/man\$(manext)/" Makefile &&
  make  &&
  LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PWD make test &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
