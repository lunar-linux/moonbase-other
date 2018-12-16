cd src &&

export CFLAGS+=" -fPIC -fno-strict-aliasing -fstack-protector-all"
export CPPFLAGS+=" -I/usr/include/et"

OPTS+=" --with-system-et \
        --with-system-ss \
        --disable-rpath  \
        --enable-shared  \
        --infodir=/usr/share \
        --enable-dns-for-realm \
        --without-system-verto"

default_build &&

[ -f /etc/krb5.conf ] || cp config-files/krb5.conf /etc
