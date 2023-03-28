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
        -DJPEGXL_ENABLE_PLUGINS=ON        "

export CFLAGS+=' -ffat-lto-objects'
export CXXFLAGS+=' -ffat-lto-objects'

default_cmake_build
