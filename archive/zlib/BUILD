(

  rm  -f  /usr/X11R6/lib/libz.a
  sedit  "s/-O/$CFLAGS/"  Makefile

  ./configure  --prefix=/usr  \
               --shared       &&
  if [ "`arch`" == "alpha" ]; then
# This fixes a bug in zlib's configure script that fails to set
# CFLAGS properly when CFLAGS is passed to it and --shared is set
      sedit "s/CFLAGS=/CFLAGS=-fPIC /" Makefile;
  fi                          &&
  make                        &&
  prepare_install             &&
  make    install             &&
  ./configure  --prefix=/usr  &&
  make                        &&
  make    install

) > $C_FIFO 2>&1
