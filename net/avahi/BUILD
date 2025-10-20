export PYTHONDONTWRITEBYTECODE=1 &&

autoreconf -fiv &&

if in_depends $MODULE qt6-base; then
  source /etc/profile.d/qt6.rc
  QT6_CFLAGS="$(pkgconf --cflags /usr/lib/qt6/pkgconfig/Qt6Core.pc)" &&
  QT6_LIBS="$(pkgconf --libs /usr/lib/qt6/pkgconfig/Qt6Core.pc)" &&
  export MOC_QT6=/usr/lib/qt6/moc
fi &&

add_priv_user avahi:avahi -d /dev/null -s /usr/bin/false &&
add_priv_user avahi-autoipd:avahi-autoipd -d /dev/null -s /usr/bin/false &&

# Add this missing group. It is used in /etc/dbus-1/system.d/avahi-dbus.conf
add_priv_group netdev &&

OPTS+=" --enable-compat-howl \
        --enable-compat-libdns_sd \
        --disable-stack-protector \
        --disable-mono \
        --disable-monodoc \
        --disable-static \
        --disable-qt3 \
        --disable-qt4 \
        --disable-gtk \
        --disable-manpages \
        --disable-core-docs \
        --with-distro=none \
        --with-systemdsystemunitdir=/usr/lib/systemd/system \
        --enable-python-dbus \
        --enable-introspection \
        
        --with-avahi-priv-access-group=network
        --prefix=/usr \
        --sysconfdir=/etc \
        --runstatedir=/run \
        --localstatedir=/var \
        --sbindir=/usr/bin" &&

./configure $OPTS &&
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

if ! ( module_installed xmltoman ); then
  rm -f /usr/share/man/man1/avahi*
  rm -f /usr/share/man/man1/bvnc.1
fi
