TARGETS="${TARGETS:=X86;AMDGPU;BPF}" &&

if module_installed clang; then
  export CC=clang
  export CXX=clang++
fi &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_DOCDIR=share/doc \
        -DLLVM_BINUTILS_INCDIR=/usr/include \
        -DLLVM_BUILD_DOCS=OFF \
        -DCMAKE_SKIP_RPATH=ON \
        -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DLLVM_USE_PERF=ON \
        -DLLVM_ENABLE_CURL=ON \
        -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DLLVM_ENABLE_DOXYGEN=OFF \
        -DLLVM_ENABLE_BINDINGS=OFF \
        -DLLVM_BUILD_DOCS=OFF \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DLLVM_BUILD_LLVM_DYLIB=ON \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_INCLUDE_DOCS=OFF \
        -DLLVM_INSTALL_GTEST=OFF \
        -DLLVM_INCLUDE_EXAMPLES=OFF \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_TARGETS_TO_BUILD=$TARGETS \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DSPHINX_WARNINGS_AS_ERRORS=OFF \
        -DCLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang \
        -Wno-dev"

cd llvm &&

cmake -S . -B build -G Ninja $OPTS &&
cmake --build build -v &&

prepare_install &&

cmake --install build &&

# Needed by other projects, applications
pushd utils/lit &&
unset OPTS &&
default_python3_build &&
popd
