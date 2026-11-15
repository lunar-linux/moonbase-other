OPTS+=" -DLIBICAL_BUILD_DOCS=OFF \
        -DLIBICAL_BUILD_EXAMPLES=OFF \
        -DLIBICAL_GLIB_BUILD_DOCS=OFF \
        -DLIBICAL_BUILD_DOCS=OFF \
        -DLIBICAL_STATIC=OFF \
        -DLIBICAL_JAVA_BINDINGS=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
