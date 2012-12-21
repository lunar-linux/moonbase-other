(

  ./configure  --prefix=/usr                  \
               --bindir=/usr/games            \
               --libdir=/usr/lib              \
               --datadir=/usr/share/games/ufoai \
               --localedir=/usr/share/games/ufoai/base/i18n  \
               $OPTS                         &&

  default_make &&

  install -m644 debian/ufoai.desktop debian/ufoded.desktop /usr/share/applications &&
  install -m644 debian/ufoai.xpm debian/ufoded.xpm /usr/share/pixmaps &&
  install -m644 debian/ufo.6 debian/ufoded.6 /usr/share/man/man6 &&

  if [[ "$RADIANT" != "y" ]]; then
    rm -f /usr/games/uforadiant
  else
    install -m644 debian/uforadiant.desktop /usr/share/applications &&
    install -m644 debian/uforadiant.xpm /usr/share/pixmaps &&
    install -m644 debian/uforadiant.xpm /usr/share/man/man6
  fi

) > $C_FIFO 2>&1
