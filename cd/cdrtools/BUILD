(

  ./Gmake.linux                                        &&
  prepare_install                                      &&
  ./Gmake.linux INS_BASE=/usr MANDIR=share/man install &&
  mkdir -p /etc/default                                &&
  cp rscsi/rscsi.dfl /etc/default/ #Otherwise it's lost ;^)
  
) > $C_FIFO 2>&1
