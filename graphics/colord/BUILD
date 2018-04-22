add_priv_user colord:colord -d /var/run/colord -g colord &&

OPTS+=" --prefix /usr \
        -Ddaemon_user=colord \
        -Dtests=false \
        -Dprint_profiles=false \
        -Dlibcolordcompat=true \
        -Dinstalled_tests=false"

if module_installed systemd; then
  OPTS+=" -Dsystemd=true"
else
  OPTS+=" -Dsystemd=false"
fi &&

mkdir -p build &&

meson build $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install &&

echo 'u colord - "Color management daemon" /var/lib/colord' |
    install -Dm644 /dev/stdin /usr/lib/sysusers.d/colord.conf
