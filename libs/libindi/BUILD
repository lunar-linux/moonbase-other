
  OPTS+=" -DUDEVRULES_INSTALL_DIR=/usr/lib/udev/rules.d" &&

  if in_depends $MODULE qt5; then
   OPTS+=" -DINDI_BUILD_QT5_CLIENT=ON"
  fi &&

  mkdir -p /usr/src/indi-$VERSION/$MODULE-oosb &&
  cd /usr/src/indi-$VERSION/$MODULE-oosb &&
  cmake -DCMAKE_INSTALL_PREFIX=/usr $OPTS ../libindi &&

  default_build
