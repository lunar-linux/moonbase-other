(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
               --datadir=/usr/share/games  &&

  sedit "s:PREFIX)/bin:PREFIX)/games:" Makefile  &&
  default_make

) > $C_FIFO 2>&1
