(
  lrm Maelstrom > /dev/null &&  

  ./configure  --prefix=/usr        \
               --bindir=/usr/games  &&
	       
  mkdir -p /usr/games/Maelstrom &&

  default_make

) > $C_FIFO 2>&1
