(

  patch_it  $SOURCE_CACHE/$SOURCE2 1 &&

  ./configure  --prefix=/usr        \
               --mandir=/usr/share  \
               --bindir=/usr/games  &&
  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
