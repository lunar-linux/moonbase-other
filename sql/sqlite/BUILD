(
  # For "Version: 3.6.11" in /usr/lib/pkgconfig/sqlite3.pc
  sedit 's:@RELEASE@:@VERSION@:' sqlite3.pc.in &&

  LDFLAGS+=" -ldl" &&

  default_build  &&
  install -m 644 $SCRIPT_DIRECTORY/sqlite3.1 /usr/share/man/man1

) > $C_FIFO 2>&1
