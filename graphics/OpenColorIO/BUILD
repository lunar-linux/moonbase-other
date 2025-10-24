export CXXFLAGS+=" -ffat-lto-objects"

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_SHARED_LIBS=ON \
        -DOCIO_VERBOSE=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_SKIP_INSTALL_RPATH=YES \
        -Wno-dev"


cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
