OPTS+=" --prefix=/usr \
        -Dtests=false"

mkdir -p build &&

meson build $OPTS &&

prepare_install &&

ninja -C build install
