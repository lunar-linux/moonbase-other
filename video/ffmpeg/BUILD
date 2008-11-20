(

  OPTS+=" --enable-gpl --enable-shared --enable-pthreads \
          --enable-postproc --enable-swscale"

 [ -n $CPU ] && OPTS+="$OPTS --cpu=$CPU"
  ./configure --prefix=/usr $OPTS &&

  default_make

) > $C_FIFO 2>&1
