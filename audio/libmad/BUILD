(
  OPTS="$OPTS  --disable-debugging --enable-accuracy"

  patch_it $SOURCE2 1 &&
  aclocal &&
  touch NEWS && 
  touch AUTHORS &&
  touch ChangeLog &&
  automake --add-missing &&
  autoreconf &&
  default_build

) > $C_FIFO 2>&1
