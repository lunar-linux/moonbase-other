OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DBUILD_SHARED_LIBS=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCPUINFO_BUILD_PKG_CONFIG=ON \
        -DCPUINFO_BUILD_TOOLS=ON \
        -Wno-dev"

cmake -B svt-av1 -S . -G Ninja $OPTS &&
cmake --build svt-av1 &&

prepare_install
cmake --install svt-av1
