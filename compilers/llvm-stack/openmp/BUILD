export CC=clang
export CXX=clang++

# Build only minimal debug info to reduce size
CFLAGS=${CFLAGS/-g /-g1 }
CXXFLAGS=${CXXFLAGS/-g /-g1 }

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DLLVM_ENABLE_RUNTIMES=openmp \
        -DLIBOMP_INSTALL_ALIASES=OFF"

cmake -S runtimes -B build-openmp -G Ninja $OPTS &&
cmake --build build-openmp -v &&
prepare_install &&
cmake --install build-openmp

