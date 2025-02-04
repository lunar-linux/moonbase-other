export CFLAGS+=" -fpermissive"

default_build &&

if in_depends $MODULE libX11; then
  install -D -m644 $SCRIPT_DIRECTORY/links.desktop /usr/share/applications/links.desktop &&
  install -m644 links_16x16_1.xpm links_16x16_2.xpm links_32x32.xpm /usr/share/pixmaps/
fi
