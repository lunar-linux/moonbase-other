(

  if in_depends $MODULE libvpx ; then
     patch_it $SOURCE_CACHE/$SOURCE2 0
  fi &&

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
