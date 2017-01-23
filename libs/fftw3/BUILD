# In order to provide various fftw3 libs we have to do for each

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-float   \
            --enable-threads \
            $OPTS           &&

default_make &&
make distclean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            $OPTS           &&

default_make &&
make distclean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --enable-quad-precision \
            $OPTS           &&

default_make &&
make distclean &&

# This one can be used by eigen3
./configure --prefix=/usr    \
            --enable-shared  \
            --enable-threads \
            --enable-long-double \
            $OPTS           &&

default_make
