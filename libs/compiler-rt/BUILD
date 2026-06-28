export CC=clang
export CXX=clang++

OPTS+=" \
  -DCMAKE_INSTALL_PREFIX=/usr \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_SKIP_RPATH=ON \
  -DCOMPILER_RT_INCLUDE_TESTS=OFF \
  -DCOMPILER_RT_INSTALL_PATH=/usr/lib/clang/${VERSION%%.*} \
  -Wno-dev"

cd compiler-rt &&

cmake -S . -B build -G Ninja $OPTS &&
cmake --build build -v &&

prepare_install &&

cmake --install build

