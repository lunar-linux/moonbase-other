(

  cd src/ &&

  # we don't have libboost_thread single threaded
  sedit "s:\(-l *boost_thread[^ ]*\):\1-mt:" bitcoin-qt.pro src/makefile.unix &&
  # see DEPENDS
  OPTS+=" USE_UPNP=-" &&

  cd src/ &&
  make -f makefile.unix $OPTS &&
  cd .. &&

  if in_depends $MODULE "qt4" ; then
     # RELEASE=1 tries to build everything static, but we have no static libs
     qmake $OPTS &&
     make
  fi &&

  prepare_install &&

  install -Dm0755 src/bitcoind /usr/bin/bitcoind &&

  install -Dm0644 contrib/debian/manpages/bitcoind.1 /usr/share/man/man1/bitcoind.1 &&
  install -Dm0644 contrib/debian/manpages/bitcoin.conf.5 /usr/share/man/man5/bitcoin.conf.5 &&

  if in_depends $MODULE "qt4" ; then
     install -Dm0755 bitcoin-qt /usr/bin/bitcoin-qt &&
     install -Dm0644 share/pixmaps/bitcoin80.xpm /usr/share/pixmaps/bitcoin80.xpm &&
     install -Dm0644 share/pixmaps/bitcoin32.xpm /usr/share/pixmaps/bitcoin32.xpm &&
     install -Dm0644 contrib/debian/bitcoin-qt.desktop /usr/share/applications/bitcoin-qt.desktop
  fi &&

  cd contrib/ &&
  install -Dm0644 debian/examples/bitcoin.conf /usr/share/doc/$MODULE/bitcoin.conf.example &&
  gather_docs pyminer bitrpc

) > $C_FIFO 2>&1
