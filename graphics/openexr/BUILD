OPTS+=" -DCMAKE_BUILD_TYPE=Release  \
        -Wno-dev \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DBUILD_TESTING=OFF \
        -DCMAKE_INSTALL_LIBDIR=lib"

cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
