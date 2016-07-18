
  ACLOCAL_VER=`lvu version automake|cut -c 1-4` &&
  sedit "s:1.10:$ACLOCAL_VER:" configure &&

  touch NEWS &&

  autoreconf -fi &&

  default_build &&

  install -Dm644 $SCRIPT_DIRECTORY/cgilib.pc /usr/share/pkgconfig/
