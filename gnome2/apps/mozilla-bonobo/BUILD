(
  ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man    \
                --with-plugin-install-dir=/opt/lunar/plugins  \
                $OPTS                                        &&
    default_make

) > $C_FIFO 2>&1
