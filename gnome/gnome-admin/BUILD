(

  ./configure  --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --with-messages=/var/log/messages  &&
  make                                            &&
  prepare_install                                 &&
  make    install

) > $C_FIFO 2>&1
