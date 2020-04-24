OPTS+=" -Dzlib=enabled \
        -Dzzip=disabled \
        -Dshine=disabled \
        -Dsndio=disabled \
        -Dadplug=disabled \
        -Dtremor=disabled \
        -Dsidplay=disabled \
        -Ddocumentation=false"

add_priv_user mpd:mpd

if module_installed systemd; then
    OPTS+=" -Dsystemd=enabled"
  else
    OPTS+=" -Dsystemd=disabled"
fi

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 $SCRIPT_DIRECTORY/mpd.conf /etc/
fi
