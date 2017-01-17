make LUA_LIBDIR=/usr/lib/lua/5.3 \
     LUA_SHAREDIR=/usr/share/lua/5.3 &&
  
prepare_install &&

make LUA_LIBDIR=/usr/lib/lua/5.3 \
     LUA_SHAREDIR=/usr/share/lua/5.3 install &&

install -Dm755 tools/dump-typelib.lua /usr/bin/dump-typelib
