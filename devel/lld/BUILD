mkdir -p $SOURCE_DIRECTORY/$MODULE-$VERSION.src/build &&
cd $SOURCE_DIRECTORY/$MODULE-$VERSION.src/build &&
cmake .. -G Ninja \
         -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
         -DCMAKE_BUILD_TYPE=RELEASE \
         -DSYSCONF_INSTALL_DIR:PATH=/etc \
         -DBUILD_TESTING=0 \
         -DLLVM_LINK_LLVM_DYLIB=ON \
         -DLLVM_BUILD_TESTS=OFF \
         -DLLVM_INCLUDE_TESTS=ON \
         -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
         -DLLVM_MAIN_SRC_DIR=$SOURCE_DIRECTORY/$MODULE-$VERSION.src \
         -Wno-dev $OPTS &&
ninja &&

prepare_install &&

ninja install &&
install -Dm644 -t "/usr/share/man/man1" ../docs/ld.lld.1
