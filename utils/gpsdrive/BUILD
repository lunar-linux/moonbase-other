(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  ./configure --prefix=/usr              \
              --mandir=/usr/share/man    \
              --datadir=/usr/share       \
              $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
