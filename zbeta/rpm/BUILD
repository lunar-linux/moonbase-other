(

  LDFLAGS=$(echo $LDFLAGS | sed  s/"-z combreloc"// )

 ./configure --prefix=/usr  \
		--localstatedir=/var  \
		--sysconfdir=/etc  \
		--libdir=/usr/lib  \
		--includedir=/usr/include  \
		--infodir=/usr/share/info  \
                --with-python=no           \
		--mandir=/usr/share/man  && 
 default_make
) > $C_FIFO 2>&1

