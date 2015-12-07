
# It blows up on qt5
if module_installed qt4 ; then
  OPTS+=" --with-qt=qt4"
 else
  OPTS+=" --with-qt=no"
fi &&

# Lua-5.3 changed to luaL_checkinteger
if in_depends $MODULE lua ; then
  sedit "s:t_num = luaL_checkint:t_num = luaL_checkinteger:g" term/lua.trm
fi &&

default_build
