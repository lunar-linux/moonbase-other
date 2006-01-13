(

  ./configure  --build=$BUILD                        \
               --prefix=$MODULE_PREFIX               \
	       --sysconfdir=/etc                     \
	       --localstatedir=/var                  \
	       --infodir=$MODULE_PREFIX/share/info   \
	       --mandir=$MODULE_PREFIX/share/man     \
               --bindir=$MODULE_PREFIX/games         \
	       --datadir=$MODULE_PREFIX/share/games  \
	       $OPTS                                &&

  default_make

) > $C_FIFO 2>&1
