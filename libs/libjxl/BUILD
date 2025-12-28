OPTS+=" -DJPEGXL_ENABLE_EXAMPLES=OFF      \
        -DJPEGXL_ENABLE_DOXYGEN=OFF       \
        -DJPEGXL_ENABLE_FUZZERS=OFF       \
        -DJPEGXL_ENABLE_DEVTOOLS=OFF      \
        -DJPEGXL_FORCE_SYSTEM_BROTLI=ON   \
        -DJPEGXL_FORCE_SYSTEM_HWY=ON      \
        -DJPEGXL_FORCE_SYSTEM_GTEST=ON    \
        -DJPEGXL_BUNDLE_LIBPNG=OFF        \
        -DJPEGXL_ENABLE_BENCHMARK=OFF     \
        -DJPEGXL_ENABLE_MANPAGES=OFF      \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DJPEGXL_ENABLE_PLUGINS=ON \
        -Wno-dev       "

export CFLAGS+=' -DNDEBUG -ffat-lto-objects'
export CXXFLAGS+=' -DNDEBUG -ffat-lto-objects -Wp,-U_GLIBCXX_ASSERTIONS'


cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
