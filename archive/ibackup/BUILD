( 

  #This fixes the screwy naming convention to Lunar normal of YYYYMMDD.
  sedit "s/%d%m%Y/%Y%m%d/"  ibackup  &&
  prepare_install &&
  make install install-config 
  
) > $C_FIFO 2>&1
