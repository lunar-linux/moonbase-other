# In order to provide various fftw3 libs we have to do for each

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-float   \
            --enable-threads \
            --disable-fortran \
            $OPTS &&

default_make &&
make distclean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --disable-fortran \
            $OPTS &&

default_make &&
make distclean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --enable-quad-precision \
            --disable-fortran \
            $OPTS &&

default_make &&
make distclean &&

# This one can be used by eigen3
./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --enable-long-double \
            --disable-fortran \
            $OPTS &&

default_make &&

sed -e 's/3.6.9/3.6.10/' -i CMakeLists.txt &&
cmake . &&
sed -e 's|\(IMPORTED_LOCATION_NONE\).*|\1 "/usr/lib/libfftw3.so.3"|' -i FFTW3LibraryDepends.cmake &&
install -vDm 644 FFTW3LibraryDepends.cmake -t /usr/lib/cmake/fftw3/
