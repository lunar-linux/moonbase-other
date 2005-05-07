(
  ./configure     --prefix=/usr                            \
		  --localstatedir=/usr/share/games/ltris   \
		  --datadir=/usr/share/games               \
                  $OPTS                 &&
  make                                  &&
  prepare_install                       &&
  make    install                       &&
  mv  /usr/bin/ltris  /usr/games 

) > $C_FIFO 2>&1
