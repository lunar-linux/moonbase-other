(

  if  `module_installed smake`; then
    THISMAKE=smake
  else
    THISMAKE=./Gmake.linux
  fi                                                   &&
  $THISMAKE                                            &&
  prepare_install                                      &&
  $THISMAKE     INS_BASE=/usr MANDIR=share/man install &&
  mkdir -p /etc/default                                &&
  cp rscsi/rscsi.dfl /etc/default/ #Otherwise it's lost ;^)
  
) > $C_FIFO 2>&1
