(

# the funroll-loops is there from the authors of libpng.  Its not my idea!
  export CFLAGS="$CFLAGS -Wall -funroll-loops"
  cp scripts/makefile.linux ./Makefile &&
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  default_make

) > $C_FIFO 2>&1
