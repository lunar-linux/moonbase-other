export CXXFLAGS+=" -I/usr/include/Imath"

OPTS+=" -DMZ_ZLIB_FLAVOR=zlib \
        -DBUILD_TESTING=OFF \
        -DOTIO_FIND_IMATH=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DOTIO_AUTOMATIC_SUBMODULES=OFF \
        -DOTIO_FIND_RAPIDJSON=NO \
        -DOTIO_SHARED_LIBS=YES \
        -DOTIO_DEPENDENCIES_INSTALL=OFF \
        -Wno-author"


cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
python -m build --wheel &&

prepare_install &&

cmake --install $MODULE-$VERSION
python -m installer --destdir=/ dist/*.whl
