OPTS+=" -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -DMBEDTLS_FATAL_WARNINGS=OFF \
        -DUSE_SHARED_MBEDTLS_LIBRARY=ON \
        -DUSE_STATIC_MBEDTLS_LIBRARY=ON \
        -DLINK_WITH_PTHREAD=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
