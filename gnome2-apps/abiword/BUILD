(

  cd abi &&                         

  ./configure   --enable-xft			\
                --with-libxml2                  \
                --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr			\
		--localstatedir=/var		\
		--infodir=/usr/share/info	\
		--mandir=/usr/share/man		\
		--with-sys-wv                   \
		$OPTS				&&
             
  default_make &&
  
  install -m644 ../abiword-docs/man/abiword.1 /usr/share/man/man1/

) > $C_FIFO 2>&1
