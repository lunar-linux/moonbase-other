(

  /usr/bin/phpize					&&
  PHP_EXT_DIR="/usr/lib/php/extensions"			&&

  ./configure	--enable-mmcache=shared			\
		--with-php-config=/usr/bin/php-config	\
		$OPTS					&&

  make							&&

  # This should not be in the install log
  mkdir -p /var/cache/mmcache				&&
  chmod 1777 /var/cache/mmcache				&&

  prepare_install					&&

  mkdir -p /usr/lib/php/extensions			&&
  install -m 0755 modules/mmcache.so /usr/lib/php/extensions/turck-mmcache.so

) > $C_FIFO 2>&1
