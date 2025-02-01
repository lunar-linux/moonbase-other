OPTS+=" -DCMAKE_BUILD_TYPE=RELEASE \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_SHARED_LIBS=ON \
        -DgRPC_INSTALL=ON \
        -DCMAKE_CXX_STANDARD=17 \
        -DCMAKE_SKIP_INSTALL_RPATH=ON \
        -DgRPC_PROTOBUF_PROVIDER=package \
        -DgRPC_PROTOBUF_PACKAGE_TYPE= \
        -DgRPC_SSL_PROVIDER=package \
        -DgRPC_ABSL_PROVIDER=package \
        -DgRPC_ZLIB_PROVIDER=package \
        -DgRPC_RE2_PROVIDER=package \
        -DgRPC_CARES_PROVIDER=package \
        -Wno-dev"


cmake -B $MODULE-$VERSION -G Ninja $OPTS &&

cmake --build $MODULE-$VERSION

prepare_install &&
cmake --install $MODULE-$VERSION
