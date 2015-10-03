OPTS+=" --disable-static \
        --disable-rpath  \
        --with-ssl=openssl \
        --with-moduledir=/usr/lib/dovecot/modules \
        --with-systemdsystemunitdir=/usr/lib/systemd/system" &&

add_priv_user dovecot:dovecot &&

default_build &&

gather_docs doc/mkcert.sh doc/dovecot-openssl.cnf
