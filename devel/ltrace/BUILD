(

  ./configure --prefix=/usr           \
              --bindir=/usr/bin       \
              --sbindir=/usr/sbin     \
              --datadir=/usr/share    \
	      --sysconfdir=/etc       \
	      --mandir=/usr/share/man &&
  make                                &&
  prepare_install                     &&
  make    install

) > $C_FIFO 2>&1
