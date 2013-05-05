# build shared object
patch_it $SOURCE2 0 &&
sedit "s@CFLAGS=@CFLAGS+=@" src/Makefile &&
CFLAGS+=" -fPIC" &&
sedit "s:TO_LIB=:\0 liblua.so.${VERSION%.*}:" Makefile &&

sedit "s:/usr/local:/usr:" Makefile src/luaconf.h &&

(
cat > lua.pc <<EOF
prefix=/usr
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: Lua
Description: An Extensible Extension Language
Version: $VERSION
Requires:
Libs: -L\${libdir} -llua -lm
Cflags: -I\${includedir}
EOF
) &&

make linux      &&

prepare_install &&
make install    &&

ln -s liblua.so.${VERSION%.*} /usr/lib/liblua.so &&

install -Dm0644 lua.pc /usr/lib/pkgconfig/
