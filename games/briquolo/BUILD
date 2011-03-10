(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  sedit "s:\$(DESTDIR)\$(datadir):/usr/share:" desktop/Makefile.in  &&

  ./configure  --prefix=/usr               \
               --bindir=/usr/games         \
               --datadir=/usr/share/games  \
               --build=$BUILD              \
               --sysconfdir=/etc           \
               --localstatedir=/var        \
               --infodir=/usr/share/info   \
               --mandir=/usr/share/man     \
               --with-x                    \
               --localedir=/usr/share/locale  \
               $OPTS                         &&
  sedit "s:\$(datadir):/usr/share/locale:" po/Makefile  &&
  default_make

) > $C_FIFO 2>&1
