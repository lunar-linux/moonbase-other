(
   export PATH=/opt/lunar/gnome/2/bin:$PATH &&
   export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
    export LDFLAGS="-L/opt/lunar/Xft/lib -L/opt/lunar/gnome/2/lib -L/usr/lib"  &&
   sedit "s:TERM=xterm:TERM=xterm-color:" src/terminal-screen.c &&
      
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info		\
		--mandir=/opt/lunar/gnome/2/share/man		&&

   default_make

) > $C_FIFO 2>&1 
