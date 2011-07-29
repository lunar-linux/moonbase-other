(

  sedit "s:/games/:/:"  configure.in  &&
  sedit "s:\$(datadir)/applications:/usr/share/applications:"  Makefile.am  &&
  sedit "s:\$(datadir)/applications:/usr/share/applications:"  Makefile.in  &&
  touch  -r  configure  configure.in  Makefile.in  &&

  ./configure  --prefix=/usr               \
               --bindir=/usr/games         \
               --datadir=/usr/share/games  \
               --disable-paraguitest      &&

  sedit "s:\-1.9::" Makefile  &&

  default_make

) > $C_FIFO 2>&1
