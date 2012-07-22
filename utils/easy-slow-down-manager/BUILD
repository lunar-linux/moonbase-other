(

  # we want to build the module for the latest kernel, not the one running
  sedit "s:uname -r:readlink /usr/src/linux | cut -d'-' -f2:" Makefile &&

  make all &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
