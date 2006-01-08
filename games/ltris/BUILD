(
  ./configure  --prefix=/usr               \
               --bindir=/usr/games         \
	       --localstatedir=/var/games  \
	       --datadir=/usr/share/games  \
               $OPTS                      &&
  default_make

) > $C_FIFO 2>&1
