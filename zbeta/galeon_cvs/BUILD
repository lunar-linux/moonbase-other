(
 
 cp -R /opt/lunar/gnome/2/share/aclocal/* /usr/share/aclocal && 
./autogen.sh --prefix=/opt/lunar/gnome/2 \
             --with-mozilla-snapshot=1.3 \
             --disable-werror            \
             $OPTS      &&
default_make 
  
) > $C_FIFO 2>&1
