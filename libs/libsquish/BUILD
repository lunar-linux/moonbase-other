OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_PREFIX_PATH=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_SHARED_LIBS=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
