
  if in_depends $MODULE %PHP; then
    cd php_ext &&
    php-ext-source-r2_phpize &&
    cd ../
  fi &&

  if in_depends $MODULE tcl ; then
    TCL_VER="`lvu version perl |cut -c 1-3`"
    sedit "s:tcl8.4:tcl$TCL_VER:g" configure
    export TCL_LIB_DIR=/usr/lib/tcl$TCL_VER
  fi &&

  default_build
