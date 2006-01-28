(

  sedit "s:/games/:/:"  configure.in  &&
  sedit "s:\$(datadir)/applications:/usr/share/applications:"  Makefile.am  &&
  sedit "s:\$(datadir)/applications:/usr/share/applications:"  Makefile.in  &&
  touch  -r  configure  configure.in  Makefile.in  &&
  default_game_build

) > $C_FIFO 2>&1
