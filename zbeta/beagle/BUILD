(

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                --enable-webservices              \
                --enable-network                  \
                --with-mozilla=firefox            \
                $OPTS                             &&
    default_make				  &&

    if [ ! -d /usr/share/beagle ]; then

       mkdir /usr/share/beagle                     
       cp mozilla-extension/beagle.xpi /usr/share/beagle/

    else
   
       cp mozilla-extension/beagle.xpi /usr/share/beagle/

    fi  

) > $C_FIFO 2>&1
