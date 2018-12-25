[[ "$CARCH" != "i686" ]] && EXTRAOPTS="--disable-asm" &&

PYTHON=yes ./configure --prefix=/usr $EXTRAOPTS &&
make GAMEDIR=/usr/games DATADIR=/usr/share/games/liquidwar &&

prepare_install &&

make GAMEDIR=/usr/games DATADIR=/usr/share/games/liquidwar install_nolink
