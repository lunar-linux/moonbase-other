(

  make  all                                          &&
  prepare_install                                    &&
  mkdir -p /etc/rc.d/init.d                          &&
  ln -sf /etc/rc.d/init.d /etc/init.d                &&
  for n in 0 1 2 3 4 5 6; do
    mkdir -p /etc/rc.d/rc${n}.d
    ln -sf /etc/rc.d/rc${n}.d /etc/
  done                                               &&
  make install
  
) > $C_FIFO 2>&1
