(

  if [ -z "$DISPLAY" ] ; then
    OPTS="$OPTS --disable-gtk-doc"
    message "To get evolution devlopment documentation you must build with"
    message "an active X windows connection. i.e. $DISPLAY is set."
  fi								 &&

  ./configure  --prefix=${GNOME26_PREFIX:-/usr}             \
               --build=$BUILD                    	    \
               --sysconfdir=/etc                 	    \
               --localstatedir=/var              	    \
               --infodir=${GNOME26_PREFIX:-/usr}/share/info \
               --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
               --enable-ipv6                                \
               --enable-gtk-doc                             \
               $OPTS                                        &&
  default_make                                              &&

  # tweaks I needed to get it up:
  if ! grep -q '/usr/lib/bonobo/servers' /etc/bonobo-activation/bonobo-activation-config.xml ; then
    sedit "s:<searchpath>:<searchpath>\n\t<item>/usr/lib/bonobo/servers</item>:" /etc/bonobo-activation/bonobo-activation-config.xml
  fi								&&
  
  if [ ! -e /usr/lib/libgal-2.0.so.2 ] ; then
    ln -s libgal-2.0.so.3 /usr/lib/libgal-2.0.so.2
  fi

) > $C_FIFO 2>&1
