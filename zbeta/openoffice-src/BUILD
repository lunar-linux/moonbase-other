(
  cd $SOURCE_DIRECTORY &&

  ./configure	--prefix=/usr \
		--sysconfdir=/etc \
                --with-system-gcc \
                --enable-devel    \
                --enable-bonobo   \
                --disable-dependency-tracking \
 		$OPTS &&

  default_make   &&

  cp /usr/share/gnome/ximian/applications/* /usr/share/applications/ &&
  rm -fr /usr/share/gnome/ximian/ 
  
) > $C_FIFO 2>&1
