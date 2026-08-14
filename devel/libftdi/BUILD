#sed -i 's|LIB_SUFFIX 64|LIB_SUFFIX ""|' CMakeLists.txt &&
sed -i "s|MODE=\"0664\", GROUP=\"plugdev\"|TAG+=\"uaccess\"|g" packages/99-libftdi.rules &&

OPTS+=" -DEXAMPLES=OFF \
        -DFTDI_EEPROM=ON \
        -DFTDIPP=ON \
        -DPYTHON_BINDINGS=OFF \
        -DSTATICLIBS=OFF \
        -DLINK_PYTHON_LIBRARY=ON \
        -DCMAKE_SKIP_BUILD_RPATH=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5"

default_cmake_build
