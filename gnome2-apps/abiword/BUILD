(

  unset CFLAGS CXXFLAGS CPPFLAGS CCACHE_NOLINK CCACHE_DIR && 

  cd    abi       &&                         

  ./autogen.sh                                                  &&
  ./configure   --enable-xft                                    \
                --with-libxml2                                  \
                --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2.4			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2.4/share/info	\
		--mandir=/opt/lunar/gnome/2.4/share/man		\
		--with-sys-wv                                   &&
             
  default_make 
            

) > $C_FIFO 2>&1
