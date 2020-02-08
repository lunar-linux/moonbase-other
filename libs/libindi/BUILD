
  OPTS+=" -DUDEVRULES_INSTALL_DIR=/usr/lib/udev/rules.d" &&

  if in_depends $MODULE qt5; then
   OPTS+=" -DINDI_BUILD_QT5_CLIENT=ON"
  fi &&

  default_cmake_build
