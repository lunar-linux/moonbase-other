(
   export PATH=/opt/lunar/gnome/2/bin:$PATH &&
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
  
   # Wrong path 
   sed '/\/usr\/bin/ s/\/usr\/bin/\/opt\/lunar\/gnome\/2\/bin/g' src/GNOME_MultiresApplet.server.in | cat > src/GNOME_MultiresApplet.server.in
   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		&&

   default_make
   
) > $C_FIFO 2>&1
