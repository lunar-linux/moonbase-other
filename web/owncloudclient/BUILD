source /etc/profile.d/qt6.rc &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release  \
        -DBUILD_TESTING=OFF \
        -DCMAKE_SKIP_INSTALL_RPATH=ON \
        -DCMAKE_INSTALL_SYSCONFDIR=/etc/$MODULE" &&

cmake -B $MODULE-$VERSION -S . $OPTS &&

cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
