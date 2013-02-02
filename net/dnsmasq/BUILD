
add_priv_user dnsmasq &&

sedit '/^#ifdef DNSMASQ_COMPILE_OPTS/ i#define HAVE_DBUS' src/config.h &&
make &&
prepare_install &&
make PREFIX=/usr BINDIR=/usr/bin install &&

[ ! -f /etc/dbus-1/systemd/dnsmasq.conf ] && install -D -m0644 dbus/dnsmasq.conf /etc/dbus-1/system.d/dnsmasq.conf
[ ! -f /etc/dnsmasq.conf ] && install -D -m0644 dnsmasq.conf.example /etc/dnsmasq.conf

