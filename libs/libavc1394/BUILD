(

  ./configure  --sysconfdir=/etc        \
	       --prefix=/usr            \
	       --mandir=/usr/share/man  \
               --localstatedir=/var     \
	       $OPTS                    &&
  make                                  &&
  prepare_install                       &&
  make    install

) > $C_FIFO 2>&1

