(

  ./configure	--build=$BUILD            \
            	--prefix=/usr             \
            	--sysconfdir=/etc         \
            	--infodir=/usr/share/info \
           	--mandir=/usr/share/man   \
		--with-gl                 \
                --with-xml                \
		$OPTS                     &&
  default_make

) > $C_FIFO 2>&1
