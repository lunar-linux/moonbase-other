OPTS+=" -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
        -DLLVM_BUILD_TOOLS=ON \
        -DLLVM_SPIRV_INCLUDE_TESTS=ON \
        -DBUILD_SHARED_LIBS=ON \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DLLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr/include/spirv/"

default_cmake_build &&

install -Dm755 tools/llvm-spirv/llvm-spirv -t /usr/bin
