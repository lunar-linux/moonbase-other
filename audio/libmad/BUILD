(
  OPTS="$OPTS  --disable-debugging --enable-accuracy"

  patch_it $SOURCE2 1 &&

  #GCC 4.3 doesn't have -fforce-mem
  sedit 's:-fforce-mem::g' configure.ac

  libtoolize --force --copy &&
  aclocal &&
  touch NEWS && 
  touch AUTHORS &&
  touch ChangeLog &&
  automake --add-missing &&
  autoreconf &&
  default_build

) > $C_FIFO 2>&1
