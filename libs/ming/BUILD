(

# Fix a make failure on the recent perl bump
  sedit "s:GvCV(gv) =:GvCV(gv) ==:" perl_ext/Exports.c &&

# So it will build when you say yes to Python and alias is set to giflib.
  if in_depends $MODULE giflib ; then
  CFLAGS="$CFLAGS -lgif"     &&
  CXXFLAGS="$CXXFLAGS -lgif" &&
  sedit "s:ungif:gif:" py_ext/setup.py py_ext/setup.py.in
  fi &&

  if in_depends $MODULE tcl ; then
    TCL_VER="`lvu version perl |cut -c 1-3`"
    sedit "s:tcl8.4:tcl$TCL_VER:g" configure
    export TCL_LIB_DIR=/usr/lib/tcl$TCL_VER
  fi &&

  default_build 

) > $C_FIFO 2>&1
