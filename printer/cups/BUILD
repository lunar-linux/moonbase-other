
(

#There a case or two that this could be "problematic"
#So let's just "force it our way" :)
#hvisage
  sedit "s/etc\/rc.d/etc/" Makedefs.in
  sedit 's/etc\/rc.d/etc/g' configure
  ./configure  --bindir=/usr/bin           \
               --sbindir=/usr/sbin         \
               --datadir=/usr/share        \
               --sysconfdir=/etc           \
               --localstatedir=/var        \
               --libdir=/usr/lib           \
               --mandir=/usr/share/man     \
               $OPTS                 &&
  make                               &&
  prepare_install                    &&
  make    install

) > $C_FIFO 2>&1
