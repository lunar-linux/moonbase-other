(

  sedit "s:/tmp:/usr/src/nbd-$VERSION/BUILD:" Makefile.* nbd/Makefile.*
  sedit "s:/usr/local:/usr:g" Makefile.* nbd/Makefile.*
  export TOPDIR=/usr/src/linux
  default_make

) > $C_FIFO 2>&1
