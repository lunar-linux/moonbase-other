. /etc/profile.d/qt4.rc &&
default_cmake_build &&

if in_depends $MODULE qt5; then
  devoke_installwatch &&
  cd "$SOURCE_DIRECTORY" &&
  rm -rf "$MODULE-oosb" &&
  . /etc/profile.d/qt5.rc &&
  default_cmake_build
fi
