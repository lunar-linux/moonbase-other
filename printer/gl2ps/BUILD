sed '/^install.*TODO\.txt/d' -i CMakeLists.txt &&
OPTS+=" -DEXTERNAL_LIBRARIES=-lm -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/$MODULE -DCMAKE_POLICY_VERSION_MINIMUM=3.5"

default_cmake_build
