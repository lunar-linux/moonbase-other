export CC=clang
export CXX=clang

cmake -Bbuild -GNinja \
      -DCMAKE_BUILD_TYPE=RELEASE \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DBUILD_TESTING=OFF \
      -DBlocksRuntime_INCLUDE_DIR=/usr/include \
      -DBlocksRuntime_LIBRARIES=/usr/lib/libBlocksRuntime.so
      ninja -C build &&

prepare_install &&
ninja -C build install
