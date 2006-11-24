(

  cd    abi       &&                         

  ./configure   --enable-xft                    \
                --with-libxml2                  \
                --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr 			\
		--localstatedir=/var		\
		--infodir=/usr/share/info	\
		--mandir=/usr/share/man		\
		--with-sys-wv                   \
		$OPTS				&&
             
  default_make &&
  cd ../abiword-docs &&
  cp man/abiword.1 /usr/share/man/man1 &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp -p Manual/en/*.abw Changelog/*.abw $DOCUMENT_DIRECTORY/$MODULE/ &&

  # Build the plugins
  cd ../abiword-plugins &&
  ./configure   --enable-xft                    \
                --with-libxml2                  \
                --build=$BUILD                  \
                --sysconfdir=/etc               \
                --prefix=/usr                   \
                --localstatedir=/var            \
                --infodir=/usr/share/info       \
                --mandir=/usr/share/man         \
                --with-sys-wv                   \
                --disable-pdf			\
                --disable-gda                   \
		$OPTS				&&
  
  make &&
  make install-strip
  

) > $C_FIFO 2>&1
