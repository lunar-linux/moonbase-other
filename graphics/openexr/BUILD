OPTS+=" -DCMAKE_BUILD_TYPE=Release  \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DOPENEXR_BUILD_PYTHON=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
