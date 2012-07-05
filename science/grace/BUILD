(

  OPTS+=" --x-includes=/usr/X11R6/include --enable-grace-home=/usr/share/grace"
  default_build &&
  if [ ! -e /usr/bin/xmgrace ] ; then
    ln -s /usr/share/grace/bin/xmgrace /usr/bin/xmgrace
  fi

) > $C_FIFO 2>&1
