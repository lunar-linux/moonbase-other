# https://github.com/heimdal/heimdal/issues/852, disabling otp, has the possibility
# of being dropped.
OPTS+=" --prefix=/usr \
        --sbindir=/usr/bin \
        --sysconfdir=/etc/heimdal \
        --disable-otp \
        --enable-kcm \
        --enable-shared \
        --with-readline=/usr \
        --with-openssl=/usr \
        --with-sqlite3=/usr \
        --enable-pthread-support"

default_build

mkdir -p /etc/heimdal &&
if [! -f /etc/heimdal/krb5.conf ]; then
  install -Dm664 krb5.conf /etc/heimdal/krb5.conf
 else
   install -Dm664 krb5.conf /etc/heimdal/krb5.conf.new
fi
