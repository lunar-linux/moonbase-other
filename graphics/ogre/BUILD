if module_installed qt6-base ; then
  source /etc/profile.d/qt6.rc &&
  OPTS+=" -DQT_DIR=/usr/lib/qt6/cmake/Qt6"
fi &&

OPTS+=" -DOGRE_BUILD_DEPENDENCIES=OFF \
        -DOGRE_BUILD_SAMPLES=off \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -Wno-author"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
