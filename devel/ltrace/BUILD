(
#the Makefile is broken. this sedit fixes it.
  sedit "s/\/doc\/ltrace/\/share\/doc\/ltrace/g" $SOURCE_DIRECTORY/Makefile.in &&
  sedit "s/-m 644 COPYING/-D -m 644 COPYING/g"   $SOURCE_DIRECTORY/Makefile.in &&
  sedit "s/ChangeLog//g"			 $SOURCE_DIRECTORY/Makefile.in &&

  ./configure --prefix=/usr           \
              --bindir=/usr/bin       \
              --sbindir=/usr/sbin     \
              --datadir=/usr/share    \
	      --sysconfdir=/etc       \
	      --mandir=/usr/share/man &&
  make                                                                      &&
  prepare_install                                                           &&
  make    install

) > $C_FIFO 2>&1
