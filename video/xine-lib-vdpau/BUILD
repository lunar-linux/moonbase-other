(

#  sedit 's/\$sarchopt=\$archopt_val//' m4/optimizations.m4 &&
  if module_installed kdelibs3; then
    . /etc/profile.d/kde3.rc
    OPTS+=" --with-arts"
  fi &&
unset CFLAGS &&
  OPTS+=" --enable-static --with-xv-path=/usr/X11/lib --enable-mmap --enable-antialiasing"
  ./autogen.sh &&
  default_build

) > $C_FIFO 2>&1
