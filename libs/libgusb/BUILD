OPTS+=" --prefix=/usr --default-library=shared --strip --buildtype=release --backend=ninja" &&

meson BuildDir $OPTS &&
pushd BuildDir &&
ninja &&

prepare_install &&
ninja install &&
popd
