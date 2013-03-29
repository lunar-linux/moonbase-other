
  OPTS+=" -DINSTALL_DOCS=OFF -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC" &&

  sedit "s:#include <OpenEXR/ImathRoots.h>::" export/StdMathLib.h &&

  default_cmake_build
