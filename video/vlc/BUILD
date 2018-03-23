OPTS+=" --enable-xvideo \
        --enable-avcodec \
        --enable-ncurses \
        --enable-realrtsp \
        --disable-sid \
        --disable-update-check \
        --disable-rpath" &&

default_build &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

unset LUA_LIBS &&
unset LUA_CFLAGS &&

if in_depends $MODULE qt5; then 
  sedit "s:/usr/bin/vlc:/usr/bin/qvlc:" /usr/share/applications/vlc.desktop
fi
