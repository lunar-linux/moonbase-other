(
  cd build64 &&

  make            &&
  prepare_install &&
  
  install -D memtest.bin /boot/memtest.bin

) > $C_FIFO 2>&1
