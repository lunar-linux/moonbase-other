(

  ./configure  --build=$BUILD          \
               --prefix=/usr           \
               --mandir=/usr/share/man \
	       --infodir=/usr/share/info \
               $OPTS                   &&
  make                                 &&
  prepare_install                      &&
  make    install                      &&
  chmod  a-s  /usr/bin/make

) > $C_FIFO 2>&1
