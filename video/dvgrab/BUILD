(

  patch_it $SOURCE_CACHE/$SOURCE2 1     &&

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
	       --localstatedir=/var     \
	       $OPTS                    &&

  sedit "s/CFLAGS = -O2/CFLAGS = $CFLAGS/" Makefile       &&
  sedit "s/CXXFLAGS = -O2/CXXFLAGS = $CXXFLAGS/" Makefile &&

  make                                  &&
  prepare_install                       &&
  make    install

) > $C_FIFO 2>&1

