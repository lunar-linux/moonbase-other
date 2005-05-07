(

  ./configure  --prefix=/usr                 \
               --bindir=/usr/bin             \
               --sbindir=/usr/sbin           \
               --datadir=/usr/share          \
               --sysconfdir=/etc             \
               --localstatedir=/var          \
               --libdir=/usr/lib             \
               --includedir=/usr/include     \
               --infodir=/usr/share/info     \
               --mandir=/usr/share/man       \
               --without-gtk                 \
               $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
