(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  gettextize --copy --force &&
  libtoolize --force &&
  aclocal  -I m4 &&
  autoconf &&
  automake -a -c -f --foreign &&
  
  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
	       --localstatedir=/var     \
	       $OPTS                    &&

  sedit "s/CFLAGS = -O2/CFLAGS = $CFLAGS/" Makefile       &&
  sedit "s/CXXFLAGS = -O2/CXXFLAGS = $CXXFLAGS/" Makefile &&

  default_make

) > $C_FIFO 2>&1

