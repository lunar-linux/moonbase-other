add_priv_group colord &&
add_priv_user colord -d /var/run/colord -g colord &&

OPTS+=" -Dman=false \
        -Ddaemon_user=colord"

if module_installed systemd; then
  OPTS+=" -Dsystemd=true"
else
  OPTS+=" -Dsystemd=false"
fi

default_meson_build &&

chmod 644 /usr/share/bash-completion/completions/colormgr