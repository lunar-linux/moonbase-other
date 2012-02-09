(

  mkdir -p /usr/share/foomatic/db &&
  export LIBDIR+=" /usr/share/foomatic/db" &&

  default_build &&

  cd /usr/share/foomatic/db &&
  foomatic-compiledb -f

) > $C_FIFO 2>&1
