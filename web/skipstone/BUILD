(
  ./configure --prefix=/usr                                \
              --sysconfdir=/etc                            \
              --localstatedir=/var                         \
              --infodir=/usr/share/info                    \
              --mandir=/usr/share/man                      \
              --with-mozilla-includes=/usr/include/mozilla \
              --with-mozilla-libs=/usr/lib/mozilla         \
              --enable-cvs-mozilla                         \
              $OPTS                            &&
  default_make 

) > $C_FIFO 2>&1
