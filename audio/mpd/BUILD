OPTS+=" -Dzlib=enabled \
        -Dshine=disabled \
        -Dsndio=disabled \
        -Dadplug=disabled \
        -Dsidplay=disabled \
        -Dtremor=disabled"

if module_installed systemd; then
    OPTS+=" -Ddocumentation=false \
            -Dsystemd=enabled \
            -Dsystemd_system_unit_dir=enabled"
  else
    OPTS+=" -Ddocumentation=false \
            -Dsystemd=disabled \
            -Dsystemd_system_unit_dir=disabled"
fi

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 $SCRIPT_DIRECTORY/mpd.conf /etc/
fi
