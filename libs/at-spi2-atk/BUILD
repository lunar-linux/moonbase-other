mkdir -p build &&

OPTS+=" --prefix /usr"

meson build $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install
