(

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc	 \
               --mandir=/usr/share/man   \
               $OPTS                    &&
  make                                  &&
  prepare_install                       &&
  make install                          &&
  make install-configure

) > $C_FIFO 2>&1
