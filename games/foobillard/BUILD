(
  sedit "s:exec_prefix}/bin:exec_prefix}/games:" configure  &&
  sedit "s:prefix}/share:prefix}/share/games:"   configure  &&

  ./configure --prefix=/usr              \
              --bindir=/usr/games        \
	      --datadir=/usr/share/games &&

  default_make

) > $C_FIFO 2>&1
