(

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  for FILE in `find . -iname "Makefile"`
  do
    sedit "s:-I/usr/include::" ${FILE}
  done                                   && 
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
