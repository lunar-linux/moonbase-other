(

  ./configure 	--prefix=/usr			\
  		--with-afs-sysname=i386_linux24	\
		--sysconfdir=/usr/vice/etc	\
		--localstatedir=/var		\
		--infodir=/usr/share/info	\
		--mandir=/usr/share/man		\
		$OPTS				&&
  make dest_only_libafs

) > $C_FIFO 2>&1
  
