(

  #remove the underquoted definition
  sedit  's/AM_PATH_SMPEG,/[AM_PATH_SMPEG],/'  smpeg.m4  &&

  default_config                 &&
  sedit  's/gcc/g++/'  Makefile  &&
  default_make

) > $C_FIFO 2>&1
