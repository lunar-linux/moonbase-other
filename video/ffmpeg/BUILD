(

  if in_depends $MODULE libvpx ; then
     patch_it $SOURCE_CACHE/$SOURCE2 0
  fi  &&

  # Fix compilation error:
  # https://trac.macports.org/ticket/25803
  sedit "s:texi2html -monolithic -number:texi2html -monolithic:" Makefile  &&

  OPTS+=" --enable-gpl            \
          --enable-shared         \
          --enable-pthreads       \
          --enable-postproc       \
          --enable-avfilter-lavf  \
          --enable-swscale        \
          --enable-avfilter       \
          --enable-x11grab        \
          --enable-nonfree"      &&

  if [ -n $CPU ] ; then
    OPTS+=" --cpu=$CPU"
  fi  &&

  # With default_build, get error:  Unknown option "--build=i686-pc-linux-gnu"
  ./configure --prefix=/usr $OPTS  &&
  
  default_make

) > $C_FIFO 2>&1
