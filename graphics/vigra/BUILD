sed -i -e '/ADD_DEPENDENCIES(PACKAGE_SRC_TAR/d' CMakeLists.txt &&
sed -i -e 's|@DOCDIR@|@CMAKE_INSTALL_PREFIX@/@DOCINSTALL@|' config/vigra-config.in &&

OPTS+=" -DCMAKE_C_FLAGS=-DH5_USE_110_API \
        -DCMAKE_CXX_FLAGS=-DH5_USE_110_API \
        -DDOCINSTALL=share/doc"

default_cmake_build
