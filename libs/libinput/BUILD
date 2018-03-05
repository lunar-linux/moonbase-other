OPTS+=" --prefix=/usr \
        -Ddebug-ui=false \
        -Dtests=false"

mkdir -p build &&

meson build $OPTS &&

prepare_install &&

ninja -C build install
