(
   export GCONF_CONFIG_SOURCE=/opt/lunar/gnome/2/bin &&
   export PATH=/opt/lunar/gnome/2/bin:$PATH &&
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&

   case $VERSION in
     0.8.190|0.8.191) 
       cd doc/C
       cp Makefile.in Makefile.in.orig
       grep -v index\.sgml Makefile.in.orig > Makefile.in
       cp Makefile.am Makefile.am.orig
       grep -v index\.sgml Makefile.am.orig > Makefile.am
       cd $SOURCE_DIRECTORY
       ;;
   esac &&

   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		\
		--disable-gtk-doc				&&

   default_make

) > $C_FIFO 2>&1

