(

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
	       --localstatedir=/var     \
	       $OPTS                    &&

  sedit "s/CFLAGS = -O2/CFLAGS = $CFLAGS/" Makefile       &&
  sedit "s/CXXFLAGS = -O2/CXXFLAGS = $CXXFLAGS/" Makefile &&

  default_make

) > $C_FIFO 2>&1

