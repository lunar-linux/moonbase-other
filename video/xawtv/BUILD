(

  unset CFLAGS

  ./configure  --prefix=/usr  &&
  make                        &&
  prepare_install             &&
  make    install	      &&
  ./MAKEDEV.v4l

) > $C_FIFO 2>&1
