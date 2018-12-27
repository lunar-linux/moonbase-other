export CXXFLAGS+=" -std=c++11"

unset LUA_LIBS &&
unset LUA_CFLAGS &&

OPTS+=" --enable-xcb \
        --enable-xvideo \
        --enable-avcodec \
        --enable-ncurses \
        --enable-realrtsp \
        --disable-sid \
        --disable-update-check \
        --disable-rpath"

default_build &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

if in_depends $MODULE qt5; then
  sedit "s:/usr/bin/vlc:/usr/bin/qvlc:" /usr/share/applications/vlc.desktop
fi
