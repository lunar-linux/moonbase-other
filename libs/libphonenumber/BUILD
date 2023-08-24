OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release  \
        -DBUILD_TESTING=OFF"
#    -DCMAKE_CXX_STANDARD=17
#    -DUSE_BOOST=OFF
#    -DUSE_STDMUTEX=ON

cmake -S cpp -B $MODULE-$VERSION $OPTS &&

cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
