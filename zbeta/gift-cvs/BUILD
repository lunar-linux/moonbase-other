(

  ./autogen.sh --build=$BUILD            \
               --prefix=/usr             \
               --enable-gnutella             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&

  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1
