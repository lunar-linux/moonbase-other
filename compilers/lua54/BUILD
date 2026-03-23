sed -i '/#define LUA_ROOT/s:/usr/local/:/usr/:' src/luaconf.h &&
sed -r -e '/^LUA_(SO|A|T)=/ s/lua/lua5.4/' -e '/^LUAC_T=/ s/luac/luac5.4/' -i src/Makefile &&

cat > lua.pc << "EOF"
V=5.4
R=5.4.8

prefix=/usr
INSTALL_BIN=${prefix}/bin
INSTALL_INC=${prefix}/include/lua5.4
INSTALL_LIB=${prefix}/lib
INSTALL_MAN=${prefix}/share/man/man1
INSTALL_LMOD=${prefix}/share/lua/${V}
INSTALL_CMOD=${prefix}/lib/lua/${V}
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include/lua5.4

Name: Lua
Description: An Extensible Extension Language
Version: ${R}
Requires:
Libs: -L${libdir} -llua5.4 -lm -ldl
Cflags: -I${includedir}
EOF

make MYCFLAGS="-fPIC" linux &&

prepare_install &&

make TO_BIN='lua5.4 luac5.4'                     \
     TO_LIB="liblua5.4.so liblua5.4.so.5.4 liblua5.4.so.5.4.8" \
     INSTALL_DATA="cp -d"                        \
     INSTALL_TOP=/usr                \
     INSTALL_INC=/usr/include/lua5.4 \
     INSTALL_MAN=/usr/share/man/man1 \
     install &&

install -Dm644 lua.pc /usr/lib/pkgconfig/lua54.pc &&

mkdir -pv /usr/share/doc/lua-5.4.8 &&
cp -v doc/*.{html,css,gif,png} /usr/share/doc/lua-5.4.8 &&

ln -s liblua5.4.so /usr/lib/liblua.so.5.4 &&
ln -s liblua5.4.so /usr/lib/liblua.so.5.4.8

mv /usr/share/man/man1/{lua.1,lua5.4.8} &&
mv /usr/share/man/man1/{luac.1,luac5.4.8}
