(

  OPTS+=" --enable-gpl --enable-shared --enable-pthreads \
          --enable-postproc --enable-swscale"

  [ -n $CPU ] && OPTS+="$OPTS --cpu=$CPU"

  default_build

) > $C_FIFO 2>&1
