(

  default_pre_build &&
  cd $SOURCE_DIRECTORY &&
  sedit 's/\/usr\/local/\/usr/' Makefile &&
  default_make

) > $C_FIFO 2>&1
