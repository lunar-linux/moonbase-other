OPTS+=" -DBUILD_SHARED_LIBS=OFF -DSNAPPY_BUILD_BENCHMARKS=OFF -DSNAPPY_BUILD_TESTS=OFF" &&

# compile without assertions
CXXFLAGS+=\ -DNDEBUG

default_cmake_build

install -Dm644 $SCRIPT_DIRECTORY/snappy.pc /usr/lib/pkgconfig/snappy.pc
