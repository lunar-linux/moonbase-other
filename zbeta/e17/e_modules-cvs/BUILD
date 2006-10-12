(

  export PATH="$MODULE_PREFIX/bin:$PATH"
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"

  # the following are known not to properly compile at this time
  MODULES_NOT_TO_BUILD="calendar engage"

  for mod in $MODULES_NOT_TO_BUILD ; do
    rm -f "${mod}/autogen.sh"
  done

  default_cvs_build

) > $C_FIFO 2>&1
