(

  sedit "s/if test -n \"\$mandir\"/mandir=\/usr\/share\/man\/man1 ; \0/" instman.sh
  sedit "s/for dir in \$mandir/mandir=\/usr\/share\/man\/man1 ; \0/" instman.sh
  sedit  "s/-O2/$CFLAGS $LDFLAGS/"  configure     &&
  ./configure  --with-x linux            \
               --bindir=/usr/bin         \
               --datadir=/var/lib/elvis  &&
  make &&
  mv elvis xelvis &&
  make clean &&
  ./configure  --with-x=no linux         \
               --bindir=/usr/bin         \
               --datadir=/var/lib/elvis  &&
  make &&
  prepare_install &&
  make install &&
  cp xelvis /usr/bin/xelvis

) > $C_FIFO 2>&1
