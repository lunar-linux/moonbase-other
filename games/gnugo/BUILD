(

  ./configure  --build=$BUILD                      \
               --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
               --localstatedir=/var                \
	       --infodir=$MODULE_PREFIX/share/info \
	       --mandir=$MODULE_PREFIX/share/man   \
               --bindir=$MODULE_PREFIX/games       \
	       --enable-color                      \
	       --enable-cache-size=32              \
	       --with-curses                       \
               $OPTS                              &&

  default_make

  gather_docs THANKS TODO

) > $C_FIFO 2>&1
