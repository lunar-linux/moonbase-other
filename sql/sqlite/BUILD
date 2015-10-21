OPTS+=" --disable-static" &&

LDFLAGS+=" -ldl" &&

if [ "$USE_SEC_DEL" == "y" ]; then
  CFLAGS+=" -DSQLITE_SECURE_DELETE"
fi &&

if [ "$USE_UNLOCK" == "y" ] ; then
  CFLAGS+=" -DSQLITE_ENABLE_UNLOCK_NOTIFY"
fi &&

export CFLAGS+=" -DSQLITE_ENABLE_FTS3=1 \
                 -DSQLITE_ENABLE_COLUMN_METADATA=1 \
                 -DSQLITE_ENABLE_DBSTAT_VTAB=1 \
                 -DSQLITE_ENABLE_RTREE=1" &&
default_build &&

install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1
