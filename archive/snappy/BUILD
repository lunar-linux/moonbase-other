cp $SCRIPT_DIRECTORY/snappy.pc.in . &&

OPTS+=" -DBUILD_SHARED_LIBS=yes \
        -DSNAPPY_BUILD_TESTS=OFF \
        -DSNAPPY_BUILD_BENCHMARKS=OFF"

# compile without assertions
CXXFLAGS+=\ -DNDEBUG

default_cmake_build

#install -Dm644 $SCRIPT_DIRECTORY/snappy.pc /usr/lib/pkgconfig/snappy.pc
