(
   
    ./configure --sysconfdir=/etc                               \
                --prefix=/usr					\
		--localstatedir=/var				\
		--infodir=/usr/share/info			\
		--mandir=/usr/share/man				\
                --with-python                                   \
                --with-guile                                    \
                --with-gda                                      \
                --with-bonobo                                   \
                --with-graphs                                   \
                $OPTS                                           && 

   default_make

) > $C_FIFO 2>&1
