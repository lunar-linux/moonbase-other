(
  ./configure  --build=$BUILD          \
               --prefix=/usr           \
               --sbindir=/sbin         \
               --libdir=/lib           \
               --mandir=/usr/share/man \
               --sysconfdir=/etc       \
	       --enable-readline       &&
  make                                 &&
  prepare_install                      &&
  make install

) > $C_FIFO 2>&1
