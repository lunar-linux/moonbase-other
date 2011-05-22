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

  sedit "s:#make:make:" php_ext/make_module.sh &&

  default_build  &&

# The install misses this header.
  install -m 644 $SOURCE_DIRECTORY/src/ming_config.h /usr/include/

) > $C_FIFO 2>&1
