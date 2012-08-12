(

  scons datadir=/usr/share/games/netpanzer  &&

  prepare_install           &&

  #they don't provide an installation script...
  install -Dm0755 netpanzer /usr/games/ &&

  install -Dd /usr/share/games/netpanzer &&
  cp -rv cache maps pics powerups scripts sound units wads /usr/share/games/netpanzer/ &&

  install -Dm0644 netpanzer.xpm /usr/share/icons/hicolor/32x32/apps/ &&
  install -Dm0644 netpanzer.png /usr/share/icons/hicolor/48x48/apps/ &&

  install -Dm0644 netpanzer.desktop /usr/share/applications/ &&

  install -Dm0644 docs/netpanzer.6 /usr/man/man6/ &&

  unzip $SOURCE_CACHE/$SOURCE2 -d /usr/share/games/netpanzer/

) > $C_FIFO 2>&1
