(

# configure needs to be this way. The build will tank if we try
# to use default_build.
  ./configure --prefix=/usr      \
              --enable-gpl       \
              --enable-shared    \
              --enable-pp        \
              --enable-pthreads  \
              $OPTS             &&

  default_make

) > $C_FIFO 2>&1
