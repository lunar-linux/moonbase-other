LDFLAGS+=" -ldl"

export CPPFLAGS+=" -DSQLITE_ENABLE_DBSTAT_VTAB=1 \
                   -DSQLITE_ENABLE_FTS3_TOKENIZER=1 \
                   -DSQLITE_ENABLE_FTS3_PARENTHESIS \
                   -DSQLITE_ENABLE_MEMORY_MANAGEMENT=1 \
                   -DSQLITE_ENABLE_BATCH_ATOMIC_WRITE=1 \
                   -DSQLITE_MAX_VARIABLE_NUMBER=250000 \
                   -DSQLITE_ENABLE_LOAD_EXTENSION \
                   -DSQLITE_ENABLE_COLUMN_METADATA=1 \
                   -DSQLITE_MAX_EXPR_DEPTH=10000 \
                   -DSQLITE_MAX_VARIABLE_NUMBER=250000 \
                   -DSQLITE_ENABLE_MATH_FUNCTIONS \
                   -DSQLITE_ENABLE_UNLOCK_NOTIFY \
                   -DSQLITE_ENABLE_STMTVTAB \
                   -DSQLITE_ENABLE_STAT4 \
                   -DSQLITE_SECURE_DELETE \
                   -DSQLITE_ENABLE_FTS3=1 \
                   -DSQLITE_ENABLE_FTS4=1 \
                   -DSQLITE_ENABLE_FTS5=1 \
                   -DSQLITE_ENABLE_SESSION \
                   -DSQLITE_ENABLE_PREUPDATE_HOOK"

OPTS+="	--disable-static \
        --enable-fts3 \
        --enable-fts4 \
        --enable-fts5 \
        --enable-rtree \
        --enable-threadsafe \
        --enable-readline"

default_config &&

default_make &&

install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1/
