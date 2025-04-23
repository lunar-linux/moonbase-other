OPTS+=" -DCMAKE_BUILD_TYPE=Release -Wno-dev -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_POLICY_VERSION_MINIMUM=3.5"
 
cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&

cmake --install $MODULE-$VERSION
