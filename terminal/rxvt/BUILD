(

  ./configure  --prefix=/usr                       \
               --sysconfdir=/etc                   \
	       --enable-xpm-background             \
               --enable-transparency               \
	       --enable-graphics                   \
	       --enable-xgetdefault                \
	       --enable-half-shadow                \
               --enable-rxvt-scroll                \
               --infodir=/usr/share/info           \
               --mandir=/usr/share/man             \
               --enable-mousewheel                 \
               --enable-slipwheeling               \
               --with-term=rxvt                    \
               --with-terminfo=/usr/share/terminfo \
               --enable-smart-resize               \
               --enable-utmp                       \
               --enable-wtmp                       \
               --enable-lastlog                    \
               --enable-menubar                    \
               $OPTS                               &&
  make                                  &&
  prepare_install                       &&
  make    install

) > $C_FIFO 2>&1
