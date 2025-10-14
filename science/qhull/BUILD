cmake -B $MODULE-$VERSION \
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DCMAKE_C_FLAGS="$CFLAGS -ffat-lto-objects" \
    -DCMAKE_CXX_FLAGS="$CXXFLAGS -ffat-lto-objects" \
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
    -DCMAKE_BUILD_TYPE=Release &&

cmake --build $MODULE-$VERSION &&
cmake --build $MODULE-$VERSION --target libqhull &&
prepare_install &&
cp -P $MODULE-$VERSION/libqhull.so* /usr/lib/ &&
cmake --install $MODULE-$VERSION
