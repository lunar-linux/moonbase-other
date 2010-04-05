(

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
