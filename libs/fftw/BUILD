(

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-shared           \
               --enable-i386-hacks       &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
