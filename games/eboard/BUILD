(

  sedit "s:prefix/bin:prefix:" configure      &&
  ./configure  --prefix=/usr/games             \
               --data-prefix=/usr/share/games  \
               --man-prefix=/usr/share/man     \
               $OPTS                          &&

  default_make

) > $C_FIFO 2>&1
