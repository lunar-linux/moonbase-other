(

  sedit "s/if test -n \"\$mandir\"/mandir=\/usr\/share\/man\/man1 ; \0/" instman.sh
  sedit "s/for dir in \$mandir/mandir=\/usr\/share\/man\/man1 ; \0/" instman.sh
  sedit  "s/-O2/$CFLAGS $LDFLAGS/"  configure     &&
  ./configure  --build=$BUILD            \
               --bindir=/usr/bin         \
               --datadir=/var/lib/elvis  &&
  make                                   &&
  prepare_install                        &&
  make    install                        &&
  ln  -sf  elvis  /usr/bin/vi

) > $C_FIFO 2>&1
