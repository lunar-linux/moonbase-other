mkdir  -p  /usr/share/doc/audacity

(

    ./configure  --prefix=/usr         		\
                 --sysconfdir=/etc     		\
                 --localstatedir=/var  		\
		 --with-libsndfile=system 	\
		 --with-libresample=no	 	\
		 --with-libsamplerate=system	\
                 $OPTS                 		&&
    make                               		&&
    prepare_install                    		&&
    make    install

) > $C_FIFO 2>&1
