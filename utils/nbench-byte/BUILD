(

  sedit 's|NNET.DAT|/usr/share/nbench-byte/NNET.DAT|' nbench1.h        &&
  make                                        &&
  prepare_install                        &&
  install -m 755 nbench /usr/bin        &&
  mkdir -p /usr/share/nbench-byte/        &&
  install NNET.DAT /usr/share/nbench-byte/

) > $C_FIFO 2>&1

