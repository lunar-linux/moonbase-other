(

  default_config &&
	make &&
	prepare_install &&
	mkdir -p /sbin /usr/share/man/man8 &&
	install -c -m 755 powerd /sbin/powerd &&
	install -c -m 755 detectups /sbin/detectups &&
	install -c -m 644 powerd.8 /usr/share/man/man8/powerd.8 &&
	install -c -m 644 detectups.8 /usr/share/man/man8/detectups.8

) > $C_FIFO 2>&1
