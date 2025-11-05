source /etc/profile.d/qt6.rc &&

OPTS+=" -DUSE_UTF8PROC=ON \
        -DQTERMWIDGET_USE_UTEMPTER=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
