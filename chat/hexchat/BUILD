OPTS+=" --prefix /usr \
        -Dwith-text=true \
        -Dwith-dbus=true \
        -Dwith-plugin=true \
        -Dwith-sysinfo=true" &&

mkdir -p build &&

meson build $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install &&

if ! [ "$ENABLE_GUI" == "y" ]; then
   ln -sf /usr/bin/hexchat-text /usr/bin/hexchat
fi
