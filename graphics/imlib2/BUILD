(

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc/imlib2  \
	       --infodir=/usr/share/info \
	       --mandir=/usr/share/man   &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
