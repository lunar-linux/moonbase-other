(

  sedit "s/top.desktop//" Makefile                &&
  sedit "s/\/usr\/bin/\/bin/g" Makefile           &&
  make CFLAGS="$CFLAGS"                           &&

  prepare_install                                 &&
  make  -e XSCPT='' DESTDIR=/ install             &&

  if [ -e /etc/init.d/sysctl.sh ]; then
    rm -f /etc/init.d/sysctl.sh                   &&
    rm -f /etc/rcS.d/S99sysctl
  fi                                              &&
  
  cp $SCRIPT_DIRECTORY/init.d/sysctl /etc/init.d  &&
  ln -sf ../init.d/sysctl /etc/rcS.d/S99sysctl

) > $C_FIFO 2>&1

