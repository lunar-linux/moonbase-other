(
   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info	\
		--mandir=/opt/lunar/gnome/2/share/man		\
		$OPTS                       			&&

   default_make                                                 &&
   cp $SOURCE_CACHE/$SOURCE2 /opt/lunar/gnome/2/share/pixmaps/splash/gnome-splash.png

) > $C_FIFO 2>&1

