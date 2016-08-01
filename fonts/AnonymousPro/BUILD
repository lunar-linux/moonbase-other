APFONTS=/usr/share/fonts/X11/TTF/$MODULE &&

prepare_install &&

mkdir -p $APFONTS &&

if [ -d old.libraries ]; then
  rmdir old.libraries
fi &&

install -m644 *.ttf $APFONTS &&

mkfontscale $APFONTS &&
mkfontdir $APFONTS
