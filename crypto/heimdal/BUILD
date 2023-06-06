# https://github.com/heimdal/heimdal/issues/852, disabling otp, has the possibility
# of being dropped.
# The "preferred" kerberos is krb5 and more or less default for many things. So to
# remove conflicts heimdal gets installed this way. Not ideal IMV but it is the 
# default location IAW https://github.com/heimdal/heimdal/wiki/Building-and-installing

OPTS+=" --prefix=/usr/heimdal \
        --sbindir=/usr/heimdal/bin \
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
