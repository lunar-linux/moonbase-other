(

  rm  -f  /usr/X11R6/lib/libz.a
  sedit  "s/-O/$CFLAGS/"  Makefile

  ./configure  --prefix=/usr  \
               --shared       &&
  make                        &&
  prepare_install             &&
  make    install             &&
  ./configure  --prefix=/usr  &&
  make                        &&
  make    install

) > $C_FIFO 2>&1
