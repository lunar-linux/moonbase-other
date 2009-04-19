(

  sedit "s:\$datadir/games:/usr/share/games:" configure  &&
  sedit "s:\$(datadir)/locale:/usr/share/locale:" po/Makefile.in.in  &&
  ./configure --prefix=/usr               \
              --bindir=/usr/games         \
              --datadir=/usr/share/games  \
              --mandir=/usr/share/man    &&
  sedit "s:games/locale:locale:" Makefile  &&
  default_make

) > $C_FIFO 2>&1
