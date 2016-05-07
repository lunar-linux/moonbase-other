LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//"`

OPTS+=" --without-gtk \
        --without-gnome \
        --enable-widgets=athena \
        --enable-dialogs=athena \
        --enable-menubars=lucid \
        --enable-external-widget \
        --enable-scrollbars=lucid \
        --disable-sound \
        --with-x \
        --with-pop \
        --with-zlib \
        --with-msw=no \
        --with-dynamic \
        --with-athena=xaw \
        --with-xft=emacs,tabs,menubars,gauges" &&

default_build &&

rm /usr/bin/{b2m,ctags,etags}
rm /usr/share/man/man1/ctags.1*

install -D -m644 $SCRIPT_DIRECTORY/$MODULE.desktop /usr/share/applications/$MODULE.desktop

install -d -m755 /usr/share/pixmaps &&
cp -f /usr/share/xemacs-${VERSION%.*}-b${VERSION##*.}/etc/xemacs-icon.xpm /usr/share/pixmaps/xemacs-icon.xpm
