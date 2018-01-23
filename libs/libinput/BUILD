OPTS+=" --prefix=/usr \
        -Dtests=false"

meson build $OPTS &&
ninja -C build &&

prepare_install &&

ninja -C build install
