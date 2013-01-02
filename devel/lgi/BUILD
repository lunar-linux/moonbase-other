(

  make LUA_LIBDIR=/usr/lib/lua/5.1 \
       LUA_SHAREDIR=/usr/share/lua/5.1 &&
  prepare_install &&
  make LUA_LIBDIR=/usr/lib/lua/5.1 \
       LUA_SHAREDIR=/usr/share/lua/5.1 install &&
  install -Dm755 tools/dump-typelib.lua /usr/bin/dump-typelib

) > $C_FIFO 2>&1
