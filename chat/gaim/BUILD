(
  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-gtk2             \
               --disable-gnome           \
               --disable-artsc           \
               --disable-perl            \
	       --enable-nss=no           \
	       --enable-gnutls=yes       \
	       $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
