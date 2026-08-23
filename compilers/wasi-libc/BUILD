unset CFLAGS LDFLAGS
#CFLAGS+=" -Wno-unused-command-line-argument"

OPTS+=" -DBUILD_SHARED=ON \
        -DBUILD_TESTS=OFF \
        -DCMAKE_C_COMPILER=/usr/bin/clang \
        -DCMAKE_AR=/usr/bin/llvm-ar \
        -DCMAKE_C_LINKER_DEPFILE_SUPPORTED=OFF \
        -DCMAKE_INSTALL_PREFIX=/usr/share/wasi-sysroot \
        -DCMAKE_RANLIB=/usr/bin/llvm-ranlib \
        -DCMAKE_SYSROOT=/usr/share/wasi-sysroot \
        -DCMAKE_SYSTEM_NAME=WASI \
        -DCMAKE_SYSTEM_PROCESSOR=wasm32 \
        -DCMAKE_SYSTEM_VERSION=1 \
        -DTARGET_TRIPLE=wasm32-wasip1"

default_cmake_build
