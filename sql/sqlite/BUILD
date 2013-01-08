(
  OPTS+=" --disable-static" &&

  # For "Version: 3.6.11" in /usr/lib/pkgconfig/sqlite3.pc
  sedit 's:@RELEASE@:@VERSION@:' sqlite3.pc.in &&

  LDFLAGS+=" -ldl" &&

  if [ $USE_SEC_DEL == "y" ]; then
    CFLAGS+=" -DSQLITE_SECURE_DELETE"
  fi &&

  if [ $USE_UNLOCK == "y" ] ; then
    CFLAGS+=" -DSQLITE_ENABLE_UNLOCK_NOTIFY"
  fi &&

  CFLAGS+=" -DSQLITE_ENABLE_COLUMN_METADATA=1" &&

  default_build  &&
  install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1

) > $C_FIFO 2>&1
