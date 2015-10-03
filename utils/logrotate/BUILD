# Logrotate craps out without this
unset CPP &&

make RPM_OPT_FLAGS="${CFLAGS}" &&

# We don't want the status file tracked
touch /var/lib/logrotate.status &&

prepare_install &&
make install &&

mkdir -p /etc/logrotate.d &&

if [ ! -e /etc/logrotate.conf ]; then
  install -m 0644 examples/logrotate-default /etc/logrotate.conf
fi &&

gather_docs examples
