patch -d src/external/rawspeed -p1 < $SCRIPT_DIRECTORY/darktable-libxml2.patch &&

OPTS+=" -DBUILD_SHARED_LIBS=ON \
        -DBUILD_CURVE_TOOLS=ON \
        -DBUILD_NOISE_TOOLS=ON \
        -DENABLE_LCMS=ON       \
        -DBUILD_TOOLS=ON \
        -DUSE_XCF=OFF \
        -DDONT_USE_INTERNAL_LIBRAW=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBEXECDIR=/usr/lib \
        -DCMAKE_INSTALL_PREFIX=/usr"

CC="clang"
CXX="clang++"

cmake . -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
