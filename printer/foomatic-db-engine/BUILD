
  sedit "s:(CFLAGS) -o:(CFLAGS) \$(LDFLAGS) -o:g" Makefile.in &&

  mkdir -p /usr/share/foomatic/db &&
  export LIBDIR+=" /usr/share/foomatic/db" &&

  autoreconf -fi &&
  default_build &&

  cd /usr/share/foomatic/db &&
  foomatic-compiledb -f
