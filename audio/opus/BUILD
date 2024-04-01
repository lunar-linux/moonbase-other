OPTS=" -DOPUS_BUILD_SHARED_LIBRARY=ON \
       -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
       -DCMAKE_BUILD_TYPE=Release \
       -DCMAKE_INSTALL_LIBDIR=lib \
       -DOPUS_CUSTOM_MODES=ON \
       -DOPUS_BUILD_PROGRAMS=ON \
       -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION
