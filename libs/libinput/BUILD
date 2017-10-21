OPTS+=" --prefix /usr --libexecdir /usr/lib"

meson build -Dtests=false $OPTS &&
ninja -C build &&

prepare_install &&

ninja -C build install
