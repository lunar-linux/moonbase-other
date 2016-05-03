cd src &&

export CFLAGS+=" -fPIC -fno-strict-aliasing -fstack-protector-all" &&
export CPPFLAGS+=" -I/usr/include/et" &&

OPTS+=" --enable-shared  \
        --with-system-et \
        --with-system-ss \
        --disable-rpath  \
        --enable-dns-for-realm \
        --enable-dns-for-realm \
        --infodir=/usr/share   \
        --without-system-verto" &&

default_build &&

[ -f /etc/krb5.conf ] || cp config-files/krb5.conf /etc
