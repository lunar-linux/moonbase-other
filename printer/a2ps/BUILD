(
  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc/a2ps    \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&

  make                                 &&
  prepare_install                      &&
  make    install                      &&
  rm    -f  /a2ps*.el

) > $C_FIFO 2>&1
