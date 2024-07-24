OPTS+=" -DBUILD_CURVE_TOOLS=ON \
        -DBUILD_NOISE_TOOLS=ON \
        -DBUILD_SHARED_LIBS=ON \
        -DENABLE_LCMS=ON       \
        -DENABLE_RAWSPEED=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr"

CC="clang" CXX="clang++"

cmake . -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
