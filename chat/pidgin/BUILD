(

  ./configure  --prefix=/usr              \
               --sysconfdir=/etc/a2ps     \
               --localstatedir=/var       \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
	       --disable-nm               \
               $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
