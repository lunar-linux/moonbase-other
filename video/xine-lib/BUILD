(

  ./configure  --build=$BUILD              \
               --prefix=/usr               \
               --sysconfdir=/etc           \
               --localstatedir=/var        \
               --libdir=/usr/lib           \
               --infodir=/usr/share/info   \
               --mandir=/usr/share/man     \
               $OPTS                       &&
  make                                     &&
  prepare_install                          &&
  make    install                          

) > $C_FIFO 2>&1
