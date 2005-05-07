(

  export LIBART_CONFIG=/usr/bin/libart2-config

  ./configure   --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --enable-python                   \
                $OPTS                             &&
    default_make
   
) > $C_FIFO 2>&1
