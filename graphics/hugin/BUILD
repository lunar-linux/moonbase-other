export CPPFLAGS=" -llz4"

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DENABLE_LAPACK=ON \
        -DBUILD_WITH_EPOXY=ON \
        -DBUILD_HSI=ON \
        -DBUILD_WITH_EGL=ON \
        -DUSE_GDKBACKEND_X11=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
