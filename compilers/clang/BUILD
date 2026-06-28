TARGETS="${TARGETS:=X86;AMDGPU;BPF}" &&

if module_installed clang; then
  export CC=clang
  export CXX=clang++
fi &&

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DLLVM_BINUTILS_INCDIR=/usr/include \
        -DCMAKE_SKIP_RPATH=ON \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DLLVM_USE_PERF=ON \
        -DLLVM_ENABLE_CURL=ON \
        -DLLVM_ENABLE_RTTI=ON \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_INSTALL_UTILS=ON \
        -DLLVM_BUILD_LLVM_DYLIB=ON \
        -DLLVM_ENABLE_SPHINX=OFF \
        -DLLVM_ENABLE_DOXYGEN=OFF \
        -DLLVM_INCLUDE_DOCS=OFF \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_INSTALL_GTEST=OFF \
        -DLLVM_ENABLE_BINDINGS=OFF \
        -DLLVM_INCLUDE_TESTS=OFF \
        -DLLVM_INCLUDE_EXAMPLES=OFF \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_TARGETS_TO_BUILD=$TARGETS \
        -DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
        -DCLANG_DEFAULT_PIE_ON_LINUX=ON \
        -DCLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang \
        -DLLVM_BINUTILS_INCDIR=/usr/include \
        -Wno-dev"

cd clang &&

cmake -S . -B build -G Ninja $OPTS &&
cmake --build build -v &&

prepare_install &&

cmake --install build &&

# Move bash completion
bash_completion_destdir="/usr/share/bash-completion/completions"
install -d $bash_completion_destdir
mv "/usr/share/clang/bash-autocomplete.sh" "$bash_completion_destdir/clang"

