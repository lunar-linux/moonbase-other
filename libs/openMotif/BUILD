(

  patch -p1 < $SCRIPT_DIRECTORY/include-order.diff &&
  sedit "s/ animate.c//" demos/programs/animate/Makefile.in &&
  ./configure  --prefix=/usr/X11R6        \
               --sysconfdir=/etc/X11      \
               --with-x                   \
               --with-gnu-ld              \
               $OPTS                     &&
  make                                   &&
  prepare_install                        &&
  make    install                        &&
  ldconfig

) > $C_FIFO 2>&1
