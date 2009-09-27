(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  sedit "s:datadir):prefix)/share:" desktop/Makefile.am  &&

  ./configure --prefix=/usr               \
              --bindir=/usr/games         \
              --datadir=/usr/share/games  \
              --mandir=/usr/share/man    &&

  sedit "s:datadir)/app:prefix)/share/app:" desktop/Makefile  &&
  sedit "s:datadir)/ico:prefix)/share/ico:" desktop/Makefile  &&

  default_make

) > $C_FIFO 2>&1
