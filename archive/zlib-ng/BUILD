# https://github.com/zlib-ng/zlib-ng/issues/2029
OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_SHARED_LIBS=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DWITH_NATIVE_INSTRUCTIONS=ON \
        -DWITH_GTEST=OFF \
        -DWITH_CRC32_CHORBA=OFF
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
