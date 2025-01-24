OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib  \
        -DCMAKE_BUILD_TYPE=Release  \
        -DBUILD_STATIC_LIB=OFF      \
        -DBUILD_TESTING=OFF         \
        -DUSE_BOOST=ON              \
        -DUSE_RE2=OFF               \
        -DUSE_POSIX_THREAD=ON"

cmake -S cpp -B $MODULE-$VERSION $OPTS &&

cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
