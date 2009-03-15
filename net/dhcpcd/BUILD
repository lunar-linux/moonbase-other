(

  sedit 's:c99:gnu99:g' mk/cc.mk  &&
  sedit 's:${PREFIX}/etc:/etc:' Makefile  &&

  export PREFIX=/usr  &&

  default_make

) > $C_FIFO 2>&1
