(

  cp $SOURCE_CACHE/$SOURCE1 $SOURCE_DIRECTORY/src/amr.h &&

  sedit "s:ftello:ftell:g" src/vorbis.c

  default_build

) > $C_FIFO 2>&1
