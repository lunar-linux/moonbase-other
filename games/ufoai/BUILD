# configure is a bit 'special'

OPTS+=" --disable-dependency-tracking \
	--disable-paranoid \
	--disable-memory \
	--disable-ufomodel \
	--disable-ufoslicer"

./configure --prefix=/usr \
            --bindir=/usr/games \
            --libdir=/usr/lib \
            --datadir=/usr/share/games/ufoai \
            --localedir=/usr/share/games/ufoai/base/i18n \
            --enable-release \
            --disable-testall \
            $OPTS &&

default_make &&

install -m644 debian/ufoai.desktop debian/ufoded.desktop /usr/share/applications &&
install -m644 debian/ufoai.xpm debian/ufoded.xpm /usr/share/pixmaps &&
install -m644 debian/ufo.6 debian/ufoded.6 /usr/share/man/man6 &&

if in_depends $MODULE gtksourceview2; then
  install -m644 debian/uforadiant.desktop /usr/share/applications &&
  install -m644 debian/uforadiant.xpm /usr/share/pixmaps &&
  install -m644 debian/uforadiant.xpm /usr/share/man/man6 &&
  cp -r radiant /usr/share/games/ufoai/
fi
