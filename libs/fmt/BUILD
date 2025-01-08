OPTS+=" -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=RELEASE \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DFMT_TEST=OFF \
        -DFMT_CUDA_TEST=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION
