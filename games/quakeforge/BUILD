(

  OPTS+=" --disable-debug"

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  patch_it $SOURCE4 0 &&

  ./configure  --prefix=/usr        \
               --mandir=/usr/share  \
               --bindir=/usr/games  &&

  default_make

) > $C_FIFO 2>&1
