(

  export PATH=$MODULE_PREFIX/bin:$PATH
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"
  export USER=nobody

  default_cvs_build

  install -m0755 build_icon.sh $MODULE_PREFIX/bin

) > $C_FIFO 2>&1
