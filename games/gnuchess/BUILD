(
  CCARGS="-DXBOARD"                     \
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sysconfdir=/etc        \
               --localstatedir=/var     \
               --bindir=/usr/games      \
	       --mandir=/usr/share/man  && 
  make                                  &&
  prepare_install                       &&
  make    install                       &&
  cp  $MOONBASE/games/$MODULE/chess  /usr/games

) > $C_FIFO 2>&1
