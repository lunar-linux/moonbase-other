OPTS+=" --prefix /usr \
        -Ddbus=enabled \
        -Dplugin=true \
        -Dwith-sysinfo=true \
        -Dtext-frontend=true"

default_meson_build &&

if ! [ "$ENABLE_GUI" == "y" ]; then
   ln -sf /usr/bin/hexchat-text /usr/bin/hexchat
fi
