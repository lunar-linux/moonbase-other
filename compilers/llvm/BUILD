(

  OPTS+=" --enable-optimized --enable-shared --enable-pic --enable-targets=host-only"

  if [ "$USE_ASSERTS" == "y" ] ; then
     OPTS="--enable-assertions"
   else
     OPTS="--disable-assertions"
  fi &&

  default_build   &&

  prepare_install

) > $C_FIFO 2>&1
