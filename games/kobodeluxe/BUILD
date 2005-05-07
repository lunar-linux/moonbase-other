(

  sedit 's:$(prefix)/games/kobo-deluxe:/var/games/kobo-deluxe:'  \
       configure

  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
               --disable-sdltest    \
               $KOBO_OGL            \
               $KOBO_OSS            &&

  default_make

) > $C_FIFO 2>&1
