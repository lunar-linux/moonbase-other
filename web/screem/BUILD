(
  if [ -d /usr/include/gdk-pixbuf-1.0/gdk-pixbuf ]; then
     ln  -sf  /usr/include/gdk-pixbuf-1.0/gdk-pixbuf /usr/include/gdk-pixbuf
  fi                                        &&
  ./configure --prefix=/usr                 \
              --bindir=/usr/bin             \
              --sbindir=/usr/sbin           \
              --datadir=/usr/share          \
              --sysconfdir=/etc             \
              --infodir=/usr/share/info     \
              --mandir=/usr/share/man       \
              --disable-gdk_pixbuftest      &&
  default_make

) > $C_FIFO 2>&1
