# In order to provide various fftw3 libs we have to do for each

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-float   \
            --enable-threads \
            --disable-fortran \
            $OPTS &&
# fix libtool overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&
make distclean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --disable-fortran \
            $OPTS &&
# fix libtool overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&
make distclean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --enable-quad-precision \
            --disable-fortran \
            $OPTS &&
# fix libtool overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&
make distclean &&

# This one can be used by eigen3
./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --enable-long-double \
            --disable-fortran \
            $OPTS &&
# fix libtool overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

sed -e 's/3.6.9/3.6.10/' -i CMakeLists.txt &&
_opts+=" -B build
    -D CMAKE_INSTALL_PREFIX=/usr \
    -D CMAKE_BUILD_TYPE=None \
    -D ENABLE_THREADS=ON \
    -D ENABLE_FLOAT=ON \
    -D ENABLE_LONG_DOUBLE=ON \
    -D ENABLE_QUAD_PRECISION=ON"

cmake . _opts &&
sed -e 's|\(IMPORTED_LOCATION_NONE\).*|\1 "/usr/lib/libfftw3.so.3"|' -i FFTW3LibraryDepends.cmake &&
install -vDm 644 FFTW3LibraryDepends.cmake -t /usr/lib/cmake/fftw3/
