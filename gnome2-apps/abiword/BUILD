(

  unset CFLAGS CXXFLAGS CPPFLAGS CCACHE_NOLINK CCACHE_DIR && 

  cd    abi       &&                         

  # temporary hack to remove left over automake cruft that the abiword devs forgot about
  mv aclocal.m4 aclocal.m4.orig                                 &&
  rm -rf autom4te.cache                                         &&

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
