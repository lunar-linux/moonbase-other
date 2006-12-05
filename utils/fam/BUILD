(

  libtoolize --force &&
  rm -fr missing &&
  rm configure &&
  aclocal &&
  autoconf &&
  automake --add-missing &&
  
  default_build  

) > $C_FIFO 2>&1
