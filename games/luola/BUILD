(

  cp    src/fs.c  src/fs.c.old
  sed   "s:../data:/usr/share/luola/data:"  src/fs.c.old  >  src/fs.c

  rm  -f  config.status
  rm  -f  config.cache
  rm  -f  config.log

  ./configure  --prefix=/usr                \
               --enable-sound               \
               --with-sdl-prefix=/usr       \
               --with-sdl-exec-prefix=/usr  \
               $OPTS                        &&
  make                                      &&
  prepare_install                           &&
  make    install

) > $C_FIFO 2>&1
