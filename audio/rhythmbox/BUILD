
(
   ./configure  --build=$BUILD                                  \
		--enable-ipod \
		--with-cd-burner \
		--with-dbus \
                --sysconfdir=/etc                               \
                --prefix=/usr  		                        \
                --localstatedir=/var                            \
                --infodir=/usr/share/info		        \
                --mandir=/usr/share/man 		        &&
   
   ( for i in `find -name "Makefile"`; do
	    sedit 's/-Werror//g' $i
    done) &&

   default_make

) > $C_FIFO 2>&1

