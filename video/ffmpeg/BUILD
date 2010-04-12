(

  OPTS+=" --enable-gpl            \
          --enable-shared         \
          --enable-pthreads       \
          --enable-postproc       \
          --enable-avfilter-lavf  \
          --enable-swscale        \
          --enable-avfilter       \
          --enable-nonfree"      &&

 [ -n $CPU ] && OPTS+=" --cpu=$CPU"
  ./configure --prefix=/usr $OPTS  &&

  default_make

) > $C_FIFO 2>&1
