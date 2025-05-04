OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_POLICY_VERSION_MINIMUM=3.5"

cd build/cmake &&
cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS -Wno-dev &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
