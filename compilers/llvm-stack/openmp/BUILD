export CC=clang
export CXX=clang++

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DLIBOMP_INSTALL_ALIASES=OFF"

cd openmp &&

cmake -S . -B build -G Ninja $OPTS &&
cmake --build build -v &&

prepare_install &&

cmake --install build

