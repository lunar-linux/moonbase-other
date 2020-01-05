OPTS+=" -Dzlib=enabled \
        -Dshine=disabled \
        -Dsndio=disabled \
        -Dadplug=disabled \
        -Dsidplay=disabled \
        -Dtremor=disabled \
        -Ddocumentation=false" &&

if module_installed systemd; then
    OPTS+=" -Dsystemd=enabled"
  else
    OPTS+=" -Dsystemd=disabled"
fi &&

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 $SCRIPT_DIRECTORY/mpd.conf /etc/
fi
