export CFLAGS+=" -I/usr/include/et" &&
export CXXFLAGS+=" -I/usr/include/et" &&

# https://github.com/heimdal/heimdal/issues/852, disabling otp, has the possibility
# of being dropped.
OPTS+=" --prefix=/usr \
        --sbindir=/usr/bin \
        --sysconfdir=/etc \
        --libexecdir=/usr/sbin \
        --datadir=/var/lib/heimdal \
        --localstatedir=/var/lib/heimdal \
        --with-hdbdir=/var/lib/heimdal \
        --disable-otp \
        --enable-kcm \
        --enable-shared \
        --with-readline=/usr \
        --with-openssl=/usr \
        --with-sqlite3=/usr \
        --enable-pthread-support"

default_build

mkdir -p /etc/heimdal &&
if [! -f /etc/krb5.conf ]; then
  install -Dm664 krb5.conf /etc/krb5.conf
 else
   install -Dm664 krb5.conf /etc/krb5.conf.new
fi
