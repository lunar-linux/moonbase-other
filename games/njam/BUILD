(

  ./configure  --prefix=/usr                \
               --bindir=/usr/games          \
	       --datadir=/usr/share/games   \
               --enable-sound               \
               --with-sdl-prefix=/usr       \
               --with-sdl-exec-prefix=/usr  \
               $OPTS                       &&

  default_make

) > $C_FIFO 2>&1
