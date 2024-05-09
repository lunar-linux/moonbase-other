#https://bugzilla.mozilla.org/show_bug.cgi?id=1773200#c4, remove bulk memory sources
export CC=/usr/bin/clang
export AR=/usr/bin/llvm-ar
export NM=/usr/bin/llvm-nm
export THREAD_MODEL=single
export BULK_MEMORY_SOURCES=

make  &&

prepare_install &&
make install INSTALL_DIR=/usr

