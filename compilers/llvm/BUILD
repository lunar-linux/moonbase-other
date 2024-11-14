TARGETS="${TARGETS:=X86;AMDGPU;BPF}" &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_SKIP_INSTALL_RPATH=ON \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_ENABLE_FFI=ON \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DLLVM_ENABLE_DOXYGEN=OFF \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_BUILD_LLVM_DYLIB=ON \
        -DLLVM_INCLUDE_DOCS=OFF 
        -DLLVM_INCLUDE_EXAMPLES=OFF \
        -DLLVM_TARGETS_TO_BUILD=$TARGETS \
        -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DCLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang \
        -DLLVM_BINUTILS_INCDIR=/usr/include \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&

cmake --install $MODULE-$VERSION &&

# Needed by other projects, applications
pushd utils/lit &&
unset OPTS &&
default_python3_build &&
popd
