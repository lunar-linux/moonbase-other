(

  if [ -d /usr/include/gdk-pixbuf-1.0/gdk-pixbuf ]; then
     ln  -sf  /usr/include/gdk-pixbuf-1.0/gdk-pixbuf /usr/include/gdk-pixbuf
  fi							&&

  ./configure   --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --disable-gdk_pixbuftest          \
                $OPTS                             &&
    default_make

) > $C_FIFO 2>&1
