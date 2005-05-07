(

  sedit "s:share/jumpnbump:share/games/jumpnbump:" globals.h  &&

  ./configure  --prefix=/usr                \
               --bindir=/usr/games          \
	       --datadir=/usr/share/games  &&

  default_make

) > $C_FIFO 2>&1
