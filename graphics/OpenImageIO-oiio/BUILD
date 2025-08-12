if module_installed ffmpeg; then
  OPTS+=" -DUSE_FFMPEG=ON"
fi &&

OPTS+=" -DSTOP_ON_WARNING=OFF \
        -DOIIO_BUILD_TESTS=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DOIIO_BUILD_TOOLS=ON \
        -DUSE_EXTERNAL_PUGIXML=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DUSE_PYTHON=ON \
        -DBUILD_FMT_FORCE=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
