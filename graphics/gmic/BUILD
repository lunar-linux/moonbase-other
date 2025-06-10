cmake -B build -S .\
    -DCMAKE_INSTALL_PREFIX=/usr \
    -DENABLE_DYNAMIC_LINKING=ON \
    -DBUILD_LIB_STATIC=OFF \
    -DENABLE_OPENCV=OFF \
    -DENABLE_FFTW=ON \
    -DENABLE_XSHM=ON \
    -DBUILD_MAN=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -Wno-dev &&

cmake --build build &&

prepare_install &&
cmake --install build &&

cp src/gmic.cpp /usr/include/
ln -sf /usr/lib64/libgmic.so.1 /usr/lib64/libgmic.so
