OPTS+=" X11_ICON_PREFIX=/usr/share/pixmaps"

# desktop shortcut categories
setconf src/tuxpaint.desktop Categories='Game;KidsGame;Graphics;RasterGraphics;'

# fullscreen by default
setconf -u src/tuxpaint.conf fullscreen=true

# location of bash completion files
setconf Makefile COMPLETIONDIR='$(DESTDIR)/usr/share/bash-completion/completions'

# no KDE4-related requirements at installation-time
setconf Makefile ARCH_INSTALL=''

make $OPTS PREFIX=/usr -j1 &&

prepare_install &&
mkdir -p /usr/share/$MODULE/templates &&

# GNOME_PREFIX triggers installation of a .desktop file
make install PREFIX=/usr GNOME_PREFIX=/usr
