(

  ./configure --prefix=/usr                           \
              --sysconfdir=/etc                       \
              --localstatedir=/var                    \
              --infodir=/usr/share/info               \
              --mandir=/usr/share/man                 \
	      --with-x                                \
              --with-fdtarball=$SOURCE_CACHE/$SOURCE2 \
	      $OPTS                                   &&
  
  default_make
  
) > $C_FIFO 2>&1
