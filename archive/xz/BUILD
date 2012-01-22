(

  sedit "s:\$(libdir)/pkgconfig:/usr/lib/pkgconfig:" src/liblzma/Makefile.am  &&

  OPTS+=" --disable-static  --libdir=/lib "  &&

  default_build

) > $C_FIFO 2>&1
