(
   
   ./configure  --build=$BUILD			\
                --sysconfdir=/etc               \
                --prefix=/usr			\
		--localstatedir=/var		\
                --libdir=/usr/lib               \
		--infodir=/usr/info		\
		--mandir=/usr/man		\
                $OPTS                           &&

   default_make
  
) > $C_FIFO 2>&1

