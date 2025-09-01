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
        --includedir=/usr/include/sqlcipher \
        --libdir=/usr/lib/sqlcipher \
        --bindir=/usr/bin/sqlcipher \
        --with-tempstore=yes \
        --disable-static \
        --enable-rtree \
        --enable-json"


default_config
sedit 's;//zipfs:;/usr;' Makefile &&

default_make
