(

  if [ -f `which gfortran` ] ; then
     OPTS="--with-fc=gfortran"
  else
    OPTS="--without-fc"
  fi &&

  default_build

) > $C_FIFO 2>&1
