(

  make  linux                                &&
  make  all                                  &&
  prepare_install                            &&
  cp    bin/*     /usr/games                 &&
  mkdir   -p      /usr/X11R6/lib/X11/bzflag  &&
  cp    -r  data  /usr/X11R6/lib/X11/bzflag  &&
  cp man/bzflag.6 man/bzfls.6 man/bzfrelay.6 man/bzfs.6 /usr/share/man/man6 

) > $C_FIFO 2>&1
