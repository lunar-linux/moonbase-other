OPTS+=" --prefix=/usr \
        -Dtests=false"

meson build $OPTS &&
prepare_install &&
ninja -C build install
