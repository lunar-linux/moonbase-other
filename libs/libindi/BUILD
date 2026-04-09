source /etc/profile.d/qt6.rc

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DUDEVRULES_INSTALL_DIR=/usr/lib/udev/rules.d \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DINDI_BUILD_STATIC=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION

add_priv_group plugdev
