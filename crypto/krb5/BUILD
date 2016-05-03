cd src &&

export CFLAGS+=" -fPIC -fno-strict-aliasing -fstack-protector-all" &&
export CPPFLAGS+=" -I/usr/include/et" &&

./configure --prefix=/usr \
            --sbindir=/usr/sbin \
            --sysconfdir=/etc  \
            --mandir=/usr/share/man \
            --localstatedir=/var/lib \
            --enable-shared  \
            --with-system-et \
            --with-system-ss \
            --disable-rpath \
            --enable-dns-for-realm \
            --enable-dns-for-realm \
            --infodir=/usr/share \
            --without-system-verto

default_make

echo

[ -f /etc/krb5.conf ] || cp src/config-files/krb5.conf /etc
