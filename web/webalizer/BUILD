(
  ./configure  --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
               --with-dblib=/usr/lib   \
               --with-db=/usr/include  \
               --mandir=/usr/share/man \
               --enable-dns            \
               $OPTS                   &&
  make                                 &&
  prepare_install                      &&
  make    install                          
) > $C_FIFO 2>&1
