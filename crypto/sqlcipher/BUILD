# Adding -Wno- incompatible-pointer-types until next release
CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_EXTRA_INIT=sqlcipher_extra_init -DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown -Wno-incompatible-pointer-types"
LDFLAGS="-lcrypto" &&

# Specified locations to not conflict with sqlite
OPTS+=" --prefix=/usr \
        --includedir=/usr/include/sqlcipher \
        --libdir=/usr/lib/sqlcipher \
        --bindir=/usr/bin/sqlcipher \
        --with-tempstore=yes \
        --disable-static"

default_build
