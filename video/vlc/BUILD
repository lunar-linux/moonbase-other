sedit "s:FLAC/FLAC:FLAC:g" modules/codec/flac.c &&

if in_depends $MODULE lua; then
  export LUA_LIBS+=" /usr/lib/liblua.so" &&
  export LUA_CFLAGS+=" -DLUA_COMPAT_ALL=1"
fi &&

if in_depends $MODULE samba ; then
  export SMBCLIENT_LIBS+=" /usr/lib/libsmbclient.so" &&
  export SMBCLIENT_CFLAGS+=" -I/usr/include/libsmbclient.h"
fi &&

if module_installed live555; then
  CPPFLAGS_live555="-I/usr/lib/live/liveMedia -I/usr/lib/live/groupsock -I/usr/lib/live/BasicUsageEnvironment -I/usr/lib/live/UsageEnvironment"
fi &&

if in_depends vlc qt4; then
 . /etc/profile.d/qt4.rc
fi &&

OPTS+=" --enable-xvideo --enable-realrtsp --disable-sid" &&

default_build &&

sedit "s:Categories=:Categories=Multimedia;:" /usr/share/applications/vlc.desktop &&

unset LUA_LIBS &&
unset LUA_CFLAGS
