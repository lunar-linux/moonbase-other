(

  mv    Config.h  Config.h.original
  echo  "#define BB_PIVOT_ROOT"                     >>  Config.h
  echo  "#define BB_INSMOD"                         >>  Config.h
  echo  "#define BB_LSMOD"                          >>  Config.h
  echo  "#define BB_RMMOD"                          >>  Config.h
  echo  "#define BB_FEATURE_SH_STANDALONE_SHELL"    >>  Config.h
  echo  "#define BB_FEATURE_SH_APPLETS_ALWAYS_WIN"  >>  Config.h
  cat   Config.h.original                           >>  Config.h

  sedit "s/DOSTATIC = false/DOSTATIC = true/" Makefile

  make             &&
  prepare_install  &&
  cp      busybox  /sbin/busybox_static

) > $C_FIFO 2>&1
