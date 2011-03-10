(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit 's:$(prefix)/games/kobo-deluxe:/var/games/kobo-deluxe:' configure  &&

  ./configure  --prefix=/usr         \
               --bindir=/usr/games   \
               --localstatedir=/var  \
               --disable-sdltest     \
               --mandir=/usr/share/man             \
               --datarootdir=/usr/share/games      \
               --sharedstatedir=/usr/share/games  &&
  default_make

) > $C_FIFO 2>&1
