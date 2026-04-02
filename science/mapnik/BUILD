source /etc/profile.d/qt6.rc

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_OLDINCLUDEDIR=/usr/include/$MODULE \
        -DCMAKE_INSTALL_INCLUDEDIR=/usr/include/$MODULE \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DUSE_EXTERNAL_MAPBOX_PROTOZERO=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
