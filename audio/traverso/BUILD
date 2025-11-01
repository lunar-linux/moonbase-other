source /etc/profile.d/qt6.rc &&

export CMAKE_CXX_FLAGS="-DSSE_OPTIMIZATIONS -DUSE_XMMINTRIN -DARCH_X86"

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DDETECT_HOST_CPU_FEATURES=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
