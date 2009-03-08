
(
  
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  mv configure.guess config.guess  &&
  mv configure.sub config.sub      &&

  sedit '/configure.\(guess\|sub\)/d' configure.in  &&

  autoconf    &&
  libtoolize  &&

  default_build

) > $C_FIFO 2>&1
