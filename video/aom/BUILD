#Need build shared and config_shared to get a shared lib
OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
        -DBUILD_SHARED_LIBS=1 \
        -DENABLE_DOCS=0 \
        -DENABLE_TESTS=0 \
        -DCONFIG_PIC=1 
        -DCONFIG_SHARED=1"

# upstream wants this off
CFLAGS="-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2"
CXXFLAGS="-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&

cmake --install $MODULE-$VERSION
