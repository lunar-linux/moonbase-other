autoreconf &&

OPTS+=" --with-jobdir=/var/spool/atd \
        --with-atspool=/var/spool/atd" &&

if module_installed systemd; then
  OPTS+=" --with-systemdsystemunitdir=/usr/lib/systemd/system"
fi &&

default_config &&
CFLAGS="$CFLAGS -w" make &&
prepare_install &&
make docdir=/usr/share/doc install &&

if [ ! -e /etc/at.deny ]; then
  install -m644 at.deny /etc/
fi
