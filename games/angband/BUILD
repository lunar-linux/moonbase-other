(
  
  sedit "s:/games/:/:" configure &&

  ./configure  --prefix=/usr              \
               --bindir=/usr/games        \
               --datadir=/usr/share/games \
               --with-setgid=games        \
               $OPTS                      &&

  default_make

) > $C_FIFO 2>&1				  
