(

  sedit "s:\$(datadir)/doc:/usr/share/doc:" Makefile.in  &&
  sedit "s:\$(datadir)/pixmaps:/usr/share/pixmaps:" Makefile.in  &&
  sedit "s:\$(datadir)/locale:/usr/share/locale:" po/Makefile.in.in  &&
  sedit "s:\$(datadir)/applications:/usr/share/applications:" Makefile.in  &&

  sedit "s:Exec=@prefix@/bin/:Exec=@bindir@/:" toppler.desktop.in &&
  sedit "s:Icon=.*$:Icon=@PACKAGE@.xpm:" toppler.desktop.in &&

  default_game_build

) > $C_FIFO 2>&1
