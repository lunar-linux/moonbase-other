(

  ./configure $OPTS --build=$BUILD --prefix=/usr         \
		 --sysconfdir=/etc --localstatedir=/var  \
		 --with-perl=no                          &&
  make                                                   &&
  prepare_install                                        &&
  make install

) > $C_FIFO 2>&1
