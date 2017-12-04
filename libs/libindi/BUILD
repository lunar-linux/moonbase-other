
  OPTS+=" -DUDEVRULES_INSTALL_DIR=/usr/lib/udev/rules.d" &&

  if module_installed qt5; then
   OPTS+=" -DINDI_BUILD_QT5_CLIENT=ON"
  fi &&

  mkdir -p /usr/src/indi-1.5.0/$MODULE-oosb &&
    cd /usr/src/indi-1.5.0/$MODULE-oosb &&
  cmake -DCMAKE_INSTALL_PREFIX=/usr $OPTS ../libindi &&

  default_make
