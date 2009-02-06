(

  OPTS+=" --enable-gpl --enable-shared --enable-pthreads \
          --enable-postproc --enable-swscale"

  [ -n $CPU ] && OPTS+="$OPTS --cpu=$CPU"

  #Can't call default_build because the default_config passes --build
  #Which ffmpeg dropped support for... =(
  ./configure --prefix=/usr $OPTS &&
  default_make

) > $C_FIFO 2>&1
