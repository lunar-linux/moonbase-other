(
   
    ./configure --sysconfdir=/etc                               \
                --prefix=/opt/lunar/$MOD		 	\
		--localstatedir=/var				\
		--infodir=/opt/lunar/$MOD/share/info		\
		--mandir=/opt/lunar/$MOD/share/man		\
                --with-python                                   \
                --with-guile                                    \
                --with-gda                                      \
                --with-bonobo                                   \
                --with-graphs                                   \
                $OPTS                                           && 

   default_make

) > $C_FIFO 2>&1
