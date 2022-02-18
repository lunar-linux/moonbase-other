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

default_make
