add_priv_user dnsmasq &&

make "CFLAGS=$CFLAGS" "LDFLAGS=$LDFLAGS" &&
prepare_install &&
make PREFIX=/usr BINDIR=/usr/bin install &&

if [ ! -f /etc/dbus-1/systemd/dnsmasq.conf ]; then
  install -D -m0644 dbus/dnsmasq.conf /etc/dbus-1/system.d/dnsmasq.conf
fi &&

if [ ! -f /etc/dnsmasq.conf ]; then
  install -D -m0644 dnsmasq.conf.example /etc/dnsmasq.conf
fi
