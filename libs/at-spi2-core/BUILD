mkdir -p build &&
 
meson build --prefix /usr -Denable_docs=false &&
ninja -C build &&

prepare_install &&

ninja -C build install
