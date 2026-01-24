OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=Release \
        -DMZ_LIB_SUFFIX=-ng  \
        -DBUILD_SHARED_LIBS=ON
        -DMZ_ZLIB_FLAVOR=zlib-ng \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
