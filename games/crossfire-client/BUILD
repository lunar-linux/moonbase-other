(

  sedit  "s:local/lib:share/crossfire:"  sound-src/sounds.dist

  ./configure  --prefix=/usr         \
               --bindir=/usr/games   \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --disable-alsa        \
               --with-sound-dir=/usr/share/crossfire/sounds  \
               $OPTS                 &&
  make                               &&
  prepare_install                    &&
  make    install                    &&
  mkdir   -p  /usr/share/crossfire   &&
  cd          /usr/share/crossfire   &&
  unpack  $SOURCE2                   &&
  chown   -R  root:root  /usr/share/crossfire/sounds

) > $C_FIFO 2>&1
