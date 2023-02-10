add_priv_group colord &&
add_priv_user colord -d /var/run/colord -g colord &&

OPTS+=" -Dman=false \
        -Ddaemon_user=colord \
        -Dlibcolordcompat=true"

if module_installed systemd; then
  OPTS+=" -Dsystemd=true"
else
  OPTS+=" -Dsystemd=false"
fi

default_meson_build &&

if in_depends $MODULE bash-completion; then
	chmod -f 644 /usr/share/bash-completion/completions/colormgr
fi
