(
 
 cp -R /opt/lunar/gnome/2/share/aclocal/* /usr/share/aclocal && 
 cd $SOURCE_DIRECTORY/galeon &&
./autogen.sh --prefix=/opt/lunar/gnome/2 \
             --disable-werror            \
             --enable-nautilus-view      &&
default_make 
  
) > $C_FIFO 2>&1
