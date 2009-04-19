(

  export LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"  &&
  sedit "s:\$(datadir)/locale:/usr/share/locale:" po/Makefile.in.in  &&
  ./configure  --prefix=/usr                \
               --bindir=/usr/games          \
               --datadir=/usr/share/games   \
               --with-sdl-prefix=/usr       \
               --with-sdl-exec-prefix=/usr  \
               $OPTS                       &&

  default_make

) > $C_FIFO 2>&1
