OPTS+=" --with-guis=gtk3 --prefix=/usr --sysconfdir=/etc --enable-system-certs"

if in_depends $MODULE qt6-base; then
source /etc/profile.d/qt6.rc
fi &&

GPGRT_CONFIG="/usr/bin/gpgrt-config" \
  ./configure --prefix=/usr --sysconfdir=/etc --enable-system-certs $OPTS &&

default_make
