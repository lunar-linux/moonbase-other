(
cat > lua.pc <<EOF
prefix=/usr
exec_prefix=\${prefix}
libdir=\${prefix}/lib
includedir=\${prefix}/include

Name: Lua
Description: An Extensible Extension Language
Version: $VERSION
Requires:
Libs: -L\${libdir} -llua -lm
Cflags: -I\${includedir}
EOF
) &&

MAJORVER=${VERSION%.*}

# quite a lot of packages still use lua 5.1 and 5.2 API, enable 5.1 and 5.2 compat mode
make MYCFLAGS="$CFLAGS -fPIC -DLUA_COMPAT_5_2 -DLUA_COMPAT_5_1" MYLDFLAGS="$LDFLAGS" linux &&

prepare_install &&

make \
  TO_LIB="liblua.a liblua.so liblua.so.$MAJORVER liblua.so.$VERSION" \
  INSTALL_DATA='cp -d' \
  INSTALL_TOP=/usr \
  INSTALL_MAN=/usr/share/man/man1 \
  install &&

install -Dm0644 lua.pc /usr/lib/pkgconfig/

install -Dm0644 $SCRIPT_DIRECTORY/bit.lua /usr/lib/lua/$MAJORVER/
