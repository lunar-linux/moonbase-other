OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=Release \
        -DDTLS_SRTP_AVAILABLE=ON \
        -DBUILD_SHARED_LIBS=ON \
        -DDTLS_SRTP_AVAILABLE=ON \
        -DENABLE_MBEDTLS=OFF \
        -DENABLE_OPENSSL=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
