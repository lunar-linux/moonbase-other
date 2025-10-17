OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DWITH_DAV1D=ON \
        -DWITH_RAV1E=ON \
        -DWITH_GDK_PIXBUF=OFF \
        -DWITH_FFMPEG_DECODER=ON \
        -DWITH_SvtEnc=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
