
OPTS+="  -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
         -DCMAKE_BUILD_TYPE=RELEASE \
         -DCMAKE_INSTALL_SYSCONFDIR=/etc \
         -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
         -DLLVM_LINK_LLVM_DYLIB=ON \
         -DLLVM_INCLUDE_TESTS=ON \
         -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
         -DLLVM_MAIN_SRC_DIR=build \
         -Wno-dev"


cmake -B build -S . -G Ninja $OPTS &&
cmake --build build &&

prepare_install &&

cmake --install build
