(

  cd  $VERSION                         &&
  ./configure  --build=$BUILD          \
               --prefix=/usr           \
               --sbindir=/sbin         \
               --libdir=/lib           \
               --mandir=/usr/share/man \
               --sysconfdir=/etc       &&
  make                                 &&
  prepare_install                      &&
  make    install

) > $C_FIFO 2>&1
