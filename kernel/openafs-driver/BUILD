(

  ./configure 	--prefix=/usr			\
  		--with-afs-sysname=i386_linux24	\
		--sysconfdir=/usr/vice/etc	\
		--localstatedir=/var		\
		--infodir=/usr/share/info	\
		--mandir=/usr/share/man		\
		$OPTS				&&
  make	dest_only_libafs			&&
  prepare_install				&&
  
  if [ ! -d /usr/vice/etc/modload ]; then
	mkdir -p /usr/vice/etc/modload
  fi &&

  install -m 644 $SOURCE_DIRECTORY/i386_linux24/dest/root.client/usr/vice/etc/modload/*.o /usr/vice/etc/modload

) > $C_FIFO 2>&1
  
