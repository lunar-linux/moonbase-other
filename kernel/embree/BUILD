OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DEMBREE_TUTORIALS=OFF \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DEMBREE_ISPC_SUPPORT=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
