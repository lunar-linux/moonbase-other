(
  sedit "s:datadir)/games:datadir):" data/Makefile.in        && 
  sedit "s:datadir)/games:datadir):" data/dialog/Makefile.in && 
  sedit "s:datadir)/games:datadir):" data/music/Makefile.in  && 

  ./configure  --prefix=/usr              \
               --bindir=/usr/games        \
	       --datadir=/usr/share/games \
               --disable-paraguitest      &&

  default_make

) > $C_FIFO 2>&1
