(
   ./configure --prefix=/usr 		\
              --localstatedir=/var  \
              --without-silcd       \
              --sysconfdir=/etc     \
			  $OPTS 				&&
   make &&
   prepare_install &&
   make install
) > $C_FIFO 2>&1

