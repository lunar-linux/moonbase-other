OPTS+=" -DAVIF_LIBYUV=LOCAL   \
        -DAVIF_CODEC_LIBGAV1=LOCAL \
        -DAVIF_BUILD_GDK_PIXBUF=ON \
        -DAVIF_BUILD_APPS=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DAVIF_CODEC_AOM=SYSTEM \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
