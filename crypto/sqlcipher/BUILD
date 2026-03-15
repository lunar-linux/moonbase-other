export CFLAGS="${CFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2} -Wno-incompatible-pointer-types"
export CXXFLAGS="${CXXFLAGS/_FORTIFY_SOURCE=3/_FORTIFY_SOURCE=2}"
export CPPFLAGS="$CPPFLAGS \
    -DSQLITE_ENABLE_COLUMN_METADATA=1 \
    -DSQLITE_ENABLE_UNLOCK_NOTIFY \
    -DSQLITE_ENABLE_DBSTAT_VTAB=1 \
    -DSQLITE_ENABLE_FTS3_TOKENIZER=1 \
    -DSQLITE_SECURE_DELETE \
    -DSQLITE_ENABLE_STMTVTAB \
    -DSQLITE_MAX_VARIABLE_NUMBER=250000 \
    -DSQLITE_MAX_EXPR_DEPTH=10000 \
    -DSQLITE_ENABLE_MATH_FUNCTIONS \
    -DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown \
    -DSQLITE_EXTRA_INIT=sqlcipher_extra_init"

export CFLAGS="$CFLAGS -DSQLITE_HAS_CODEC -DSQLITE_TEMP_STORE=2 -DSQLCIPHER_TEST"
export LDFLAGS="$LDFLAGS -lcrypto"

# Specified locations to not conflict with sqlite
OPTS+=" --prefix=/usr \
        --dll-basename=libsqlcipher \
        --fts3 \
        --fts4 \
        --fts5 \
        --rtree \
        --with-tempstore=yes \
        --disable-static \
        --enable-rtree \
        --enable-json"


default_config
sedit 's;//zipfs:;/usr;' Makefile &&

#default_make
make &&

#Do this cause it will stomp on sqlite and to some manual stuff
make DESTDIR=$MODULE-$VERSION install &&

# Fix pkg-config file: rename and update references
sed -i -e 's/-lsqlite3/-lsqlcipher/g' \
    -e 's|includedir=.*|includedir=${prefix}/include/sqlcipher|' \
    "$MODULE-$VERSION/usr/lib/pkgconfig/sqlite3.pc" &&

prepare_install

mv -v "$MODULE-$VERSION/usr/lib/pkgconfig/sqlite3.pc" /usr/lib/pkgconfig/sqlcipher.pc &&

#Of course lets not rename binaries and such to match the apps name
mv -v "$MODULE-$VERSION/usr/bin/sqlite3" /usr/bin/sqlcipher &&

# Move headers to sqlcipher subdirectory to avoid conflict with sqlite
install -vd /usr/include/sqlcipher &&
mv -v "$MODULE-$VERSION/usr/include/sqlite3.h" /usr/include/sqlcipher/ &&
mv -v "$MODULE-$VERSION/usr/include/sqlite3ext.h" /usr/include/sqlcipher/ &&

# Fix TCL module: rename to match old package layout and fix soname
#mv -v "$MODULE-$VERSION/usr/lib/tcl/tcl_library/sqlite3.51.2/sqlite3.51.2" "$MODULE-$VERSION/usr/lib/tcl8.6/sqlite3"
#mv -v "$MODULE-$VERSION/usr/lib/tcl8.6/sqlite3/libsqlite3.51.2.so" \
#      "$MODULE-$VERSION/usr/lib/tcl8.6/sqlite3/libtclsqlite3.so"
#patchelf --set-soname libtclsqlite3.so \
#    "$MODULE-$VERSION/usr/lib/tcl8.6/sqlite3/libtclsqlite3.so"

#And some libs
mv -v "$MODULE-$VERSION/usr/lib/libsqlcipher.so" /usr/lib/ &&
mv -v "$MODULE-$VERSION/usr/lib/libsqlcipher.so.0" /usr/lib/ &&
mv -v "$MODULE-$VERSION/usr/lib/libsqlcipher.so.3.51.2" /usr/lib/ &&

# Install sqlcipher man page instead of sqlite3
rm -v "$MODULE-$VERSION/usr/share/man/man1/sqlite3.1"
install -vDm644 sqlcipher.1 /usr/share/man/man1/sqlcipher.1
