unset CC CXX

#https://bugzilla.mozilla.org/show_bug.cgi?id=1773200#c4, remove bulk memory sources
make WASM_CC=/usr/bin/clang WASM_AR=/usr/bin/llvm-ar WASM_NM=/usr/bin/llvm-nm BULK_MEMORY_SOURCES= &&

prepare_install &&
cp -dr --preserve=mode,timestamp sysroot /usr/share/wasi-sysroot

