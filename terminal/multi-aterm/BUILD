(

  ./configure  --prefix=$MODULE_PREFIX             \
               --sysconfdir=/etc                   \
	       --mandir=$MODULE_PREFIX/share/man   \
	       --infodir=$MODULE_PREFIX/share/info \
               --enable-fading                     \
               --enable-transparency               \
               --enable-next-scroll                \
               --enable-half-shadow                \
	       --enable-swapscreen                 \
	       --enable-mousewheel                 \
	       --with-x                            \
               $OPTS                               &&

  default_make

) > $C_FIFO 2>&1
