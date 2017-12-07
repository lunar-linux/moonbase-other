./configure --prefix=/usr \
            --sysconfdir=/etc/courier-imap \
            --localstatedir=/var/spool/courier-imap \
            --datadir=/etc/courier-imap/cert \
            --disable-root-check \
            --mandir=/usr/share/man \
            --with-piddir=/run/courier \
            $OPTS &&

make &&
prepare_install &&
mkdir -p /etc/courier-imap/cert &&
make install &&
make install-configure
