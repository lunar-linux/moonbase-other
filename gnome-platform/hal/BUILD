(
   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
		--disable-docbook-docs	\
		--with-hal-user=nobody --with-hal-group=nogroup \
                $OPTS                             &&
    default_make

) > $C_FIFO 2>&1
