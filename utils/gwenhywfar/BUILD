OPTS+=" --with-guis=gtk3 --prefix=/usr --sysconfdir=/etc --enable-system-certs"

if in_depends $MODULE qt5; then
source /etc/profile.d/qt5.rc
#  OPTS+=" --with-qt5-qmake=/usr/lib/qt5/bin/qmake \
#           --with-qt5-moc=/usr/lib/qt5/bin/moc    \
#           --with-qt5-uic=/usr/lib/qt5/bin/uic    \
#           --with-guis=qt5"
fi &&

GPGRT_CONFIG="/usr/bin/gpgrt-config" \
  ./configure --prefix=/usr --sysconfdir=/etc --enable-system-certs --with-guis="gtk3" $OPTS &&

default_make
