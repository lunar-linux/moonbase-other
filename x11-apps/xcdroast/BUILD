(
    ./configure --enable-gtk2		  \
		--prefix=/usr             \
               	--sysconfdir=/etc         \
               	--localstatedir=/var      \
               	--infodir=/usr/share/info \
               	--mandir=/usr/share/man   \
               $OPTS                     &&
    default_make			 &&

    cp $SOURCE_CACHE/$SOURCE2 /usr/lib/xcdroast-0.98/bin/cdrecord.prodvd &&
    chmod 755 /usr/lib/xcdroast-0.98/bin/cdrecord.prodvd

) > $C_FIFO 2>&1
