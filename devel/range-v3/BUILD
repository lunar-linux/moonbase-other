OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release  \
        -DRANGE_V3_TESTS=OFF \
        -DRANGE_V3_HEADER_CHECKS=OFF \
        -DRANGE_V3_EXAMPLES=OFF \
        -DRANGE_V3_PERF=OFF"

cmake -B $MODULE-build -GNinja $OPTS &&
ninja -C $MODULE-build &&

prepare_install
ninja -C $MODULE-build install
