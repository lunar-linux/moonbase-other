(

  export LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"  &&

  ./configure  --prefix=/usr/games          \
               --with-sdl-prefix=/usr       \
               --with-sdl-exec-prefix=/usr  \
               $OPTS                        &&

  default_make

) > $C_FIFO 2>&1
