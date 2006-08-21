(

  ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --disable-gnome-screenshot        \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
	  sed -i 's/-lXext/-L\/usr\/X11R6\/lib -lXext/g' gnome-screenshot/Makefile
    default_make

) > $C_FIFO 2>&1
