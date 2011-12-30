(

  patch_it $SOURCE2 0 &&

  if [ `arch` == "x86_64" ] ; then
    OPTS+=" --enable-64bit"
  fi &&

  default_build

) > $C_FIFO 2>&1
