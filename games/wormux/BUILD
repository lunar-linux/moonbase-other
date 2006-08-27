(

  sedit "s:datadir):datadir)/games:"            Makefile.in       &&
  sedit "s:@DATADIR@:/usr/share/games/wormux:"  Makefile.in       &&
  sedit "s:@DATADIR@:/usr/share/games/wormux:"  data/Makefile.am  &&
  sedit "s:@DATADIR@:/usr/share/games/wormux:"  data/Makefile.in  &&

  ./configure  --prefix=/usr                \
               --bindir=/usr/games          \
	       --datadir=/usr/share/games   \
	       --with-datadir-name=/usr/share/games/wormux  \
               $OPTS                                       &&

  default_make

) > $C_FIFO 2>&1
