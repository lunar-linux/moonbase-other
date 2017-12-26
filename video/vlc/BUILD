
OPTS+=" --enable-xvideo --enable-realrtsp --disable-sid --disable-rpath" &&
export PKG_CONFIG_PATH="/usr/lib/ffmpeg2.8/pkgconfig" &&
autoreconf -if &&
default_build &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

unset LUA_LIBS &&
unset LUA_CFLAGS
