(

# In order to have fftw3 float libs *AND* non-float libs.
# We have to do this twice.

  ./configure   --prefix=/usr    \
                --enable-shared  \
                --enable-float   \
                $OPTS           &&

  default_make    &&
  make distclean  &&

  ./configure   --prefix=/usr    \
                --enable-shared  \
                $OPTS           &&

  default_make

) > $C_FIFO 2>&1
