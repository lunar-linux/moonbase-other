(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  aclocal  &&
  autoconf &&
  touch -r ./README ./configure ./configure.in &&

  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
	       --datadir=/usr/share/games &&
  
  mkdir -p /usr/share/games/geki3      &&
  mkdir -p /usr/share/games/geki3/bmp  &&
  mkdir -p /usr/share/games/geki3/data &&
  mkdir -p /usr/share/games/geki3/wav  &&
  
  default_make

) > $C_FIFO 2>&1
