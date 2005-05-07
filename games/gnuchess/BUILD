(
  mv ../chess/* .
  rmdir ../chess 

  CCARGS="-DXBOARD"                     \
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sysconfdir=/etc        \
               --localstatedir=/var     \
               --bindir=/usr/games      \
               --mandir=/usr/share/man  && 

  default_make  &&

  cp  $MOONBASE/games/$MODULE/chess  /usr/games

) > $C_FIFO 2>&1
