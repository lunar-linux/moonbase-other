mv po/fur.po po/ur.po &&
sed -i 's/fur/ur/' po/LINGUAS &&

add_priv_group colord &&
add_priv_user colord -d /var/run/colord -g colord &&

OPTS+=" --sysconfdir==/etc/$MODULE \
        -Ddaemon_user=colord \
        -Ddocs=false  \
        -Dman=false   \
        -Dlibcolordcompat=true \
        -Dprint_profiles=true" &&

default_meson_build
