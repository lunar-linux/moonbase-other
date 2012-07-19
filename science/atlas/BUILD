(

  mkdir $MODULE-build &&
  cd $MODULE-build &&

  ../configure -Fa alg -fPIC --shared --prefix=/usr --incdir=/usr/include $OPTS &&

  default_make 

) > $C_FIFO 2>&1
