export CXXFLAGS+=" -ffat-lto-objects"

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_SHARED_LIBS=ON \
        -DBUILD_TESTING=OFF \
        -DOCIO_BUILD_TESTS=OFF \
        -DCMAKE_SKIP_INSTALL_RPATH=YES \
        -DCMAKE_CONFIGURATION_TYPES=Release"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
