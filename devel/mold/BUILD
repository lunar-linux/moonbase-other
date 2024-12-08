OPTS+=" -DCMAKE_BUILD_TYPE=RELEASE \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DMOLD_USE_SYSTEM_MIMALLOC=ON \
        -DMOLD_USE_SYSTEM_TBB=ON \
        -DMOLD_LTO=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
