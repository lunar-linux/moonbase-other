(

  unset CFLAGS CXXFLAGS CPPFLAGS CCACHE_NOLINK CCACHE_DIR && 

  cd    abi       &&                         

  ./configure   --enable-xft                                    \
                --with-libxml2                                  \
                --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/usr 					\
		--localstatedir=/var				\
		--infodir=/usr/share/info			\
		--mandir=/usr/share/man				\
		--with-sys-wv                   \
		$OPTS				&&
             
  default_make &&
  cd ../abiword-docs &&
  sedit "s/\/local//" Makefile &&
  make &&
  cp man/abiword.1 /usr/share/man/man1 &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp -p Manual/en/*.abw Changelog/*.abw $DOCUMENT_DIRECTORY/$MODULE/

) > $C_FIFO 2>&1
