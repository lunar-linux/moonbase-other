(
  lrm geki2 &&
  
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  
  aclocal &&
  touch -r ./configure ./configure.in &&
  
  ./configure  --prefix=/usr        \
               --bindir=/usr/games  \
	       --datadir=/usr/share/games &&

  mkdir -p /usr/share/games/geki2      &&
  mkdir -p /usr/share/games/geki2/bmp  &&
  mkdir -p /usr/share/games/geki2/data &&
  mkdir -p /usr/share/games/geki2/wav  &&
  
  default_make

) > $C_FIFO 2>&1
