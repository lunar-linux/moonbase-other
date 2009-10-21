(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  sed -i "11i #include <climits>" libqalculate/Number.cc &&

  autoconf &&
  default_build

) > $C_FIFO 2>&1
