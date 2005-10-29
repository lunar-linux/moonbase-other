(

  ./configure --prefix=/                 \
	      --datadir=/lib             \
	      --includedir=/usr/include  \
	      --infodir=/usr/share/doc   \
	      --mandir=/usr/share/man    \
              $OPTS  &&
  default_make       &&
  make dict 

) > $C_FIFO 2>&1
