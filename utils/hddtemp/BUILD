(

  patch_it $SOURCE_CACHE/$SOURCE3 1  &&
  mkdir -p /usr/share/misc  &&
  default_build  &&
  install -m644 $SOURCE_CACHE/$SOURCE2 /usr/share/misc/hddtemp.db

) >$C_FIFO 2>&1
