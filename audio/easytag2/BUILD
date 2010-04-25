(

  cd ../ &&
  patch_it $SORUCE_CACHE/$SOURCE2 0 &&
  cd $SOURCE_DIRECTORY/ &&

  sedit "s:mp4.h:mp4v2/mp4v2.h:g" src/mp4_header.c src/mp4_tag.c &&
  sedit 's:#include "mp4v2/mp4v2.header.h":#include "mp4v2/mp4v2.h":' src/mp4_header.c &&

  ./autogen.sh &&

  OPTS="--enable-shared --disable-glibtest --disable-gtktest" &&

  default_build

) > $C_FIFO 2>&1
