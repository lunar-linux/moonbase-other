(

  rm  -f  /usr/X11R6/lib/libz.a
  sedit  "s/-O/$CFLAGS/"  Makefile

  ./configure  --prefix=/usr  \
               --shared       &&
  if [ "`arch`" == "alpha" ]; then
      sedit "s/CFLAGS=/CFLAGS=-fPIC /";
  fi                          &&
  make                        &&
  prepare_install             &&
  make    install             &&
  ./configure  --prefix=/usr  &&
  make                        &&
  make    install

) > $C_FIFO 2>&1
