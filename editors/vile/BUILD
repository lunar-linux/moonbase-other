(

       ./configure  --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                $OPTS                     &&
	default_make			&&
	make				&&
	make install
) > $C_FIFO 2>&1
