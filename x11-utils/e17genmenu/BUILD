(

  E17_DIR=${E17_PREFIX:-/opt/lunar/enlightenment}
  export PATH=$E17_DIR/bin:$PATH
  export CPPFLAGS="$CPPFLAGS -I$E17_DIR/include"
  export LDFLAGS="$LDFLAGS -L$E17_DIR/lib"
  
  default_cvs_build

) > $C_FIFO 2>&1
