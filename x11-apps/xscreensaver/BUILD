(
  patch_it  $SOURCE_CACHE/$SOURCE2 1 &&

  cd $SOURCE_DIRECTORY &&
  ./configure	--build=$BUILD            \
            	--prefix=/usr             \
            	--sysconfdir=/etc         \
            	--infodir=/usr/share/info \
           	--mandir=/usr/share/man   \
		--with-gl                 \
	    	$OPTS                     &&
  default_make

) > $C_FIFO 2>&1
