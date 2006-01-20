(
  
  export PATH=$MODULE_PREFIX/bin:$PATH
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"
  export USER=nobody

  OPTS="$OPTS  --with-x"

  default_cvs_build

) > $C_FIFO 2>&1
