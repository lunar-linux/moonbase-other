OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DWASI_SDK_PREFIX=/usr \
        -DCMAKE_SKIP_RPATH=ON \
        -DCMAKE_INSTALL_PREFIX=/usr/lib/clang/17/ \
        -Wno-dev"
#        -DCMAKE_TOOLCHAIN_FILE=wasi-toolchain.cmake \


cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
