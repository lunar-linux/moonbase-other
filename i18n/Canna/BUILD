(

  sedit "s:define DefCannaPrefix .*:define DefCannaPrefix /usr:" Canna.conf &&
  xmkmf &&
  make canna &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
