(

  sedit "s:local/lib:share/games/crossfire:" sound-src/sounds.dist &&

  ./configure  --prefix=/usr              \
               --bindir=/usr/games        \
	       --datadir=/usr/share/games \
               --sysconfdir=/etc          \
               --localstatedir=/var       \
               --disable-alsa             \
               --with-sound-dir=/usr/share/games/crossfire-client/sounds \
               $OPTS  &&

  default_make  &&
  
  mkdir -p /usr/share/games/crossfire-client  &&
  cd /usr/share/games/crossfire-client  &&
  unpack  $SOURCE1  &&
  unpack  $SOURCE2  &&
  chown -R root:root /usr/share/games/crossfire-client/sounds

) > $C_FIFO 2>&1
