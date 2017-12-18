
  . /etc/profile.d/qt5.rc  &&

  sed -e 's|NAMES spglib|NAMES spglib symspg|' -i cmake/FindSpglib.cmake &&
  sed -e 's|3456|3456789|' -i cmake/GenerateExportHeader.cmake &&

  default_cmake_build
