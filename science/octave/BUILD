(
#  bad_flags -ffast-math 		&&
  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --enable-shared		\
		--with-g77		\
		--enable-dl		\
		--enable-rpath		\
               $OPTS                    &&

 default_make 

) > $C_FIFO 2>&1
