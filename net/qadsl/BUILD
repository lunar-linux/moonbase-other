(
  ./configure  --prefix=/usr             \
               --sbindir=/usr/sbin       \
               --mandir=/usr/share/man   \
               --infodir=/usr/share/info \
               --sysconfdir=/etc         &&
  make                                   &&
  prepare_install                        &&
  make install				 &&
  chmod 700 /etc/qadsl.conf
) > $C_FIFO 2>&1
