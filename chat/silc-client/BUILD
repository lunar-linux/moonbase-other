(
   ./configure --prefix=/usr 		\
              --localstatedir=/var  \
              --without-silcd       \
              --sysconfdir=/etc     \
			  $OPTS 				&&
   make &&
   make install
) > $C_FIFO 2>&1

