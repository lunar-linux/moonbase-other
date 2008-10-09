(

  default_build &&
  strip lemon &&
  install -m 755 lemon /usr/bin &&
  install -m 644 sqlite3.1 /usr/share/man/man1 &&

  sedit "s/Version\: 3.5/Version\: $VERSION/" /usr/lib/pkgconfig/sqlite3.pc

) > $C_FIFO 2>&1
