OPTS+=" --disable-static --enable-fts5 --enable-json1"   &&

LDFLAGS+=" -ldl" &&

if [ "$USE_SEC_DEL" == "y" ]; then
  CFLAGS+=" -DSQLITE_SECURE_DELETE"
fi &&

if [ "$USE_UNLOCK" == "y" ] ; then
  CFLAGS+=" -DSQLITE_ENABLE_UNLOCK_NOTIFY"
fi &&

# enabling fts4 (Full Text Search) covers versions 4 and 3
# https://bugzilla.mozilla.org/show_bug.cgi?id=414102 gives a clue
# why system provided sqlite can cause problems with those apps such
# firefox, etal.
export CFLAGS+=" -DSQLITE_ENABLE_FTS4=1 \
                 -DSQLITE_ENABLE_FTS3=1 \
                 -DSQLITE_ENABLE_JSON1=1 \
                 -DSQLITE_ENABLE_RTREE=1 \
                 -DSQLITE_ENABLE_DBSTAT_VTAB=1 \
                 -DSQLITE_ENABLE_FTS3_TOKENIZER=1 \
                 -DSQLITE_ENABLE_MEMORY_MANAGEMENT=1 \
                 -DSQLITE_ENABLE_BATCH_ATOMIC_WRITE=1 \
                 -DSQLITE_MAX_VARIABLE_NUMBER=250000 \
                 -DSQLITE_MAX_EXPR_DEPTH=10000 \
                 -DSQLITE_ENABLE_COLUMN_METADATA=1" &&

default_build &&

install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1
