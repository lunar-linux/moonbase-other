(

  CFLAGS="$CFLAGS -I/usr/include/libcapplet1" &&
  ./configure  --prefix=/usr                \
               --localstatedir=/var         \
               --sysconfdir=/etc            &&
  make                                      &&
  prepare_install                           &&
  make    install

) > $C_FIFO 2>&1
