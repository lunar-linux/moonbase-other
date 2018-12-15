OPTS+=" --sbindir=/usr/bin"

./configure --prefix=/usr \
            --sysconfdir=/etc/courier-imap \
            --localstatedir=/var/spool/courier-imap \
            --datadir=/etc/courier-imap/cert \
            --mandir=/usr/share/man \
            --with-piddir=/run/courier \
            --with-notice=unicode \
            --disable-root-check \
            --enable-unicode \
            $OPTS &&

make &&
prepare_install &&
make install &&

mkdir -p /etc/courier/cert &&
make install-configure &&

sedit 's|TLS_CERTFILE=/usr/share/|TLS_CERTFILE=/etc/courier-imap/|' /etc/courier-imap/*-ssl
