
OPTS+=" --enable-xcb \
        --enable-xvideo \
        --enable-avcodec \
        --enable-ncurses \
        --enable-realrtsp \
        --disable-sid \
        --disable-rpath \
        --disable-libplacebo \
        --disable-update-check"

default_config &&

# prevent excessive overlinking due to libtool
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

if in_depends $MODULE qt5; then
  sedit "s:/usr/bin/vlc:/usr/bin/qvlc:" /usr/share/applications/vlc.desktop
fi
