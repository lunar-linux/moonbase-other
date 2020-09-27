OPTS+=" -D zlib=enabled \
        -D zzip=disabled \
        -D shine=disabled \
        -D sndio=disabled \
        -D adplug=disabled \
        -D tremor=disabled \
        -D sidplay=disabled \
        -D mpcdec=disabled \
        -D documentation=disabled"

add_priv_user mpd:mpd

if module_installed systemd; then
    OPTS+=" -D systemd=enabled"
  else
    OPTS+=" -D systemd=disabled"
fi

default_meson_build &&

if [[ ! -e /etc/mpd.conf ]]; then
  install -m0644 $SCRIPT_DIRECTORY/mpd.conf /etc/
fi
