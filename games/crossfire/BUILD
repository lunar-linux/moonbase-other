(

  ./configure  --prefix=/usr             \
               --sysconfdir=/etc         \
               --localstatedir=/var/lib  \
               --bindir=/usr/games       \
               $OPTS                     &&
  make                                   &&
  prepare_install                        &&
  make    install                        &&
  cd      /usr/share/crossfire           &&
  unpack  $SOURCE2                       &&
  unpack  $SOURCE3

) > $C_FIFO 2>&1
