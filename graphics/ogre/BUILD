if module_installed qt5 ; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" -DQT_DIR=/usr/lib/qt5/cmake/Qt5"
fi &&

OPTS+=" -DOGRE_BUILD_DEPENDENCIES=OFF \
        -DOGRE_BUILD_SAMPLES=off \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
