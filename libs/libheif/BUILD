OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=/usr/lib \
        -DBUILD_TESTING=OFF \
        -DPLUGIN_DIRECTORY=/usr/lib64/libheif \
        -DWITH_DAV1D=ON \
        -DWITH_RAV1E=ON \
        -DWITH_FFMPEG_DECODER=ON \
        -DWITH_SvtEnc=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
