if module_installed openssh ; then
  OPTS+=" -DEXIV2_ENABLE_SSH=ON"
fi

OPTS+=" -DEXIV2_ENABLE_VIDEO=ON \
        -DEXIV2_BUILD_PO=ON \
        -DCMAKE_SKIP_RPATH=ON \
        -DEXIV2_ENABLE_PNG=ON \
        -DEXIV2_BUILD_SAMPLES=OFF \
        DEXIV2_BUILD_UNIT_TESTS=OFF \
        -DCMAKE_INSTALL_LIBDIR=lib"

default_cmake_build
