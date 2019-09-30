MAJORVER=${VERSION%.*}

make MYCFLAGS="$CFLAGS -fPIC" MYLDFLAGS="$LDFLAGS" linux &&

prepare_install &&

mv doc/lua.1 doc/lua51.1 &&
mv doc/luac.1 doc/luac51.1 &&
mv src/lua src/lua5.1 &&
mv src/luac src/luac5.1 &&
mv src/liblua.a src/liblua5.1.a

make \
  TO_BIN='lua5.1 luac5.1' \
  TO_LIB="liblua5.1.a liblua.so.$VERSION" \
  INSTALL_DATA='cp -d' \
  INSTALL_TOP=/usr \
  INSTALL_INC=/usr/include/lua5.1 \
  install &&

install -Dm0644 etc/lua.pc /usr/lib/pkgconfig/$MODULE.pc &&

cd /usr/lib
ln -sf liblua.so.$VERSION liblua.so.$MAJORVER &&
ln -sf liblua.so.$VERSION liblua5.1.so

