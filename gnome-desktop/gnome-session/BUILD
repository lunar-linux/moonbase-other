(
   export PATH=/opt/lunar/gnome/2/bin:$PATH &&
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&

if  [ "$FADE" == "y" ] ; then
   cd gnome-session &&
   patch_it $SOURCE_CACHE/$SOURCE2 0 &&
   cd $SOURCE_DIRECTORY 
fi
   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		\
		--enable-platform-gnome-2			&&

   default_make                                                 

) > $C_FIFO 2>&1

