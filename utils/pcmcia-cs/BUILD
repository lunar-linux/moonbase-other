(

  if [ "$AIRSNORT" == "y" ]; then
    patch_it $SOURCE_CACHE/$SOURCE2 0
  fi		   &&

  patch_it $SOURCE_CACHE/$SOURCE3 0 &&
  
  make clean       &&
  ./Configure -n --sysv --rcdir=/etc --srctree $OPTS &&
  make  all        &&
  prepare_install  &&
  make    install  &&
  cp -r $SOURCE_DIRECTORY/include/pcmcia /usr/include

) > $C_FIFO 2>&1
