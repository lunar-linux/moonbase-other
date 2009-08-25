(

  sedit "s:\./data:/usr/share/games/neverball:" Makefile &&
  sedit "s:\./locale:/usr/share/locale:" Makefile &&

  make             &&
  prepare_install  &&

  mkdir -p /usr/share/games/neverball/ /usr/share/man/man6/ &&
  # Fix permissions on maps, which are messed up during compilation
  find data/ -type f -exec chmod 644 '{}' \; &&
  cp -ra data/* /usr/share/games/neverball/  &&

  install -m0755 -t /usr/games/ neverball neverputt mapc &&
  install -m0644 -t /usr/share/man/man6/ dist/neverball.6 dist/neverputt.6 &&
  install -D -m0644 dist/mapc.1 /usr/share/man/man1/mapc.1 &&
  install -D -m0644 dist/neverball_64.png /usr/share/pixmaps/neverball.png &&
  install -D -m0644 dist/neverball.desktop /usr/share/applications/neverball.desktop &&
  
  mv -f doc/* . &&
  # Prevent empty doc directory from being included automatically
  rmdir doc &&
  gather_docs AUTHORS MANUAL CHANGES README

) > $C_FIFO 2>&1
