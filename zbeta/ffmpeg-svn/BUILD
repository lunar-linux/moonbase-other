(

  ./configure --prefix=/usr      \
              --enable-gpl       \
              --enable-shared    \
              --enable-swscaler  \
              --enable-pp        \
              --enable-pthreads  \
              $OPTS              &&

  default_make

) > $C_FIFO 2>&1
