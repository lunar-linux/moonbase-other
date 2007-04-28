(

  make clean &&
  make -C /usr/src/linux SUBDIRS=`pwd -P` modules &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
