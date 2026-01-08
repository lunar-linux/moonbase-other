export CC=/usr/bin/clang
export AR=/usr/bin/llvm-ar
export NM=/usr/bin/llvm-nm

make THREAD_MODEL=posix &&

prepare_install &&
make INSTALL_DIR=/usr install
