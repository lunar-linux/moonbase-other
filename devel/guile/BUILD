(

  sedit "s/AC_CONFIG_MACRO_DIR(\[m4\])/AC_CONFIG_MACRO_DIR([guile-config])/" configure.in &&
  libtoolize --force &&
  aclocal &&
  automake &&
  autoconf &&
  default_build

) > $C_FIFO 2>&1
