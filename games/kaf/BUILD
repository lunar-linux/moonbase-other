(

  export PATH=$QTDIR/bin:$PATH
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure   &&
  default_make  &&
  cp kaf /usr/bin
 
) > $C_FIFO 2>&1
