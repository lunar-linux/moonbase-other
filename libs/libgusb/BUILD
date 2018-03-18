OPTS+=" --prefix=/usr \
        -Dtests=false \
        -Ddocs=false"

mkdir -p build &&

meson build $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install
