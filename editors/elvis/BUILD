(

  patch_it $SOURCE2 1 &&

  sedit "s/if test -n \"\$mandir\"/mandir=\/usr\/share\/man\/man1 ; \0/" instman.sh &&
  sedit "s/for dir in \$mandir/mandir=\/usr\/share\/man\/man1 ; \0/" instman.sh &&
  sedit  "s/-O2/$CFLAGS $LDFLAGS/" configure &&

  if [ "$USE_X11" == "y" ]; then
    ./configure  --with-x linux            \
                 --bindir=/usr/bin         \
                 --datadir=/var/lib/elvis  &&
    make &&
    mv elvis xelvis &&
    make clean
  fi &&

  ./configure  --with-x=no linux         \
               --bindir=/usr/bin         \
               --datadir=/var/lib/elvis  &&
  default_make &&

  if [ "$USE_X11" == "y" ]; then
    cp xelvis /usr/bin/xelvis
  fi

) > $C_FIFO 2>&1
