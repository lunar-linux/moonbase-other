(

  ./configure --build=$BUILD             \
              --prefix=/usr              \
              --bindir=/bin              \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man    \
              $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
