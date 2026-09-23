export CXXFLAGS+=" -I/usr/include/Imath"

OPTS+=" -DMZ_ZLIB_FLAVOR=zlib \
        -DBUILD_TESTING=OFF \
        -DOTIO_FIND_IMATH=ON \
        -DOTIO_DEPENDENCIES_INSTALL=OFF \
        -DOTIO_AUTOMATIC_SUBMODULES=OFF \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -Wno-author"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
python -m build --wheel &&
python -m installer --destdir=/ dist/*.whl &&

cmake --install $MODULE-$VERSION
