OPTS+=" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS -Wno-dev &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
