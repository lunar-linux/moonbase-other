cp $SCRIPT_DIRECTORY/snappy.pc.in . &&

OPTS+=" -DBUILD_SHARED_LIBS=yes \
        -DCMAKE_INSTALL_LIBDIR=/usr/lib \
        -DSNAPPY_BUILD_TESTS=OFF \
        -DSNAPPY_BUILD_BENCHMARKS=OFF"

# compile without assertions
CXXFLAGS+=" -DNDEBUG"

default_cmake_build
