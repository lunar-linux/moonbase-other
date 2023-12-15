cmake -B build -S .\
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DENABLE_DYNAMIC_LINKING=ON \
    -DBUILD_LIB_STATIC=OFF \
    -DENABLE_OPENCV=ON \
    -DENABLE_FFTW=ON \
    -DENABLE_XSHM=ON \
    -Wno-dev &&

cmake --build build &&

prepare_install &&
cmake --install build
