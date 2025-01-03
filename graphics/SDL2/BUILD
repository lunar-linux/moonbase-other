CFLAGS+=" -ffat-lto-objects"

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib  \
        -DCMAKE_BUILD_TYPE=Release  \
        -DSDL_SHARED=ON             \
        -DSDL_STATIC_PIC=ON         \
        -Wno-dev" 

cmake -B $MODULE-build -S . -G Ninja $OPTS &&
cmake --build $MODULE-build &&

prepare_install
cmake --install $MODULE-build
