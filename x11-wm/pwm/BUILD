(

  prepare_install &&
  sedit "s:PREFIX=/usr/local:PREFIX=/usr:g" system.mk &&
  sedit "s:ETCDIR=\$(PREFIX)/etc:ETCDIR=/etc:g" system.mk &&
  make &&
  make install
  
) > $C_FIFO 2>&1
