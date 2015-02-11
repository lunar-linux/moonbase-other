OPTS+=" --disable-static" &&

# For "Version: 3.6.11" in /usr/lib/pkgconfig/sqlite3.pc
sedit 's:@RELEASE@:@VERSION@:' sqlite3.pc.in &&

LDFLAGS+=" -ldl" &&

sedit 's:AM_CFLAGS = :AM_CFLAGS = -DSQLITE_ENABLE_COLUMN_METADATA=1 :' Makefile.am Makefile.in

if [ "$USE_SEC_DEL" == "y" ]; then
  sedit 's:AM_CFLAGS = :AM_CFLAGS = -DSQLITE_SECURE_DELETE :' Makefile.am Makefile.in
fi &&

if [ "$USE_UNLOCK" == "y" ] ; then
  sedit 's:AM_CFLAGS = :AM_CFLAGS = -DSQLITE_ENABLE_UNLOCK_NOTIFY :' Makefile.am Makefile.in
fi &&

default_build  &&

install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1
