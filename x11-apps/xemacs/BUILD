(

  LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//"`
  ./configure  --prefix=/usr  \
               --with-msw=no  \
               $OPTS  \
	       --without-gtk --without-gnome && #They break tabs
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1

