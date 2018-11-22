add_priv_group colord &&
add_priv_user colord -d /var/run/colord -g colord &&

OPTS+=" -D man=false \
        -D docs=false \
        -D daemon_user=colord \
        -D libcolordcompat=true \
        -D argyllcms_sensor=true \
        -D print_profiles=true" &&

if module_installed systemd; then
  OPTS+=" -D systemd=true"
else
  OPTS+=" -D systemd=false"
fi &&

default_meson_build
