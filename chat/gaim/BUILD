(

  OPTS="$OPTS --enable-gtk2 --disable-gnome --disable-artsc"
  default_config &&
  make &&
  make -C gaim-blogger-$VERSION &&
  make install &&
  install -m 755 gaim-blogger-$VERSION/libblogger.so /usr/lib/gaim &&
  install -m 644 gaim-blogger-$VERSION/pixmaps/blogger.png \
      /usr/share/pixmaps/gaim/status/default

) > $C_FIFO 2>&1
