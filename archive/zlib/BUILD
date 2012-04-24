(

  sedit "s:\${libdir}/pkgconfig:/usr/lib/pkgconfig:" Makefile.in  &&

  ./configure  --prefix=/usr  &&
  make                        &&

  ./configure  --prefix=/usr  \
               --libdir=/lib  \
               --shared       &&

  # This fixes a bug in zlib's configure script that fails to set
  # CFLAGS properly when CFLAGS is passed to it and --shared is set
  if [ "`arch`" = "alpha" ]; then
      sedit 's/^CFLAGS *=/CFLAGS=-fPIC /' Makefile
  fi  &&

  default_make

) > $C_FIFO 2>&1
