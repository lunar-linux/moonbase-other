OPTS+=" -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_INCLUDE_TESTS=ON \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DLLVM_EXTERNAL_LIT=/usr/bin/lit"

mkdir build &&
cd build &&
cmake .. -G Ninja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DBUILD_SHARED_LIBS=ON \
      $OPTS
ninja &&

prepare_install &&

ninja install
