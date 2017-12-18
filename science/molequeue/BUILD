
  . /etc/profile.d/qt5.rc &&

# A gcc7 twiddle
  sedit 's:345:34567:' cmake/GenerateExportHeader.cmake &&
  sedit 's:[34]:34567:' cmake/GenerateExportHeader.cmake &&

  default_cmake_build
