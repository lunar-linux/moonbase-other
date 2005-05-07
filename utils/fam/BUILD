(

  patch_it $SOURCE_CACHE/$SOURCE2 1
  
  libtoolize --force &&
  rm -fr missing &&
  export WANT_AUTOCONF_2_5=1 &&
  export WANT_AUTOMAKE_1_5=1 &&
  aclocal &&
  autoconf &&
  automake --add-missing &&
  
  default_build  

) > $C_FIFO 2>&1
