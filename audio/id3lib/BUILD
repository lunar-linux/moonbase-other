(

  OPTS+=" --disable-static" &&

  patch_it $SOURCE2 0  &&

  default_config  &&

  sedit 's:LIBS =:LIBS = -lz -lstdc++:' src/Makefile

  default_make

) > $C_FIFO 2>&1
