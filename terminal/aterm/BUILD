(

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --enable-fading           \
               --enable-next-scroll      \
               --enable-half-shadow      \
	       --enable-menubar          \
	       --enable-background-image \
               --enable-transparency     \
	       --mandir=/usr/share/man   \
	       --with-xpm                \
	       --with-jpeg               \
	       --with-png                \
	       --with-x                  \
               --with-term=rxvt          \
               --enable-utmp             \
               --enable-wtmp             \
               $OPTS                     &&
  make                                   &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
