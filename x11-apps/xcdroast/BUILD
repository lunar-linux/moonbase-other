(
    ./configure --enable-gtk2		  \
		--prefix=/usr             \
               	--sysconfdir=/etc         \
               	--localstatedir=/var      \
               	--infodir=/usr/share/info \
               	--mandir=/usr/share/man   \
               $OPTS                     &&
  prepare_install			&&
  default_make				

) > $C_FIFO 2>&1
