(

  sedit 's/-pedantic-errors//g' system.mk
  make    PREFIX=/usr  ETCDIR=/etc  depend  &&
  make    PREFIX=/usr  ETCDIR=/etc          &&
  prepare_install                           &&
  make    PREFIX=/usr  ETCDIR=/etc  install

) > $C_FIFO 2>&1
