OPTS+=" --disable-static \
        --disable-rpath  \
        --with-ssl=openssl \
        --with-moduledir=/usr/lib/dovecot/modules" &&

if module_installed systemd; then
  OPTS+=" --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi &&

add_priv_user dovecot:dovecot &&

default_build &&

gather_docs doc/mkcert.sh doc/dovecot-openssl.cnf
