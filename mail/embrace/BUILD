(

  # just in case the user's ENV isn't set up very nicely
  export PATH=${E17_PREFIX:-/opt/lunar/enlightenment}/bin:$PATH
  export CPPFLAGS="$CPPFLAGS -I${E17_PREFIX:-/opt/lunar/enlightenment}/include"
  export LDFLAGS="$LDFLAGS -L${E17_PREFIX:-/opt/lunar/enlightenment}/lib"

  default_build

) > $C_FIFO 2>&1
