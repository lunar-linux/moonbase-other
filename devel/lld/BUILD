OPTS+="  -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
         -DCMAKE_BUILD_TYPE=RELEASE \
         -DLLVM_LINK_LLVM_DYLIB=ON \
         -DLLVM_INCLUDE_TESTS=ON \
         -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
         -DLLVM_MAIN_SRC_DIR=$MODULE-$VERSION \
         -Wno-dev"


cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&

cmake --install $MODULE-$VERSION
