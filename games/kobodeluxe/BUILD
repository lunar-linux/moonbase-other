(

  sedit 's:$(prefix)/games/kobo-deluxe:/var/state/kobo-deluxe:'  \
       configure

  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
               --disable-sdltest    \
               $KOBO_OGL            \
               $KOBO_OSS            &&
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
