(
   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/usr	                		\
		--localstatedir=/var				\
		--infodir=/usr/share/info	           	\
		--mandir=/usr/share/man		                \
                --with-croco                                    \
                --with-svgz                                     \
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
