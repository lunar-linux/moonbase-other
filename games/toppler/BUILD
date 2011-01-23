(

  sedit "s:\$(datadir)/doc:/usr/share/doc:" Makefile.in  &&
  sedit "s:\$(datadir)/pixmaps:/usr/share/pixmaps:" Makefile.in  &&
  sedit "s:\$(datadir)/locale:/usr/share/locale:" po/Makefile.in.in  &&
  sedit "s:\$(datadir)/applications:/usr/share/applications:" Makefile.in  &&
  ./configure  --build=$BUILD              \
               --prefix=/usr               \
               --sysconfdir=/etc           \
               --localstatedir=/var/games  \
               --infodir=/usr/share/info   \
               --mandir=/usr/share/man     \
               --bindir=/usr/games         \
               --datadir=/usr/share/games  \
               --localedir=/usr/share/locale  \
               $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
