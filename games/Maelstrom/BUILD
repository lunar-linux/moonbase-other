(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&

  prepare_install                   &&  

  ./configure  --prefix=/usr         \
               --bindir=/usr/games  &&
	       
  mkdir -p /usr/games/Maelstrom     &&

  default_make

) > $C_FIFO 2>&1
