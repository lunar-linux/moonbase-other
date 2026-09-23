git submodule init src/deps/rapidjson &&
git submodule set-url src/deps/rapidjson opentimelineio-rapidjson &&
git -c protocol.file.allow=always submodule update src/deps/rapidjson &&

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

python -m build --wheel &&

prepare_install &&

cmake --install $MODULE-$VERSION

python -m installer --destdir="$pkgdir" dist/*.whl
