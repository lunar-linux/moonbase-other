(

  OPTS+=" --enable-gpl --enable-nonfree --enable-shared --enable-pthreads \
          --enable-postproc"

 [ -n $CPU ] && OPTS+="$OPTS --cpu=$CPU"
  ./configure --prefix=/usr $OPTS &&

  default_make

) > $C_FIFO 2>&1
