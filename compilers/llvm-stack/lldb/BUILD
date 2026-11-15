TARGETS="${TARGETS:=X86;AMDGPU;BPF}" &&

if module_installed clang; then
  export CC=clang
  export CXX=clang++
fi &&

# Build only minimal debug info to reduce size
CFLAGS=${CFLAGS/-g /-g1 }
CXXFLAGS=${CXXFLAGS/-g /-g1 }

OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_SKIP_RPATH=ON \
        -DLLVM_LINK_LLVM_DYLIB=ON \
        -DCLANG_LINK_CLANG_DYLIB=ON"

cd lldb &&

cmake -S . -B build -G Ninja $OPTS &&
cmake --build build -v &&

prepare_install &&

cmake --install build &&

if [ -f docs/man/lldb.1 ]; then
    install -Dm644 docs/man/lldb.1 /usr/share/man/man1/lldb.1
fi
