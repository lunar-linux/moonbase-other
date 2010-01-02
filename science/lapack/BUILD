(
  
  cp INSTALL/make.inc.gfortran make.inc &&
  sedit "s:O2:O2 -fPIC:" make.inc &&
  sedit "s:O0:O0 -fPIC:" make.inc &&
  make blaslib &&
  make all     &&

  prepare_install &&
  install *.a /usr/lib

) > $C_FIFO 2>&1
