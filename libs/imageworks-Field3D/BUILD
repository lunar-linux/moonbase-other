OPTS+=" -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC -DINSTALL_DOCS=OFF" &&

sedit "s:#include <OpenEXR/ImathRoots.h>::" export/StdMathLib.h &&
sedit "s:Boost COMPONENTS:Boost COMPONENTS system:" CMakeLists.txt &&

default_cmake_build
