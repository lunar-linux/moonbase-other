(
  ./configure  --prefix=/usr               \
               --sysconfdir=/etc           \
               --localstatedir=/var/games  \
               --bindir=/usr/games         \
	       --datadir=/usr/share/games  \
               $OPTS                      &&

  default_make  &&
  
  cd /usr/share/games/crossfire  &&
  unpack $SOURCE2                &&
  unpack $SOURCE3                &&
  cd /var/games/crossfire        &&
  chmod -R 666 *                 &&
  ln -sf /usr/share/games/crossfire/maps-bigworld /usr/share/games/crossfire/maps
 
) > $C_FIFO 2>&1
