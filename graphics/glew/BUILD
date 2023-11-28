OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib"

cd build/cmake &&
cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS -Wno-dev &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
