OPTS+=" -DASSIMP_BUILD_SAMPLES=OFF \
        -DASSIMP_WARNINGS_AS_ERRORS=OFF \
        -DASSIMP_BUILD_ASSIMP_TOOLS=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DASSIMP_BUILD_ZLIB=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION &&

cd port/PyAssimp &&

unset OPTS &&
default_python3_build
