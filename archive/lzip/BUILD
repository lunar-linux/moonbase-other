(

  ./configure --build=$BUILD             \
              --prefix=/usr              \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man    \
              --sysconfdir=/etc
              $OPTS                     &&

  make &&
  prepare_install &&
  make install-strip 

) > $C_FIFO 2>&1
