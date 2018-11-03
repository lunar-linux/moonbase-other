OPTS+=" -D zlib=enabled"

if module_installed systemd; then
  OPTS+=" -D documentation=false -D systemd=enabled -D systemd_system_unit_dir=enabled"
fi

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 doc/mpdconf.example /etc/mpd.conf
fi
