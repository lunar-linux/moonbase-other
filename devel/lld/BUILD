OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=RELEASE \
        -DBUILD_SHARED_LIBS=ON \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_INCLUDE_TESTS=ON \
        -DLLVM_MAIN_SRC_DIR=build \
        -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
        -Wno-dev"

cmake -B build -S . -G Ninja $OPTS -Wno-dev &&
cmake --build build &&

prepare_install &&
cmake --install build 
