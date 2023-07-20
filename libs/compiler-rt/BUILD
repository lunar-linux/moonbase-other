OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release"

cmake -B build -S . -G Ninja $OPTS &&
cmake --build build &&

prepare_install &&

cmake --install build
