(  
   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info	\
		--mandir=/opt/lunar/gnome/2/share/man		\
                --with-html-dir=/usr/share/gtk-doc/html         \
		$OPTS                   			&&

   default_make
   
) > $C_FIFO 2>&1
