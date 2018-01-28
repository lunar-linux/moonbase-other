
OPTS+=" --enable-xvideo --enable-avcodec --enable-realrtsp --disable-sid --disable-rpath" &&

default_build &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

unset LUA_LIBS &&
unset LUA_CFLAGS
