(

  make                                                  &&

  prepare_install                                       &&

  mkdir -p /usr/include/cgilib-$VERSION                 &&
  install -m0644 cgi.h /usr/include/cgilib-$VERSION     &&
  install -m0644 libcgi.a /usr/lib/                     &&
  install -m0644 $SCRIPT_DIRECTORY/cgilib.pc /usr/lib/pkgconfig

) > $C_FIFO 2>&1
