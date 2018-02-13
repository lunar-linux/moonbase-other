if module_installed systemd; then
  OPTS+=" --enable-systemd-daemon --with-systemdsystemunitdir=yes"
fi &&

default_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 /usr/share/doc/mpd/mpdconf.example /etc/mpd.conf
fi