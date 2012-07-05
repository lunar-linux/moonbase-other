(

  if [ "`arch`" == "x86_64" ]; then
    CFLAGS="$CFLAGS -fPIC"
  fi &&

  OPTS+=" --disable-examples --enable-shared --with-udunits --without-szlib --disable-netcdf-4 --disable-f90" &&

  default_build

) > $C_FIFO 2>&1
