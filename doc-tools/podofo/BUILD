# lua 5.2 removed deprecated functions
sedit "s:lua_open:luaL_newstate:; s:luaL_getn:luaL_len:" tools/podofocolor/luaconverter.cpp &&
sedit "s:lua_open:luaL_newstate:"                        tools/podofoimpose/planreader_lua.cpp &&

. /etc/profile.d/qt4.rc &&

LDFLAGS+=" -ldl" &&

if [ `arch` == "x86_64" ] ; then
  OPTS+=" -DWANT_LIB64=ON" &&
  CFLAGS+=" -fPIC"
fi &&

OPTS+=" -DPODOFO_BUILD_SHARED=ON" &&

default_cmake_build
