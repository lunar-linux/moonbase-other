(

  # this will make it use its own headers
  # not the last linned kernel headers
  sedit "s?/usr/src/linux/include?/usr/include?g" DEFAULTS/Defaults.linux 
    
  if  `module_installed smake`; then
    THISMAKE=smake
  else
    THISMAKE=./Gmake.linux
  fi                                                   &&
  $THISMAKE                                            &&
  prepare_install                                      &&
  $THISMAKE     INS_BASE=/usr MANDIR=share/man install &&
  mkdir -p /etc/default                                &&
  cp rscsi/rscsi.dfl /etc/default/ #Otherwise it's lost ;^) &&
  cd /usr/bin &&
  chown root:root mkisofs isoinfo isodump devdump cdrecord cdda2wav skel scgcheck readcd isovfy isodebug
  
) > $C_FIFO 2>&1
