(

  # add this example to clearify that cups uses this particular ipp
  # scheme, otherwise you will never find out.
  sedit 's%ipp://hostname/ipp%ipp://hostname/printers/ipp%' templates/choose-uri.tmpl templates/*/choose-uri.tmpl

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
  make    install                    &&

  if [ -e /etc/init.d/cups ] ; then
    rm -f /etc/init.d/cups
  fi 

) > $C_FIFO 2>&1
