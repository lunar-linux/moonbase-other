(

  export PATH=$MODULE_PREFIX/bin:$PATH
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"
  export USER=nobody

  # This file needs to exists or Makefile.in will not be created.
  touch ChangeLog

  default_cvs_build

) > $C_FIFO 2>&1
