(

  OPTS="$OPTS --enable-gtk2 --disable-gnome --disable-artsc --with-static-prpls=gg,irc,jabber,msn,napster,novell,oscar,yahoo,zephyr,toc --with-dynamic-prpls=gg,irc,jabber,msn,napster,novell,oscar,yahoo,zephyr,toc"
  default_config &&
  make &&
  make -C gaim-blogger-$VERSION &&
	prepare_install &&
  make install &&
  install -m 755 gaim-blogger-$VERSION/libblogger.so /usr/lib/gaim &&
  install -m 644 gaim-blogger-$VERSION/pixmaps/blogger.png \
      /usr/share/pixmaps/gaim/status/default

) > $C_FIFO 2>&1
