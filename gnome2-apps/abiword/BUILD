(

  unset CFLAGS CXXFLAGS CPPFLAGS CCACHE_NOLINK CCACHE_DIR && 

  cd    abi       &&                         

  ./autogen.sh                                                  &&
  ./configure   --enable-xft                                    \
                --with-libxml2                                  \
                --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/usr 					\
		--localstatedir=/var				\
		--infodir=/usr/share/info			\
		--mandir=/usr/share/man				\
		--with-sys-wv                                   &&
             
  default_make 
            

) > $C_FIFO 2>&1
