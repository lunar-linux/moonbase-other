add_priv_group colord &&
add_priv_user colord -d /var/run/colord -g colord &&

OPTS+=" -Dman=false \
        -Ddocs=false \
        -Ddaemon_user=colord \
        -Dlibcolordcompat=true \
        -Dargyllcms_sensor=true \
        -Dprint_profiles=true"

if module_installed systemd; then
  OPTS+=" -Dsystemd=true"
else
  OPTS+=" -Dsystemd=false"
fi

default_meson_build
