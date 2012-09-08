(

  OPTS+=" --disable-static" &&

  # and from http://bugs.sourcemage.org/show_bug.cgi?id=15263
  sedit 's/^\(.*strcasestr\)/\/\/ This is in libc and conflicts: \1 /' common/mp4v2/mpeg4ip.h &&

  sedit "s/\r//g" bootstrap Makefile.am configure.in &&
  ./bootstrap         &&
  default_build

) > $C_FIFO 2>&1

