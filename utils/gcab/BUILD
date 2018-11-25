OPTS+=" --prefix /usr --buildtype release -D docs=false" &&

mkdir build &&
meson build $OPTS &&
ninja -C build &&
prepare_install &&
ninja -C build install
