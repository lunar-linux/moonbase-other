(

  export PATH="$MODULE_PREFIX/bin:$PATH"
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"

  # the "bling" module doesn't yet build
  rm bling/autogen.sh

  default_cvs_build

) > $C_FIFO 2>&1
