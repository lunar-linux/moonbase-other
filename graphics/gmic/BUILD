OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DENABLE_DYNAMIC_LINKING=ON \
        -DBUILD_LIB_STATIC=OFF \
        -DENABLE_FFTW=ON \
        -DENABLE_XSHM=ON \
        -DBUILD_MAN=OFF \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
