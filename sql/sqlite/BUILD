LDFLAGS+=" -ldl"

if [ "$USE_SEC_DEL" == "y" ]; then
  CPPFLAGS+=" -DSQLITE_SECURE_DELETE"
fi

if [ "$USE_UNLOCK" == "y" ] ; then
  CPPFLAGS+=" -DSQLITE_ENABLE_UNLOCK_NOTIFY"
fi

export CPPFLAGS+=" -DSQLITE_ENABLE_DBSTAT_VTAB=1 \
                   -DSQLITE_ENABLE_FTS3_TOKENIZER=1 \
                   -DSQLITE_ENABLE_MEMORY_MANAGEMENT=1 \
                   -DSQLITE_ENABLE_BATCH_ATOMIC_WRITE=1 \
                   -DSQLITE_MAX_VARIABLE_NUMBER=250000 \
                   -DSQLITE_MAX_EXPR_DEPTH=10000 \
                   -DSQLITE_ENABLE_COLUMN_METADATA=1 \
                   -DSQLITE_ENABLE_FTS3=1 \
                   -DSQLITE_ENABLE_FTS4=1 \
                   -DSQLITE_ENABLE_FTS5=1" &&

OPTS+="	--disable-static \
	--enable-fts3 \
	--enable-fts4 \
	--enable-fts5 \
	--enable-rtree \
	--enable-json1"

default_build &&

install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1
