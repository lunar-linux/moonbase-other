(

  ./configure  --prefix=/usr              \
               --bindir=/usr/games        \
	       --datadir=/usr/share/games \
	       --with-zlib                \
	       --with-readline            \
	       --with-gnu-ld              \
	       $OPTS                     &&
	       
  default_make

) > $C_FIFO 2>&1
