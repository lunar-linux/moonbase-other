mkdir build &&

meson build \
      --prefix=/usr \
      -Dtests=false \
      -Dbenchmarks=false \
      $OPTS &&

ninja -C build &&

prepare_install &&

ninja -C build install
