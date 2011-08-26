(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&
  sed -i "118i #include <sys/time.h>" libpiave/piave_base.hh &&
  sed -i "37i #include <sys/time.h>" libpiave/piave_base.cc libpiave/storybase.hh &&

  ./configure  --prefix=/usr        &&
#  sedit 's/gcc/g++/' Makefile       &&
  default_make

) > $C_FIFO 2>&1
