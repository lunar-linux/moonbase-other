(
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
   export PYTHON=/usr/bin/python2.3  &&
   patch_it $SOURCE_CACHE/$SOURCE2 1 &&

   aclocal && automake && autoconf                             &&
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/usr            		        \
		--localstatedir=/var				\
		--infodir=/usr/share/info	        	\
		--mandir=/usr/share/man	                       &&

   default_make
   
) > $C_FIFO 2>&1

