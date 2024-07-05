source /etc/profile.d/qt6.rc

cmake -B $MODULE-build -S . $OPTS -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release &&
cmake --build $MODULE-build &&

prepare_install

cmake --install $MODULE-build
