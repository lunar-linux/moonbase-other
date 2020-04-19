OPTS+=" -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_INCLUDE_TESTS=ON \
        -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
        -DPYTHON_EXECUTABLE=/usr/bin/python"

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
