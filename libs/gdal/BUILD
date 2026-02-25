export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" -DBUILD_PYTHON_BINDINGS=ON \
        -DCMAKE_CXX_STANDARD=20 \
        -DGDAL_USE_PODOFO=OFF \
        -DGDAL_USE_MONGOCXX=OFF \
        -DENABLE_IPO=ON \
        -DUSE_CCACHE=ON \
        -DCMAKE_INSTALL_INCLUDEDIR=include/gdal \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DGDAL_ENABLE_PLUGINS=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
