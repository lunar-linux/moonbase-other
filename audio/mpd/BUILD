OPTS+=" -Dzlib=enabled"

if module_installed systemd; then
  OPTS+=" -Ddocumentation=false \
          -Dsystemd=enabled \
          -Dsystemd_system_unit_dir=enabled"
fi

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 doc/mpdconf.example /etc/mpd.conf
fi
