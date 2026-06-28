if module_installed clang; then
  export CC=clang
  export CXX=clang++
fi &&

OPTS+="
  -DCMAKE_BUILD_TYPE=Release
  -DCMAKE_INSTALL_PREFIX=/usr
  -DCMAKE_SKIP_INSTALL_RPATH=ON
  -DBUILD_SHARED_LIBS=ON
  -DLLVM_DIR=/usr/lib/cmake/llvm"

cd lld &&

cmake -S . -B build -G Ninja $OPTS &&
cmake --build build -v &&

prepare_install &&

cmake --install build &&

# https://bugs.llvm.org/show_bug.cgi?id=42455
install -Dm644 -t "/usr/share/man/man1" docs/ld.lld.1 &&

# Remove documentation sources
rm -rf /usr/share/doc/lld/html/{_sources,.buildinfo}

