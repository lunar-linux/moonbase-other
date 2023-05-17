TARGETS="${TARGETS:=X86;AMDGPU;BPF}" &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_SKIP_RPATH=ON \
        -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_BUILD_TESTS=OFF \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DLLVM_ENABLE_FFI=ON \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DLLVM_ENABLE_DOXYGEN=OFF \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_BUILD_LLVM_DYLIB=ON \
        -DCLANG_LINK_CLANG_DYLIB=ON \
        -DLLVM_INCLUDE_DOCS=OFF 
        -DLLVM_INCLUDE_EXAMPLES=OFF \
        -DLLVM_TARGETS_TO_BUILD=$TARGETS \
        -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON"


cmake -B build -S . -G Ninja $OPTS &&
cmake --build build &&

prepare_install &&

cmake --install build &&

# Needed by other projects, applications
pushd utils/lit &&
unset OPTS &&
default_python3_build &&
popd
