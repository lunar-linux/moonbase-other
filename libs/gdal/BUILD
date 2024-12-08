export PYTHONDONTWRITEBYTECODE=1 &&

#Temporary disable PDF
OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_PYTHON_BINDINGS=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DGDAL_USE_MONGOCXX=OFF \
        -DUSE_CCACHE=ON \
        -DENABLE_IPO=ON \
        -DGDAL_ENABLE_PLUGINS=ON \
        -DGDAL_ENABLE_DRIVER_PDF=OFF
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
