(

  if [ `arch` == "x86_64" ] ; then 
      OPTS+=" --enable-64"
    else
     OPTS+=" -disable-64"
  fi &&

  OPTS+=" --enable-shared --enable-eps --enable-netcdf=/usr" &&

  default_build

) > $C_FIFO 2>&1
