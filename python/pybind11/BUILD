OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_PREFIX_PATH=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=Release \
        -DDOWNLOAD_CATCH=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
