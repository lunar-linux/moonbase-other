OPTS+=" X11_ICON_PREFIX=/usr/share/pixmaps"

make $OPTS PREFIX=/usr -j1 &&

prepare_install &&
mkdir -p /usr/share/$MODULE/templates &&

# GNOME_PREFIX triggers installation of a .desktop file
make install PREFIX=/usr GNOME_PREFIX=/usr
