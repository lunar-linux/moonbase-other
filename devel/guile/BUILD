(

  sedit  "s/extern int inet_aton/\/\/ extern int inet_aton/"  \
         libguile/net_db.c        &&
  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
