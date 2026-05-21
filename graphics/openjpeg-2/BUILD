# Remove all third party libraries just to be sure
find ./thirdparty/ -mindepth 1 -maxdepth 1 -type d -exec rm -rf {} \;

OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DBUILD_LUTS_GENERATOR=ON \
        -DBUILD_JPIP=ON \
        -DBUILD_STATIC_LIBS=OFF \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DWITH_ASTYLE=OFF \
        -DBUILD_DOC=OFF"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
