(

  bad_flags ALL

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --sysconfdir=/etc          \
               --localstatedir=/var       \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               --enable-modules           \
               --enable-crypt             \
               --enable-dynamic           \
               --with-gnu-ld              \
               --enable-shared            \
               --enable-rewrite           \
               --enable-ldbm              \
               --enable-ldap              \
               --enable-meta              \
               --enable-monitor           \
               --enable-null              \
               --enable-passwd            \
               --enable-shell             \
               --enable-dnssrv            \
               $OPTS                     &&
  make depend                            &&
  default_make  

) > $C_FIFO 2>&1
