CXXFLAGS+=" -ffat-lto-objects"

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DOCIO_BUILD_TESTS=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_SKIP_INSTALL_RPATH=YES \
        -DBUILD_SHARED_LIBS=ON \
        -DOCIO_VERBOSE=ON \
        -Wno-dev"

cmake -G Ninja -B $MODULE-$VERSION $OPTS &&
ninja -C $MODULE-$VERSION &&

prepare_install &&
ninja -C $MODULE-$VERSION install
