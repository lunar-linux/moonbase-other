(

  sedit  "s:local/lib:share/crossfire:"  sound-src/sounds.dist

  ./configure  --prefix=/usr         \
               --bindir=/usr/games   \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --disable-alsa        \
               --with-sound-dir=/usr/share/crossfire-client/sounds  \
               $OPTS                       &&
  make                                     &&
  prepare_install                          &&
  make    install                          &&
  mkdir   -p  /usr/share/crossfire-client  &&
  cd          /usr/share/crossfire-client  &&
  unpack  $SOURCE1                         &&
  unpack  $SOURCE2                         &&
  chown   -R  root:root  /usr/share/crossfire-client/sounds

) > $C_FIFO 2>&1
