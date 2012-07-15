(

  if in_depends $MODULE espeak; then
     sedit "s:ESPEAK *=.*$:ESPEAK = yes:" config.make
  else
     sedit "s:ESPEAK *=.*$:ESPEAK = no:" config.make
  fi &&

  . /usr/share/GNUstep/Makefiles/GNUstep.sh &&

  make -f Makefile release &&

  prepare_install &&

  mkdir -p /usr/lib/GNUstep/Applications/ &&
  cp -rv oolite.app /usr/lib/GNUstep/Applications/oolite &&

  install -Dm0755 debian/extra/games/oolite /usr/games/oolite &&
  install -Dm0644 installers/FreeDesktop/oolite.desktop /usr/share/applications/oolite.desktop &&
  install -Dm0644 installers/FreeDesktop/oolite-icon.png /usr/share/pixmaps/oolite-icon.png &&
  install -Dm0644 debian/oolite.6 /usr/share/man/man6/oolite.6 &&

  gather_docs Doc/AdviceForNewCommanders.pdf Doc/OoliteReadMe.pdf Doc/OoliteRS.pdf Doc/CHANGELOG.TXT

) > $C_FIFO 2>&1
