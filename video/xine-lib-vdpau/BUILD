(

#  sedit 's/\$sarchopt=\$archopt_val//' m4/optimizations.m4 &&

  unset CFLAGS &&

  OPTS+=" --enable-static --with-xv-path=/usr/X11/lib --enable-mmap --enable-antialiasing"

  ./autogen.sh &&

  default_build

) > $C_FIFO 2>&1
