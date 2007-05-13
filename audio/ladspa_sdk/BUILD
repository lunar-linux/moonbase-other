(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  cd src/  &&
  sed -i "s/usr\/local/usr/" makefile  &&
  prepare_install  &&
  make install

) > $C_FIFO 2>&1
