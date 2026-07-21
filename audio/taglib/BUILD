OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DWITH_MP4=ON \
        -DWITH_ASF=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DNO_ITUNES_HACKS=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
