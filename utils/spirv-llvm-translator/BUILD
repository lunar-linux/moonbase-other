export CC=clang
export CXX=clang++

OPTS+=" -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
        -DLLVM_BUILD_TOOLS=ON \
        -DLLVM_SPIRV_INCLUDE_TESTS=ON \
        -DBUILD_SHARED_LIBS=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DLLVM_EXTERNAL_LIT=/usr/bin/lit \
        -DLLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr/include/spirv/ \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . $OPTS &&
make -C $MODULE-$VERSION &&

prepare_install &&
make -C $MODULE-$VERSION install
