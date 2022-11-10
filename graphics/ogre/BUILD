if module_installed qt5 ; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" -D QT_DIR=/usr/lib/qt5/cmake/Qt5"
fi &&

OPTS+=" -DOGRE_BUILD_DEPENDENCIES=OFF -DOGRE_BUILD_SAMPLES=off"

default_cmake_build
