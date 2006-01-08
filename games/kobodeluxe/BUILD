(

  sedit 's:$(prefix)/games/kobo-deluxe:/var/games/kobo-deluxe:' configure  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure  --prefix=/usr         \
               --bindir=/usr/games   \
	       --localstatedir=/var  \
               --disable-sdltest    &&
  default_make

) > $C_FIFO 2>&1
