(
  sedit "s:PKG_CHECK_MODULES(SLV2  libslv2:PKG_CHECK_MODULES(SLV2  slv2:" CMakeLists.txt
  sedit "s:IF (SLV2_FOUND):IF (SLV2_FOUND)\nINCLUDE_DIRECTORIES(/usr/include/rasqal /usr/include/raptor2/):" CMakeLists.txt
  default_cmake_build

) > $C_FIFO 2>&1
