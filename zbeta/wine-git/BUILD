(
  ./configure --prefix=/usr             \
              --sysconfdir=/etc         \
              --localstatedir=/var      \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man   \
              $OPTS         &&

  make depend               &&
  make                      &&
  prepare_install           &&
  make install

) > $C_FIFO 2>&1
