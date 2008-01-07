(

# This fixes build break on my machine
CFLAGS="${CFLAGS//-fforce-addr/}"
  ./configure --prefix=/usr      \
              --enable-gpl       \
              --enable-shared    \
              --enable-swscaler  \
              --enable-pp        \
              --enable-pthreads  \
              $OPTS              &&

  default_make

) > $C_FIFO 2>&1
