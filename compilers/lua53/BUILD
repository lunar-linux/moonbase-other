sed -i '/#define LUA_ROOT/s:/usr/local/:/usr/:' src/luaconf.h &&
sed -r -e '/^LUA_(SO|A|T)=/ s/lua/lua5.3/' -e '/^LUAC_T=/ s/luac/luac5.3/' -i src/Makefile &&

cat > lua.pc << "EOF"
V=5.3
R=5.3.6

prefix=/usr
INSTALL_BIN=${prefix}/bin
INSTALL_INC=${prefix}/include/lua5.3
INSTALL_LIB=${prefix}/lib
INSTALL_MAN=${prefix}/share/man/man1
INSTALL_LMOD=${prefix}/share/lua/${V}
INSTALL_CMOD=${prefix}/lib/lua/${V}
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include/lua5.3

Name: Lua
Description: An Extensible Extension Language
Version: ${R}
Requires:
Libs: -L${libdir} -llua5.3 -lm -ldl
Cflags: -I${includedir}
EOF

make MYCFLAGS="-fPIC" linux &&

prepare_install &&

make TO_BIN='lua5.3 luac5.3'                     \
     TO_LIB="liblua5.3.so liblua5.3.so.5.3 liblua5.3.so.5.3.6" \
     INSTALL_DATA="cp -d"                        \
     INSTALL_TOP=/usr                \
     INSTALL_INC=/usr/include/lua5.3 \
     INSTALL_MAN=/usr/share/man/man1 \
     install &&

install -Dm644 lua.pc /usr/lib/pkgconfig/lua53.pc &&

mkdir -pv /usr/share/doc/lua-5.3.6 &&
cp -v doc/*.{html,css,gif,png} /usr/share/doc/lua-5.3.6 &&

ln -s liblua5.3.so /usr/lib/liblua.so.5.3   &&
ln -s liblua5.3.so /usr/lib/liblua.so.5.3.6 

mv /usr/share/man/man1/{lua.1,lua5.3.6} &&
mv /usr/share/man/man1/{luac.1,luac5.3.6}
