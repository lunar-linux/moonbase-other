(
   export PATH=/opt/lunar/gnome/2/bin:$PATH &&
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		\
		--enable-platform-gnome-2			&&

   default_make                                                 &&
  cp $SCRIPT_DIRECTORY/gnome-splash.png /opt/lunar/gnome/2/share/pixmaps/splash/

) > $C_FIFO 2>&1

