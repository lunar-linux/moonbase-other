(
  cp    Makefile  Makefile.original
  sed   "s/NET = true/# NET = true/"                <  Makefile.original  |
  sed   "s/UNKNOWN_CD = true/# UNKNOWN_CD = true/"  >  Makefile 
  sed   "s/CDROM = \/dev\/cdroms\/cdrom0/CDROM = \/dev\/cdrom/" Makefile.original >  Makefile

  sedit "s/\/man\/man1/\/share\/man\/man1/" Makefile && 
  make  PREFIX=/usr  &&
  prepare_install    &&
  make  PREFIX=/usr install

) > $C_FIFO 2>&1
