(

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

  install -m755 $SOURCE_CACHE/$SOURCE2 /usr/bin &&
  install -m755 $SOURCE_CACHE/$SOURCE3 /usr/bin &&
  if [ ! -e /usr/lib/cups/filter/$SOURCE2 ] ; then
    ln -s ../../../bin/$SOURCE2 /usr/lib/cups/filter/$SOURCE2
  fi &&
  if [ -e /etc/init.d/cups ] ; then
    rm -f /etc/init.d/cups
  fi &&
  if module_installed samba ; then
    ln -s /usr/bin/smbspool /usr/lib/cups/backend/smb
  fi

) > $C_FIFO 2>&1
