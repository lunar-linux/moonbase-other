OPTS+=" --prefix /usr \
        -Dwith-text=true \
        -Dwith-dbus=true \
        -Dwith-plugin=true \
        -Dwith-sysinfo=true"

default_meson_build &&

if ! [ "$ENABLE_GUI" == "y" ]; then
   ln -sf /usr/bin/hexchat-text /usr/bin/hexchat
fi
