(

  sedit "s:../data:/usr/share/games/luola:" src/fs.c

  rm -f config.status
  rm -f config.cache
  rm -f config.log

  ./configure  --prefix=/usr                \
               --bindir=/usr/games          \
	       --datadir=/usr/share/games   \
               --enable-sound               \
               --with-sdl-prefix=/usr       \
               --with-sdl-exec-prefix=/usr  \
               $OPTS                       &&

  default_make                             &&
  
  cd /usr/share/games/luola/levels         &&
  unpack $SOURCE2                          &&
  unpack $SOURCE3                          

) > $C_FIFO 2>&1
