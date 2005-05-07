(

  patch -p1 < bugfix.patch                            &&
  patch -p1 < gnupop.patch                            &&
  sedit "s/rc.d\/init.d/init.d/"     Makefile.in      &&
  ./configure  --prefix=/usr                          \
               --bindir=/usr/bin                      \
               --sysconfdir=/etc                      \
               --mandir=/usr/share/man                \
               --infodir=/usr/share/info              &&
  make                                                &&
  prepare_install                                     &&
  make    install                                     

) > $C_FIFO 2>&1
