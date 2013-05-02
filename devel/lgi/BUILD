(

  make LUA_LIBDIR=/usr/lib/lua/5.2 \
       LUA_SHAREDIR=/usr/share/lua/5.2 &&
  prepare_install &&
  make LUA_LIBDIR=/usr/lib/lua/5.2 \
       LUA_SHAREDIR=/usr/share/lua/5.2 install &&
  install -Dm755 tools/dump-typelib.lua /usr/bin/dump-typelib

) > $C_FIFO 2>&1
