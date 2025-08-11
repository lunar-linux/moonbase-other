# Adding -Wno- incompatible-pointer-types until next release
CFLAGS="-DSQLITE_HAS_CODEC -DSQLITE_EXTRA_INIT=sqlcipher_extra_init -DSQLITE_EXTRA_SHUTDOWN=sqlcipher_extra_shutdown -Wno-incompatible-pointer-types"
LDFLAGS="-lcrypto" &&

OPTS+=" --with-tempstore=yes --disable-static"

default_build
